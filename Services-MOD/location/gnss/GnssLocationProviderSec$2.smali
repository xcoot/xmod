.class public final Lcom/android/server/location/gnss/GnssLocationProviderSec$2;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onCellInfo(Ljava/util/List;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "CellInfo updated. cellInfo size = "

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "GnssLocationProvider_ex"

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 31
    iget-object v3, v1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 33
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x4

    .line 38
    const/16 v5, 0x8

    .line 40
    const/4 v6, 0x2

    .line 41
    const/4 v7, 0x3

    .line 42
    if-eq v3, v7, :cond_8

    .line 44
    if-eq v3, v5, :cond_8

    .line 46
    const/16 v8, 0x9

    .line 48
    if-eq v3, v8, :cond_8

    .line 50
    const/16 v9, 0xa

    .line 52
    if-eq v3, v9, :cond_8

    .line 54
    const/16 v10, 0xf

    .line 56
    if-ne v3, v10, :cond_1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/16 v11, 0xd

    .line 61
    if-ne v3, v11, :cond_2

    .line 63
    move v15, v4

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/16 v12, 0x14

    .line 67
    if-ne v3, v12, :cond_3

    .line 69
    move v15, v5

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    const/16 v12, 0x12

    .line 73
    const/4 v13, 0x1

    .line 74
    if-ne v3, v12, :cond_9

    .line 76
    iget-object v3, v1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 78
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    .line 81
    move-result v3

    .line 82
    if-eq v3, v7, :cond_7

    .line 84
    if-eq v3, v5, :cond_7

    .line 86
    if-eq v3, v8, :cond_7

    .line 88
    if-eq v3, v9, :cond_7

    .line 90
    if-ne v3, v10, :cond_4

    .line 92
    goto :goto_0

    .line 93
    :cond_4
    if-ne v3, v11, :cond_5

    .line 95
    const-string/jumbo v1, "networkType = IWLAN, VoiceNetworkType = LTE"

    .line 98
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    move v6, v4

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    iget-object v1, v1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 105
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_6

    .line 111
    const/4 v1, 0x0

    .line 112
    move v6, v1

    .line 113
    goto :goto_1

    .line 114
    :cond_6
    const-string/jumbo v1, "networkType = IWLAN, VoiceNetworkType is not LTE & HSDPA, type =  "

    .line 117
    invoke-static {v3, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    move v6, v13

    .line 121
    goto :goto_1

    .line 122
    :cond_7
    :goto_0
    const-string/jumbo v1, "networkType = IWLAN, VoiceNetworkType = "

    .line 125
    invoke-static {v3, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_8
    :goto_1
    move v15, v6

    .line 129
    goto :goto_2

    .line 130
    :cond_9
    const-string/jumbo v1, "networkType is not IWLAN and type = 1"

    .line 133
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move v15, v13

    .line 137
    :goto_2
    if-nez v15, :cond_a

    .line 139
    return-void

    .line 140
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object v1

    .line 144
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_13

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Landroid/telephony/CellInfo;

    .line 156
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    .line 159
    move-result v6

    .line 160
    if-nez v6, :cond_b

    .line 162
    goto :goto_3

    .line 163
    :cond_b
    const-string/jumbo v1, "registered cell found"

    .line 166
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    .line 176
    move-result-object v1

    .line 177
    if-eqz v1, :cond_13

    .line 179
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    .line 186
    move-result-object v1

    .line 187
    if-nez v1, :cond_c

    .line 189
    goto/16 :goto_6

    .line 191
    :cond_c
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    .line 203
    move-result-object v1

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 207
    move-result v18

    .line 208
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    .line 215
    move-result-object v1

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 219
    move-result v19

    .line 220
    instance-of v1, v3, Landroid/telephony/CellInfoGsm;

    .line 222
    if-eqz v1, :cond_d

    .line 224
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .line 226
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    .line 233
    move-result v2

    .line 234
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    .line 237
    move-result v1

    .line 238
    int-to-long v3, v1

    .line 239
    const v21, 0x7fffffff

    .line 242
    const/16 v22, 0x0

    .line 244
    move-object v14, v0

    .line 245
    move/from16 v16, v18

    .line 247
    move/from16 v17, v19

    .line 249
    move/from16 v18, v2

    .line 251
    move-wide/from16 v19, v3

    .line 253
    move/from16 v23, v1

    .line 255
    invoke-virtual/range {v14 .. v23}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIJIII)V

    .line 258
    goto/16 :goto_6

    .line 260
    :cond_d
    instance-of v1, v3, Landroid/telephony/CellInfoWcdma;

    .line 262
    if-eqz v1, :cond_e

    .line 264
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    .line 266
    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    .line 273
    move-result v2

    .line 274
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    .line 277
    move-result v3

    .line 278
    int-to-long v4, v3

    .line 279
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    .line 282
    move-result v21

    .line 283
    const/16 v22, 0x0

    .line 285
    move-object v14, v0

    .line 286
    move/from16 v16, v18

    .line 288
    move/from16 v17, v19

    .line 290
    move/from16 v18, v2

    .line 292
    move-wide/from16 v19, v4

    .line 294
    move/from16 v23, v3

    .line 296
    invoke-virtual/range {v14 .. v23}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIJIII)V

    .line 299
    goto/16 :goto_6

    .line 301
    :cond_e
    instance-of v1, v3, Landroid/telephony/CellInfoLte;

    .line 303
    iget-object v6, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 305
    if-eqz v1, :cond_10

    .line 307
    check-cast v3, Landroid/telephony/CellInfoLte;

    .line 309
    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    .line 316
    move-result v20

    .line 317
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    .line 320
    move-result v3

    .line 321
    int-to-long v7, v3

    .line 322
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getPci()I

    .line 325
    move-result v23

    .line 326
    if-eq v15, v4, :cond_f

    .line 328
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 330
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_f

    .line 336
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 342
    move-result v1

    .line 343
    if-nez v1, :cond_f

    .line 345
    const-string/jumbo v1, "correct network type to 4 from "

    .line 348
    invoke-static {v15, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    move/from16 v17, v4

    .line 353
    goto :goto_4

    .line 354
    :cond_f
    move/from16 v17, v15

    .line 356
    :goto_4
    const/16 v24, 0x0

    .line 358
    move-object/from16 v16, v0

    .line 360
    move-wide/from16 v21, v7

    .line 362
    move/from16 v25, v3

    .line 364
    invoke-virtual/range {v16 .. v25}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIJIII)V

    .line 367
    goto :goto_6

    .line 368
    :cond_10
    instance-of v1, v3, Landroid/telephony/CellInfoNr;

    .line 370
    if-eqz v1, :cond_12

    .line 372
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    .line 375
    move-result-object v1

    .line 376
    check-cast v1, Landroid/telephony/CellIdentityNr;

    .line 378
    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getTac()I

    .line 381
    move-result v20

    .line 382
    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getNci()J

    .line 385
    move-result-wide v21

    .line 386
    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getPci()I

    .line 389
    move-result v23

    .line 390
    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    .line 393
    move-result v24

    .line 394
    if-eq v15, v5, :cond_11

    .line 396
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 398
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    .line 401
    move-result v1

    .line 402
    if-eqz v1, :cond_11

    .line 404
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 410
    move-result v1

    .line 411
    if-nez v1, :cond_11

    .line 413
    const-string/jumbo v1, "correct network type to 8 from "

    .line 416
    invoke-static {v15, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 419
    move/from16 v17, v5

    .line 421
    goto :goto_5

    .line 422
    :cond_11
    move/from16 v17, v15

    .line 424
    :goto_5
    const/16 v25, 0x0

    .line 426
    move-object/from16 v16, v0

    .line 428
    invoke-virtual/range {v16 .. v25}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIJIII)V

    .line 431
    goto :goto_6

    .line 432
    :cond_12
    instance-of v1, v3, Landroid/telephony/CellInfoCdma;

    .line 434
    if-eqz v1, :cond_13

    .line 436
    check-cast v3, Landroid/telephony/CellInfoCdma;

    .line 438
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    .line 441
    const/4 v1, 0x0

    .line 442
    int-to-long v2, v1

    .line 443
    const/16 v22, 0x0

    .line 445
    const/4 v4, 0x0

    .line 446
    const/16 v21, 0x0

    .line 448
    move-object v14, v0

    .line 449
    move/from16 v16, v18

    .line 451
    move/from16 v17, v19

    .line 453
    move/from16 v18, v4

    .line 455
    move-wide/from16 v19, v2

    .line 457
    move/from16 v23, v1

    .line 459
    invoke-virtual/range {v14 .. v23}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIJIII)V

    .line 462
    nop

    .line 463
    :cond_13
    :goto_6
    return-void
.end method
