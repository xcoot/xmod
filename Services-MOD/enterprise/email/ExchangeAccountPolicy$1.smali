.class public final Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$sync:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p2

    .line 5
    iget v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->$r8$classId:I

    .line 7
    packed-switch v2, :pswitch_data_0

    .line 10
    const-string/jumbo v2, "force SMIME Certificate has failed. status = "

    .line 13
    const-string/jumbo v3, "forcing "

    .line 16
    const-string/jumbo v4, "failed to SMIME Certificate (Alias)."

    .line 19
    const-string/jumbo v5, "failed to release SMIME Certificate (Alias) : "

    .line 22
    const-string/jumbo v6, "success to SMIME Certificate (Alias) : "

    .line 25
    const-string/jumbo v7, "success to release SMIME Certificate (Alias) : "

    .line 28
    const-string/jumbo v8, "force SMIME Certificate for Signing (Alias). ret = "

    .line 31
    const-string/jumbo v9, "force SMIME Certificate for Enryption (Alias). ret = "

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 37
    move-result-object v10

    .line 38
    const-string v11, "Received Intent - "

    .line 40
    const-string v12, "ExchangeAccountPolicy/Receiver"

    .line 42
    invoke-static {v11, v10, v12}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    if-nez v10, :cond_0

    .line 47
    const-string/jumbo v0, "failed. action is null."

    .line 50
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    goto/16 :goto_5

    .line 55
    :cond_0
    const-string/jumbo v11, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    .line 58
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 61
    move-result v11

    .line 62
    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.SMIME_INSTALL_TYPE"

    .line 65
    const-string/jumbo v14, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    .line 68
    const-string/jumbo v15, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 71
    move-object/from16 v16, v2

    .line 73
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SMIME_RESULT"

    .line 76
    move-object/from16 v17, v3

    .line 78
    move-object/from16 v18, v4

    .line 80
    const/4 v3, 0x0

    .line 81
    const-string v4, "S"

    .line 83
    if-eqz v11, :cond_8

    .line 85
    const-string v5, "Received - ACTION_SMIME_INSTALL_STATUS"

    .line 87
    invoke-static {v12, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 93
    move-result v2

    .line 94
    const-wide/16 v5, -0x1

    .line 96
    invoke-virtual {v0, v15, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 99
    move-result-wide v7

    .line 100
    invoke-virtual {v0, v14, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 103
    move-result-wide v5

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v4

    .line 116
    invoke-static {v4}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 119
    move-result-object v4

    .line 120
    if-nez v4, :cond_1

    .line 122
    const-string/jumbo v0, "failed. no registed work. id = "

    .line 125
    invoke-static {v0, v5, v6, v12}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 128
    goto/16 :goto_5

    .line 130
    :cond_1
    const/4 v5, -0x1

    .line 131
    if-ne v2, v5, :cond_7

    .line 133
    const-wide/16 v5, 0x0

    .line 135
    cmp-long v5, v7, v5

    .line 137
    if-lez v5, :cond_7

    .line 139
    const/4 v5, 0x1

    .line 140
    invoke-virtual {v0, v13, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 143
    move-result v0

    .line 144
    iget-object v2, v4, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 146
    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 148
    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 150
    const/4 v6, 0x2

    .line 151
    if-eq v0, v6, :cond_2

    .line 153
    if-ne v0, v5, :cond_3

    .line 155
    :cond_2
    iget-object v3, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 157
    move-object/from16 v19, v3

    .line 159
    check-cast v19, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 161
    const/16 v25, 0x1

    .line 163
    const-string v24, "ForceSmimeCertForEncryption"

    .line 165
    move/from16 v20, v4

    .line 167
    move/from16 v21, v2

    .line 169
    move-wide/from16 v22, v7

    .line 171
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 174
    move-result v3

    .line 175
    const-string/jumbo v5, "force SMIME Certificate for Enryption. ret = "

    .line 178
    invoke-static {v5, v12, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    :cond_3
    const/4 v5, 0x3

    .line 182
    if-eq v0, v5, :cond_4

    .line 184
    const/4 v5, 0x1

    .line 185
    if-ne v0, v5, :cond_5

    .line 187
    :cond_4
    iget-object v1, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 189
    move-object/from16 v19, v1

    .line 191
    check-cast v19, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 193
    const/16 v25, 0x1

    .line 195
    const-string v24, "ForceSmimeCertForSigning"

    .line 197
    move/from16 v20, v4

    .line 199
    move/from16 v21, v2

    .line 201
    move-wide/from16 v22, v7

    .line 203
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 206
    move-result v3

    .line 207
    const-string/jumbo v1, "force SMIME Certificate for Signing. ret = "

    .line 210
    invoke-static {v1, v12, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 213
    :cond_5
    if-eqz v3, :cond_6

    .line 215
    const-string/jumbo v1, "success to SMIME Certificate ."

    .line 218
    invoke-static {v0, v1, v12}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    goto/16 :goto_5

    .line 223
    :cond_6
    const-string/jumbo v1, "failed to SMIME Certificate ."

    .line 226
    invoke-static {v0, v1, v12}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    goto/16 :goto_5

    .line 231
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 233
    const-string/jumbo v1, "failed to enforce SMIME. accId = "

    .line 236
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, ", status = "

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 254
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    goto/16 :goto_5

    .line 259
    :cond_8
    const-string/jumbo v11, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    .line 262
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    move-result v10

    .line 266
    if-eqz v10, :cond_12

    .line 268
    const-string v10, "ExchangeAccountPolicy"

    .line 270
    const-string v11, "Received - ACTION_ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    .line 272
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 278
    move-result v10

    .line 279
    move-object v11, v4

    .line 280
    move-object/from16 v19, v5

    .line 282
    move-object/from16 v20, v6

    .line 284
    const-wide/16 v3, -0x1

    .line 286
    invoke-virtual {v0, v15, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 289
    move-result-wide v5

    .line 290
    move-object/from16 v29, v2

    .line 292
    const/4 v2, -0x1

    .line 293
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 296
    move-result v13

    .line 297
    invoke-virtual {v0, v14, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 300
    move-result-wide v2

    .line 301
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 303
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object v0

    .line 313
    invoke-static {v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 316
    move-result-object v0

    .line 317
    if-eqz v0, :cond_11

    .line 319
    iget-object v4, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    .line 321
    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 323
    iget v14, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    move-object/from16 v30, v15

    .line 327
    :try_start_1
    iget v15, v11, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 329
    move-wide/from16 v22, v2

    .line 331
    const/4 v2, -0x1

    .line 332
    if-ne v10, v2, :cond_10

    .line 334
    const-wide/16 v2, 0x0

    .line 336
    cmp-long v2, v5, v2

    .line 338
    if-lez v2, :cond_10

    .line 340
    if-nez v13, :cond_a

    .line 342
    if-nez v4, :cond_9

    .line 344
    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 346
    move-object/from16 v22, v2

    .line 348
    check-cast v22, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 350
    const/16 v27, 0x2

    .line 352
    const/16 v28, 0x1

    .line 354
    move-object/from16 v23, v11

    .line 356
    move-wide/from16 v24, v5

    .line 358
    move/from16 v26, v15

    .line 360
    invoke-virtual/range {v22 .. v28}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    .line 363
    move-result v3

    .line 364
    const-string/jumbo v2, "release SMIME Certificate for Enryption (Alias) by null."

    .line 367
    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    const/4 v2, 0x1

    .line 371
    goto :goto_1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    goto/16 :goto_3

    .line 375
    :cond_9
    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 377
    move-object/from16 v22, v2

    .line 379
    check-cast v22, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 381
    const-string v27, "ForceSmimeCertForEncryption"

    .line 383
    const/16 v28, 0x1

    .line 385
    move/from16 v23, v14

    .line 387
    move/from16 v24, v15

    .line 389
    move-wide/from16 v25, v5

    .line 391
    invoke-virtual/range {v22 .. v28}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 394
    move-result v3

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    .line 397
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    move-result-object v2

    .line 407
    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    goto :goto_0

    .line 411
    :cond_a
    const/4 v2, 0x1

    .line 412
    const/4 v3, 0x0

    .line 413
    :goto_1
    if-ne v13, v2, :cond_c

    .line 415
    if-nez v4, :cond_b

    .line 417
    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 419
    move-object/from16 v22, v2

    .line 421
    check-cast v22, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 423
    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 425
    const/16 v27, 0x3

    .line 427
    const/16 v28, 0x1

    .line 429
    move-object/from16 v23, v0

    .line 431
    move-wide/from16 v24, v5

    .line 433
    move/from16 v26, v15

    .line 435
    invoke-virtual/range {v22 .. v28}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    .line 438
    move-result v3

    .line 439
    const-string/jumbo v0, "release SMIME Certificate for Signing (Alias) by null."

    .line 442
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    goto :goto_2

    .line 446
    :cond_b
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 448
    move-object/from16 v22, v0

    .line 450
    check-cast v22, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 452
    const-string v27, "ForceSmimeCertForSigning"

    .line 454
    const/16 v28, 0x1

    .line 456
    move/from16 v23, v14

    .line 458
    move/from16 v24, v15

    .line 460
    move-wide/from16 v25, v5

    .line 462
    invoke-virtual/range {v22 .. v28}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 465
    move-result v3

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    .line 468
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    move-result-object v0

    .line 478
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_c
    :goto_2
    if-eqz v3, :cond_e

    .line 483
    if-nez v4, :cond_d

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    .line 487
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    move-result-object v0

    .line 497
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    goto/16 :goto_4

    .line 502
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 504
    move-object/from16 v2, v20

    .line 506
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    move-result-object v0

    .line 516
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    goto :goto_4

    .line 520
    :cond_e
    if-nez v4, :cond_f

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    .line 524
    move-object/from16 v2, v19

    .line 526
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    move-result-object v0

    .line 536
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    goto :goto_4

    .line 540
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 542
    move-object/from16 v2, v18

    .line 544
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    move-result-object v0

    .line 554
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    goto :goto_4

    .line 558
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 560
    move-object/from16 v2, v17

    .line 562
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    move-wide/from16 v2, v22

    .line 567
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    move-result-object v0

    .line 574
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    goto :goto_4

    .line 578
    :catch_1
    move-exception v0

    .line 579
    move-object/from16 v30, v15

    .line 581
    goto :goto_3

    .line 582
    :cond_11
    move-object/from16 v30, v15

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    .line 586
    move-object/from16 v2, v16

    .line 588
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    const-string v2, ", accId="

    .line 596
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    move-result-object v0

    .line 606
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 609
    goto :goto_4

    .line 610
    :goto_3
    const-string v2, "Failed to apply SMIME Alis Policy on success."

    .line 612
    invoke-static {v12, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    :goto_4
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 617
    check-cast v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 619
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    new-instance v1, Landroid/content/Intent;

    .line 624
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_RESULT"

    .line 627
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    move-object/from16 v2, v30

    .line 632
    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 635
    move-object/from16 v2, v29

    .line 637
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    .line 643
    invoke-virtual {v1, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 648
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 650
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    .line 653
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 656
    goto :goto_5

    .line 657
    :cond_12
    const-string/jumbo v0, "no Defined Intent."

    .line 660
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_5
    return-void

    .line 664
    :pswitch_0
    const-string/jumbo v2, "userid"

    .line 667
    const/4 v3, -0x1

    .line 668
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 671
    move-result v2

    .line 672
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 675
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 678
    move-result v2

    .line 679
    const-string/jumbo v3, "deviceid"

    .line 682
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 685
    move-result-object v3

    .line 686
    if-nez v3, :cond_13

    .line 688
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.DEVICE_ID_INTERNAL"

    .line 691
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 694
    move-result-object v3

    .line 695
    :cond_13
    const-string v0, "ExchangeAccountPolicy"

    .line 697
    new-instance v4, Ljava/lang/StringBuilder;

    .line 699
    const-string/jumbo v5, "getDeviceId() : receive userId = "

    .line 702
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 708
    const-string v5, " , deviceid = "

    .line 710
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    move-result-object v4

    .line 720
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    .line 725
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 728
    move-result-object v2

    .line 729
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 734
    monitor-enter v2

    .line 735
    :try_start_2
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 737
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 740
    monitor-exit v2

    .line 741
    return-void

    .line 742
    :catchall_0
    move-exception v0

    .line 743
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 744
    throw v0

    .line 745
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
