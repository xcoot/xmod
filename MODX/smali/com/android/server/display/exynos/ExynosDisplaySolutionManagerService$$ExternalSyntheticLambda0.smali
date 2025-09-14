.class public final synthetic Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 6
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 3
    iget v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 9
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 11
    const-string v3, "Send Pattern format: "

    .line 13
    const-string/jumbo v4, "setDisplayColorFeature is not ready: mBootCompleted="

    .line 16
    const-string/jumbo v5, "setDisplayFeature(): "

    .line 19
    iget-object v6, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter v6

    .line 22
    :try_start_0
    iget-boolean v7, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->DEBUG:Z

    .line 24
    if-eqz v7, :cond_0

    .line 26
    const-string v7, "ExynosDisplaySolutionManagerServiceImpl"

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v5, "  "

    .line 38
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v5, "  "

    .line 46
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v5, "  "

    .line 54
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v5

    .line 64
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto/16 :goto_b

    .line 71
    :cond_0
    :goto_0
    const-string/jumbo v5, "setDisplayColorFeature"

    .line 74
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_4

    .line 80
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 82
    iget v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 84
    iget-boolean v3, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    .line 86
    if-eqz v3, :cond_3

    .line 88
    if-lez v0, :cond_1

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v3, "setDisplayColorFeature(): "

    .line 101
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v3, "  "

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    const-string v3, "ExynosDisplayColor"

    .line 127
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-nez v1, :cond_2

    .line 132
    if-nez v2, :cond_2

    .line 134
    if-eqz p0, :cond_2

    .line 136
    invoke-virtual {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setXMLColorModesImpl(Ljava/lang/String;)V

    .line 139
    :cond_2
    monitor-exit v6

    .line 140
    goto/16 :goto_a

    .line 142
    :cond_3
    :goto_1
    const-string p0, "ExynosDisplaySolutionManagerServiceImpl"

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget-boolean p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    .line 151
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    const-string p1, ", timer_count="

    .line 156
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    monitor-exit v6

    .line 170
    goto/16 :goto_a

    .line 172
    :cond_4
    const-string/jumbo v4, "dqe_tune"

    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result v4

    .line 179
    const/4 v5, 0x0

    .line 180
    const/4 v7, 0x1

    .line 181
    if-eqz v4, :cond_7

    .line 183
    if-nez v1, :cond_6

    .line 185
    if-nez v2, :cond_5

    .line 187
    goto :goto_2

    .line 188
    :cond_5
    move v5, v7

    .line 189
    :goto_2
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo v0, "enableTuneDQE: enable="

    .line 199
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    const-string v0, "ExynosDisplayTune"

    .line 211
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz v5, :cond_6

    .line 216
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 218
    const-string/jumbo v0, "xml"

    .line 221
    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    move-result-object p1

    .line 225
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CALIB_DATA_XML_PATH:Ljava/lang/String;

    .line 227
    invoke-static {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    move-result-object p1

    .line 231
    const-string/jumbo v0, "tune"

    .line 234
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_6
    monitor-exit v6

    .line 238
    goto/16 :goto_a

    .line 240
    :cond_7
    const-string/jumbo v4, "hdr_tune"

    .line 243
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    move-result v4

    .line 247
    if-eqz v4, :cond_a

    .line 249
    if-eqz p0, :cond_9

    .line 251
    const-string v0, "0x"

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_8

    .line 259
    const/16 v0, 0x10

    .line 261
    goto :goto_3

    .line 262
    :cond_8
    const/16 v0, 0xa

    .line 264
    :goto_3
    const-string v4, "^0x"

    .line 266
    const-string v5, ""

    .line 268
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    move-result-object p0

    .line 272
    invoke-static {p0, v0}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    .line 275
    move-result-wide v4

    .line 276
    new-instance p0, Landroid/content/Intent;

    .line 278
    const-string/jumbo v0, "com.android.server.display.HDR_TUNE_PATTERN_CHANGED"

    .line 281
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    const/high16 v0, 0x40000000    # 2.0f

    .line 286
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    const-string/jumbo v0, "com.android.settings"

    .line 292
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string/jumbo v0, "com.android.server.display.hdr_tune_format"

    .line 298
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const-string/jumbo v0, "com.android.server.display.hdr_tune_type"

    .line 304
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    const-string/jumbo v0, "com.android.server.display.hdr_tune_color"

    .line 310
    invoke-virtual {p0, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 313
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 315
    new-instance v7, Landroid/os/UserHandle;

    .line 317
    const/4 v8, -0x2

    .line 318
    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 321
    invoke-virtual {v0, p0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 324
    const-string/jumbo v0, "com.android.exynos.hdrdisplaytune"

    .line 327
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 332
    new-instance v0, Landroid/os/UserHandle;

    .line 334
    invoke-direct {v0, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 337
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 340
    const-string p0, "ExynosDisplaySolutionManagerServiceImpl"

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    .line 344
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    const-string v0, " pattern: "

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    const-string v0, " RGBA: "

    .line 360
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    move-result-object p1

    .line 374
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_9
    monitor-exit v6

    .line 378
    goto/16 :goto_a

    .line 380
    :cond_a
    const-string p0, "atc_user"

    .line 382
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    move-result p0

    .line 386
    if-eqz p0, :cond_11

    .line 388
    if-nez v1, :cond_c

    .line 390
    if-nez v2, :cond_b

    .line 392
    goto :goto_4

    .line 393
    :cond_b
    move v5, v7

    .line 394
    :goto_4
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 396
    invoke-virtual {p0, v5}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 399
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 401
    invoke-virtual {p0, v5}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 404
    goto :goto_5

    .line 405
    :cond_c
    if-ne v1, v7, :cond_e

    .line 407
    iget-boolean p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcAlreadyEnable:Z

    .line 409
    if-nez p0, :cond_d

    .line 411
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 413
    invoke-virtual {p0, v7}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 416
    iput-boolean v7, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcAlreadyEnable:Z

    .line 418
    :cond_d
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    invoke-static {v5}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 426
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 428
    invoke-virtual {p0, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setLastLuminance(I)V

    .line 431
    goto :goto_5

    .line 432
    :cond_e
    const/4 p0, 0x2

    .line 433
    if-ne v1, p0, :cond_10

    .line 435
    if-nez v2, :cond_f

    .line 437
    move v7, v5

    .line 438
    :cond_f
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 440
    invoke-virtual {p0, v7}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 443
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 445
    invoke-virtual {p0, v5}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 448
    :cond_10
    :goto_5
    monitor-exit v6

    .line 449
    goto/16 :goto_a

    .line 451
    :cond_11
    const-string p0, "atc_tune"

    .line 453
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    move-result p0

    .line 457
    if-eqz p0, :cond_1a

    .line 459
    if-eqz v1, :cond_12

    .line 461
    const/4 p0, 0x7

    .line 462
    if-ne v1, p0, :cond_16

    .line 464
    :cond_12
    if-nez v2, :cond_13

    .line 466
    move p0, v5

    .line 467
    goto :goto_6

    .line 468
    :cond_13
    move p0, v7

    .line 469
    :goto_6
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 471
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 477
    if-eqz v1, :cond_15

    .line 479
    if-eqz p0, :cond_14

    .line 481
    goto :goto_7

    .line 482
    :cond_14
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 484
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->resetATC()V

    .line 487
    goto :goto_8

    .line 488
    :cond_15
    :goto_7
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 490
    invoke-virtual {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 493
    :goto_8
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 495
    invoke-virtual {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 498
    :cond_16
    const/16 p0, 0x8

    .line 500
    if-ne v1, p0, :cond_18

    .line 502
    if-nez v2, :cond_17

    .line 504
    goto :goto_9

    .line 505
    :cond_17
    move v5, v7

    .line 506
    :goto_9
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 508
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    invoke-static {v5}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 514
    :cond_18
    const/16 p0, 0x9

    .line 516
    if-ne v1, p0, :cond_19

    .line 518
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 520
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    invoke-static {v7}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 526
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 528
    invoke-virtual {p0, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setLastLuminance(I)V

    .line 531
    :cond_19
    monitor-exit v6

    .line 532
    goto :goto_a

    .line 533
    :cond_1a
    const-string p0, "atc_timer"

    .line 535
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 538
    move-result p0

    .line 539
    if-eqz p0, :cond_1b

    .line 541
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    invoke-static {v7}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 549
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 551
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setCountDownTimer(II)V

    .line 554
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 556
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    .line 559
    monitor-exit v6

    .line 560
    goto :goto_a

    .line 561
    :cond_1b
    const-string/jumbo p0, "factory_timer"

    .line 564
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    move-result p0

    .line 568
    if-eqz p0, :cond_1c

    .line 570
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 572
    const/4 p1, 0x0

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->startCountDownTimer(Ljava/lang/String;)V

    .line 576
    monitor-exit v6

    .line 577
    goto :goto_a

    .line 578
    :cond_1c
    monitor-exit v6

    .line 579
    :goto_a
    return-void

    .line 580
    :goto_b
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    throw p0
.end method
