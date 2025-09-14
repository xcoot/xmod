.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    move-object v2, v0

    .line 28
    iget-object v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 31
    .line 32
    .line 33
    throw v2

    .line 34
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v2, v0

    .line 39
    check-cast v2, Landroid/location/GnssStatus;

    .line 40
    .line 41
    iget-object v3, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v4, 0x4

    .line 51
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    .line 57
    .line 58
    const-wide/16 v10, 0x0

    .line 59
    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    const/4 v12, 0x0

    .line 73
    :goto_0
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    if-ge v12, v13, :cond_2

    .line 78
    .line 79
    invoke-virtual {v2, v12}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    invoke-static {v13}, Lcom/android/server/location/gnss/GnssMetrics;->isL5Sv(F)Z

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    if-eqz v13, :cond_1

    .line 88
    .line 89
    invoke-virtual {v2, v12}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-ge v12, v4, :cond_3

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    sub-int/2addr v12, v4

    .line 118
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    check-cast v12, Ljava/lang/Float;

    .line 123
    .line 124
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    float-to-double v12, v12

    .line 129
    cmpl-double v12, v12, v10

    .line 130
    .line 131
    if-lez v12, :cond_5

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    sub-int/2addr v12, v4

    .line 138
    move-wide v13, v10

    .line 139
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v15

    .line 143
    if-ge v12, v15, :cond_4

    .line 144
    .line 145
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    check-cast v15, Ljava/lang/Float;

    .line 150
    .line 151
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    .line 152
    .line 153
    .line 154
    move-result v15

    .line 155
    float-to-double v10, v15

    .line 156
    add-double/2addr v13, v10

    .line 157
    add-int/lit8 v12, v12, 0x1

    .line 158
    .line 159
    const-wide/16 v10, 0x0

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    div-double/2addr v13, v8

    .line 163
    iget-object v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 164
    .line 165
    invoke-virtual {v0, v13, v14}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 166
    .line 167
    .line 168
    mul-double/2addr v13, v6

    .line 169
    iget-object v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 170
    .line 171
    invoke-virtual {v0, v13, v14}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 172
    .line 173
    .line 174
    :cond_5
    :goto_2
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    iget-object v10, v3, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    .line 179
    .line 180
    if-nez v0, :cond_6

    .line 181
    .line 182
    const/4 v0, 0x0

    .line 183
    invoke-virtual {v10, v0}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([F)V

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_6
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    new-array v11, v0, [F

    .line 192
    .line 193
    const/4 v12, 0x0

    .line 194
    :goto_3
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    if-ge v12, v13, :cond_7

    .line 199
    .line 200
    invoke-virtual {v2, v12}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    aput v13, v11, v12

    .line 205
    .line 206
    add-int/lit8 v12, v12, 0x1

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_7
    invoke-static {v11}, Ljava/util/Arrays;->sort([F)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10, v11}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([F)V

    .line 213
    .line 214
    .line 215
    if-ge v0, v4, :cond_8

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_8
    add-int/lit8 v4, v0, -0x4

    .line 219
    .line 220
    aget v10, v11, v4

    .line 221
    .line 222
    float-to-double v12, v10

    .line 223
    const-wide/16 v14, 0x0

    .line 224
    .line 225
    cmpl-double v10, v12, v14

    .line 226
    .line 227
    if-lez v10, :cond_a

    .line 228
    .line 229
    :goto_4
    if-ge v4, v0, :cond_9

    .line 230
    .line 231
    aget v10, v11, v4

    .line 232
    .line 233
    float-to-double v12, v10

    .line 234
    add-double/2addr v14, v12

    .line 235
    add-int/lit8 v4, v4, 0x1

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_9
    div-double/2addr v14, v8

    .line 239
    iget-object v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 240
    .line 241
    invoke-virtual {v0, v14, v15}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 242
    .line 243
    .line 244
    iget-object v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 245
    .line 246
    mul-double/2addr v14, v6

    .line 247
    invoke-virtual {v0, v14, v15}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 248
    .line 249
    .line 250
    :cond_a
    :goto_5
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    .line 251
    .line 252
    if-eqz v0, :cond_b

    .line 253
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v4, "SV count: "

    .line 257
    .line 258
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    const-string v4, "GnssLocationProvider"

    .line 273
    .line 274
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    :cond_b
    new-instance v4, Ljava/util/HashSet;

    .line 278
    .line 279
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 280
    .line 281
    .line 282
    const/4 v0, 0x0

    .line 283
    const/4 v6, 0x0

    .line 284
    const/4 v7, 0x0

    .line 285
    const/4 v8, 0x0

    .line 286
    :goto_6
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    const/4 v10, 0x1

    .line 291
    if-ge v0, v9, :cond_f

    .line 292
    .line 293
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->usedInFix(I)Z

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    if-eqz v9, :cond_e

    .line 298
    .line 299
    new-instance v9, Landroid/util/Pair;

    .line 300
    .line 301
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    .line 302
    .line 303
    .line 304
    move-result v11

    .line 305
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v11

    .line 309
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->getSvid(I)I

    .line 310
    .line 311
    .line 312
    move-result v12

    .line 313
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    invoke-direct {v9, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    add-int/lit8 v6, v6, 0x1

    .line 324
    .line 325
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    int-to-float v11, v8

    .line 330
    cmpl-float v9, v9, v11

    .line 331
    .line 332
    if-lez v9, :cond_c

    .line 333
    .line 334
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    float-to-int v8, v8

    .line 339
    :cond_c
    int-to-float v7, v7

    .line 340
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 341
    .line 342
    .line 343
    move-result v9

    .line 344
    add-float/2addr v9, v7

    .line 345
    float-to-int v7, v9

    .line 346
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    iget-object v11, v3, Lcom/android/server/location/gnss/GnssMetrics;->mConstellationTypes:[Z

    .line 351
    .line 352
    array-length v12, v11

    .line 353
    if-lt v9, v12, :cond_d

    .line 354
    .line 355
    const-string v10, "Constellation type "

    .line 356
    .line 357
    const-string v11, " is not valid."

    .line 358
    .line 359
    const-string v12, "GnssMetrics"

    .line 360
    .line 361
    invoke-static {v9, v10, v11, v12}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    goto :goto_7

    .line 365
    :cond_d
    aput-boolean v10, v11, v9

    .line 366
    .line 367
    :cond_e
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_f
    if-lez v6, :cond_10

    .line 371
    .line 372
    div-int/2addr v7, v6

    .line 373
    :cond_10
    invoke-virtual {v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportSvStatusSec(Landroid/location/GnssStatus;)V

    .line 374
    .line 375
    .line 376
    iget-object v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mSvCallback:Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    .line 377
    .line 378
    if-eqz v0, :cond_12

    .line 379
    .line 380
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/SLocationProxy;

    .line 381
    .line 382
    iget-object v6, v0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    .line 383
    .line 384
    if-eqz v6, :cond_12

    .line 385
    .line 386
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 387
    .line 388
    .line 389
    move-result v12

    .line 390
    new-array v13, v12, [I

    .line 391
    .line 392
    new-array v14, v12, [F

    .line 393
    .line 394
    new-array v15, v12, [F

    .line 395
    .line 396
    new-array v6, v12, [F

    .line 397
    .line 398
    new-array v9, v12, [F

    .line 399
    .line 400
    new-array v11, v12, [F

    .line 401
    .line 402
    const/4 v5, 0x0

    .line 403
    :goto_8
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 404
    .line 405
    .line 406
    move-result v10

    .line 407
    if-ge v5, v10, :cond_11

    .line 408
    .line 409
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getSvid(I)I

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    aput v10, v13, v5

    .line 414
    .line 415
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 416
    .line 417
    .line 418
    move-result v10

    .line 419
    aput v10, v14, v5

    .line 420
    .line 421
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    .line 422
    .line 423
    .line 424
    move-result v10

    .line 425
    aput v10, v15, v5

    .line 426
    .line 427
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    .line 428
    .line 429
    .line 430
    move-result v10

    .line 431
    aput v10, v6, v5

    .line 432
    .line 433
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    .line 434
    .line 435
    .line 436
    move-result v10

    .line 437
    aput v10, v9, v5

    .line 438
    .line 439
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getBasebandCn0DbHz(I)F

    .line 440
    .line 441
    .line 442
    move-result v10

    .line 443
    aput v10, v11, v5

    .line 444
    .line 445
    add-int/lit8 v5, v5, 0x1

    .line 446
    .line 447
    goto :goto_8

    .line 448
    :cond_11
    :try_start_1
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    .line 449
    .line 450
    move-object v5, v11

    .line 451
    move-object v11, v0

    .line 452
    move-object/from16 v16, v6

    .line 453
    .line 454
    move-object/from16 v17, v9

    .line 455
    .line 456
    move-object/from16 v18, v5

    .line 457
    .line 458
    invoke-interface/range {v11 .. v18}, Lcom/samsung/android/location/ISLocationManager;->onSvStatusChanged(I[I[F[F[F[F[F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 459
    .line 460
    .line 461
    goto :goto_9

    .line 462
    :catch_0
    move-exception v0

    .line 463
    const-string v5, "SLocationProxy"

    .line 464
    .line 465
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    :cond_12
    :goto_9
    iget-object v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 473
    .line 474
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    .line 479
    .line 480
    .line 481
    const/4 v5, 0x0

    .line 482
    :goto_a
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-ge v5, v0, :cond_16

    .line 487
    .line 488
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_14

    .line 493
    .line 494
    iget v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    .line 495
    .line 496
    const/4 v1, 0x1

    .line 497
    add-int/2addr v0, v1

    .line 498
    iput v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    .line 499
    .line 500
    iget-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReports:J

    .line 501
    .line 502
    const-wide/16 v8, 0x1

    .line 503
    .line 504
    add-long/2addr v6, v8

    .line 505
    iput-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReports:J

    .line 506
    .line 507
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMetrics;->isL5Sv(F)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_13

    .line 516
    .line 517
    iget v4, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    .line 518
    .line 519
    add-int/2addr v4, v1

    .line 520
    iput v4, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    .line 521
    .line 522
    iget-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReports:J

    .line 523
    .line 524
    add-long/2addr v6, v8

    .line 525
    iput-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReports:J

    .line 526
    .line 527
    :cond_13
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->usedInFix(I)Z

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    if-eqz v4, :cond_15

    .line 532
    .line 533
    iget v4, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    .line 534
    .line 535
    add-int/2addr v4, v1

    .line 536
    iput v4, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    .line 537
    .line 538
    iget-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReportsUsedInFix:J

    .line 539
    .line 540
    add-long/2addr v6, v8

    .line 541
    iput-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReportsUsedInFix:J

    .line 542
    .line 543
    if-eqz v0, :cond_15

    .line 544
    .line 545
    iget v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    .line 546
    .line 547
    add-int/2addr v0, v1

    .line 548
    iput v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    .line 549
    .line 550
    iget-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    .line 551
    .line 552
    add-long/2addr v6, v8

    .line 553
    iput-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    .line 554
    .line 555
    goto :goto_b

    .line 556
    :cond_14
    const/4 v1, 0x1

    .line 557
    :cond_15
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 558
    .line 559
    goto :goto_a

    .line 560
    :cond_16
    return-void

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
