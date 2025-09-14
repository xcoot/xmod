.class public final Lcom/android/server/wm/DeferredDisplayUpdater;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/DisplayUpdater;


# static fields
.field static final DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mLastDisplayInfo:Landroid/view/DisplayInfo;

.field public mLastWmDisplayInfo:Landroid/view/DisplayInfo;

.field public final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mOutputDisplayInfo:Landroid/view/DisplayInfo;

.field public final mScreenUnblockTimeoutRunnable:Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

.field public mScreenUnblocker:Landroid/os/Message;

.field public mShouldWaitForTransitionWhenScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/wm/DeferredDisplayUpdater;->DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/DisplayInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 10
    .line 11
    new-instance v1, Landroid/view/DisplayInfo;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 27
    .line 28
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static calculateDisplayInfoDiff(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)I
    .locals 6

    .line 1
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    if-eqz p0, :cond_6

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_1
    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    .line 16
    .line 17
    iget v2, p1, Landroid/view/DisplayInfo;->layerStack:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_2

    .line 20
    .line 21
    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    .line 22
    .line 23
    iget v2, p1, Landroid/view/DisplayInfo;->flags:I

    .line 24
    .line 25
    if-ne v0, v2, :cond_2

    .line 26
    .line 27
    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    .line 28
    .line 29
    iget v2, p1, Landroid/view/DisplayInfo;->type:I

    .line 30
    .line 31
    if-ne v0, v2, :cond_2

    .line 32
    .line 33
    iget v0, p0, Landroid/view/DisplayInfo;->displayId:I

    .line 34
    .line 35
    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    .line 36
    .line 37
    if-ne v0, v2, :cond_2

    .line 38
    .line 39
    iget v0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 40
    .line 41
    iget v2, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 42
    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 46
    .line 47
    iget-object v2, p1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 48
    .line 49
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    .line 56
    .line 57
    iget v2, p1, Landroid/view/DisplayInfo;->modeId:I

    .line 58
    .line 59
    if-ne v0, v2, :cond_2

    .line 60
    .line 61
    iget v0, p0, Landroid/view/DisplayInfo;->renderFrameRate:F

    .line 62
    .line 63
    iget v2, p1, Landroid/view/DisplayInfo;->renderFrameRate:F

    .line 64
    .line 65
    cmpl-float v0, v0, v2

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 70
    .line 71
    iget v2, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 72
    .line 73
    if-ne v0, v2, :cond_2

    .line 74
    .line 75
    iget v0, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 76
    .line 77
    iget v2, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 78
    .line 79
    if-ne v0, v2, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 82
    .line 83
    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 84
    .line 85
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    iget-object v0, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 92
    .line 93
    iget-object v2, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 94
    .line 95
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    iget v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    .line 102
    .line 103
    iget v2, p1, Landroid/view/DisplayInfo;->colorMode:I

    .line 104
    .line 105
    if-ne v0, v2, :cond_2

    .line 106
    .line 107
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 108
    .line 109
    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 110
    .line 111
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 118
    .line 119
    iget-object v2, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 120
    .line 121
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_2

    .line 126
    .line 127
    iget-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 128
    .line 129
    iget-object v2, p1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 130
    .line 131
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_2

    .line 136
    .line 137
    iget-boolean v0, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 138
    .line 139
    iget-boolean v2, p1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 140
    .line 141
    if-ne v0, v2, :cond_2

    .line 142
    .line 143
    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 144
    .line 145
    iget-wide v4, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 146
    .line 147
    cmp-long v0, v2, v4

    .line 148
    .line 149
    if-nez v0, :cond_2

    .line 150
    .line 151
    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 152
    .line 153
    iget-wide v4, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 154
    .line 155
    cmp-long v0, v2, v4

    .line 156
    .line 157
    if-nez v0, :cond_2

    .line 158
    .line 159
    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    .line 160
    .line 161
    iget v2, p1, Landroid/view/DisplayInfo;->state:I

    .line 162
    .line 163
    if-ne v0, v2, :cond_2

    .line 164
    .line 165
    iget v0, p0, Landroid/view/DisplayInfo;->committedState:I

    .line 166
    .line 167
    iget v2, p1, Landroid/view/DisplayInfo;->committedState:I

    .line 168
    .line 169
    if-ne v0, v2, :cond_2

    .line 170
    .line 171
    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    .line 172
    .line 173
    iget v2, p1, Landroid/view/DisplayInfo;->ownerUid:I

    .line 174
    .line 175
    if-ne v0, v2, :cond_2

    .line 176
    .line 177
    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v2, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_2

    .line 186
    .line 187
    iget v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 188
    .line 189
    iget v2, p1, Landroid/view/DisplayInfo;->removeMode:I

    .line 190
    .line 191
    if-ne v0, v2, :cond_2

    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    cmpl-float v0, v0, v2

    .line 202
    .line 203
    if-nez v0, :cond_2

    .line 204
    .line 205
    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 206
    .line 207
    iget v2, p1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 208
    .line 209
    cmpl-float v0, v0, v2

    .line 210
    .line 211
    if-nez v0, :cond_2

    .line 212
    .line 213
    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 214
    .line 215
    iget v2, p1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 216
    .line 217
    cmpl-float v0, v0, v2

    .line 218
    .line 219
    if-nez v0, :cond_2

    .line 220
    .line 221
    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 222
    .line 223
    iget v2, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 224
    .line 225
    cmpl-float v0, v0, v2

    .line 226
    .line 227
    if-nez v0, :cond_2

    .line 228
    .line 229
    iget v0, p0, Landroid/view/DisplayInfo;->installOrientation:I

    .line 230
    .line 231
    iget v2, p1, Landroid/view/DisplayInfo;->installOrientation:I

    .line 232
    .line 233
    if-ne v0, v2, :cond_2

    .line 234
    .line 235
    iget-object v0, p0, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 236
    .line 237
    iget-object v2, p1, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 238
    .line 239
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_2

    .line 244
    .line 245
    iget v0, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 246
    .line 247
    iget v2, p1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 248
    .line 249
    invoke-static {v0, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_2

    .line 254
    .line 255
    iget-object v0, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 256
    .line 257
    iget-object v2, p1, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_2

    .line 264
    .line 265
    iget-object v0, p0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 266
    .line 267
    iget-object v2, p1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-nez v0, :cond_3

    .line 274
    .line 275
    :cond_2
    const/4 v1, 0x2

    .line 276
    :cond_3
    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    .line 277
    .line 278
    iget v2, p1, Landroid/view/DisplayInfo;->appWidth:I

    .line 279
    .line 280
    if-ne v0, v2, :cond_4

    .line 281
    .line 282
    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 283
    .line 284
    iget v2, p1, Landroid/view/DisplayInfo;->appHeight:I

    .line 285
    .line 286
    if-ne v0, v2, :cond_4

    .line 287
    .line 288
    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 289
    .line 290
    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 291
    .line 292
    if-ne v0, v2, :cond_4

    .line 293
    .line 294
    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 295
    .line 296
    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 297
    .line 298
    if-ne v0, v2, :cond_4

    .line 299
    .line 300
    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 301
    .line 302
    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 303
    .line 304
    if-ne v0, v2, :cond_4

    .line 305
    .line 306
    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 307
    .line 308
    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 309
    .line 310
    if-ne v0, v2, :cond_4

    .line 311
    .line 312
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 313
    .line 314
    iget v2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 315
    .line 316
    if-ne v0, v2, :cond_4

    .line 317
    .line 318
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 319
    .line 320
    iget v2, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 321
    .line 322
    if-ne v0, v2, :cond_4

    .line 323
    .line 324
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 325
    .line 326
    iget v2, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 327
    .line 328
    cmpl-float v0, v0, v2

    .line 329
    .line 330
    if-nez v0, :cond_4

    .line 331
    .line 332
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 333
    .line 334
    iget v2, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 335
    .line 336
    cmpl-float v0, v0, v2

    .line 337
    .line 338
    if-nez v0, :cond_4

    .line 339
    .line 340
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 341
    .line 342
    iget v2, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 343
    .line 344
    if-ne v0, v2, :cond_4

    .line 345
    .line 346
    iget-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 347
    .line 348
    iget-object v2, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 349
    .line 350
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-eqz v0, :cond_4

    .line 355
    .line 356
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 357
    .line 358
    iget v2, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 359
    .line 360
    if-ne v0, v2, :cond_4

    .line 361
    .line 362
    iget-object v0, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 363
    .line 364
    iget-object v2, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 365
    .line 366
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_4

    .line 371
    .line 372
    iget-object v0, p0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 373
    .line 374
    iget-object v2, p1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 375
    .line 376
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-eqz v0, :cond_4

    .line 381
    .line 382
    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 383
    .line 384
    iget-object v2, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 385
    .line 386
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-eqz v0, :cond_4

    .line 391
    .line 392
    iget-object p0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 393
    .line 394
    iget-object p1, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 395
    .line 396
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result p0

    .line 400
    if-nez p0, :cond_5

    .line 401
    .line 402
    :cond_4
    or-int/lit8 v1, v1, 0x1

    .line 403
    .line 404
    :cond_5
    return v1

    .line 405
    :cond_6
    :goto_0
    const/4 p0, -0x1

    .line 406
    return p0
.end method


# virtual methods
.method public final applyLatestDisplayInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    .line 6
    .line 7
    sget-object v3, Lcom/android/server/wm/DeferredDisplayUpdater;->DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 10
    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v3, v0, v2}, Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;->setFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final continueScreenUnblocking()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 37
    .line 38
    .line 39
    const-wide/16 v1, 0x20

    .line 40
    .line 41
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const-string v1, "Screen unblock: wait for transition"

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v1, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    .line 60
    .line 61
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public final getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 6
    .line 7
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 14
    .line 15
    iget v1, v1, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 16
    .line 17
    new-instance v2, Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 20
    .line 21
    invoke-direct {v2, p0}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p2}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 34
    .line 35
    .line 36
    return-object v2
