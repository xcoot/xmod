.class public final Lcom/android/server/display/exynos/ExynosDisplayTune;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public CALIB_DATA_XML_PATH:Ljava/lang/String;

.field public EXTENSION_OFF:Ljava/lang/String;

.field public EXTENSION_ON:Ljava/lang/String;

.field public mDelayMs:J

.field public mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

.field public mPeriodMs:J

.field public mTuneTimer:Ljava/util/Timer;


# direct methods
.method public static getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {v0, v0, p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    array-length v3, v1

    .line 10
    if-ge v3, v2, :cond_1

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    const/16 v1, 0xa

    .line 17
    invoke-static {v1, v0, p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_2

    .line 23
    array-length p0, v1

    .line 24
    if-ge p0, v2, :cond_1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    aget-object p0, v1, v0

    .line 29
    const-string p1, "\\s*,\\s*"

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    aget-object p0, p0, v0

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_3

    .line 42
    :cond_2
    :goto_1
    return v0

    .line 43
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :goto_3
    return v0
.end method


# virtual methods
.method public final enableTuneTimer(Z)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    .line 5
    if-nez v0, :cond_1

    .line 7
    new-instance v1, Ljava/util/Timer;

    .line 9
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    .line 14
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayTune$1;

    .line 16
    invoke-direct {v2, p0}, Lcom/android/server/display/exynos/ExynosDisplayTune$1;-><init>(Lcom/android/server/display/exynos/ExynosDisplayTune;)V

    .line 19
    iget-wide v3, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mDelayMs:J

    .line 21
    iget-wide v5, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mPeriodMs:J

    .line 23
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    .line 37
    :cond_1
    :goto_0
    const-string/jumbo p0, "enableTuneTimer: enable="

    .line 40
    const-string v0, "ExynosDisplayTune"

    .line 42
    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

.method public final setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    const-string/jumbo v4, "cgc17_enc"

    .line 10
    const-string/jumbo v5, "hsc48_lcg"

    .line 13
    const-string/jumbo v6, "de"

    .line 16
    const-string/jumbo v7, "cgc17_con"

    .line 19
    const-string/jumbo v8, "scl"

    .line 22
    const-string/jumbo v9, "hsc"

    .line 25
    const-string/jumbo v10, "gamma_matrix"

    .line 28
    const-string/jumbo v11, "linear_matrix"

    .line 31
    const-string/jumbo v12, "cgc_dither"

    .line 34
    const-string/jumbo v13, "gamma"

    .line 37
    const-string/jumbo v14, "degamma"

    .line 40
    const-string v15, "ExynosDisplayTune"

    .line 42
    move-object/from16 v16, v4

    .line 44
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 52
    return-void

    .line 53
    :cond_0
    const-string/jumbo v0, "xml version: "

    .line 56
    move-object/from16 v17, v5

    .line 58
    const/16 v18, 0x0

    .line 60
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLNodeText(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_2

    .line 66
    array-length v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    move-object/from16 v19, v4

    .line 69
    const/4 v4, 0x1

    .line 70
    if-ge v1, v4, :cond_1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v1, 0x0

    .line 74
    :try_start_1
    aget-object v4, v5, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    move-object/from16 v18, v4

    .line 93
    goto :goto_2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    move-object/from16 v18, v4

    .line 97
    goto :goto_1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    goto :goto_1

    .line 100
    :catch_2
    move-exception v0

    .line 101
    move-object/from16 v19, v4

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move-object/from16 v19, v4

    .line 106
    :goto_0
    :try_start_3
    const-string/jumbo v0, "xml version not found"

    .line 109
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 112
    goto :goto_2

    .line 113
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :goto_2
    if-nez v18, :cond_3

    .line 118
    return-void

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v1, "setCalibrationDQE+ ("

    .line 124
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 129
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 132
    move-result v4

    .line 133
    const-string v5, ")"

    .line 135
    invoke-static {v0, v4, v5, v15}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 141
    move-result v0

    .line 142
    new-array v0, v0, [I

    .line 144
    const/4 v1, 0x0

    .line 145
    :goto_3
    sget-object v4, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 147
    invoke-virtual {v4}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 150
    move-result v4

    .line 151
    if-ge v1, v4, :cond_4

    .line 153
    const/4 v4, 0x0

    .line 154
    aput v4, v0, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 158
    goto :goto_3

    .line 159
    :cond_4
    :try_start_4
    invoke-static {v2, v3, v12}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move-result v1

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const-string/jumbo v5, "cgc_dither: enable = "

    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v4

    .line 181
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-lez v1, :cond_5

    .line 186
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 188
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 191
    move-result v1

    .line 192
    const/4 v4, 0x1

    .line 193
    aput v4, v0, v1

    .line 195
    goto :goto_5

    .line 196
    :catch_3
    move-exception v0

    .line 197
    move-object/from16 v18, v15

    .line 199
    :goto_4
    move-object/from16 v5, v19

    .line 201
    goto/16 :goto_18

    .line 203
    :cond_5
    :goto_5
    invoke-static {v2, v3, v14}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-result v1

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    const-string/jumbo v5, "degamma: enable = "

    .line 215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v4

    .line 225
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-lez v1, :cond_6

    .line 230
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 232
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 235
    move-result v1

    .line 236
    const/4 v4, 0x1

    .line 237
    aput v4, v0, v1

    .line 239
    :cond_6
    invoke-static {v2, v3, v13}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-result v1

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    const-string/jumbo v5, "gamma: enable = "

    .line 251
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v4

    .line 261
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-lez v1, :cond_7

    .line 266
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 268
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 271
    move-result v1

    .line 272
    const/4 v4, 0x1

    .line 273
    aput v4, v0, v1

    .line 275
    :cond_7
    invoke-static {v2, v3, v11}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    move-result v1

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    .line 281
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    const-string/jumbo v5, "linear_matrix: enable = "

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object v4

    .line 297
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-lez v1, :cond_8

    .line 302
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->linear_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 304
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 307
    move-result v1

    .line 308
    const/4 v4, 0x1

    .line 309
    aput v4, v0, v1

    .line 311
    :cond_8
    invoke-static {v2, v3, v10}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    move-result v1

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    .line 317
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    const-string/jumbo v5, "gamma_matrix: enable = "

    .line 323
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v4

    .line 333
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-lez v1, :cond_9

    .line 338
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 340
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 343
    move-result v1

    .line 344
    const/4 v4, 0x1

    .line 345
    aput v4, v0, v1

    .line 347
    :cond_9
    invoke-static {v2, v3, v9}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move-result v1

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    .line 353
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    const-string/jumbo v5, "hsc: enable = "

    .line 359
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object v4

    .line 369
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-lez v1, :cond_b

    .line 374
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 376
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 379
    move-result v1

    .line 380
    :goto_6
    sget-object v4, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 382
    invoke-virtual {v4}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 385
    move-result v4

    .line 386
    if-gt v1, v4, :cond_a

    .line 388
    const/4 v4, 0x1

    .line 389
    aput v4, v0, v1

    .line 391
    add-int/lit8 v1, v1, 0x1

    .line 393
    goto :goto_6

    .line 394
    :cond_a
    const/4 v4, 0x1

    .line 395
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 397
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 400
    move-result v1

    .line 401
    aput v4, v0, v1

    .line 403
    :cond_b
    invoke-static {v2, v3, v8}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    move-result v1

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    .line 409
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    const-string/jumbo v5, "scl: enable = "

    .line 415
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    move-result-object v4

    .line 425
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-lez v1, :cond_c

    .line 430
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 432
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 435
    move-result v1

    .line 436
    const/4 v4, 0x1

    .line 437
    aput v4, v0, v1

    .line 439
    :cond_c
    invoke-static {v2, v3, v7}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    move-result v1

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    .line 445
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    const-string/jumbo v5, "cgc17_con: enable = "

    .line 451
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    move-result-object v4

    .line 461
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-lez v1, :cond_e

    .line 466
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 468
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 471
    move-result v1

    .line 472
    :goto_7
    sget-object v4, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 474
    invoke-virtual {v4}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 477
    move-result v4

    .line 478
    if-gt v1, v4, :cond_d

    .line 480
    const/4 v4, 0x1

    .line 481
    aput v4, v0, v1

    .line 483
    add-int/lit8 v1, v1, 0x1

    .line 485
    goto :goto_7

    .line 486
    :cond_d
    const/4 v4, 0x1

    .line 487
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 489
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 492
    move-result v1

    .line 493
    aput v4, v0, v1

    .line 495
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 497
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 500
    move-result v1

    .line 501
    aput v4, v0, v1

    .line 503
    :cond_e
    invoke-static {v2, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    move-result v1

    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    .line 509
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    const-string/jumbo v5, "de: enable = "

    .line 515
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    move-result-object v4

    .line 525
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    if-lez v1, :cond_f

    .line 530
    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 532
    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 535
    move-result v1

    .line 536
    const/4 v4, 0x1

    .line 537
    aput v4, v0, v1

    .line 539
    :cond_f
    const/4 v1, 0x0

    .line 540
    :goto_8
    sget-object v4, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 542
    invoke-virtual {v4}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 545
    move-result v4

    .line 546
    if-ge v1, v4, :cond_31

    .line 548
    aget v4, v0, v1

    .line 550
    sget-object v5, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->none:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 552
    invoke-virtual {v5}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 555
    move-result v5

    .line 556
    if-gt v1, v5, :cond_10

    .line 558
    move-object/from16 v20, v0

    .line 560
    move-object v4, v7

    .line 561
    move-object/from16 v23, v8

    .line 563
    move-object/from16 v18, v15

    .line 565
    move-object/from16 v8, v16

    .line 567
    move-object/from16 v5, v19

    .line 569
    const/4 v2, 0x1

    .line 570
    const/4 v7, 0x0

    .line 571
    move-object/from16 v19, v12

    .line 573
    :goto_9
    move-object/from16 v12, p0

    .line 575
    goto/16 :goto_17

    .line 577
    :cond_10
    sget-object v5, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 579
    invoke-virtual {v5}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 582
    move-result v5

    .line 583
    if-gt v1, v5, :cond_13

    .line 585
    const/4 v5, 0x0

    .line 586
    invoke-static {v5, v5, v2, v3, v12}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 589
    move-result-object v4

    .line 590
    if-eqz v4, :cond_12

    .line 592
    array-length v5, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 593
    move-object/from16 v18, v15

    .line 595
    const/4 v15, 0x1

    .line 596
    if-lt v5, v15, :cond_11

    .line 598
    const/4 v5, 0x0

    .line 599
    :try_start_5
    aget-object v4, v4, v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 601
    move-object/from16 v5, v19

    .line 603
    :try_start_6
    invoke-virtual {v5, v12}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 606
    move-result-object v15

    .line 607
    invoke-static {v15, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 610
    :goto_a
    move-object/from16 v20, v0

    .line 612
    move-object v4, v7

    .line 613
    move-object/from16 v23, v8

    .line 615
    move-object/from16 v19, v12

    .line 617
    move-object/from16 v8, v16

    .line 619
    const/4 v2, 0x1

    .line 620
    :goto_b
    const/4 v7, 0x0

    .line 621
    goto :goto_9

    .line 622
    :catch_4
    move-exception v0

    .line 623
    goto/16 :goto_4

    .line 625
    :cond_11
    move-object/from16 v5, v19

    .line 627
    move-object/from16 v20, v0

    .line 629
    move-object v4, v7

    .line 630
    move-object/from16 v23, v8

    .line 632
    move-object/from16 v19, v12

    .line 634
    move v2, v15

    .line 635
    move-object/from16 v8, v16

    .line 637
    goto :goto_b

    .line 638
    :cond_12
    move-object/from16 v18, v15

    .line 640
    move-object/from16 v5, v19

    .line 642
    goto :goto_a

    .line 643
    :cond_13
    move-object/from16 v18, v15

    .line 645
    move-object/from16 v5, v19

    .line 647
    sget-object v15, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 649
    invoke-virtual {v15}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 652
    move-result v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 653
    move-object/from16 v20, v0

    .line 655
    move-object/from16 v19, v12

    .line 657
    move-object/from16 v12, p0

    .line 659
    iget-object v0, v12, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_ON:Ljava/lang/String;

    .line 661
    move-object/from16 v21, v6

    .line 663
    iget-object v6, v12, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    .line 665
    move-object/from16 v22, v7

    .line 667
    if-gt v1, v15, :cond_18

    .line 669
    const/4 v15, 0x0

    .line 670
    :try_start_7
    invoke-static {v15, v15, v2, v3, v14}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 673
    move-result-object v4

    .line 674
    if-eqz v4, :cond_15

    .line 676
    array-length v7, v4

    .line 677
    move-object/from16 v23, v8

    .line 679
    const/4 v8, 0x1

    .line 680
    if-lt v7, v8, :cond_14

    .line 682
    aget-object v0, v4, v15

    .line 684
    invoke-virtual {v12, v0, v6}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteDegamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    goto :goto_e

    .line 688
    :catch_5
    move-exception v0

    .line 689
    goto/16 :goto_18

    .line 691
    :cond_14
    :goto_c
    move v4, v15

    .line 692
    const/16 v7, 0xa

    .line 694
    goto :goto_d

    .line 695
    :cond_15
    move-object/from16 v23, v8

    .line 697
    goto :goto_c

    .line 698
    :goto_d
    invoke-static {v7, v4, v2, v3, v14}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 701
    move-result-object v7

    .line 702
    if-eqz v7, :cond_16

    .line 704
    array-length v8, v7

    .line 705
    const/4 v15, 0x1

    .line 706
    if-lt v8, v15, :cond_16

    .line 708
    aget-object v7, v7, v4

    .line 710
    invoke-virtual {v12, v7, v6}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteDegamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/16 v6, 0x8

    .line 715
    invoke-static {v6, v4, v2, v3, v14}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 718
    move-result-object v6

    .line 719
    if-eqz v6, :cond_16

    .line 721
    array-length v7, v6

    .line 722
    if-lt v7, v15, :cond_16

    .line 724
    aget-object v6, v6, v4

    .line 726
    invoke-virtual {v12, v6, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteDegamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_16
    :goto_e
    move-object/from16 v8, v16

    .line 731
    :cond_17
    :goto_f
    move-object/from16 v6, v21

    .line 733
    move-object/from16 v4, v22

    .line 735
    :goto_10
    const/4 v2, 0x1

    .line 736
    :goto_11
    const/4 v7, 0x0

    .line 737
    goto/16 :goto_17

    .line 739
    :cond_18
    move-object/from16 v23, v8

    .line 741
    sget-object v7, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 743
    invoke-virtual {v7}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 746
    move-result v7

    .line 747
    if-gt v1, v7, :cond_1a

    .line 749
    const/4 v7, 0x0

    .line 750
    invoke-static {v7, v7, v2, v3, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 753
    move-result-object v4

    .line 754
    if-eqz v4, :cond_19

    .line 756
    array-length v8, v4

    .line 757
    const/4 v15, 0x1

    .line 758
    if-lt v8, v15, :cond_19

    .line 760
    aget-object v0, v4, v7

    .line 762
    invoke-virtual {v12, v0, v6}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    goto :goto_e

    .line 766
    :cond_19
    move v4, v7

    .line 767
    const/16 v7, 0xa

    .line 769
    invoke-static {v7, v4, v2, v3, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 772
    move-result-object v7

    .line 773
    if-eqz v7, :cond_16

    .line 775
    array-length v8, v7

    .line 776
    const/4 v15, 0x1

    .line 777
    if-lt v8, v15, :cond_16

    .line 779
    aget-object v7, v7, v4

    .line 781
    invoke-virtual {v12, v7, v6}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/16 v6, 0x8

    .line 786
    invoke-static {v6, v4, v2, v3, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 789
    move-result-object v6

    .line 790
    if-eqz v6, :cond_16

    .line 792
    array-length v7, v6

    .line 793
    if-lt v7, v15, :cond_16

    .line 795
    aget-object v6, v6, v4

    .line 797
    invoke-virtual {v12, v6, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    goto :goto_e

    .line 801
    :cond_1a
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->linear_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 803
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 806
    move-result v0

    .line 807
    if-gt v1, v0, :cond_1e

    .line 809
    const/4 v6, 0x0

    .line 810
    invoke-static {v6, v6, v2, v3, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 813
    move-result-object v0

    .line 814
    if-eqz v0, :cond_1c

    .line 816
    array-length v4, v0

    .line 817
    const/4 v7, 0x1

    .line 818
    if-lt v4, v7, :cond_1b

    .line 820
    aget-object v0, v0, v6

    .line 822
    invoke-virtual {v5, v11}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 825
    move-result-object v4

    .line 826
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 829
    goto :goto_e

    .line 830
    :cond_1b
    move v2, v7

    .line 831
    move-object/from16 v8, v16

    .line 833
    move-object/from16 v4, v22

    .line 835
    move v7, v6

    .line 836
    :goto_12
    move-object/from16 v6, v21

    .line 838
    goto/16 :goto_17

    .line 840
    :cond_1c
    move v7, v6

    .line 841
    :goto_13
    move-object/from16 v8, v16

    .line 843
    move-object/from16 v6, v21

    .line 845
    move-object/from16 v4, v22

    .line 847
    :cond_1d
    :goto_14
    const/4 v2, 0x1

    .line 848
    goto/16 :goto_17

    .line 850
    :cond_1e
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 852
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 855
    move-result v0

    .line 856
    if-gt v1, v0, :cond_1f

    .line 858
    const/4 v6, 0x0

    .line 859
    invoke-static {v6, v6, v2, v3, v10}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 862
    move-result-object v0

    .line 863
    if-eqz v0, :cond_1c

    .line 865
    array-length v4, v0

    .line 866
    const/4 v7, 0x1

    .line 867
    if-lt v4, v7, :cond_1b

    .line 869
    aget-object v0, v0, v6

    .line 871
    invoke-virtual {v5, v10}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 874
    move-result-object v4

    .line 875
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 878
    goto/16 :goto_e

    .line 880
    :cond_1f
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 882
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 885
    move-result v0

    .line 886
    if-gt v1, v0, :cond_21

    .line 888
    const/4 v6, 0x1

    .line 889
    if-ne v4, v6, :cond_16

    .line 891
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 893
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 896
    move-result v0

    .line 897
    sub-int v0, v1, v0

    .line 899
    move-object/from16 v6, v17

    .line 901
    const/4 v4, 0x0

    .line 902
    invoke-static {v0, v4, v2, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 905
    move-result-object v7

    .line 906
    if-eqz v7, :cond_20

    .line 908
    array-length v8, v7

    .line 909
    const/4 v15, 0x1

    .line 910
    if-lt v8, v15, :cond_20

    .line 912
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 915
    move-result-object v0

    .line 916
    aget-object v7, v7, v4

    .line 918
    const-string/jumbo v4, "hsc48_idx"

    .line 921
    invoke-virtual {v5, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 924
    move-result-object v4

    .line 925
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 928
    invoke-virtual {v5, v6}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 931
    move-result-object v0

    .line 932
    invoke-static {v0, v7}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 935
    :cond_20
    :goto_15
    move-object/from16 v17, v6

    .line 937
    goto/16 :goto_e

    .line 939
    :cond_21
    move-object/from16 v6, v17

    .line 941
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 943
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 946
    move-result v0

    .line 947
    if-gt v1, v0, :cond_24

    .line 949
    const/4 v7, 0x0

    .line 950
    invoke-static {v7, v7, v2, v3, v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 953
    move-result-object v0

    .line 954
    if-eqz v0, :cond_23

    .line 956
    array-length v4, v0

    .line 957
    const/4 v8, 0x1

    .line 958
    if-lt v4, v8, :cond_22

    .line 960
    aget-object v0, v0, v7

    .line 962
    invoke-virtual {v5, v9}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 965
    move-result-object v4

    .line 966
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 969
    goto :goto_15

    .line 970
    :cond_22
    move-object/from16 v17, v6

    .line 972
    move v2, v8

    .line 973
    :goto_16
    move-object/from16 v8, v16

    .line 975
    move-object/from16 v6, v21

    .line 977
    move-object/from16 v4, v22

    .line 979
    goto/16 :goto_17

    .line 981
    :cond_23
    move-object/from16 v17, v6

    .line 983
    goto/16 :goto_13

    .line 985
    :cond_24
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 987
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 990
    move-result v0

    .line 991
    if-gt v1, v0, :cond_28

    .line 993
    move-object/from16 v7, v23

    .line 995
    const/4 v8, 0x0

    .line 996
    invoke-static {v8, v8, v2, v3, v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 999
    move-result-object v0

    .line 1000
    if-eqz v0, :cond_27

    .line 1002
    array-length v4, v0

    .line 1003
    const/4 v15, 0x1

    .line 1004
    if-lt v4, v15, :cond_26

    .line 1006
    aget-object v0, v0, v8

    .line 1008
    invoke-virtual {v5, v7}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 1011
    move-result-object v4

    .line 1012
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1015
    :cond_25
    move-object/from16 v17, v6

    .line 1017
    move-object/from16 v23, v7

    .line 1019
    goto/16 :goto_e

    .line 1021
    :cond_26
    move-object/from16 v17, v6

    .line 1023
    move-object/from16 v23, v7

    .line 1025
    move v7, v8

    .line 1026
    move v2, v15

    .line 1027
    goto :goto_16

    .line 1028
    :cond_27
    move-object/from16 v17, v6

    .line 1030
    move-object/from16 v23, v7

    .line 1032
    move v7, v8

    .line 1033
    goto/16 :goto_13

    .line 1035
    :cond_28
    move-object/from16 v7, v23

    .line 1037
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 1039
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 1042
    move-result v0

    .line 1043
    if-gt v1, v0, :cond_2a

    .line 1045
    const/4 v8, 0x1

    .line 1046
    if-ne v4, v8, :cond_25

    .line 1048
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 1050
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 1053
    move-result v4

    .line 1054
    sub-int v4, v1, v4

    .line 1056
    div-int/lit8 v4, v4, 0x11

    .line 1058
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 1061
    move-result v0

    .line 1062
    sub-int v0, v1, v0

    .line 1064
    rem-int/lit8 v0, v0, 0x11

    .line 1066
    move-object/from16 v8, v16

    .line 1068
    invoke-static {v4, v0, v2, v3, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1071
    move-result-object v15

    .line 1072
    if-eqz v15, :cond_29

    .line 1074
    move-object/from16 v17, v6

    .line 1076
    array-length v6, v15

    .line 1077
    move-object/from16 v23, v7

    .line 1079
    const/4 v7, 0x1

    .line 1080
    if-lt v6, v7, :cond_17

    .line 1082
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1084
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1087
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1090
    move-result-object v4

    .line 1091
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    const-string v4, " "

    .line 1096
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1102
    move-result-object v0

    .line 1103
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1109
    move-result-object v0

    .line 1110
    const/4 v4, 0x0

    .line 1111
    aget-object v6, v15, v4

    .line 1113
    const-string/jumbo v4, "cgc17_idx"

    .line 1116
    invoke-virtual {v5, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 1119
    move-result-object v4

    .line 1120
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1123
    invoke-virtual {v5, v8}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 1126
    move-result-object v0

    .line 1127
    invoke-static {v0, v6}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1130
    goto/16 :goto_f

    .line 1132
    :cond_29
    move-object/from16 v17, v6

    .line 1134
    move-object/from16 v23, v7

    .line 1136
    goto/16 :goto_f

    .line 1138
    :cond_2a
    move-object/from16 v17, v6

    .line 1140
    move-object/from16 v23, v7

    .line 1142
    move-object/from16 v8, v16

    .line 1144
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 1146
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 1149
    move-result v0

    .line 1150
    if-gt v1, v0, :cond_2c

    .line 1152
    const/4 v6, 0x1

    .line 1153
    if-ne v4, v6, :cond_2b

    .line 1155
    const-string/jumbo v0, "cgc17_dec"

    .line 1158
    invoke-virtual {v5, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 1161
    move-result-object v0

    .line 1162
    const-string v4, "7"

    .line 1164
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 1167
    move-result-object v4

    .line 1168
    invoke-static {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    .line 1171
    goto/16 :goto_f

    .line 1173
    :cond_2b
    move v2, v6

    .line 1174
    move-object/from16 v6, v21

    .line 1176
    move-object/from16 v4, v22

    .line 1178
    goto/16 :goto_11

    .line 1180
    :cond_2c
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 1182
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 1185
    move-result v0

    .line 1186
    if-gt v1, v0, :cond_2f

    .line 1188
    move-object/from16 v4, v22

    .line 1190
    const/4 v6, 0x0

    .line 1191
    invoke-static {v6, v6, v2, v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1194
    move-result-object v0

    .line 1195
    if-eqz v0, :cond_2e

    .line 1197
    array-length v7, v0

    .line 1198
    const/4 v15, 0x1

    .line 1199
    if-lt v7, v15, :cond_2d

    .line 1201
    aget-object v0, v0, v6

    .line 1203
    invoke-virtual {v5, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 1206
    move-result-object v6

    .line 1207
    invoke-static {v6, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1210
    move-object/from16 v6, v21

    .line 1212
    goto/16 :goto_10

    .line 1214
    :cond_2d
    move v7, v6

    .line 1215
    move v2, v15

    .line 1216
    goto/16 :goto_12

    .line 1218
    :cond_2e
    move v7, v6

    .line 1219
    move-object/from16 v6, v21

    .line 1221
    goto/16 :goto_14

    .line 1223
    :cond_2f
    move-object/from16 v4, v22

    .line 1225
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 1227
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 1230
    move-result v0

    .line 1231
    if-gt v1, v0, :cond_32

    .line 1233
    move-object/from16 v6, v21

    .line 1235
    const/4 v7, 0x0

    .line 1236
    invoke-static {v7, v7, v2, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1239
    move-result-object v0

    .line 1240
    if-eqz v0, :cond_1d

    .line 1242
    array-length v15, v0

    .line 1243
    const/4 v2, 0x1

    .line 1244
    if-lt v15, v2, :cond_30

    .line 1246
    aget-object v0, v0, v7

    .line 1248
    invoke-virtual {v5, v6}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 1251
    move-result-object v15

    .line 1252
    invoke-static {v15, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1255
    :cond_30
    :goto_17
    add-int/lit8 v1, v1, 0x1

    .line 1257
    move-object/from16 v2, p1

    .line 1259
    move-object v7, v4

    .line 1260
    move-object/from16 v16, v8

    .line 1262
    move-object/from16 v15, v18

    .line 1264
    move-object/from16 v12, v19

    .line 1266
    move-object/from16 v0, v20

    .line 1268
    move-object/from16 v8, v23

    .line 1270
    move-object/from16 v19, v5

    .line 1272
    goto/16 :goto_8

    .line 1274
    :cond_31
    move-object/from16 v18, v15

    .line 1276
    move-object/from16 v5, v19

    .line 1278
    goto :goto_19

    .line 1279
    :goto_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1282
    :cond_32
    :goto_19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1285
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->sendEmptyUpdate()V

    .line 1288
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->sendEmptyUpdate()V

    .line 1291
    const-string/jumbo v0, "setCalibrationDQE-"

    .line 1294
    move-object/from16 v1, v18

    .line 1296
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    return-void
.end method

.method public final sysfsWriteDegamma(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    if-eqz p2, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 7
    const-string/jumbo v0, "degamma_ext"

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 17
    move-result-object p2

    .line 18
    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    .line 21
    const-string/jumbo p2, "degamma"

    .line 24
    invoke-virtual {p0, p2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    .line 35
    :cond_0
    return-void
.end method

.method public final sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    if-eqz p2, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 7
    const-string/jumbo v0, "gamma_ext"

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 17
    move-result-object p2

    .line 18
    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    .line 21
    const-string/jumbo p2, "gamma"

    .line 24
    invoke-virtual {p0, p2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    .line 35
    :cond_0
    return-void
.end method
