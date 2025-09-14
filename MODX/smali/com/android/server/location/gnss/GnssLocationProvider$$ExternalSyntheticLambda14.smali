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

    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 5
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 10
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    .line 12
    check-cast v0, Ljava/lang/Runnable;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    move-object v2, v0

    .line 28
    iget-object v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 30
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 33
    throw v2

    .line 34
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 36
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    .line 38
    move-object v2, v0

    .line 39
    check-cast v2, Landroid/location/GnssStatus;

    .line 41
    iget-object v3, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 49
    move-result v0

    .line 50
    const/4 v4, 0x4

    .line 51
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 56
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    .line 58
    const-wide/16 v10, 0x0

    .line 60
    if-nez v0, :cond_0

    .line 62
    goto :goto_2

    .line 63
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 68
    move-result v12

    .line 69
    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    const/4 v12, 0x0

    .line 73
    :goto_0
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 76
    move-result v13

    .line 77
    if-ge v12, v13, :cond_2

    .line 79
    invoke-virtual {v2, v12}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    .line 82
    move-result v13

    .line 83
    invoke-static {v13}, Lcom/android/server/location/gnss/GnssMetrics;->isL5Sv(F)Z

    .line 86
    move-result v13

    .line 87
    if-eqz v13, :cond_1

    .line 89
    invoke-virtual {v2, v12}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 92
    move-result v13

    .line 93
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 96
    move-result-object v13

    .line 97
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 106
    move-result v12

    .line 107
    if-ge v12, v4, :cond_3

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 116
    move-result v12

    .line 117
    sub-int/2addr v12, v4

    .line 118
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v12

    .line 122
    check-cast v12, Ljava/lang/Float;

    .line 124
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 127
    move-result v12

    .line 128
    float-to-double v12, v12

    .line 129
    cmpl-double v12, v12, v10

    .line 131
    if-lez v12, :cond_5

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 136
    move-result v12

    .line 137
    sub-int/2addr v12, v4

    .line 138
    move-wide v13, v10

    .line 139
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 142
    move-result v15

    .line 143
    if-ge v12, v15, :cond_4

    .line 145
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object v15

    .line 149
    check-cast v15, Ljava/lang/Float;

    .line 151
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    .line 154
    move-result v15

    .line 155
    float-to-double v10, v15

    .line 156
    add-double/2addr v13, v10

    .line 157
    add-int/lit8 v12, v12, 0x1

    .line 159
    const-wide/16 v10, 0x0

    .line 161
    goto :goto_1

    .line 162
    :cond_4
    div-double/2addr v13, v8

    .line 163
    iget-object v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 165
    invoke-virtual {v0, v13, v14}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 168
    mul-double/2addr v13, v6

    .line 169
    iget-object v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 171
    invoke-virtual {v0, v13, v14}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 174
    :cond_5
    :goto_2
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 177
    move-result v0

    .line 178
    iget-object v10, v3, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    .line 180
    if-nez v0, :cond_6

    .line 182
    const/4 v0, 0x0

    .line 183
    invoke-virtual {v10, v0}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([F)V

    .line 186
    goto :goto_5

    .line 187
    :cond_6
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 190
    move-result v0

    .line 191
    new-array v11, v0, [F

    .line 193
    const/4 v12, 0x0

    .line 194
    :goto_3
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 197
    move-result v13

    .line 198
    if-ge v12, v13, :cond_7

    .line 200
    invoke-virtual {v2, v12}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 203
    move-result v13

    .line 204
    aput v13, v11, v12

    .line 206
    add-int/lit8 v12, v12, 0x1

    .line 208
    goto :goto_3

    .line 209
    :cond_7
    invoke-static {v11}, Ljava/util/Arrays;->sort([F)V

    .line 212
    invoke-virtual {v10, v11}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([F)V

    .line 215
    if-ge v0, v4, :cond_8

    .line 217
    goto :goto_5

    .line 218
    :cond_8
    add-int/lit8 v4, v0, -0x4

    .line 220
    aget v10, v11, v4

    .line 222
    float-to-double v12, v10

    .line 223
    const-wide/16 v14, 0x0

    .line 225
    cmpl-double v10, v12, v14

    .line 227
    if-lez v10, :cond_a

    .line 229
    :goto_4
    if-ge v4, v0, :cond_9

    .line 231
    aget v10, v11, v4

    .line 233
    float-to-double v12, v10

    .line 234
    add-double/2addr v14, v12

    .line 235
    add-int/lit8 v4, v4, 0x1

    .line 237
    goto :goto_4

    .line 238
    :cond_9
    div-double/2addr v14, v8

    .line 239
    iget-object v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 241
    invoke-virtual {v0, v14, v15}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 244
    iget-object v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 246
    mul-double/2addr v14, v6

    .line 247
    invoke-virtual {v0, v14, v15}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 250
    :cond_a
    :goto_5
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    .line 252
    if-eqz v0, :cond_b

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    .line 256
    const-string v4, "SV count: "

    .line 258
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 264
    move-result v4

    .line 265
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v0

    .line 272
    const-string v4, "GnssLocationProvider"

    .line 274
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_b
    new-instance v4, Ljava/util/HashSet;

    .line 279
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

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

    .line 289
    move-result v9

    .line 290
    const/4 v10, 0x1

    .line 291
    if-ge v0, v9, :cond_f

    .line 293
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->usedInFix(I)Z

    .line 296
    move-result v9

    .line 297
    if-eqz v9, :cond_e

    .line 299
    new-instance v9, Landroid/util/Pair;

    .line 301
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    .line 304
    move-result v11

    .line 305
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    move-result-object v11

    .line 309
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->getSvid(I)I

    .line 312
    move-result v12

    .line 313
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    move-result-object v12

    .line 317
    invoke-direct {v9, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v6, v6, 0x1

    .line 325
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 328
    move-result v9

    .line 329
    int-to-float v11, v8

    .line 330
    cmpl-float v9, v9, v11

    .line 332
    if-lez v9, :cond_c

    .line 334
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 337
    move-result v8

    .line 338
    float-to-int v8, v8

    .line 339
    :cond_c
    int-to-float v7, v7

    .line 340
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 343
    move-result v9

    .line 344
    add-float/2addr v9, v7

    .line 345
    float-to-int v7, v9

    .line 346
    invoke-virtual {v2, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    .line 349
    move-result v9

    .line 350
    iget-object v11, v3, Lcom/android/server/location/gnss/GnssMetrics;->mConstellationTypes:[Z

    .line 352
    array-length v12, v11

    .line 353
    if-lt v9, v12, :cond_d

    .line 355
    const-string v10, "Constellation type "

    .line 357
    const-string v11, " is not valid."

    .line 359
    const-string v12, "GnssMetrics"

    .line 361
    invoke-static {v9, v10, v11, v12}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    goto :goto_7

    .line 365
    :cond_d
    aput-boolean v10, v11, v9

    .line 367
    :cond_e
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 369
    goto :goto_6

    .line 370
    :cond_f
    if-lez v6, :cond_10

    .line 372
    div-int/2addr v7, v6

    .line 373
    :cond_10
    invoke-virtual {v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportSvStatusSec(Landroid/location/GnssStatus;)V

    .line 376
    iget-object v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mSvCallback:Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    .line 378
    if-eqz v0, :cond_12

    .line 380
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/SLocationProxy;

    .line 382
    iget-object v6, v0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    .line 384
    if-eqz v6, :cond_12

    .line 386
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 389
    move-result v12

    .line 390
    new-array v13, v12, [I

    .line 392
    new-array v14, v12, [F

    .line 394
    new-array v15, v12, [F

    .line 396
    new-array v6, v12, [F

    .line 398
    new-array v9, v12, [F

    .line 400
    new-array v11, v12, [F

    .line 402
    const/4 v5, 0x0

    .line 403
    :goto_8
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 406
    move-result v10

    .line 407
    if-ge v5, v10, :cond_11

    .line 409
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getSvid(I)I

    .line 412
    move-result v10

    .line 413
    aput v10, v13, v5

    .line 415
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    .line 418
    move-result v10

    .line 419
    aput v10, v14, v5

    .line 421
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    .line 424
    move-result v10

    .line 425
    aput v10, v15, v5

    .line 427
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    .line 430
    move-result v10

    .line 431
    aput v10, v6, v5

    .line 433
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    .line 436
    move-result v10

    .line 437
    aput v10, v9, v5

    .line 439
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getBasebandCn0DbHz(I)F

    .line 442
    move-result v10

    .line 443
    aput v10, v11, v5

    .line 445
    add-int/lit8 v5, v5, 0x1

    .line 447
    goto :goto_8

    .line 448
    :cond_11
    :try_start_1
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    .line 450
    move-object v5, v11

    .line 451
    move-object v11, v0

    .line 452
    move-object/from16 v16, v6

    .line 454
    move-object/from16 v17, v9

    .line 456
    move-object/from16 v18, v5

    .line 458
    invoke-interface/range {v11 .. v18}, Lcom/samsung/android/location/ISLocationManager;->onSvStatusChanged(I[I[F[F[F[F[F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 461
    goto :goto_9

    .line 462
    :catch_0
    move-exception v0

    .line 463
    const-string v5, "SLocationProxy"

    .line 465
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 468
    move-result-object v0

    .line 469
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_12
    :goto_9
    iget-object v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 474
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 477
    move-result v1

    .line 478
    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    .line 481
    const/4 v5, 0x0

    .line 482
    :goto_a
    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 485
    move-result v0

    .line 486
    if-ge v5, v0, :cond_16

    .line 488
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_14

    .line 494
    iget v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    .line 496
    const/4 v1, 0x1

    .line 497
    add-int/2addr v0, v1

    .line 498
    iput v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    .line 500
    iget-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReports:J

    .line 502
    const-wide/16 v8, 0x1

    .line 504
    add-long/2addr v6, v8

    .line 505
    iput-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReports:J

    .line 507
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    .line 510
    move-result v0

    .line 511
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMetrics;->isL5Sv(F)Z

    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_13

    .line 517
    iget v4, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    .line 519
    add-int/2addr v4, v1

    .line 520
    iput v4, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    .line 522
    iget-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReports:J

    .line 524
    add-long/2addr v6, v8

    .line 525
    iput-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReports:J

    .line 527
    :cond_13
    invoke-virtual {v2, v5}, Landroid/location/GnssStatus;->usedInFix(I)Z

    .line 530
    move-result v4

    .line 531
    if-eqz v4, :cond_15

    .line 533
    iget v4, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    .line 535
    add-int/2addr v4, v1

    .line 536
    iput v4, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    .line 538
    iget-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReportsUsedInFix:J

    .line 540
    add-long/2addr v6, v8

    .line 541
    iput-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReportsUsedInFix:J

    .line 543
    if-eqz v0, :cond_15

    .line 545
    iget v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    .line 547
    add-int/2addr v0, v1

    .line 548
    iput v0, v3, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    .line 550
    iget-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    .line 552
    add-long/2addr v6, v8

    .line 553
    iput-wide v6, v3, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    .line 555
    goto :goto_b

    .line 556
    :cond_14
    const/4 v1, 0x1

    .line 557
    :cond_15
    :goto_b
    add-int/lit8 v5, v5, 0x1

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