.end method

.method public final onDisplayContentDisplayPropertiesPostChanged(IILandroid/window/DisplayAreaInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onDisplaySwitching(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    .line 2
    .line 3
    return-void
.end method

.method public final onDisplayUpdated(Lcom/android/server/wm/Transition;ILandroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 4
    .line 5
    iget v1, v1, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 6
    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/DeferredDisplayUpdater;->getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {p3, v2}, Landroid/window/TransitionRequestInfo$DisplayChange;->setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;I)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p1, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v3, p1, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 31
    .line 32
    :cond_0
    iget-object v3, p1, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v2, p1, v3, v3, p3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 48
    .line 49
    new-instance v2, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;

    .line 50
    .line 51
    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;Lcom/android/server/wm/Transition;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p2, v1, p3, v2}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public final updateDisplayInfo(Ljava/lang/Runnable;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 6
    .line 7
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/view/DisplayInfo;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 17
    .line 18
    invoke-direct {v1, v2}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    .line 22
    .line 23
    invoke-static {v2, v1}, Lcom/android/server/wm/DeferredDisplayUpdater;->calculateDisplayInfoDiff(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget-object v3, v3, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v5, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    xor-int/2addr v3, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v3, v4

    .line 43
    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    .line 44
    .line 45
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 46
    .line 47
    const/4 v6, -0x1

    .line 48
    const/4 v7, 0x0

    .line 49
    if-eq v2, v6, :cond_6

    .line 50
    .line 51
    iget-boolean v6, v0, Lcom/android/server/wm/DisplayContent;->mNeedImmediateDisplayUpdate:Z

    .line 52
    .line 53
    if-nez v6, :cond_6

    .line 54
    .line 55
    iget-boolean v6, v0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 56
    .line 57
    if-eqz v6, :cond_6

    .line 58
    .line 59
    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    and-int/lit8 v6, v2, 0x2

    .line 69
    .line 70
    if-lez v6, :cond_3

    .line 71
    .line 72
    aget-boolean v6, v5, v7

    .line 73
    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 77
    .line 78
    const-wide v9, 0x1afbdea388653b43L

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const/4 v11, 0x0

    .line 84
    const/4 v12, 0x0

    .line 85
    const/4 v13, 0x0

    .line 86
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    .line 90
    .line 91
    .line 92
    :cond_3
    and-int/2addr v2, v4

    .line 93
    if-lez v2, :cond_5

    .line 94
    .line 95
    aget-boolean v2, v5, v7

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 100
    .line 101
    const-wide v9, 0x74751b0426f83899L    # 9.671028898995E252

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v12, 0x0

    .line 108
    const/4 v13, 0x0

    .line 109
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    new-instance v2, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;

    .line 113
    .line 114
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;Landroid/view/DisplayInfo;Ljava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Lcom/android/server/wm/Transition;

    .line 118
    .line 119
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 120
    .line 121
    iget-object v4, v1, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 122
    .line 123
    const/4 v5, 0x6

    .line 124
    invoke-direct {p1, v5, v7, v1, v4}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 128
    .line 129
    const/4 v4, 0x2

    .line 130
    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->startPowerMode(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 134
    .line 135
    new-instance v1, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;

    .line 136
    .line 137
    invoke-direct {v1, p0, v3, v2, p1}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;ZLcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;Lcom/android/server/wm/Transition;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 145
    .line 146
    .line 147
    :goto_1
    return-void

    .line 148
    :cond_6
    :goto_2
    aget-boolean v2, v5, v7

    .line 149
    .line 150
    if-eqz v2, :cond_7

    .line 151
    .line 152
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 153
    .line 154
    const-wide v9, -0x6fd484ec948bc219L    # -8.850384806475754E-231

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    const/4 v11, 0x0

    .line 160
    const/4 v12, 0x0

    .line 161
    const/4 v13, 0x0

    .line 162
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayContent;->mNeedImmediateDisplayUpdate:Z

    .line 166
    .line 167
    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    .line 170
    .line 171
    .line 172
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final waitForTransition(Landroid/os/Message;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->waitForTransitionOnDisplaySwitch()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CHN_PREMIUM_WATCH:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/window/TransitionRequestInfo$DisplayChange;->isPhysicalDisplayChanged()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    :cond_1
    return v1

    .line 76
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    .line 77
    .line 78
    const-wide/16 v0, 0x20

    .line 79
    .line 80
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    const-string v0, "Screen unblock: wait for transition"

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {v0, p1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object p1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

    .line 100
    .line 101
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 107
    .line 108
    const-wide/16 v0, 0x3e8

    .line 109
    .line 110
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    .line 112
    .line 113
    const/4 p0, 0x1

    .line 114
    return p0
.end method
