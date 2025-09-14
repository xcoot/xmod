.class public final synthetic Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/HighBrightnessModeController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 5
    iput-object p2, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 6
    packed-switch v3, :pswitch_data_0

    .line 9
    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 11
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 13
    check-cast p0, Ljava/io/PrintWriter;

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v4, "HighBrightnessModeController:"

    .line 20
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    const-string v5, "  mBrightness="

    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget v5, v3, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 32
    const-string v6, "  mUnthrottledBrightness="

    .line 34
    invoke-static {v4, v5, p0, v6}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v4

    .line 38
    iget v5, v3, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    .line 40
    const-string v6, "  mThrottlingReason="

    .line 42
    invoke-static {v4, v5, p0, v6}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object v4

    .line 46
    iget v5, v3, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 48
    invoke-static {v5}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    const-string v5, "  mCurrentMin="

    .line 66
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget v5, v3, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 71
    const-string v6, "  mCurrentMax="

    .line 73
    invoke-static {v4, v5, p0, v6}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v3}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    .line 80
    move-result v6

    .line 81
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    const-string v6, "  mHbmMode="

    .line 95
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    iget v6, v3, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 100
    invoke-static {v6}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v6, v3, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 109
    const-string v7, ")"

    .line 111
    const-string v8, ""

    .line 113
    if-ne v6, v1, :cond_0

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 117
    const-string v9, "("

    .line 119
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    .line 125
    move-result v9

    .line 126
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v6

    .line 136
    goto :goto_0

    .line 137
    :cond_0
    move-object v6, v8

    .line 138
    :goto_0
    const-string v9, "  mHbmStatsState="

    .line 140
    invoke-static {p0, v6, v9, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 143
    move-result-object v4

    .line 144
    iget v6, v3, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    .line 146
    if-eq v6, v2, :cond_3

    .line 148
    if-eq v6, v1, :cond_2

    .line 150
    if-eq v6, v0, :cond_1

    .line 152
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    goto :goto_1

    .line 157
    :cond_1
    const-string v0, "HBM_ON_SUNLIGHT"

    .line 159
    goto :goto_1

    .line 160
    :cond_2
    const-string v0, "HBM_ON_HDR"

    .line 162
    goto :goto_1

    .line 163
    :cond_3
    const-string v0, "HBM_OFF"

    .line 165
    :goto_1
    const-string v1, "  mHbmData="

    .line 167
    invoke-static {p0, v0, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 170
    move-result-object v0

    .line 171
    iget-object v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "  mAmbientLux="

    .line 187
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    iget v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 195
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 197
    if-eqz v1, :cond_4

    .line 199
    goto :goto_2

    .line 200
    :cond_4
    const-string v8, " (old/invalid)"

    .line 202
    :goto_2
    const-string v1, "  mIsInAllowedAmbientRange="

    .line 204
    invoke-static {p0, v8, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 207
    move-result-object v0

    .line 208
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 210
    const-string v2, "  mIsAutoBrightnessEnabled="

    .line 212
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    move-result-object v0

    .line 216
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 218
    const-string v2, "  mIsAutoBrightnessOffByState="

    .line 220
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    move-result-object v0

    .line 224
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 226
    const-string v2, "  mIsHdrLayerPresent="

    .line 228
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    move-result-object v0

    .line 232
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 246
    const-string v1, "  mBrightnessMin="

    .line 248
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "  mBrightnessMax="

    .line 265
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    iget v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    .line 270
    const-string v2, "  remainingTime="

    .line 272
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    move-result-object v0

    .line 276
    iget-object v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    .line 278
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 284
    move-result-wide v1

    .line 285
    invoke-virtual {v3, v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    .line 288
    move-result-wide v1

    .line 289
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    .line 301
    const-string v1, "  mIsTimeAvailable= "

    .line 303
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 308
    const-string v2, "  mIsBlockedByLowPowerMode="

    .line 310
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    move-result-object v0

    .line 314
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 316
    const-string v2, "  width*height="

    .line 318
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    move-result-object v0

    .line 322
    iget v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, "*"

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 334
    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 337
    iget-object v0, v3, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 339
    if-eqz v0, :cond_7

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    .line 343
    const-string v1, "  mRunningStartTimeMillis="

    .line 345
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    iget-object v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 350
    iget-wide v1, v1, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    .line 352
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    const-string v0, "  mEvents="

    .line 368
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 374
    move-result-wide v0

    .line 375
    iget-object v2, v3, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 377
    iget-wide v4, v2, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    .line 379
    const-wide/16 v8, -0x1

    .line 381
    cmp-long v2, v4, v8

    .line 383
    const-string v6, "] ("

    .line 385
    const-string v8, ", "

    .line 387
    const-string v9, "    event: ["

    .line 389
    if-eqz v2, :cond_5

    .line 391
    sub-long v10, v0, v4

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    .line 395
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 401
    move-result-object v12

    .line 402
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 421
    move-result-object v0

    .line 422
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    move-wide v0, v4

    .line 436
    :cond_5
    iget-object v2, v3, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 438
    iget-object v2, v2, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    .line 440
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 443
    move-result-object v2

    .line 444
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 447
    move-result v3

    .line 448
    if-eqz v3, :cond_8

    .line 450
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 453
    move-result-object v3

    .line 454
    check-cast v3, Lcom/android/server/display/HbmEvent;

    .line 456
    iget-wide v4, v3, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    .line 458
    cmp-long v4, v0, v4

    .line 460
    if-lez v4, :cond_6

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    .line 464
    const-string v5, "    event: [normal brightness]: "

    .line 466
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    iget-wide v10, v3, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    .line 471
    sub-long/2addr v0, v10

    .line 472
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 475
    move-result-object v0

    .line 476
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    :cond_6
    iget-wide v0, v3, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    .line 488
    iget-wide v4, v3, Lcom/android/server/display/HbmEvent;->mStartTimeMillis:J

    .line 490
    sub-long/2addr v0, v4

    .line 491
    new-instance v10, Ljava/lang/StringBuilder;

    .line 493
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 499
    move-result-object v11

    .line 500
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget-wide v11, v3, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    .line 508
    invoke-static {v11, v12}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 511
    move-result-object v3

    .line 512
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    move-result-object v0

    .line 532
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    move-wide v0, v4

    .line 536
    goto :goto_3

    .line 537
    :cond_7
    const-string v0, "  mHighBrightnessModeMetadata=null"

    .line 539
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    :cond_8
    return-void

    .line 543
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 545
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 547
    check-cast p0, Ljava/lang/String;

    .line 549
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 555
    move-result-object p0

    .line 556
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    const-string v4, "HighBrightnessModeController"

    .line 561
    const/4 v5, 0x0

    .line 562
    const-string v6, "ON"

    .line 564
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    move-result v6

    .line 568
    if-nez v6, :cond_c

    .line 570
    const-string v6, "OFF"

    .line 572
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    move-result p0

    .line 576
    if-nez p0, :cond_b

    .line 578
    sget-boolean p0, Lcom/android/server/display/HighBrightnessModeController;->FEATURE_SUPPORT_HDR_SOLUTION:Z

    .line 580
    iput-boolean p0, v3, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    .line 582
    if-nez p0, :cond_d

    .line 584
    iget-object p0, v3, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 586
    const-class v6, Landroid/hardware/display/DisplayManager;

    .line 588
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 591
    move-result-object p0

    .line 592
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 594
    invoke-virtual {p0, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 597
    move-result-object p0

    .line 598
    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    .line 601
    move-result-object p0

    .line 602
    invoke-virtual {p0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    .line 605
    move-result-object p0

    .line 606
    if-eqz p0, :cond_d

    .line 608
    array-length v6, p0

    .line 609
    :goto_4
    if-ge v5, v6, :cond_d

    .line 611
    aget v7, p0, v5

    .line 613
    if-eq v7, v1, :cond_a

    .line 615
    const/4 v8, 0x4

    .line 616
    if-eq v7, v8, :cond_a

    .line 618
    if-ne v7, v0, :cond_9

    .line 620
    goto :goto_5

    .line 621
    :cond_9
    add-int/2addr v5, v2

    .line 622
    goto :goto_4

    .line 623
    :cond_a
    :goto_5
    iput-boolean v2, v3, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    .line 625
    goto :goto_6

    .line 626
    :cond_b
    iput-boolean v5, v3, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    .line 628
    const-string p0, "Prevent HighBrightnessMode @HDR"

    .line 630
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    goto :goto_6

    .line 634
    :cond_c
    iput-boolean v2, v3, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    .line 636
    const-string p0, "Enforce HighBrightnessMode @HDR"

    .line 638
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_d
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 643
    const-string/jumbo v0, "mSupportHdrSolution: "

    .line 646
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    iget-boolean v0, v3, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    .line 651
    invoke-static {v4, p0, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 654
    return-void

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
