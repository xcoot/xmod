.class public final Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/camera/CameraServiceProxy$CameraEvent;


# instance fields
.field public final mAPILevel:I

.field public final mAction:I

.field public final mCameraFacing:I

.field public final mCameraId:Ljava/lang/String;

.field public final mClientName:Ljava/lang/String;

.field public mCompleted:Z

.field public mDeviceError:Z

.field public mDurationOrStartTimeMs:J

.field public mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

.field public mInternalReconfigure:I

.field public final mIsNdk:Z

.field public final mLatencyMs:I

.field public final mLogId:J

.field public mMostRequestedFpsRange:Landroid/util/Range;

.field public final mOperatingMode:I

.field public mRequestCount:J

.field public mResultErrorCount:J

.field public final mSessionIndex:I

.field public mStreamStats:Ljava/util/List;

.field public mUsedUltraWide:Z

.field public mUsedZoomOverride:Z

.field public mUserTag:Ljava/lang/String;

.field public mVideoStabilizationMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 12
    .line 13
    iput p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    iput-wide p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-boolean p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 27
    .line 28
    iput-boolean p5, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    .line 29
    .line 30
    iput p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    .line 31
    .line 32
    iput p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    .line 33
    .line 34
    iput p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    .line 35
    .line 36
    iput-boolean p9, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    .line 37
    .line 38
    iput-wide p10, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLogId:J

    .line 39
    .line 40
    iput p12, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mSessionIndex:I

    .line 41
    .line 42
    new-instance p1, Landroid/util/Range;

    .line 43
    .line 44
    invoke-direct {p1, p2, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final logSelf()V
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "CameraService_proxy"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    iget v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    .line 10
    .line 11
    if-eqz v6, :cond_2

    .line 12
    .line 13
    if-eq v6, v4, :cond_1

    .line 14
    .line 15
    if-eq v6, v3, :cond_0

    .line 16
    .line 17
    const-string v7, "Unknown camera facing: "

    .line 18
    .line 19
    invoke-static {v6, v7, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move v13, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v13, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v13, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    move v13, v4

    .line 29
    :goto_0
    iget-object v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 30
    .line 31
    const/4 v7, 0x4

    .line 32
    const/4 v8, -0x1

    .line 33
    if-eqz v6, :cond_9

    .line 34
    .line 35
    iget v6, v6, Landroid/hardware/CameraExtensionSessionStats;->type:I

    .line 36
    .line 37
    if-eqz v6, :cond_7

    .line 38
    .line 39
    if-eq v6, v4, :cond_6

    .line 40
    .line 41
    if-eq v6, v3, :cond_5

    .line 42
    .line 43
    if-eq v6, v2, :cond_4

    .line 44
    .line 45
    if-eq v6, v7, :cond_3

    .line 46
    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v9, "Unknown extension type: "

    .line 50
    .line 51
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v9, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 55
    .line 56
    iget v9, v9, Landroid/hardware/CameraExtensionSessionStats;->type:I

    .line 57
    .line 58
    invoke-static {v6, v9, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v8, v7

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    move v8, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_5
    move v8, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_6
    move v8, v4

    .line 69
    goto :goto_1

    .line 70
    :cond_7
    move v8, v5

    .line 71
    :goto_1
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 72
    .line 73
    iget-boolean v1, v1, Landroid/hardware/CameraExtensionSessionStats;->isAdvanced:Z

    .line 74
    .line 75
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->analytics24q3()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_8

    .line 80
    .line 81
    iget-object v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 82
    .line 83
    iget v6, v6, Landroid/hardware/CameraExtensionSessionStats;->captureFormat:I

    .line 84
    .line 85
    move/from16 v37, v1

    .line 86
    .line 87
    move/from16 v42, v6

    .line 88
    .line 89
    :goto_2
    move/from16 v36, v8

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_8
    move/from16 v37, v1

    .line 93
    .line 94
    move/from16 v42, v5

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_9
    move/from16 v37, v5

    .line 98
    .line 99
    move/from16 v42, v37

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :goto_3
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    .line 103
    .line 104
    if-eqz v1, :cond_a

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    goto :goto_4

    .line 111
    :cond_a
    move v1, v5

    .line 112
    :goto_4
    const/4 v6, 0x5

    .line 113
    new-array v8, v6, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    .line 114
    .line 115
    move v9, v5

    .line 116
    :goto_5
    if-ge v9, v6, :cond_c

    .line 117
    .line 118
    new-instance v10, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    .line 119
    .line 120
    invoke-direct {v10}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    .line 121
    .line 122
    .line 123
    aput-object v10, v8, v9

    .line 124
    .line 125
    if-ge v9, v1, :cond_b

    .line 126
    .line 127
    iget-object v10, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    check-cast v10, Landroid/hardware/CameraStreamStats;

    .line 134
    .line 135
    aget-object v11, v8, v9

    .line 136
    .line 137
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getWidth()I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 142
    .line 143
    aget-object v11, v8, v9

    .line 144
    .line 145
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHeight()I

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 150
    .line 151
    aget-object v11, v8, v9

    .line 152
    .line 153
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getFormat()I

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 158
    .line 159
    aget-object v11, v8, v9

    .line 160
    .line 161
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getDataSpace()I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 166
    .line 167
    aget-object v11, v8, v9

    .line 168
    .line 169
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getUsage()J

    .line 170
    .line 171
    .line 172
    move-result-wide v14

    .line 173
    iput-wide v14, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 174
    .line 175
    aget-object v11, v8, v9

    .line 176
    .line 177
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getRequestCount()J

    .line 178
    .line 179
    .line 180
    move-result-wide v14

    .line 181
    iput-wide v14, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 182
    .line 183
    aget-object v11, v8, v9

    .line 184
    .line 185
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getErrorCount()J

    .line 186
    .line 187
    .line 188
    move-result-wide v14

    .line 189
    iput-wide v14, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 190
    .line 191
    aget-object v11, v8, v9

    .line 192
    .line 193
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getStartLatencyMs()I

    .line 194
    .line 195
    .line 196
    move-result v12

    .line 197
    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 198
    .line 199
    aget-object v11, v8, v9

    .line 200
    .line 201
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getMaxHalBuffers()I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 206
    .line 207
    aget-object v11, v8, v9

    .line 208
    .line 209
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getMaxAppBuffers()I

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 214
    .line 215
    aget-object v11, v8, v9

    .line 216
    .line 217
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHistogramType()I

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 222
    .line 223
    aget-object v11, v8, v9

    .line 224
    .line 225
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHistogramBins()[F

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    iput-object v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 230
    .line 231
    aget-object v11, v8, v9

    .line 232
    .line 233
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHistogramCounts()[J

    .line 234
    .line 235
    .line 236
    move-result-object v12

    .line 237
    iput-object v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 238
    .line 239
    aget-object v11, v8, v9

    .line 240
    .line 241
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getDynamicRangeProfile()J

    .line 242
    .line 243
    .line 244
    move-result-wide v14

    .line 245
    iput-wide v14, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 246
    .line 247
    aget-object v11, v8, v9

    .line 248
    .line 249
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getStreamUseCase()J

    .line 250
    .line 251
    .line 252
    move-result-wide v14

    .line 253
    iput-wide v14, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 254
    .line 255
    aget-object v11, v8, v9

    .line 256
    .line 257
    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getColorSpace()I

    .line 258
    .line 259
    .line 260
    move-result v10

    .line 261
    iput v10, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    .line 262
    .line 263
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 264
    .line 265
    goto/16 :goto_5

    .line 266
    .line 267
    :cond_c
    iget-boolean v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 268
    .line 269
    if-eqz v6, :cond_d

    .line 270
    .line 271
    iget-wide v9, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_d
    const-wide/16 v9, 0x0

    .line 275
    .line 276
    :goto_6
    iget v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    .line 277
    .line 278
    move/from16 v19, v6

    .line 279
    .line 280
    iget-wide v11, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    .line 281
    .line 282
    move-wide/from16 v20, v11

    .line 283
    .line 284
    iget-wide v11, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    .line 285
    .line 286
    move-wide/from16 v22, v11

    .line 287
    .line 288
    iget-boolean v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    .line 289
    .line 290
    move/from16 v24, v6

    .line 291
    .line 292
    aget-object v5, v8, v5

    .line 293
    .line 294
    invoke-static {v5}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    .line 295
    .line 296
    .line 297
    move-result-object v26

    .line 298
    aget-object v4, v8, v4

    .line 299
    .line 300
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    .line 301
    .line 302
    .line 303
    move-result-object v27

    .line 304
    aget-object v3, v8, v3

    .line 305
    .line 306
    invoke-static {v3}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    .line 307
    .line 308
    .line 309
    move-result-object v28

    .line 310
    aget-object v2, v8, v2

    .line 311
    .line 312
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    .line 313
    .line 314
    .line 315
    move-result-object v29

    .line 316
    aget-object v2, v8, v7

    .line 317
    .line 318
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    .line 319
    .line 320
    .line 321
    move-result-object v30

    .line 322
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    .line 323
    .line 324
    move-object/from16 v31, v2

    .line 325
    .line 326
    iget v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    .line 327
    .line 328
    move/from16 v32, v2

    .line 329
    .line 330
    iget-boolean v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedUltraWide:Z

    .line 331
    .line 332
    move/from16 v38, v2

    .line 333
    .line 334
    iget-boolean v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedZoomOverride:Z

    .line 335
    .line 336
    move/from16 v39, v2

    .line 337
    .line 338
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    .line 339
    .line 340
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    check-cast v2, Ljava/lang/Integer;

    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result v40

    .line 350
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    .line 351
    .line 352
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    check-cast v2, Ljava/lang/Integer;

    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 359
    .line 360
    .line 361
    move-result v41

    .line 362
    const/16 v8, 0xe3

    .line 363
    .line 364
    iget v11, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    .line 365
    .line 366
    iget-object v12, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 367
    .line 368
    iget-object v14, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    .line 369
    .line 370
    iget v15, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    .line 371
    .line 372
    iget-boolean v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    .line 373
    .line 374
    move/from16 v16, v2

    .line 375
    .line 376
    iget v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    .line 377
    .line 378
    move/from16 v17, v2

    .line 379
    .line 380
    iget v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    .line 381
    .line 382
    move/from16 v18, v2

    .line 383
    .line 384
    iget-wide v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLogId:J

    .line 385
    .line 386
    move-wide/from16 v33, v2

    .line 387
    .line 388
    iget v0, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mSessionIndex:I

    .line 389
    .line 390
    move/from16 v35, v0

    .line 391
    .line 392
    move/from16 v25, v1

    .line 393
    .line 394
    invoke-static/range {v8 .. v42}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJILjava/lang/String;ILjava/lang/String;IZIIIJJZI[B[B[B[B[BLjava/lang/String;IJIIZZZIII)V

    .line 395
    .line 396
    .line 397
    return-void
.end method

.method public final markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iget-wide v3, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    .line 15
    .line 16
    sub-long/2addr v1, v3

    .line 17
    iput-wide v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    .line 18
    .line 19
    move v1, p1

    .line 20
    iput v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    .line 21
    .line 22
    move-wide v1, p2

    .line 23
    iput-wide v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    .line 24
    .line 25
    move-wide v1, p4

    .line 26
    iput-wide v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    .line 27
    .line 28
    move v1, p6

    .line 29
    iput-boolean v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    .line 30
    .line 31
    move-object v1, p7

    .line 32
    iput-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    .line 33
    .line 34
    move-object v1, p8

    .line 35
    iput-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    .line 36
    .line 37
    move v1, p9

    .line 38
    iput v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    .line 39
    .line 40
    move v1, p10

    .line 41
    iput-boolean v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedUltraWide:Z

    .line 42
    .line 43
    move/from16 v1, p11

    .line 44
    .line 45
    iput-boolean v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedZoomOverride:Z

    .line 46
    .line 47
    move-object/from16 v1, p13

    .line 48
    .line 49
    iput-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 50
    .line 51
    move-object/from16 v1, p12

    .line 52
    .line 53
    iput-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    .line 54
    .line 55
    return-void
.end method
