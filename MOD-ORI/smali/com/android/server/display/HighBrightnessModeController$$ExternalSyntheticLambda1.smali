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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
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

    .line 5
    .line 6
    packed-switch v3, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/io/PrintWriter;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v4, "HighBrightnessModeController:"

    .line 19
    .line 20
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "  mBrightness="

    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v5, v3, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 31
    .line 32
    const-string v6, "  mUnthrottledBrightness="

    .line 33
    .line 34
    invoke-static {v4, v5, p0, v6}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget v5, v3, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    .line 39
    .line 40
    const-string v6, "  mThrottlingReason="

    .line 41
    .line 42
    invoke-static {v4, v5, p0, v6}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget v5, v3, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 47
    .line 48
    invoke-static {v5}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v5, "  mCurrentMin="

    .line 65
    .line 66
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget v5, v3, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 70
    .line 71
    const-string v6, "  mCurrentMax="

    .line 72
    .line 73
    invoke-static {v4, v5, p0, v6}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v3}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v6, "  mHbmMode="

    .line 94
    .line 95
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget v6, v3, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 99
    .line 100
    invoke-static {v6}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v6, v3, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 108
    .line 109
    const-string v7, ")"

    .line 110
    .line 111
    const-string v8, ""

    .line 112
    .line 113
    if-ne v6, v1, :cond_0

    .line 114
    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v9, "("

    .line 118
    .line 119
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
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

    .line 139
    .line 140
    invoke-static {p0, v6, v9, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    iget v6, v3, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    .line 145
    .line 146
    if-eq v6, v2, :cond_3

    .line 147
    .line 148
    if-eq v6, v1, :cond_2

    .line 149
    .line 150
    if-eq v6, v0, :cond_1

    .line 151
    .line 152
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    goto :goto_1

    .line 157
    :cond_1
    const-string v0, "HBM_ON_SUNLIGHT"

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    const-string v0, "HBM_ON_HDR"

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    const-string v0, "HBM_OFF"

    .line 164
    .line 165
    :goto_1
    const-string v1, "  mHbmData="

    .line 166
    .line 167
    invoke-static {p0, v0, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-object v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v1, "  mAmbientLux="

    .line 186
    .line 187
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 196
    .line 197
    if-eqz v1, :cond_4

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_4
    const-string v8, " (old/invalid)"

    .line 201
    .line 202
    :goto_2
    const-string v1, "  mIsInAllowedAmbientRange="

    .line 203
    .line 204
    invoke-static {p0, v8, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 209
    .line 210
    const-string v2, "  mIsAutoBrightnessEnabled="

    .line 211
    .line 212
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 217
    .line 218
    const-string v2, "  mIsAutoBrightnessOffByState="

    .line 219
    .line 220
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 225
    .line 226
    const-string v2, "  mIsHdrLayerPresent="

    .line 227
    .line 228
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v1, "  mBrightnessMin="

    .line 247
    .line 248
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v1, "  mBrightnessMax="

    .line 264
    .line 265
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    .line 269
    .line 270
    const-string v2, "  remainingTime="

    .line 271
    .line 272
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    iget-object v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 282
    .line 283
    .line 284
    move-result-wide v1

    .line 285
    invoke-virtual {v3, v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    .line 286
    .line 287
    .line 288
    move-result-wide v1

    .line 289
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string v1, "  mIsTimeAvailable= "

    .line 302
    .line 303
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 307
    .line 308
    const-string v2, "  mIsBlockedByLowPowerMode="

    .line 309
    .line 310
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iget-boolean v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 315
    .line 316
    const-string v2, "  width*height="

    .line 317
    .line 318
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iget v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v1, "*"

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    iget v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 333
    .line 334
    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 335
    .line 336
    .line 337
    iget-object v0, v3, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 338
    .line 339
    if-eqz v0, :cond_7

    .line 340
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v1, "  mRunningStartTimeMillis="

    .line 344
    .line 345
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 349
    .line 350
    iget-wide v1, v1, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    .line 351
    .line 352
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v0, "  mEvents="

    .line 367
    .line 368
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 372
    .line 373
    .line 374
    move-result-wide v0

    .line 375
    iget-object v2, v3, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 376
    .line 377
    iget-wide v4, v2, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    .line 378
    .line 379
    const-wide/16 v8, -0x1

    .line 380
    .line 381
    cmp-long v2, v4, v8

    .line 382
    .line 383
    const-string v6, "] ("

    .line 384
    .line 385
    const-string v8, ", "

    .line 386
    .line 387
    const-string v9, "    event: ["

    .line 388
    .line 389
    if-eqz v2, :cond_5

    .line 390
    .line 391
    sub-long v10, v0, v4

    .line 392
    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v12

    .line 402
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    move-wide v0, v4

    .line 436
    :cond_5
    iget-object v2, v3, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 437
    .line 438
    iget-object v2, v2, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    if-eqz v3, :cond_8

    .line 449
    .line 450
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    check-cast v3, Lcom/android/server/display/HbmEvent;

    .line 455
    .line 456
    iget-wide v4, v3, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    .line 457
    .line 458
    cmp-long v4, v0, v4

    .line 459
    .line 460
    if-lez v4, :cond_6

    .line 461
    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    const-string v5, "    event: [normal brightness]: "

    .line 465
    .line 466
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    iget-wide v10, v3, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    .line 470
    .line 471
    sub-long/2addr v0, v10

    .line 472
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    :cond_6
    iget-wide v0, v3, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    .line 487
    .line 488
    iget-wide v4, v3, Lcom/android/server/display/HbmEvent;->mStartTimeMillis:J

    .line 489
    .line 490
    sub-long/2addr v0, v4

    .line 491
    new-instance v10, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v11

    .line 500
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    iget-wide v11, v3, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    .line 507
    .line 508
    invoke-static {v11, v12}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    move-wide v0, v4

    .line 536
    goto :goto_3

    .line 537
    :cond_7
    const-string v0, "  mHighBrightnessModeMetadata=null"

    .line 538
    .line 539
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    :cond_8
    return-void

    .line 543
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 544
    .line 545
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 546
    .line 547
    check-cast p0, Ljava/lang/String;

    .line 548
    .line 549
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object p0

    .line 556
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    const-string v4, "HighBrightnessModeController"

    .line 560
    .line 561
    const/4 v5, 0x0

    .line 562
    const-string v6, "ON"

    .line 563
    .line 564
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v6

    .line 568
    if-nez v6, :cond_c

    .line 569
    .line 570
    const-string v6, "OFF"

    .line 571
    .line 572
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result p0

    .line 576
    if-nez p0, :cond_b

    .line 577
    .line 578
    sget-boolean p0, Lcom/android/server/display/HighBrightnessModeController;->FEATURE_SUPPORT_HDR_SOLUTION:Z

    .line 579
    .line 580
    iput-boolean p0, v3, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    .line 581
    .line 582
    if-nez p0, :cond_d

    .line 583
    .line 584
    iget-object p0, v3, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 585
    .line 586
    const-class v6, Landroid/hardware/display/DisplayManager;

    .line 587
    .line 588
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object p0

    .line 592
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 593
    .line 594
    invoke-virtual {p0, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 595
    .line 596
    .line 597
    move-result-object p0

    .line 598
    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    .line 599
    .line 600
    .line 601
    move-result-object p0

    .line 602
    invoke-virtual {p0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    .line 603
    .line 604
    .line 605
    move-result-object p0

    .line 606
    if-eqz p0, :cond_d

    .line 607
    .line 608
    array-length v6, p0

    .line 609
    :goto_4
    if-ge v5, v6, :cond_d

    .line 610
    .line 611
    aget v7, p0, v5

    .line 612
    .line 613
    if-eq v7, v1, :cond_a

    .line 614
    .line 615
    const/4 v8, 0x4

    .line 616
    if-eq v7, v8, :cond_a

    .line 617
    .line 618
    if-ne v7, v0, :cond_9

    .line 619
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

    .line 624
    .line 625
    goto :goto_6

    .line 626
    :cond_b
    iput-boolean v5, v3, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    .line 627
    .line 628
    const-string p0, "Prevent HighBrightnessMode @HDR"

    .line 629
    .line 630
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .line 632
    .line 633
    goto :goto_6

    .line 634
    :cond_c
    iput-boolean v2, v3, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    .line 635
    .line 636
    const-string p0, "Enforce HighBrightnessMode @HDR"

    .line 637
    .line 638
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .line 640
    .line 641
    :cond_d
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    const-string/jumbo v0, "mSupportHdrSolution: "

    .line 644
    .line 645
    .line 646
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    iget-boolean v0, v3, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    .line 650
    .line 651
    invoke-static {v4, p0, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 652
    .line 653
    .line 654
    return-void

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
