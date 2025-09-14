.class public final Lcom/android/server/DirEncryptService$1$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/DirEncryptService$1;

.field public final synthetic val$extras:Landroid/os/PersistableBundle;

.field public final synthetic val$resp_code:I


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptService$1;ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/DirEncryptService$1$1;->this$1:Lcom/android/server/DirEncryptService$1;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/DirEncryptService$1$1;->val$resp_code:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/DirEncryptService$1$1;->val$extras:Landroid/os/PersistableBundle;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/DirEncryptService$1$1;->this$1:Lcom/android/server/DirEncryptService$1;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 8
    .line 9
    iget v2, v0, Lcom/android/server/DirEncryptService$1$1;->val$resp_code:I

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/DirEncryptService$1$1;->val$extras:Landroid/os/PersistableBundle;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v3, "ENCRYPT Response admin : "

    .line 17
    .line 18
    const-string v4, "ENCRYPT Response admin : "

    .line 19
    .line 20
    const-string v5, "DirEncryptServiceHelperVoldResponse.PROGRESS percentage("

    .line 21
    .line 22
    const-string v6, ""

    .line 23
    .line 24
    const-string v7, "ENC_META_CHECK : EAS Policy Set"

    .line 25
    .line 26
    const-string/jumbo v8, "onEventInner resp_code: "

    .line 27
    .line 28
    .line 29
    sget-object v9, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v9

    .line 32
    :try_start_0
    const-string/jumbo v10, "path"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    const-string/jumbo v10, "status"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    const-string/jumbo v11, "description"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    const-string v12, "arg1"

    .line 53
    .line 54
    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    const-string v13, "arg2"

    .line 59
    .line 60
    invoke-virtual {v0, v13}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const-string v13, "DirEncryptServiceHelper"

    .line 65
    .line 66
    new-instance v14, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v8, " status : "

    .line 75
    .line 76
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v13, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    const/4 v8, 0x6

    .line 90
    const/4 v13, 0x1

    .line 91
    const/4 v15, 0x2

    .line 92
    const/4 v14, 0x0

    .line 93
    packed-switch v2, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    :pswitch_0
    goto/16 :goto_4

    .line 97
    .line 98
    :pswitch_1
    const/16 v0, 0xb

    .line 99
    .line 100
    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 101
    .line 102
    const-string v2, ""

    .line 103
    .line 104
    invoke-virtual {v1, v0, v10, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v14}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 108
    .line 109
    .line 110
    if-nez v10, :cond_0

    .line 111
    .line 112
    const/4 v15, 0x3

    .line 113
    :cond_0
    const-string/jumbo v0, "free"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v15, v14, v14, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_4

    .line 120
    .line 121
    :catchall_0
    move-exception v0

    .line 122
    goto/16 :goto_5

    .line 123
    .line 124
    :pswitch_2
    iput v14, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 125
    .line 126
    iput v14, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 127
    .line 128
    iput-boolean v14, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 129
    .line 130
    iget-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-nez v0, :cond_1

    .line 137
    .line 138
    const-string v0, "DirEncryptServiceHelper"

    .line 139
    .line 140
    const-string/jumbo v1, "there is no SD card"

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto/16 :goto_4

    .line 147
    .line 148
    :cond_1
    if-ne v10, v13, :cond_2

    .line 149
    .line 150
    const-string v2, "DirEncryptServiceHelper"

    .line 151
    .line 152
    const-string v3, "ENC_META_CHECK : Encryption State Normal"

    .line 153
    .line 154
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iput-boolean v13, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-ne v0, v13, :cond_4

    .line 168
    .line 169
    const-string v0, "DirEncryptServiceHelper"

    .line 170
    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    const-string v0, ""

    .line 187
    .line 188
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_3

    .line 193
    .line 194
    iget-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 195
    .line 196
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 197
    .line 198
    .line 199
    move-result-wide v2

    .line 200
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->setExternalSDvolUsedSize(J)V

    .line 201
    .line 202
    .line 203
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_4
    const-string v0, "DirEncryptServiceHelper"

    .line 208
    .line 209
    const-string v2, "ENC_META_CHECK : Normal SD Card"

    .line 210
    .line 211
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    iput-boolean v14, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 215
    .line 216
    iput-boolean v13, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 217
    .line 218
    :goto_0
    sput-boolean v14, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 219
    .line 220
    goto/16 :goto_4

    .line 221
    .line 222
    :pswitch_3
    const/4 v0, 0x7

    .line 223
    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 224
    .line 225
    invoke-virtual {v1, v14}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 226
    .line 227
    .line 228
    if-nez v10, :cond_5

    .line 229
    .line 230
    const/4 v15, 0x3

    .line 231
    :cond_5
    const-string/jumbo v0, "free"

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v15, v14, v14, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_4

    .line 238
    .line 239
    :pswitch_4
    iput v12, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 240
    .line 241
    const/4 v0, 0x4

    .line 242
    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 243
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v1, v8, v10, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v14}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 260
    .line 261
    .line 262
    if-nez v10, :cond_6

    .line 263
    .line 264
    const/4 v15, 0x3

    .line 265
    :cond_6
    const-string/jumbo v0, "free"

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v15, v14, v14, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_4

    .line 272
    .line 273
    :pswitch_5
    const-string v2, "DirEncryptServiceHelper"

    .line 274
    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v4, "), storage("

    .line 284
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v4, ")"

    .line 292
    .line 293
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    if-ne v10, v13, :cond_7

    .line 304
    .line 305
    invoke-virtual {v1, v15}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 306
    .line 307
    .line 308
    const/4 v2, 0x3

    .line 309
    goto :goto_1

    .line 310
    :cond_7
    const/4 v2, 0x3

    .line 311
    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 312
    .line 313
    .line 314
    :goto_1
    if-nez v10, :cond_8

    .line 315
    .line 316
    move v14, v2

    .line 317
    goto :goto_2

    .line 318
    :cond_8
    move v14, v15

    .line 319
    :goto_2
    const-string/jumbo v2, "busy"

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v14, v12, v0, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :pswitch_6
    const/4 v2, 0x3

    .line 328
    const-string/jumbo v0, "success"

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-eqz v0, :cond_b

    .line 336
    .line 337
    const-string v0, "DirEncryptServiceHelper"

    .line 338
    .line 339
    const-string v3, "RESP_ENCRYPT success"

    .line 340
    .line 341
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    iput v14, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 345
    .line 346
    invoke-virtual {v1, v14}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 347
    .line 348
    .line 349
    const-string/jumbo v0, "success"

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v15, v10, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    if-nez v10, :cond_9

    .line 356
    .line 357
    move v15, v2

    .line 358
    :cond_9
    const-string v0, "Mount"

    .line 359
    .line 360
    invoke-virtual {v1, v15, v14, v14, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 361
    .line 362
    .line 363
    const-string v0, "DirEncryptServiceHelper"

    .line 364
    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    if-nez v10, :cond_a

    .line 385
    .line 386
    const-string v0, "DirEncryptServiceHelper"

    .line 387
    .line 388
    const-string v2, "Decrypt compelte"

    .line 389
    .line 390
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    const-string v0, ""

    .line 394
    .line 395
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 396
    .line 397
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 402
    .line 403
    goto/16 :goto_4

    .line 404
    .line 405
    :cond_a
    const-string v0, "DirEncryptServiceHelper"

    .line 406
    .line 407
    const-string v2, "Encrypt complete"

    .line 408
    .line 409
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 417
    .line 418
    const-string v0, ""

    .line 419
    .line 420
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 421
    .line 422
    goto/16 :goto_4

    .line 423
    .line 424
    :cond_b
    const-string/jumbo v0, "exception"

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_e

    .line 432
    .line 433
    const-string v0, "DirEncryptServiceHelper"

    .line 434
    .line 435
    const-string v4, "RESP_ENCRYPT : encrypted on other device"

    .line 436
    .line 437
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    const/16 v0, 0x8

    .line 441
    .line 442
    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 443
    .line 444
    invoke-virtual {v1, v14}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 445
    .line 446
    .line 447
    const-string/jumbo v0, "exception"

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v15, v10, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 451
    .line 452
    .line 453
    if-nez v10, :cond_c

    .line 454
    .line 455
    move v15, v2

    .line 456
    :cond_c
    const-string v0, "Mount"

    .line 457
    .line 458
    invoke-virtual {v1, v15, v14, v14, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 459
    .line 460
    .line 461
    const-string v0, "DirEncryptServiceHelper"

    .line 462
    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    if-nez v10, :cond_d

    .line 483
    .line 484
    const-string v0, "DirEncryptServiceHelper"

    .line 485
    .line 486
    const-string v2, "Decrypt compelte"

    .line 487
    .line 488
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    const-string v0, ""

    .line 492
    .line 493
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 494
    .line 495
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 500
    .line 501
    goto :goto_4

    .line 502
    :cond_d
    const-string v0, "DirEncryptServiceHelper"

    .line 503
    .line 504
    const-string v2, "Encrypt complete"

    .line 505
    .line 506
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 514
    .line 515
    const-string v0, ""

    .line 516
    .line 517
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 518
    .line 519
    goto :goto_4

    .line 520
    :cond_e
    const-string v0, "DirEncryptServiceHelper"

    .line 521
    .line 522
    const-string v3, "RESP_ENCRYPT failed"

    .line 523
    .line 524
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    iget v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 528
    .line 529
    if-nez v0, :cond_10

    .line 530
    .line 531
    if-ne v10, v13, :cond_f

    .line 532
    .line 533
    const/4 v0, 0x5

    .line 534
    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 535
    .line 536
    goto :goto_3

    .line 537
    :cond_f
    iput v8, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 538
    .line 539
    :cond_10
    :goto_3
    const-string/jumbo v0, "failed"

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v15, v10, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1, v14}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 546
    .line 547
    .line 548
    if-nez v10, :cond_11

    .line 549
    .line 550
    move v15, v2

    .line 551
    :cond_11
    const-string/jumbo v0, "free"

    .line 552
    .line 553
    .line 554
    invoke-virtual {v1, v15, v14, v14, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 555
    .line 556
    .line 557
    :goto_4
    monitor-exit v9

    .line 558
    return-void

    .line 559
    :goto_5
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    throw v0

    .line 561
    :pswitch_data_0
    .packed-switch 0x2ab
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
