.class public final Lcom/android/server/chimera/AggressivePolicyHandler;
.super Lcom/android/server/chimera/PolicyHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAdjustTargetFreeEndTime:J

.field public mAdjustTargetFreeFactor:D

.field public mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

.field public mHeavyLaunchBufferSize:I

.field public mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

.field public mHeavyLaunchPackageLimit:I

.field public mIsAdjustTargetFree:Z

.field public mIsHeavyLaunchOn:Z

.field public mPkgKillIntervalDefault:I

.field public mSubProcessKillList:Lcom/android/internal/util/RingBuffer;


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "wLru: "

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_10

    .line 5
    .line 6
    array-length v1, p2

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const-string v1, "-a"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aget-object v3, p2, v2

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler;->dumpInfo(Ljava/io/PrintWriter;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/android/server/chimera/HeavyLaunchCounter;->isHeavyLaunch()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "HeavyLaunch mode from "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/android/server/chimera/HeavyLaunchCounter;->getLastStartedUpTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    const-string p2, "************** adjinfo ****************"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    .line 70
    .line 71
    .line 72
    const-string p2, "\n************** appinfo ****************"

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    .line 78
    .line 79
    .line 80
    const-string p2, "\n************** kill history ****************"

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 89
    .line 90
    iget-boolean p2, p2, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    .line 91
    .line 92
    if-eqz p2, :cond_10

    .line 93
    .line 94
    const-string p2, "\n************** kill sub-process info ****************"

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string p2, "Date Time Pid ProcessName Rss"

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mSubProcessKillList:Lcom/android/internal/util/RingBuffer;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-lez p2, :cond_10

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mSubProcessKillList:Lcom/android/internal/util/RingBuffer;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, [Ljava/lang/String;

    .line 119
    .line 120
    array-length p2, p0

    .line 121
    :goto_0
    if-ge v2, p2, :cond_2

    .line 122
    .line 123
    aget-object v0, p0, v2

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    const-string p0, ""

    .line 132
    .line 133
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_3
    array-length v1, p2

    .line 139
    if-lez v1, :cond_10

    .line 140
    .line 141
    aget-object v1, p2, v2

    .line 142
    .line 143
    const-string/jumbo v3, "weight"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    const/4 v4, 0x2

    .line 151
    const/4 v5, 0x1

    .line 152
    if-eqz v3, :cond_4

    .line 153
    .line 154
    array-length v3, p2

    .line 155
    if-le v3, v4, :cond_4

    .line 156
    .line 157
    :try_start_0
    aget-object v1, p2, v5

    .line 158
    .line 159
    aget-object p2, p2, v4

    .line 160
    .line 161
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    invoke-virtual {p0, v1, p2}, Lcom/android/server/chimera/AggressivePolicyHandler;->setWeight(FF)V

    .line 178
    .line 179
    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v0, " wStandbyBucket: "

    .line 189
    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .line 202
    .line 203
    goto/16 :goto_3

    .line 204
    .line 205
    :catch_0
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_3

    .line 214
    .line 215
    :cond_4
    const-string/jumbo v0, "set_normal_boost_mode"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    const-string/jumbo v3, "off"

    .line 223
    .line 224
    .line 225
    const-string/jumbo v6, "on"

    .line 226
    .line 227
    .line 228
    if-eqz v0, :cond_6

    .line 229
    .line 230
    array-length v0, p2

    .line 231
    if-le v0, v5, :cond_6

    .line 232
    .line 233
    aget-object p2, p2, v5

    .line 234
    .line 235
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    iput-boolean p2, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 244
    .line 245
    if-eqz p2, :cond_5

    .line 246
    .line 247
    move-object v3, v6

    .line 248
    :cond_5
    const-string p0, "Normal kill boost : "

    .line 249
    .line 250
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_3

    .line 258
    .line 259
    :cond_6
    const-string/jumbo v0, "set_heavy_boost_mode"

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_8

    .line 267
    .line 268
    array-length v0, p2

    .line 269
    if-le v0, v5, :cond_8

    .line 270
    .line 271
    aget-object p2, p2, v5

    .line 272
    .line 273
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    iput-boolean p2, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 282
    .line 283
    if-eqz p2, :cond_7

    .line 284
    .line 285
    move-object v3, v6

    .line 286
    :cond_7
    const-string p0, "Heavy kill boost : "

    .line 287
    .line 288
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_3

    .line 296
    .line 297
    :cond_8
    const-string/jumbo v0, "set_normal_kill_interval"

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_9

    .line 305
    .line 306
    array-length v0, p2

    .line 307
    if-le v0, v5, :cond_9

    .line 308
    .line 309
    :try_start_1
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 310
    .line 311
    aget-object v0, v0, v2

    .line 312
    .line 313
    aget-object p2, p2, v5

    .line 314
    .line 315
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    mul-int/lit16 p2, p2, 0x3e8

    .line 320
    .line 321
    aput p2, v0, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    .line 323
    goto :goto_1

    .line 324
    :catch_1
    move-exception p2

    .line 325
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v0, "Normal kill interval : "

    .line 335
    .line 336
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 340
    .line 341
    aget-object p0, p0, v2

    .line 342
    .line 343
    aget p0, p0, v4

    .line 344
    .line 345
    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_3

    .line 349
    .line 350
    :cond_9
    const-string/jumbo v0, "set_heavy_kill_interval"

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_a

    .line 358
    .line 359
    array-length v0, p2

    .line 360
    if-le v0, v5, :cond_a

    .line 361
    .line 362
    :try_start_2
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 363
    .line 364
    aget-object v0, v0, v5

    .line 365
    .line 366
    aget-object p2, p2, v5

    .line 367
    .line 368
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    move-result p2

    .line 372
    mul-int/lit16 p2, p2, 0x3e8

    .line 373
    .line 374
    aput p2, v0, v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 375
    .line 376
    goto :goto_2

    .line 377
    :catch_2
    move-exception p2

    .line 378
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p2

    .line 382
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v0, "Heavy kill interval : "

    .line 388
    .line 389
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 393
    .line 394
    aget-object p0, p0, v5

    .line 395
    .line 396
    aget p0, p0, v4

    .line 397
    .line 398
    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 399
    .line 400
    .line 401
    goto :goto_3

    .line 402
    :cond_a
    const-string/jumbo p2, "info"

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result p2

    .line 409
    if-eqz p2, :cond_b

    .line 410
    .line 411
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler;->dumpInfo(Ljava/io/PrintWriter;)V

    .line 415
    .line 416
    .line 417
    goto :goto_3

    .line 418
    :cond_b
    const-string p2, "appinfo"

    .line 419
    .line 420
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result p2

    .line 424
    if-eqz p2, :cond_c

    .line 425
    .line 426
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    .line 427
    .line 428
    .line 429
    goto :goto_3

    .line 430
    :cond_c
    const-string p2, "adjinfo"

    .line 431
    .line 432
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result p2

    .line 436
    if-eqz p2, :cond_d

    .line 437
    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    .line 439
    .line 440
    .line 441
    goto :goto_3

    .line 442
    :cond_d
    const-string/jumbo p2, "history"

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result p2

    .line 449
    if-eqz p2, :cond_e

    .line 450
    .line 451
    const-string p2, "Chimera Kill History:"

    .line 452
    .line 453
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    .line 457
    .line 458
    .line 459
    goto :goto_3

    .line 460
    :cond_e
    const-string/jumbo p2, "quotakill"

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result p2

    .line 467
    if-eqz p2, :cond_10

    .line 468
    .line 469
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 470
    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    sget-boolean p2, Lcom/android/server/chimera/SystemRepository;->IS_SHIP_BUILD:Z

    .line 475
    .line 476
    if-eqz p2, :cond_f

    .line 477
    .line 478
    const-string p0, "No support in ship build"

    .line 479
    .line 480
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    goto :goto_3

    .line 484
    :cond_f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    const/16 p2, 0x10

    .line 489
    .line 490
    iput p2, p1, Landroid/os/Message;->what:I

    .line 491
    .line 492
    iput v5, p1, Landroid/os/Message;->arg1:I

    .line 493
    .line 494
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mSystemEventListenerHandler:Landroid/os/Handler;

    .line 495
    .line 496
    if-eqz p0, :cond_10

    .line 497
    .line 498
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 499
    .line 500
    .line 501
    :cond_10
    :goto_3
    return-void
.end method

.method public final dumpInfo(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ScoreWeight: lru="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " standbybucket="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " mem="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    aget-object v0, v0, v1

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    aget v0, v0, v1

    .line 40
    .line 41
    int-to-long v2, v0

    .line 42
    invoke-static {v2, v3}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "Normal kill interval : "

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    aget-object v0, v0, v2

    .line 59
    .line 60
    aget v0, v0, v1

    .line 61
    .line 62
    int-to-long v0, v0

    .line 63
    invoke-static {v0, v1}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "Heavy kill interval : "

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 77
    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 81
    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string p0, "Kill boost mode: off"

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "Kill boost mode:"

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-boolean v1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 99
    .line 100
    const-string v2, ""

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    const-string v1, " Normal"

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move-object v1, v2

    .line 108
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean p0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 112
    .line 113
    if-eqz p0, :cond_3

    .line 114
    .line 115
    const-string v2, " Heavy"

    .line 116
    .line 117
    :cond_3
    invoke-static {v0, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-void
.end method

.method public final executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 15
    .line 16
    const-string v1, "AggressivePolicyHandler"

    .line 17
    .line 18
    const-string/jumbo v2, "executePolicy() - prepareForTrigger fails"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v5

    .line 28
    :cond_0
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 29
    .line 30
    const-string v6, "AggressivePolicyHandler"

    .line 31
    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v8, "executePolicy() - triggerSource: "

    .line 35
    .line 36
    .line 37
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {v6, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    iget v4, v1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 58
    .line 59
    add-int/2addr v4, v3

    .line 60
    iput v4, v1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 61
    .line 62
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    aget v9, v4, v8

    .line 69
    .line 70
    add-int/2addr v9, v3

    .line 71
    aput v9, v4, v8

    .line 72
    .line 73
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 74
    .line 75
    const/16 v8, 0x13

    .line 76
    .line 77
    const-wide/16 v9, 0x2800

    .line 78
    .line 79
    const/4 v11, 0x4

    .line 80
    if-ne v0, v4, :cond_2

    .line 81
    .line 82
    move/from16 v12, p2

    .line 83
    .line 84
    if-ne v12, v2, :cond_2

    .line 85
    .line 86
    :cond_1
    move-wide/from16 v17, v6

    .line 87
    .line 88
    goto/16 :goto_f

    .line 89
    .line 90
    :cond_2
    iget-object v12, v1, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 91
    .line 92
    iget-boolean v12, v12, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    .line 93
    .line 94
    if-eqz v12, :cond_1

    .line 95
    .line 96
    iget v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillTriggerCnt:I

    .line 97
    .line 98
    add-int/2addr v4, v3

    .line 99
    iput v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillTriggerCnt:I

    .line 100
    .line 101
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 102
    .line 103
    if-ne v0, v4, :cond_4

    .line 104
    .line 105
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v12

    .line 111
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 112
    .line 113
    iget-wide v14, v0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 114
    .line 115
    iget-boolean v0, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    .line 116
    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    iget-wide v2, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    .line 120
    .line 121
    cmp-long v0, v6, v2

    .line 122
    .line 123
    if-gez v0, :cond_3

    .line 124
    .line 125
    long-to-double v2, v14

    .line 126
    iget-wide v14, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    .line 127
    .line 128
    mul-double/2addr v2, v14

    .line 129
    double-to-long v14, v2

    .line 130
    :cond_3
    sub-long v2, v14, v12

    .line 131
    .line 132
    cmp-long v0, v2, v9

    .line 133
    .line 134
    if-gtz v0, :cond_4

    .line 135
    .line 136
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 137
    .line 138
    const-string v1, "AggressivePolicyHandler"

    .line 139
    .line 140
    const-string v2, "available memory: "

    .line 141
    .line 142
    const-string v3, ", free memory target: "

    .line 143
    .line 144
    invoke-static {v2, v12, v13, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v3, ", quit chimera"

    .line 152
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return v5

    .line 167
    :cond_4
    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    new-instance v3, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    iget-object v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_1d

    .line 194
    .line 195
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    move-object v9, v0

    .line 200
    check-cast v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 201
    .line 202
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 203
    .line 204
    const/16 v10, 0x2710

    .line 205
    .line 206
    if-ge v0, v10, :cond_5

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_5
    iget-object v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 210
    .line 211
    const-string v10, ":"

    .line 212
    .line 213
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_6

    .line 218
    .line 219
    const-string/jumbo v0, "isMainProc"

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 227
    .line 228
    .line 229
    move-result-wide v12

    .line 230
    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 231
    .line 232
    sub-long/2addr v12, v14

    .line 233
    const-wide/16 v14, 0x1388

    .line 234
    .line 235
    cmp-long v0, v12, v14

    .line 236
    .line 237
    if-gez v0, :cond_7

    .line 238
    .line 239
    const-string/jumbo v0, "lastActivityTime"

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_7
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 247
    .line 248
    if-ne v0, v8, :cond_8

    .line 249
    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 251
    .line 252
    .line 253
    move-result-wide v12

    .line 254
    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 255
    .line 256
    sub-long/2addr v12, v14

    .line 257
    iget v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 258
    .line 259
    int-to-long v14, v0

    .line 260
    cmp-long v0, v12, v14

    .line 261
    .line 262
    if-gez v0, :cond_8

    .line 263
    .line 264
    const-string v0, "PROCESS_STATE_CACHED_EMPTY"

    .line 265
    .line 266
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_8
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 271
    .line 272
    const/16 v10, 0xa

    .line 273
    .line 274
    if-ne v0, v10, :cond_9

    .line 275
    .line 276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 277
    .line 278
    .line 279
    move-result-wide v12

    .line 280
    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 281
    .line 282
    sub-long/2addr v12, v14

    .line 283
    iget v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 284
    .line 285
    int-to-long v14, v0

    .line 286
    cmp-long v0, v12, v14

    .line 287
    .line 288
    if-gez v0, :cond_9

    .line 289
    .line 290
    const-string v0, "PROCESS_STATE_SERVICE"

    .line 291
    .line 292
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_0

    .line 296
    :cond_9
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 297
    .line 298
    const/4 v12, 0x1

    .line 299
    if-gt v0, v12, :cond_a

    .line 300
    .line 301
    const-string v0, "PROCESS_STATE_PERSISTENT_UI"

    .line 302
    .line 303
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_a
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    .line 308
    .line 309
    and-int/2addr v0, v11

    .line 310
    if-lez v0, :cond_b

    .line 311
    .line 312
    const-string/jumbo v0, "hasActivity"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :cond_b
    iget-object v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 321
    .line 322
    iget-object v12, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 323
    .line 324
    iget v13, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 325
    .line 326
    invoke-virtual {v0, v13, v12}, Lcom/android/server/chimera/SystemRepository;->hasConnectionProvider(ILjava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_c

    .line 331
    .line 332
    const-string/jumbo v0, "hasConnectionProvider"

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :cond_c
    iget-object v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    const-string/jumbo v12, "sandbox"

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_d

    .line 354
    .line 355
    const-string/jumbo v0, "isSandbox"

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_0

    .line 362
    .line 363
    :cond_d
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 364
    .line 365
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    iget-object v12, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 370
    .line 371
    aget-object v12, v12, v5

    .line 372
    .line 373
    iget-object v13, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 374
    .line 375
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 379
    .line 380
    sget-object v13, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 381
    .line 382
    invoke-virtual {v13, v0, v12}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result v13

    .line 386
    if-eqz v13, :cond_e

    .line 387
    .line 388
    const-string/jumbo v0, "isAutoRunOn"

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :cond_e
    sget-boolean v13, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 397
    .line 398
    sget-object v13, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 399
    .line 400
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 404
    .line 405
    .line 406
    move-result-wide v14

    .line 407
    sget-object v16, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 408
    .line 409
    monitor-enter v16

    .line 410
    :try_start_0
    invoke-virtual {v13, v0, v12}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    if-eqz v0, :cond_f

    .line 415
    .line 416
    iget-object v0, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 417
    .line 418
    iget-boolean v13, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 419
    .line 420
    if-nez v13, :cond_f

    .line 421
    .line 422
    iget-boolean v13, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 423
    .line 424
    if-eqz v13, :cond_f

    .line 425
    .line 426
    move-wide/from16 v17, v6

    .line 427
    .line 428
    iget-wide v5, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 429
    .line 430
    sub-long/2addr v14, v5

    .line 431
    const-wide/16 v5, 0x7d0

    .line 432
    .line 433
    cmp-long v0, v14, v5

    .line 434
    .line 435
    if-ltz v0, :cond_10

    .line 436
    .line 437
    const/4 v0, 0x1

    .line 438
    goto :goto_1

    .line 439
    :catchall_0
    move-exception v0

    .line 440
    goto/16 :goto_c

    .line 441
    .line 442
    :cond_f
    move-wide/from16 v17, v6

    .line 443
    .line 444
    :cond_10
    const/4 v0, 0x0

    .line 445
    :goto_1
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    if-nez v0, :cond_12

    .line 447
    .line 448
    const-string/jumbo v0, "isUnFreezedSafely"

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    :cond_11
    :goto_2
    move-wide/from16 v6, v17

    .line 455
    .line 456
    const/4 v5, 0x0

    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :cond_12
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 460
    .line 461
    if-eq v0, v8, :cond_1c

    .line 462
    .line 463
    iget-object v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 464
    .line 465
    iget v5, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 466
    .line 467
    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 468
    .line 469
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 470
    .line 471
    monitor-enter v6

    .line 472
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 473
    .line 474
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 479
    if-nez v0, :cond_13

    .line 480
    .line 481
    :goto_3
    const/4 v0, 0x0

    .line 482
    goto :goto_5

    .line 483
    :cond_13
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 484
    .line 485
    if-eqz v0, :cond_16

    .line 486
    .line 487
    iget-boolean v5, v0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 488
    .line 489
    if-eqz v5, :cond_14

    .line 490
    .line 491
    goto :goto_3

    .line 492
    :cond_14
    iget-object v5, v0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 493
    .line 494
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 495
    .line 496
    .line 497
    move-result v5

    .line 498
    const/4 v6, 0x1

    .line 499
    sub-int/2addr v5, v6

    .line 500
    :goto_4
    if-ltz v5, :cond_16

    .line 501
    .line 502
    iget-object v6, v0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 503
    .line 504
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v6

    .line 508
    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 509
    .line 510
    iget-boolean v7, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 511
    .line 512
    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 513
    .line 514
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 515
    .line 516
    .line 517
    move-result v6

    .line 518
    if-nez v6, :cond_15

    .line 519
    .line 520
    const/4 v0, 0x2

    .line 521
    goto :goto_5

    .line 522
    :cond_15
    add-int/lit8 v5, v5, -0x1

    .line 523
    .line 524
    goto :goto_4

    .line 525
    :cond_16
    const/4 v0, 0x1

    .line 526
    :goto_5
    if-nez v0, :cond_17

    .line 527
    .line 528
    const-string/jumbo v0, "isFilterByMars and isn\'t Empty"

    .line 529
    .line 530
    .line 531
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    goto :goto_2

    .line 535
    :cond_17
    const/4 v5, 0x2

    .line 536
    if-ne v0, v5, :cond_1c

    .line 537
    .line 538
    const/4 v0, 0x0

    .line 539
    const/4 v6, 0x0

    .line 540
    :goto_6
    :try_start_2
    iget v7, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 541
    .line 542
    const/4 v14, 0x1

    .line 543
    invoke-static {v7, v14, v10}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZI)I

    .line 544
    .line 545
    .line 546
    move-result v6

    .line 547
    sget v7, Landroid/system/OsConstants;->EAGAIN:I

    .line 548
    .line 549
    neg-int v7, v7

    .line 550
    if-ne v6, v7, :cond_19

    .line 551
    .line 552
    add-int/lit8 v7, v0, 0x1

    .line 553
    .line 554
    if-lt v0, v5, :cond_18

    .line 555
    .line 556
    goto :goto_7

    .line 557
    :cond_18
    move v0, v7

    .line 558
    goto :goto_6

    .line 559
    :cond_19
    :goto_7
    if-eqz v6, :cond_1a

    .line 560
    .line 561
    iget-object v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 562
    .line 563
    const-string v5, "ChimeraAppManager"

    .line 564
    .line 565
    new-instance v7, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .line 569
    .line 570
    const-string/jumbo v10, "checkServiceSafetyKilled Unable to freeze binder for "

    .line 571
    .line 572
    .line 573
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    const-string v10, ": "

    .line 580
    .line 581
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v7

    .line 591
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    invoke-static {v5, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 595
    .line 596
    .line 597
    goto :goto_8

    .line 598
    :catchall_1
    move-exception v0

    .line 599
    goto :goto_9

    .line 600
    :catch_0
    move-exception v0

    .line 601
    goto :goto_a

    .line 602
    :cond_1a
    :goto_8
    if-nez v6, :cond_1b

    .line 603
    .line 604
    goto :goto_b

    .line 605
    :goto_9
    throw v0

    .line 606
    :goto_a
    iget-object v5, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 607
    .line 608
    const-string v7, "ChimeraAppManager"

    .line 609
    .line 610
    new-instance v10, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    const-string v14, "Unable to freeze binder for "

    .line 613
    .line 614
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    const-string v12, ": "

    .line 621
    .line 622
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    invoke-static {v7, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    if-nez v6, :cond_1b

    .line 639
    .line 640
    goto :goto_b

    .line 641
    :cond_1b
    const-string/jumbo v0, "freeze binder failed."

    .line 642
    .line 643
    .line 644
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    goto/16 :goto_2

    .line 648
    .line 649
    :catchall_2
    move-exception v0

    .line 650
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 651
    throw v0

    .line 652
    :cond_1c
    :goto_b
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    const/4 v5, 0x5

    .line 660
    if-lt v0, v5, :cond_11

    .line 661
    .line 662
    goto :goto_d

    .line 663
    :goto_c
    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 664
    throw v0

    .line 665
    :cond_1d
    move-wide/from16 v17, v6

    .line 666
    .line 667
    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    const/4 v2, 0x1

    .line 672
    add-int/lit8 v4, v0, -0x1

    .line 673
    .line 674
    :goto_e
    if-ltz v4, :cond_1e

    .line 675
    .line 676
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    check-cast v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 681
    .line 682
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 683
    .line 684
    const-string v6, "AggressivePolicyHandler"

    .line 685
    .line 686
    new-instance v7, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    const-string v8, "Chimera kill subProcess "

    .line 689
    .line 690
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    iget v8, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 694
    .line 695
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    const-string v8, " "

    .line 699
    .line 700
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    iget-object v8, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 704
    .line 705
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    const-string v8, " success"

    .line 709
    .line 710
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v7

    .line 717
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 718
    .line 719
    .line 720
    invoke-static {v6, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    iget v5, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 724
    .line 725
    iget-object v6, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 726
    .line 727
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 728
    .line 729
    const-string v8, "MM-dd HH:mm:ss.SSS"

    .line 730
    .line 731
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    new-instance v8, Ljava/util/Date;

    .line 735
    .line 736
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v7

    .line 743
    iget-object v8, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mSubProcessKillList:Lcom/android/internal/util/RingBuffer;

    .line 744
    .line 745
    new-instance v9, Ljava/lang/StringBuilder;

    .line 746
    .line 747
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    const-string v7, " "

    .line 754
    .line 755
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    const/4 v6, 0x0

    .line 771
    invoke-static {v5, v6}, Landroid/os/Debug;->getRss(I[J)J

    .line 772
    .line 773
    .line 774
    move-result-wide v5

    .line 775
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v5

    .line 782
    invoke-virtual {v8, v5}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 783
    .line 784
    .line 785
    iget v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillCnt:I

    .line 786
    .line 787
    const/4 v6, 0x1

    .line 788
    add-int/2addr v5, v6

    .line 789
    iput v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillCnt:I

    .line 790
    .line 791
    iget v2, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 792
    .line 793
    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 794
    .line 795
    .line 796
    add-int/lit8 v4, v4, -0x1

    .line 797
    .line 798
    goto :goto_e

    .line 799
    :cond_1e
    iget-object v1, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 800
    .line 801
    const-string v2, "AggressivePolicyHandler"

    .line 802
    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    .line 804
    .line 805
    const-string v4, "Kill subProcess Processing time(ms) "

    .line 806
    .line 807
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 811
    .line 812
    .line 813
    move-result-wide v4

    .line 814
    sub-long v4, v4, v17

    .line 815
    .line 816
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 824
    .line 825
    .line 826
    invoke-static {v2, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    return v0

    .line 830
    :goto_f
    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 831
    .line 832
    invoke-static {v2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    .line 833
    .line 834
    .line 835
    move-result-wide v2

    .line 836
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 837
    .line 838
    iget-wide v6, v5, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 839
    .line 840
    iget-boolean v12, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    .line 841
    .line 842
    if-eqz v12, :cond_1f

    .line 843
    .line 844
    iget-wide v14, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    .line 845
    .line 846
    cmp-long v12, v17, v14

    .line 847
    .line 848
    if-gez v12, :cond_1f

    .line 849
    .line 850
    long-to-double v6, v6

    .line 851
    iget-wide v14, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    .line 852
    .line 853
    mul-double/2addr v6, v14

    .line 854
    double-to-long v6, v6

    .line 855
    :cond_1f
    sub-long v14, v6, v2

    .line 856
    .line 857
    cmp-long v9, v14, v9

    .line 858
    .line 859
    if-gtz v9, :cond_20

    .line 860
    .line 861
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 862
    .line 863
    const-string v1, "AggressivePolicyHandler"

    .line 864
    .line 865
    const-string v4, "available memory: "

    .line 866
    .line 867
    const-string v5, ", free memory target: "

    .line 868
    .line 869
    invoke-static {v4, v2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    move-result-object v2

    .line 873
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    const-string v3, ", quit chimera"

    .line 877
    .line 878
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v2

    .line 885
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 886
    .line 887
    .line 888
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    :goto_10
    const/4 v1, 0x0

    .line 892
    return v1

    .line 893
    :cond_20
    if-ne v0, v4, :cond_21

    .line 894
    .line 895
    iget v4, v5, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 896
    .line 897
    goto :goto_11

    .line 898
    :cond_21
    iget v4, v5, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 899
    .line 900
    :goto_11
    iget-boolean v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 901
    .line 902
    if-eqz v5, :cond_22

    .line 903
    .line 904
    iget-object v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    .line 905
    .line 906
    invoke-virtual {v5}, Lcom/android/server/chimera/HeavyLaunchCounter;->isHeavyLaunch()Z

    .line 907
    .line 908
    .line 909
    move-result v5

    .line 910
    if-eqz v5, :cond_22

    .line 911
    .line 912
    const/4 v5, 0x2

    .line 913
    div-int/2addr v4, v5

    .line 914
    int-to-double v4, v4

    .line 915
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 916
    .line 917
    add-double/2addr v4, v9

    .line 918
    double-to-int v4, v4

    .line 919
    :cond_22
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 920
    .line 921
    const-string v9, "AggressivePolicyHandler"

    .line 922
    .line 923
    const-string/jumbo v10, "memAvailable: "

    .line 924
    .line 925
    .line 926
    const-string v12, ", memFreeTarget: "

    .line 927
    .line 928
    invoke-static {v10, v2, v3, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    move-result-object v10

    .line 932
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    const-string v6, ", releaseTarget:"

    .line 936
    .line 937
    const-string v7, ", protectedLruCount: "

    .line 938
    .line 939
    invoke-static {v10, v6, v14, v15, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 940
    .line 941
    .line 942
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v6

    .line 949
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 950
    .line 951
    .line 952
    invoke-static {v9, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 956
    .line 957
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 958
    .line 959
    .line 960
    const/4 v6, 0x0

    .line 961
    :goto_12
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 962
    .line 963
    .line 964
    move-result-object v7

    .line 965
    array-length v7, v7

    .line 966
    if-ge v6, v7, :cond_23

    .line 967
    .line 968
    iget-object v7, v5, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    .line 969
    .line 970
    aget-object v7, v7, v6

    .line 971
    .line 972
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 973
    .line 974
    .line 975
    const/4 v7, 0x1

    .line 976
    add-int/2addr v6, v7

    .line 977
    goto :goto_12

    .line 978
    :cond_23
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 979
    .line 980
    iget-object v6, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 981
    .line 982
    iget-object v7, v5, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 983
    .line 984
    invoke-virtual {v7}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 985
    .line 986
    .line 987
    move-result-object v7

    .line 988
    invoke-virtual {v5, v6, v4, v0, v7}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;

    .line 989
    .line 990
    .line 991
    move-result-object v4

    .line 992
    if-eqz v4, :cond_24

    .line 993
    .line 994
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 995
    .line 996
    .line 997
    move-result v5

    .line 998
    const/4 v6, 0x3

    .line 999
    if-ge v5, v6, :cond_25

    .line 1000
    .line 1001
    :cond_24
    move-object v15, v4

    .line 1002
    goto/16 :goto_2e

    .line 1003
    .line 1004
    :cond_25
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v5

    .line 1008
    move-wide/from16 v19, v14

    .line 1009
    .line 1010
    const/4 v7, 0x1

    .line 1011
    const-wide/16 v13, 0x0

    .line 1012
    .line 1013
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1014
    .line 1015
    .line 1016
    move-result v12

    .line 1017
    if-eqz v12, :cond_28

    .line 1018
    .line 1019
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v12

    .line 1023
    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1024
    .line 1025
    iget-wide v8, v12, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 1026
    .line 1027
    cmp-long v10, v8, v13

    .line 1028
    .line 1029
    if-lez v10, :cond_26

    .line 1030
    .line 1031
    move-wide v13, v8

    .line 1032
    :cond_26
    iget v8, v12, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 1033
    .line 1034
    if-le v8, v7, :cond_27

    .line 1035
    .line 1036
    move v7, v8

    .line 1037
    :cond_27
    const/16 v8, 0x13

    .line 1038
    .line 1039
    goto :goto_13

    .line 1040
    :cond_28
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v5

    .line 1044
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1045
    .line 1046
    .line 1047
    move-result v8

    .line 1048
    if-eqz v8, :cond_29

    .line 1049
    .line 1050
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v8

    .line 1054
    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1055
    .line 1056
    iget v9, v1, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 1057
    .line 1058
    iget v10, v8, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 1059
    .line 1060
    int-to-float v10, v10

    .line 1061
    mul-float/2addr v9, v10

    .line 1062
    int-to-float v10, v7

    .line 1063
    div-float/2addr v9, v10

    .line 1064
    iget v10, v1, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 1065
    .line 1066
    iget v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 1067
    .line 1068
    int-to-float v12, v12

    .line 1069
    mul-float/2addr v10, v12

    .line 1070
    const/high16 v12, 0x42480000    # 50.0f

    .line 1071
    .line 1072
    div-float/2addr v10, v12

    .line 1073
    add-float/2addr v10, v9

    .line 1074
    iget v9, v1, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    .line 1075
    .line 1076
    move/from16 v16, v7

    .line 1077
    .line 1078
    iget-wide v6, v8, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 1079
    .line 1080
    long-to-float v6, v6

    .line 1081
    mul-float/2addr v9, v6

    .line 1082
    long-to-float v6, v13

    .line 1083
    div-float/2addr v9, v6

    .line 1084
    add-float/2addr v9, v10

    .line 1085
    const/high16 v6, 0x42c80000    # 100.0f

    .line 1086
    .line 1087
    mul-float/2addr v9, v6

    .line 1088
    iput v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->score:F

    .line 1089
    .line 1090
    iget v7, v8, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 1091
    .line 1092
    rsub-int/lit8 v7, v7, 0x4

    .line 1093
    .line 1094
    int-to-float v7, v7

    .line 1095
    mul-float/2addr v7, v6

    .line 1096
    add-float/2addr v7, v9

    .line 1097
    iput v7, v8, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    .line 1098
    .line 1099
    move/from16 v7, v16

    .line 1100
    .line 1101
    const/4 v6, 0x3

    .line 1102
    goto :goto_14

    .line 1103
    :cond_29
    new-instance v5, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda4;

    .line 1104
    .line 1105
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1106
    .line 1107
    .line 1108
    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1109
    .line 1110
    .line 1111
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1112
    .line 1113
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1114
    .line 1115
    .line 1116
    sget-boolean v5, Lcom/android/server/chimera/SystemRepository;->IS_SHIP_BUILD:Z

    .line 1117
    .line 1118
    if-nez v5, :cond_2b

    .line 1119
    .line 1120
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1123
    .line 1124
    .line 1125
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v6

    .line 1129
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1130
    .line 1131
    .line 1132
    move-result v7

    .line 1133
    if-eqz v7, :cond_2a

    .line 1134
    .line 1135
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v7

    .line 1139
    check-cast v7, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1140
    .line 1141
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1142
    .line 1143
    .line 1144
    const-string v7, "\n"

    .line 1145
    .line 1146
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    .line 1149
    goto :goto_15

    .line 1150
    :cond_2a
    const-string v6, "PolicyHandler"

    .line 1151
    .line 1152
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v5

    .line 1156
    iget-object v7, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1157
    .line 1158
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1159
    .line 1160
    .line 1161
    invoke-static {v6, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    :cond_2b
    :goto_16
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1165
    .line 1166
    const-string v6, "AggressivePolicyHandler"

    .line 1167
    .line 1168
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    const-string v8, "Start doKill, protected policy: "

    .line 1171
    .line 1172
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    iget-object v8, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1176
    .line 1177
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v7

    .line 1184
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1185
    .line 1186
    .line 1187
    invoke-static {v6, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v5

    .line 1194
    const/4 v6, 0x0

    .line 1195
    const/4 v7, 0x0

    .line 1196
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1197
    .line 1198
    .line 1199
    move-result v8

    .line 1200
    if-eqz v8, :cond_2c

    .line 1201
    .line 1202
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v8

    .line 1206
    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1207
    .line 1208
    iget v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 1209
    .line 1210
    if-lt v9, v11, :cond_2d

    .line 1211
    .line 1212
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1213
    .line 1214
    const-string v8, "AggressivePolicyHandler"

    .line 1215
    .line 1216
    const-string/jumbo v9, "killing stopped to group 4"

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1220
    .line 1221
    .line 1222
    invoke-static {v8, v9}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    .line 1224
    .line 1225
    :cond_2c
    const/4 v10, 0x2

    .line 1226
    goto/16 :goto_2b

    .line 1227
    .line 1228
    :cond_2d
    invoke-virtual {v1, v8, v0}, Lcom/android/server/chimera/PolicyHandler;->isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    .line 1229
    .line 1230
    .line 1231
    move-result v9

    .line 1232
    if-nez v9, :cond_2e

    .line 1233
    .line 1234
    move-object/from16 v29, v5

    .line 1235
    .line 1236
    const/4 v10, 0x2

    .line 1237
    goto/16 :goto_27

    .line 1238
    .line 1239
    :cond_2e
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 1240
    .line 1241
    check-cast v9, Ljava/util/ArrayList;

    .line 1242
    .line 1243
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v9

    .line 1247
    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1248
    .line 1249
    .line 1250
    move-result v10

    .line 1251
    if-eqz v10, :cond_35

    .line 1252
    .line 1253
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v10

    .line 1257
    check-cast v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1258
    .line 1259
    iget-object v13, v1, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 1260
    .line 1261
    iget v11, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1262
    .line 1263
    iget-wide v14, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 1264
    .line 1265
    iget v12, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->importance:I

    .line 1266
    .line 1267
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1268
    .line 1269
    .line 1270
    const-wide/32 v23, 0x12c000

    .line 1271
    .line 1272
    .line 1273
    cmp-long v13, v14, v23

    .line 1274
    .line 1275
    if-lez v13, :cond_30

    .line 1276
    .line 1277
    const/16 v14, 0x12c

    .line 1278
    .line 1279
    const/16 v15, 0x64

    .line 1280
    .line 1281
    if-ne v12, v15, :cond_2f

    .line 1282
    .line 1283
    sget-object v13, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1284
    .line 1285
    if-eqz v13, :cond_2f

    .line 1286
    .line 1287
    filled-new-array {v11}, [I

    .line 1288
    .line 1289
    .line 1290
    move-result-object v11

    .line 1291
    invoke-virtual {v13, v11}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v11

    .line 1295
    if-eqz v11, :cond_2f

    .line 1296
    .line 1297
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1298
    .line 1299
    if-eqz v11, :cond_2f

    .line 1300
    .line 1301
    check-cast v11, [I

    .line 1302
    .line 1303
    const/4 v13, 0x0

    .line 1304
    aget v11, v11, v13

    .line 1305
    .line 1306
    if-lt v11, v15, :cond_2f

    .line 1307
    .line 1308
    if-ge v11, v14, :cond_2f

    .line 1309
    .line 1310
    goto :goto_19

    .line 1311
    :cond_2f
    if-eq v12, v14, :cond_31

    .line 1312
    .line 1313
    const/16 v11, 0x7d

    .line 1314
    .line 1315
    if-eq v12, v11, :cond_31

    .line 1316
    .line 1317
    const/16 v11, 0xc8

    .line 1318
    .line 1319
    if-eq v12, v11, :cond_31

    .line 1320
    .line 1321
    const/16 v11, 0xe6

    .line 1322
    .line 1323
    if-eq v12, v11, :cond_31

    .line 1324
    .line 1325
    const/16 v11, 0x82

    .line 1326
    .line 1327
    if-ne v12, v11, :cond_30

    .line 1328
    .line 1329
    goto :goto_19

    .line 1330
    :cond_30
    move-object/from16 v29, v5

    .line 1331
    .line 1332
    const/4 v10, 0x3

    .line 1333
    goto :goto_1c

    .line 1334
    :cond_31
    :goto_19
    iget-object v11, v1, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 1335
    .line 1336
    iget-object v9, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 1337
    .line 1338
    iget v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 1339
    .line 1340
    iget-wide v14, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 1341
    .line 1342
    monitor-enter v11

    .line 1343
    :try_start_5
    iget-object v10, v11, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    .line 1344
    .line 1345
    new-instance v13, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;

    .line 1346
    .line 1347
    move-object/from16 v29, v5

    .line 1348
    .line 1349
    const/4 v5, 0x2

    .line 1350
    invoke-direct {v13, v9, v5}, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 1351
    .line 1352
    .line 1353
    check-cast v10, Ljava/util/ArrayList;

    .line 1354
    .line 1355
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1356
    .line 1357
    .line 1358
    iget-object v5, v11, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    .line 1359
    .line 1360
    check-cast v5, Ljava/util/ArrayList;

    .line 1361
    .line 1362
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v5

    .line 1366
    :cond_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1367
    .line 1368
    .line 1369
    move-result v10

    .line 1370
    if-eqz v10, :cond_33

    .line 1371
    .line 1372
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v10

    .line 1376
    check-cast v10, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 1377
    .line 1378
    iget-object v13, v10, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    .line 1379
    .line 1380
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1381
    .line 1382
    .line 1383
    move-result v13

    .line 1384
    if-eqz v13, :cond_32

    .line 1385
    .line 1386
    iget v5, v10, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    .line 1387
    .line 1388
    const/4 v10, 0x1

    .line 1389
    add-int/2addr v5, v10

    .line 1390
    goto :goto_1a

    .line 1391
    :catchall_3
    move-exception v0

    .line 1392
    goto :goto_1b

    .line 1393
    :cond_33
    const/4 v5, 0x1

    .line 1394
    :goto_1a
    iget-object v10, v11, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    .line 1395
    .line 1396
    new-instance v13, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 1397
    .line 1398
    move-object/from16 v23, v13

    .line 1399
    .line 1400
    move/from16 v24, v12

    .line 1401
    .line 1402
    move/from16 v25, v5

    .line 1403
    .line 1404
    move-wide/from16 v26, v14

    .line 1405
    .line 1406
    move-object/from16 v28, v9

    .line 1407
    .line 1408
    invoke-direct/range {v23 .. v28}, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;-><init>(IIJLjava/lang/String;)V

    .line 1409
    .line 1410
    .line 1411
    check-cast v10, Ljava/util/ArrayList;

    .line 1412
    .line 1413
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    .line 1415
    .line 1416
    const/4 v10, 0x3

    .line 1417
    if-lt v5, v10, :cond_34

    .line 1418
    .line 1419
    invoke-virtual {v11, v12, v9, v14, v15}, Lcom/android/server/chimera/AbnormalFgsDetector;->addAbnormalHeavyApp(ILjava/lang/String;J)V

    .line 1420
    .line 1421
    .line 1422
    :cond_34
    monitor-exit v11

    .line 1423
    const/4 v5, 0x1

    .line 1424
    goto :goto_1d

    .line 1425
    :goto_1b
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1426
    throw v0

    .line 1427
    :goto_1c
    move-object/from16 v5, v29

    .line 1428
    .line 1429
    const/4 v11, 0x4

    .line 1430
    goto/16 :goto_18

    .line 1431
    .line 1432
    :cond_35
    move-object/from16 v29, v5

    .line 1433
    .line 1434
    const/4 v10, 0x3

    .line 1435
    const/4 v5, 0x0

    .line 1436
    :goto_1d
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 1437
    .line 1438
    iget-object v9, v9, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 1439
    .line 1440
    invoke-static {v9}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v9

    .line 1444
    new-instance v11, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda5;

    .line 1445
    .line 1446
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 1447
    .line 1448
    .line 1449
    invoke-interface {v9, v11}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    .line 1450
    .line 1451
    .line 1452
    move-result v9

    .line 1453
    if-nez v9, :cond_36

    .line 1454
    .line 1455
    const/4 v5, 0x0

    .line 1456
    :cond_36
    if-nez v5, :cond_3f

    .line 1457
    .line 1458
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 1459
    .line 1460
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1461
    .line 1462
    const-wide/16 v11, 0x0

    .line 1463
    .line 1464
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v13

    .line 1468
    check-cast v5, Ljava/util/HashMap;

    .line 1469
    .line 1470
    invoke-virtual {v5, v9, v13}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v5

    .line 1474
    check-cast v5, Ljava/lang/Long;

    .line 1475
    .line 1476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1477
    .line 1478
    .line 1479
    move-result-wide v13

    .line 1480
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1481
    .line 1482
    .line 1483
    move-result-wide v21

    .line 1484
    sub-long v13, v13, v21

    .line 1485
    .line 1486
    iget-object v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 1487
    .line 1488
    iget-object v5, v5, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 1489
    .line 1490
    if-nez v5, :cond_37

    .line 1491
    .line 1492
    const/16 v11, 0x13

    .line 1493
    .line 1494
    goto :goto_1f

    .line 1495
    :cond_37
    array-length v9, v5

    .line 1496
    const/4 v15, 0x0

    .line 1497
    :goto_1e
    if-ge v15, v9, :cond_3a

    .line 1498
    .line 1499
    aget v10, v5, v15

    .line 1500
    .line 1501
    const/16 v11, 0x13

    .line 1502
    .line 1503
    if-ge v10, v11, :cond_3c

    .line 1504
    .line 1505
    :goto_1f
    iget v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 1506
    .line 1507
    const/high16 v9, 0x20000

    .line 1508
    .line 1509
    and-int/2addr v5, v9

    .line 1510
    if-nez v5, :cond_38

    .line 1511
    .line 1512
    goto :goto_22

    .line 1513
    :cond_38
    iget-object v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 1514
    .line 1515
    iget-object v5, v5, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 1516
    .line 1517
    array-length v9, v5

    .line 1518
    const/4 v10, 0x0

    .line 1519
    :goto_20
    if-ge v10, v9, :cond_3b

    .line 1520
    .line 1521
    aget v12, v5, v10

    .line 1522
    .line 1523
    const/16 v15, 0xc8

    .line 1524
    .line 1525
    if-eq v12, v15, :cond_3a

    .line 1526
    .line 1527
    const/16 v11, 0xe1

    .line 1528
    .line 1529
    if-eq v12, v11, :cond_3a

    .line 1530
    .line 1531
    const/16 v11, 0xfa

    .line 1532
    .line 1533
    if-eq v12, v11, :cond_3a

    .line 1534
    .line 1535
    const/16 v11, 0x1f4

    .line 1536
    .line 1537
    if-eq v12, v11, :cond_3a

    .line 1538
    .line 1539
    const/16 v11, 0x320

    .line 1540
    .line 1541
    if-ne v12, v11, :cond_39

    .line 1542
    .line 1543
    goto :goto_21

    .line 1544
    :cond_39
    const/4 v11, 0x1

    .line 1545
    add-int/2addr v10, v11

    .line 1546
    const/16 v11, 0x13

    .line 1547
    .line 1548
    goto :goto_20

    .line 1549
    :cond_3a
    :goto_21
    const/4 v10, 0x2

    .line 1550
    goto :goto_24

    .line 1551
    :cond_3b
    :goto_22
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 1552
    .line 1553
    iget-object v9, v1, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 1554
    .line 1555
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 1556
    .line 1557
    .line 1558
    move-result v9

    .line 1559
    aget-object v5, v5, v9

    .line 1560
    .line 1561
    const/4 v10, 0x2

    .line 1562
    aget v5, v5, v10

    .line 1563
    .line 1564
    :goto_23
    int-to-long v11, v5

    .line 1565
    goto :goto_25

    .line 1566
    :cond_3c
    const/4 v10, 0x2

    .line 1567
    const/16 v11, 0xc8

    .line 1568
    .line 1569
    const/4 v12, 0x1

    .line 1570
    add-int/2addr v15, v12

    .line 1571
    const/4 v10, 0x3

    .line 1572
    const-wide/16 v11, 0x0

    .line 1573
    .line 1574
    goto :goto_1e

    .line 1575
    :goto_24
    iget v5, v1, Lcom/android/server/chimera/PolicyHandler;->mCemPkgKillIntervalMs:I

    .line 1576
    .line 1577
    goto :goto_23

    .line 1578
    :goto_25
    cmp-long v5, v13, v11

    .line 1579
    .line 1580
    if-gez v5, :cond_3d

    .line 1581
    .line 1582
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 1583
    .line 1584
    sget-object v9, Lcom/android/server/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 1585
    .line 1586
    invoke-virtual {v5, v8, v9}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 1587
    .line 1588
    .line 1589
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1590
    .line 1591
    const-string v9, "Skipped by interval: "

    .line 1592
    .line 1593
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1597
    .line 1598
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    .line 1600
    .line 1601
    const-string v9, ", elapsed: "

    .line 1602
    .line 1603
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    .line 1605
    .line 1606
    invoke-static {v13, v14}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v9

    .line 1610
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    .line 1612
    .line 1613
    const-string v9, ", interval: "

    .line 1614
    .line 1615
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    .line 1617
    .line 1618
    invoke-static {v11, v12}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v9

    .line 1622
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    .line 1624
    .line 1625
    invoke-static {v8}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v9

    .line 1629
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    .line 1631
    .line 1632
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v5

    .line 1636
    iget-object v9, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1637
    .line 1638
    const-string v11, "PolicyHandler"

    .line 1639
    .line 1640
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1641
    .line 1642
    .line 1643
    invoke-static {v11, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    .line 1645
    .line 1646
    const/4 v5, 0x0

    .line 1647
    goto :goto_26

    .line 1648
    :cond_3d
    const/4 v5, 0x1

    .line 1649
    :goto_26
    if-nez v5, :cond_40

    .line 1650
    .line 1651
    :cond_3e
    :goto_27
    move-object/from16 v5, v29

    .line 1652
    .line 1653
    const/4 v11, 0x4

    .line 1654
    goto/16 :goto_17

    .line 1655
    .line 1656
    :cond_3f
    const/4 v10, 0x2

    .line 1657
    :cond_40
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 1658
    .line 1659
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1660
    .line 1661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1662
    .line 1663
    .line 1664
    move-result-wide v11

    .line 1665
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v11

    .line 1669
    check-cast v5, Ljava/util/HashMap;

    .line 1670
    .line 1671
    invoke-virtual {v5, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    .line 1673
    .line 1674
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1675
    .line 1676
    const-string v9, "AggressivePolicyHandler"

    .line 1677
    .line 1678
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1679
    .line 1680
    const-string v12, "Killed on trigger"

    .line 1681
    .line 1682
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 1686
    .line 1687
    .line 1688
    move-result v12

    .line 1689
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1690
    .line 1691
    .line 1692
    const-string v12, " : "

    .line 1693
    .line 1694
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    .line 1696
    .line 1697
    iget-object v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1698
    .line 1699
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    .line 1701
    .line 1702
    invoke-virtual {v8}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v12

    .line 1706
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1707
    .line 1708
    .line 1709
    const-string v12, ", freed: "

    .line 1710
    .line 1711
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    .line 1713
    .line 1714
    iget-wide v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 1715
    .line 1716
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1717
    .line 1718
    .line 1719
    invoke-static {v8}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v12

    .line 1723
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    .line 1725
    .line 1726
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v11

    .line 1730
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1731
    .line 1732
    .line 1733
    invoke-static {v9, v11}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    .line 1735
    .line 1736
    iget-object v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1737
    .line 1738
    invoke-static {v5}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 1739
    .line 1740
    .line 1741
    iget-object v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 1742
    .line 1743
    check-cast v5, Ljava/util/ArrayList;

    .line 1744
    .line 1745
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v5

    .line 1749
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1750
    .line 1751
    .line 1752
    move-result v9

    .line 1753
    if-eqz v9, :cond_41

    .line 1754
    .line 1755
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v9

    .line 1759
    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1760
    .line 1761
    iget-object v11, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1762
    .line 1763
    iget-object v9, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 1764
    .line 1765
    iget v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 1766
    .line 1767
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1768
    .line 1769
    const-string v14, "Chimera #"

    .line 1770
    .line 1771
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 1775
    .line 1776
    .line 1777
    move-result v14

    .line 1778
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1779
    .line 1780
    .line 1781
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v13

    .line 1785
    const/4 v14, 0x1

    .line 1786
    invoke-virtual {v11, v12, v9, v13, v14}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1787
    .line 1788
    .line 1789
    goto :goto_28

    .line 1790
    :cond_41
    const/4 v14, 0x1

    .line 1791
    int-to-long v5, v6

    .line 1792
    iget-wide v11, v8, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 1793
    .line 1794
    add-long/2addr v5, v11

    .line 1795
    long-to-int v6, v5

    .line 1796
    add-int/2addr v7, v14

    .line 1797
    invoke-virtual {v1, v8, v0}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 1798
    .line 1799
    .line 1800
    iget-object v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1801
    .line 1802
    sget-object v8, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1803
    .line 1804
    if-ne v5, v8, :cond_42

    .line 1805
    .line 1806
    iget-boolean v8, v1, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 1807
    .line 1808
    if-nez v8, :cond_3e

    .line 1809
    .line 1810
    :cond_42
    sget-object v8, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1811
    .line 1812
    if-ne v5, v8, :cond_43

    .line 1813
    .line 1814
    iget-boolean v5, v1, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 1815
    .line 1816
    if-eqz v5, :cond_43

    .line 1817
    .line 1818
    goto/16 :goto_27

    .line 1819
    .line 1820
    :cond_43
    int-to-long v8, v6

    .line 1821
    cmp-long v5, v8, v19

    .line 1822
    .line 1823
    if-lez v5, :cond_44

    .line 1824
    .line 1825
    :goto_29
    const/4 v5, 0x1

    .line 1826
    goto :goto_2a

    .line 1827
    :cond_44
    sub-long v14, v19, v8

    .line 1828
    .line 1829
    const-wide/16 v8, 0x5000

    .line 1830
    .line 1831
    cmp-long v5, v14, v8

    .line 1832
    .line 1833
    if-gez v5, :cond_45

    .line 1834
    .line 1835
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1836
    .line 1837
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1838
    .line 1839
    .line 1840
    const-string v5, "PolicyHandler"

    .line 1841
    .line 1842
    const-string/jumbo v8, "relTarget - released < 20480, stop kill"

    .line 1843
    .line 1844
    .line 1845
    invoke-static {v5, v8}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    .line 1847
    .line 1848
    goto :goto_29

    .line 1849
    :cond_45
    const/4 v5, 0x0

    .line 1850
    :goto_2a
    if-eqz v5, :cond_3e

    .line 1851
    .line 1852
    :goto_2b
    iget v5, v1, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 1853
    .line 1854
    int-to-long v8, v5

    .line 1855
    iget-wide v11, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    .line 1856
    .line 1857
    mul-long/2addr v11, v8

    .line 1858
    int-to-long v13, v6

    .line 1859
    add-long/2addr v11, v13

    .line 1860
    const/4 v15, 0x1

    .line 1861
    add-int/2addr v5, v15

    .line 1862
    move-object v15, v4

    .line 1863
    int-to-long v4, v5

    .line 1864
    div-long/2addr v11, v4

    .line 1865
    iput-wide v11, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    .line 1866
    .line 1867
    iget-wide v11, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 1868
    .line 1869
    mul-long/2addr v8, v11

    .line 1870
    add-long/2addr v8, v2

    .line 1871
    add-long/2addr v8, v13

    .line 1872
    div-long/2addr v8, v4

    .line 1873
    iput-wide v8, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 1874
    .line 1875
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1876
    .line 1877
    const-string v5, "AggressivePolicyHandler"

    .line 1878
    .line 1879
    const-string/jumbo v8, "kill complete: killed "

    .line 1880
    .line 1881
    .line 1882
    const-string v9, " apps, freed "

    .line 1883
    .line 1884
    const-string v11, " KB"

    .line 1885
    .line 1886
    invoke-static {v7, v6, v8, v9, v11}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v6

    .line 1890
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1891
    .line 1892
    .line 1893
    invoke-static {v5, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    .line 1895
    .line 1896
    if-lez v7, :cond_46

    .line 1897
    .line 1898
    sget-object v4, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1899
    .line 1900
    iput-object v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1901
    .line 1902
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 1903
    .line 1904
    .line 1905
    const/4 v5, 0x1

    .line 1906
    goto :goto_2c

    .line 1907
    :cond_46
    iget v4, v1, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 1908
    .line 1909
    const/4 v5, 0x1

    .line 1910
    add-int/2addr v4, v5

    .line 1911
    iput v4, v1, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 1912
    .line 1913
    iget-object v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1914
    .line 1915
    sget-object v6, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1916
    .line 1917
    if-ne v4, v6, :cond_47

    .line 1918
    .line 1919
    goto :goto_2d

    .line 1920
    :cond_47
    iput-object v6, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1921
    .line 1922
    :goto_2c
    if-eqz v7, :cond_48

    .line 1923
    .line 1924
    :goto_2d
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 1925
    .line 1926
    const-string v2, "AggressivePolicyHandler"

    .line 1927
    .line 1928
    invoke-virtual {v0, v2}, Lcom/android/server/chimera/SkipReasonLogger;->printLog(Ljava/lang/String;)V

    .line 1929
    .line 1930
    .line 1931
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1932
    .line 1933
    const-string v1, "AggressivePolicyHandler"

    .line 1934
    .line 1935
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1936
    .line 1937
    const-string v3, "Processing time(ms) "

    .line 1938
    .line 1939
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1940
    .line 1941
    .line 1942
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1943
    .line 1944
    .line 1945
    move-result-wide v3

    .line 1946
    sub-long v3, v3, v17

    .line 1947
    .line 1948
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1949
    .line 1950
    .line 1951
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v2

    .line 1955
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1956
    .line 1957
    .line 1958
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    .line 1960
    .line 1961
    return v7

    .line 1962
    :cond_48
    move-object v4, v15

    .line 1963
    const/4 v11, 0x4

    .line 1964
    goto/16 :goto_16

    .line 1965
    .line 1966
    :goto_2e
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1967
    .line 1968
    const-string v1, "AggressivePolicyHandler"

    .line 1969
    .line 1970
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1971
    .line 1972
    const-string/jumbo v3, "executePolicy() - getAppsToKill return "

    .line 1973
    .line 1974
    .line 1975
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1976
    .line 1977
    .line 1978
    if-eqz v15, :cond_49

    .line 1979
    .line 1980
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 1981
    .line 1982
    .line 1983
    move-result v3

    .line 1984
    goto :goto_2f

    .line 1985
    :cond_49
    const/4 v3, 0x0

    .line 1986
    :goto_2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1987
    .line 1988
    .line 1989
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1990
    .line 1991
    .line 1992
    move-result-object v2

    .line 1993
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1994
    .line 1995
    .line 1996
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    .line 1998
    .line 1999
    goto/16 :goto_10
.end method

.method public final onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/android/server/chimera/PolicyHandler;->onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-nez p6, :cond_0

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide p3

    .line 20
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/chimera/HeavyLaunchCounter;->addLaunch(IJ)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final setWeight(FF)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 4
    .line 5
    new-instance p1, Ljava/math/BigDecimal;

    .line 6
    .line 7
    const/high16 p2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Ljava/math/BigDecimal;

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/math/BigDecimal;

    .line 28
    .line 29
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    .line 51
    .line 52
    return-void
.end method
