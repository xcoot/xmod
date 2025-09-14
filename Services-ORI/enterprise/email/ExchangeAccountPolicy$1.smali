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

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "force SMIME Certificate has failed. status = "

    .line 11
    .line 12
    .line 13
    const-string/jumbo v3, "forcing "

    .line 14
    .line 15
    .line 16
    const-string/jumbo v4, "failed to SMIME Certificate (Alias)."

    .line 17
    .line 18
    .line 19
    const-string/jumbo v5, "failed to release SMIME Certificate (Alias) : "

    .line 20
    .line 21
    .line 22
    const-string/jumbo v6, "success to SMIME Certificate (Alias) : "

    .line 23
    .line 24
    .line 25
    const-string/jumbo v7, "success to release SMIME Certificate (Alias) : "

    .line 26
    .line 27
    .line 28
    const-string/jumbo v8, "force SMIME Certificate for Signing (Alias). ret = "

    .line 29
    .line 30
    .line 31
    const-string/jumbo v9, "force SMIME Certificate for Enryption (Alias). ret = "

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    const-string v11, "Received Intent - "

    .line 39
    .line 40
    const-string v12, "ExchangeAccountPolicy/Receiver"

    .line 41
    .line 42
    invoke-static {v11, v10, v12}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    if-nez v10, :cond_0

    .line 46
    .line 47
    const-string/jumbo v0, "failed. action is null."

    .line 48
    .line 49
    .line 50
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_0
    const-string/jumbo v11, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.SMIME_INSTALL_TYPE"

    .line 63
    .line 64
    .line 65
    const-string/jumbo v14, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    .line 66
    .line 67
    .line 68
    const-string/jumbo v15, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 69
    .line 70
    .line 71
    move-object/from16 v16, v2

    .line 72
    .line 73
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SMIME_RESULT"

    .line 74
    .line 75
    .line 76
    move-object/from16 v17, v3

    .line 77
    .line 78
    move-object/from16 v18, v4

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    const-string v4, "S"

    .line 82
    .line 83
    if-eqz v11, :cond_8

    .line 84
    .line 85
    const-string v5, "Received - ACTION_SMIME_INSTALL_STATUS"

    .line 86
    .line 87
    invoke-static {v12, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    const-wide/16 v5, -0x1

    .line 95
    .line 96
    invoke-virtual {v0, v15, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    invoke-virtual {v0, v14, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v4}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    if-nez v4, :cond_1

    .line 121
    .line 122
    const-string/jumbo v0, "failed. no registed work. id = "

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v5, v6, v12}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_1
    const/4 v5, -0x1

    .line 131
    if-ne v2, v5, :cond_7

    .line 132
    .line 133
    const-wide/16 v5, 0x0

    .line 134
    .line 135
    cmp-long v5, v7, v5

    .line 136
    .line 137
    if-lez v5, :cond_7

    .line 138
    .line 139
    const/4 v5, 0x1

    .line 140
    invoke-virtual {v0, v13, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iget-object v2, v4, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 145
    .line 146
    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 147
    .line 148
    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 149
    .line 150
    const/4 v6, 0x2

    .line 151
    if-eq v0, v6, :cond_2

    .line 152
    .line 153
    if-ne v0, v5, :cond_3

    .line 154
    .line 155
    :cond_2
    iget-object v3, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 156
    .line 157
    move-object/from16 v19, v3

    .line 158
    .line 159
    check-cast v19, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 160
    .line 161
    const/16 v25, 0x1

    .line 162
    .line 163
    const-string v24, "ForceSmimeCertForEncryption"

    .line 164
    .line 165
    move/from16 v20, v4

    .line 166
    .line 167
    move/from16 v21, v2

    .line 168
    .line 169
    move-wide/from16 v22, v7

    .line 170
    .line 171
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    const-string/jumbo v5, "force SMIME Certificate for Enryption. ret = "

    .line 176
    .line 177
    .line 178
    invoke-static {v5, v12, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 179
    .line 180
    .line 181
    :cond_3
    const/4 v5, 0x3

    .line 182
    if-eq v0, v5, :cond_4

    .line 183
    .line 184
    const/4 v5, 0x1

    .line 185
    if-ne v0, v5, :cond_5

    .line 186
    .line 187
    :cond_4
    iget-object v1, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 188
    .line 189
    move-object/from16 v19, v1

    .line 190
    .line 191
    check-cast v19, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 192
    .line 193
    const/16 v25, 0x1

    .line 194
    .line 195
    const-string v24, "ForceSmimeCertForSigning"

    .line 196
    .line 197
    move/from16 v20, v4

    .line 198
    .line 199
    move/from16 v21, v2

    .line 200
    .line 201
    move-wide/from16 v22, v7

    .line 202
    .line 203
    invoke-virtual/range {v19 .. v25}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    const-string/jumbo v1, "force SMIME Certificate for Signing. ret = "

    .line 208
    .line 209
    .line 210
    invoke-static {v1, v12, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    .line 212
    .line 213
    :cond_5
    if-eqz v3, :cond_6

    .line 214
    .line 215
    const-string/jumbo v1, "success to SMIME Certificate ."

    .line 216
    .line 217
    .line 218
    invoke-static {v0, v1, v12}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_5

    .line 222
    .line 223
    :cond_6
    const-string/jumbo v1, "failed to SMIME Certificate ."

    .line 224
    .line 225
    .line 226
    invoke-static {v0, v1, v12}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_5

    .line 230
    .line 231
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string/jumbo v1, "failed to enforce SMIME. accId = "

    .line 234
    .line 235
    .line 236
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v1, ", status = "

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    goto/16 :goto_5

    .line 258
    .line 259
    :cond_8
    const-string/jumbo v11, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    if-eqz v10, :cond_12

    .line 267
    .line 268
    const-string v10, "ExchangeAccountPolicy"

    .line 269
    .line 270
    const-string v11, "Received - ACTION_ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    .line 271
    .line 272
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    move-object v11, v4

    .line 280
    move-object/from16 v19, v5

    .line 281
    .line 282
    move-object/from16 v20, v6

    .line 283
    .line 284
    const-wide/16 v3, -0x1

    .line 285
    .line 286
    invoke-virtual {v0, v15, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 287
    .line 288
    .line 289
    move-result-wide v5

    .line 290
    move-object/from16 v29, v2

    .line 291
    .line 292
    const/4 v2, -0x1

    .line 293
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 294
    .line 295
    .line 296
    move-result v13

    .line 297
    invoke-virtual {v0, v14, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 298
    .line 299
    .line 300
    move-result-wide v2

    .line 301
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-static {v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    if-eqz v0, :cond_11

    .line 318
    .line 319
    iget-object v4, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    .line 320
    .line 321
    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 322
    .line 323
    iget v14, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    .line 325
    move-object/from16 v30, v15

    .line 326
    .line 327
    :try_start_1
    iget v15, v11, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 328
    .line 329
    move-wide/from16 v22, v2

    .line 330
    .line 331
    const/4 v2, -0x1

    .line 332
    if-ne v10, v2, :cond_10

    .line 333
    .line 334
    const-wide/16 v2, 0x0

    .line 335
    .line 336
    cmp-long v2, v5, v2

    .line 337
    .line 338
    if-lez v2, :cond_10

    .line 339
    .line 340
    if-nez v13, :cond_a

    .line 341
    .line 342
    if-nez v4, :cond_9

    .line 343
    .line 344
    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 345
    .line 346
    move-object/from16 v22, v2

    .line 347
    .line 348
    check-cast v22, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 349
    .line 350
    const/16 v27, 0x2

    .line 351
    .line 352
    const/16 v28, 0x1

    .line 353
    .line 354
    move-object/from16 v23, v11

    .line 355
    .line 356
    move-wide/from16 v24, v5

    .line 357
    .line 358
    move/from16 v26, v15

    .line 359
    .line 360
    invoke-virtual/range {v22 .. v28}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    const-string/jumbo v2, "release SMIME Certificate for Enryption (Alias) by null."

    .line 365
    .line 366
    .line 367
    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
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

    .line 374
    .line 375
    :cond_9
    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 376
    .line 377
    move-object/from16 v22, v2

    .line 378
    .line 379
    check-cast v22, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 380
    .line 381
    const-string v27, "ForceSmimeCertForEncryption"

    .line 382
    .line 383
    const/16 v28, 0x1

    .line 384
    .line 385
    move/from16 v23, v14

    .line 386
    .line 387
    move/from16 v24, v15

    .line 388
    .line 389
    move-wide/from16 v25, v5

    .line 390
    .line 391
    invoke-virtual/range {v22 .. v28}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
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

    .line 414
    .line 415
    if-nez v4, :cond_b

    .line 416
    .line 417
    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 418
    .line 419
    move-object/from16 v22, v2

    .line 420
    .line 421
    check-cast v22, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 422
    .line 423
    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 424
    .line 425
    const/16 v27, 0x3

    .line 426
    .line 427
    const/16 v28, 0x1

    .line 428
    .line 429
    move-object/from16 v23, v0

    .line 430
    .line 431
    move-wide/from16 v24, v5

    .line 432
    .line 433
    move/from16 v26, v15

    .line 434
    .line 435
    invoke-virtual/range {v22 .. v28}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    const-string/jumbo v0, "release SMIME Certificate for Signing (Alias) by null."

    .line 440
    .line 441
    .line 442
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    goto :goto_2

    .line 446
    :cond_b
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 447
    .line 448
    move-object/from16 v22, v0

    .line 449
    .line 450
    check-cast v22, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 451
    .line 452
    const-string v27, "ForceSmimeCertForSigning"

    .line 453
    .line 454
    const/16 v28, 0x1

    .line 455
    .line 456
    move/from16 v23, v14

    .line 457
    .line 458
    move/from16 v24, v15

    .line 459
    .line 460
    move-wide/from16 v25, v5

    .line 461
    .line 462
    invoke-virtual/range {v22 .. v28}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    :cond_c
    :goto_2
    if-eqz v3, :cond_e

    .line 482
    .line 483
    if-nez v4, :cond_d

    .line 484
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    goto/16 :goto_4

    .line 501
    .line 502
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    move-object/from16 v2, v20

    .line 505
    .line 506
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    goto :goto_4

    .line 520
    :cond_e
    if-nez v4, :cond_f

    .line 521
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    move-object/from16 v2, v19

    .line 525
    .line 526
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    goto :goto_4

    .line 540
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    move-object/from16 v2, v18

    .line 543
    .line 544
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .line 556
    .line 557
    goto :goto_4

    .line 558
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    move-object/from16 v2, v17

    .line 561
    .line 562
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    move-wide/from16 v2, v22

    .line 566
    .line 567
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    goto :goto_4

    .line 578
    :catch_1
    move-exception v0

    .line 579
    move-object/from16 v30, v15

    .line 580
    .line 581
    goto :goto_3

    .line 582
    :cond_11
    move-object/from16 v30, v15

    .line 583
    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    move-object/from16 v2, v16

    .line 587
    .line 588
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    const-string v2, ", accId="

    .line 595
    .line 596
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 607
    .line 608
    .line 609
    goto :goto_4

    .line 610
    :goto_3
    const-string v2, "Failed to apply SMIME Alis Policy on success."

    .line 611
    .line 612
    invoke-static {v12, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .line 614
    .line 615
    :goto_4
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 616
    .line 617
    check-cast v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 618
    .line 619
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 620
    .line 621
    .line 622
    new-instance v1, Landroid/content/Intent;

    .line 623
    .line 624
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_RESULT"

    .line 625
    .line 626
    .line 627
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    move-object/from16 v2, v30

    .line 631
    .line 632
    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 633
    .line 634
    .line 635
    move-object/from16 v2, v29

    .line 636
    .line 637
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    .line 639
    .line 640
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    .line 645
    .line 646
    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 647
    .line 648
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 649
    .line 650
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    .line 651
    .line 652
    .line 653
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    goto :goto_5

    .line 657
    :cond_12
    const-string/jumbo v0, "no Defined Intent."

    .line 658
    .line 659
    .line 660
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .line 662
    .line 663
    :goto_5
    return-void

    .line 664
    :pswitch_0
    const-string/jumbo v2, "userid"

    .line 665
    .line 666
    .line 667
    const/4 v3, -0x1

    .line 668
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 673
    .line 674
    .line 675
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 676
    .line 677
    .line 678
    move-result v2

    .line 679
    const-string/jumbo v3, "deviceid"

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v3

    .line 686
    if-nez v3, :cond_13

    .line 687
    .line 688
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.DEVICE_ID_INTERNAL"

    .line 689
    .line 690
    .line 691
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v3

    .line 695
    :cond_13
    const-string v0, "ExchangeAccountPolicy"

    .line 696
    .line 697
    new-instance v4, Ljava/lang/StringBuilder;

    .line 698
    .line 699
    const-string/jumbo v5, "getDeviceId() : receive userId = "

    .line 700
    .line 701
    .line 702
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    const-string v5, " , deviceid = "

    .line 709
    .line 710
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v4

    .line 720
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .line 722
    .line 723
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    .line 724
    .line 725
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 733
    .line 734
    monitor-enter v2

    .line 735
    :try_start_2
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    .line 736
    .line 737
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 738
    .line 739
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
