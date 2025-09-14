.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v6, 0x14

    .line 6
    .line 7
    const-string v7, "SAccessoryManager_CoverAuthenticator"

    .line 8
    .line 9
    const/16 v8, 0xa

    .line 10
    .line 11
    const/16 v9, 0x10

    .line 12
    .line 13
    const/16 v10, 0x1e

    .line 14
    .line 15
    iget-object v11, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 16
    .line 17
    const/4 v12, 0x1

    .line 18
    const/4 v15, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    iget v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->$r8$classId:I

    .line 21
    .line 22
    packed-switch v3, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    const-string/jumbo v4, "when"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    :goto_0
    iget v13, v1, Landroid/os/Message;->what:I

    .line 42
    .line 43
    if-eqz v13, :cond_9

    .line 44
    .line 45
    if-eq v13, v12, :cond_1

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_1
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_7

    .line 61
    .line 62
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    new-instance v13, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v14, "isAuthChipExistBySensor length="

    .line 73
    .line 74
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    array-length v14, v1

    .line 78
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v14, " response="

    .line 82
    .line 83
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    aget-byte v14, v1, v2

    .line 87
    .line 88
    const-string v5, "SAccessoryManager_DetachCheck"

    .line 89
    .line 90
    invoke-static {v13, v14, v5}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    array-length v13, v1

    .line 94
    if-ne v13, v12, :cond_3

    .line 95
    .line 96
    aget-byte v13, v1, v2

    .line 97
    .line 98
    const/16 v14, -0x20

    .line 99
    .line 100
    if-eq v13, v14, :cond_2

    .line 101
    .line 102
    const/16 v14, -0x9

    .line 103
    .line 104
    if-eq v13, v14, :cond_2

    .line 105
    .line 106
    const/16 v14, -0xf

    .line 107
    .line 108
    if-eq v13, v14, :cond_2

    .line 109
    .line 110
    const/16 v14, -0xb

    .line 111
    .line 112
    if-eq v13, v14, :cond_2

    .line 113
    .line 114
    if-ne v13, v10, :cond_3

    .line 115
    .line 116
    :cond_2
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v9, "0x%02x"

    .line 125
    .line 126
    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v9, "NFC Transaction ongoing, response="

    .line 131
    .line 132
    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    .line 140
    .line 141
    .line 142
    move v0, v15

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    array-length v1, v1

    .line 145
    if-ne v1, v9, :cond_4

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    .line 148
    .line 149
    .line 150
    move v0, v12

    .line 151
    goto :goto_1

    .line 152
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    .line 153
    .line 154
    .line 155
    move v0, v2

    .line 156
    :goto_1
    if-ne v0, v12, :cond_5

    .line 157
    .line 158
    invoke-static {v11, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 159
    .line 160
    .line 161
    const/16 v0, 0x37

    .line 162
    .line 163
    invoke-virtual {v11, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V

    .line 164
    .line 165
    .line 166
    const-string v0, "auth chip exists"

    .line 167
    .line 168
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto/16 :goto_3

    .line 172
    .line 173
    :cond_5
    if-ne v0, v15, :cond_6

    .line 174
    .line 175
    iget v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateByNfc:I

    .line 176
    .line 177
    if-ne v0, v12, :cond_6

    .line 178
    .line 179
    invoke-static {v11, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 180
    .line 181
    .line 182
    iput v12, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    .line 183
    .line 184
    const/16 v0, 0x32

    .line 185
    .line 186
    invoke-virtual {v11, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    const/16 v0, 0x30

    .line 191
    .line 192
    invoke-virtual {v11, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V

    .line 193
    .line 194
    .line 195
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 196
    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v1, "accessory_cover_uri"

    .line 206
    .line 207
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    xor-int/2addr v0, v12

    .line 216
    if-eqz v0, :cond_7

    .line 217
    .line 218
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->disableSetting()V

    .line 221
    .line 222
    .line 223
    :cond_7
    iget-wide v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    .line 224
    .line 225
    const-wide/16 v5, 0x0

    .line 226
    .line 227
    cmp-long v7, v0, v5

    .line 228
    .line 229
    if-eqz v7, :cond_8

    .line 230
    .line 231
    sub-long/2addr v3, v0

    .line 232
    const-wide/32 v0, 0x1dcd6500

    .line 233
    .line 234
    .line 235
    cmp-long v0, v3, v0

    .line 236
    .line 237
    if-gez v0, :cond_8

    .line 238
    .line 239
    const-wide/16 v13, 0x1f4

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_8
    const-wide/16 v13, 0x0

    .line 243
    .line 244
    :goto_2
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 245
    .line 246
    const-wide/16 v3, 0x3e8

    .line 247
    .line 248
    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 249
    .line 250
    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 252
    .line 253
    .line 254
    move-result-wide v0

    .line 255
    iput-wide v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    .line 256
    .line 257
    iput v2, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    .line 258
    .line 259
    invoke-virtual {v11, v13, v14}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    .line 260
    .line 261
    .line 262
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    .line 263
    .line 264
    if-eqz v0, :cond_a

    .line 265
    .line 266
    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->broadcastCoverAttachStatus(Z)V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_9
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    .line 272
    .line 273
    iput v12, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 274
    .line 275
    iput-wide v3, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    .line 276
    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 278
    .line 279
    .line 280
    move-result-wide v0

    .line 281
    iput-wide v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    .line 282
    .line 283
    const-wide/16 v0, 0x0

    .line 284
    .line 285
    invoke-virtual {v11, v0, v1, v12}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    .line 286
    .line 287
    .line 288
    :cond_a
    :goto_3
    return-void

    .line 289
    :pswitch_0
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 290
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v3, "handleMessage = "

    .line 294
    .line 295
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget v3, v1, Landroid/os/Message;->what:I

    .line 299
    .line 300
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-static {v3}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->convertMsg(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    iget v0, v1, Landroid/os/Message;->what:I

    .line 318
    .line 319
    const/4 v3, 0x4

    .line 320
    const/4 v4, 0x7

    .line 321
    const/4 v5, 0x5

    .line 322
    packed-switch v0, :pswitch_data_1

    .line 323
    .line 324
    .line 325
    goto/16 :goto_18

    .line 326
    .line 327
    :pswitch_1
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 328
    .line 329
    iget-object v0, v0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    goto/16 :goto_18

    .line 335
    .line 336
    :pswitch_2
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 337
    .line 338
    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    .line 340
    .line 341
    iget v0, v1, Landroid/os/Message;->what:I

    .line 342
    .line 343
    if-ne v0, v5, :cond_b

    .line 344
    .line 345
    iget v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    .line 346
    .line 347
    add-int/2addr v0, v12

    .line 348
    iput v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    .line 349
    .line 350
    const/16 v0, 0x5b

    .line 351
    .line 352
    invoke-virtual {v11, v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 353
    .line 354
    .line 355
    const-string v0, "authentication is timed out!"

    .line 356
    .line 357
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    :cond_b
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    .line 361
    .line 362
    if-eqz v0, :cond_c

    .line 363
    .line 364
    const/16 v0, 0x30

    .line 365
    .line 366
    invoke-virtual {v11, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_18

    .line 370
    .line 371
    :cond_c
    :pswitch_3
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 372
    .line 373
    iget-object v3, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 374
    .line 375
    invoke-virtual {v0, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 376
    .line 377
    .line 378
    iget v0, v1, Landroid/os/Message;->what:I

    .line 379
    .line 380
    const/4 v3, 0x6

    .line 381
    if-ne v0, v3, :cond_d

    .line 382
    .line 383
    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-lt v0, v12, :cond_d

    .line 388
    .line 389
    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 390
    .line 391
    .line 392
    move v0, v12

    .line 393
    goto :goto_4

    .line 394
    :cond_d
    move v0, v2

    .line 395
    :goto_4
    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    if-lt v3, v12, :cond_f

    .line 400
    .line 401
    iget v1, v1, Landroid/os/Message;->what:I

    .line 402
    .line 403
    if-ne v1, v5, :cond_e

    .line 404
    .line 405
    iget v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    .line 406
    .line 407
    if-gt v1, v12, :cond_f

    .line 408
    .line 409
    :cond_e
    if-eqz v0, :cond_39

    .line 410
    .line 411
    :cond_f
    iget v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 412
    .line 413
    const/4 v1, 0x0

    .line 414
    if-nez v0, :cond_10

    .line 415
    .line 416
    invoke-virtual {v11, v2, v1, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 417
    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_10
    invoke-virtual {v11, v2, v1, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 421
    .line 422
    .line 423
    :goto_5
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 424
    .line 425
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_18

    .line 429
    .line 430
    :pswitch_4
    const-string v0, "handleAuthResponse"

    .line 431
    .line 432
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 436
    .line 437
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 438
    .line 439
    .line 440
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 441
    .line 442
    if-nez v0, :cond_11

    .line 443
    .line 444
    const-string v0, "handleAuthResponse, mCurrentSession is null"

    .line 445
    .line 446
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 450
    .line 451
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_18

    .line 455
    .line 456
    :cond_11
    iget-boolean v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 457
    .line 458
    if-nez v0, :cond_12

    .line 459
    .line 460
    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-ge v0, v12, :cond_12

    .line 465
    .line 466
    const-string v0, "This is unlikely indicates that cover is detached while authenticating"

    .line 467
    .line 468
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .line 470
    .line 471
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 472
    .line 473
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_18

    .line 477
    .line 478
    :cond_12
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 481
    .line 482
    iget-object v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 483
    .line 484
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    const-string/jumbo v13, "reason"

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    iget-boolean v13, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 499
    .line 500
    const-wide/16 v5, 0x12c

    .line 501
    .line 502
    if-eqz v13, :cond_15

    .line 503
    .line 504
    iget-boolean v13, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    .line 505
    .line 506
    if-eqz v13, :cond_15

    .line 507
    .line 508
    new-instance v3, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    .line 509
    .line 510
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    .line 511
    .line 512
    invoke-direct {v3, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    .line 513
    .line 514
    .line 515
    if-nez v1, :cond_13

    .line 516
    .line 517
    iget-boolean v0, v3, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    .line 518
    .line 519
    if-eqz v0, :cond_13

    .line 520
    .line 521
    goto :goto_6

    .line 522
    :cond_13
    iget v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    .line 523
    .line 524
    if-ge v0, v15, :cond_14

    .line 525
    .line 526
    invoke-virtual {v11, v5, v6, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    .line 527
    .line 528
    .line 529
    goto :goto_7

    .line 530
    :cond_14
    :goto_6
    iput-boolean v2, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    .line 531
    .line 532
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 533
    .line 534
    iget-object v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 535
    .line 536
    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFactoryResult()V

    .line 540
    .line 541
    .line 542
    :goto_7
    iget v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    .line 543
    .line 544
    add-int/2addr v0, v12

    .line 545
    iput v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    .line 546
    .line 547
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 548
    .line 549
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_18

    .line 553
    .line 554
    :cond_15
    new-instance v13, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    .line 555
    .line 556
    iget-object v5, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    .line 557
    .line 558
    invoke-direct {v13, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    .line 559
    .line 560
    .line 561
    iget-boolean v5, v13, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    .line 562
    .line 563
    iget-object v6, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 564
    .line 565
    const-string v14, "auth reason = "

    .line 566
    .line 567
    if-nez v1, :cond_1e

    .line 568
    .line 569
    iget-object v3, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    .line 570
    .line 571
    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    .line 572
    .line 573
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    .line 575
    .line 576
    invoke-static {v8}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->isThisKeyBlocklisted(Ljava/lang/String;)Z

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    iget-object v8, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    .line 581
    .line 582
    iget-object v10, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    .line 583
    .line 584
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    invoke-static {v10}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->isThisKeyBlocklisted(Ljava/lang/String;)Z

    .line 588
    .line 589
    .line 590
    move-result v8

    .line 591
    if-eqz v5, :cond_16

    .line 592
    .line 593
    if-nez v3, :cond_16

    .line 594
    .line 595
    if-nez v8, :cond_16

    .line 596
    .line 597
    move v3, v12

    .line 598
    goto :goto_8

    .line 599
    :cond_16
    new-instance v10, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    const-string v15, "Is ID valid ? "

    .line 602
    .line 603
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    const-string v15, ", isKeyBlocked ? "

    .line 607
    .line 608
    const-string v9, ", isPackageBlocked? "

    .line 609
    .line 610
    invoke-static {v10, v5, v15, v3, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    move v3, v2

    .line 624
    :goto_8
    iget-byte v5, v13, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->reserved:B

    .line 625
    .line 626
    const/16 v8, 0x11

    .line 627
    .line 628
    if-ne v5, v8, :cond_17

    .line 629
    .line 630
    iput v12, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 631
    .line 632
    goto :goto_9

    .line 633
    :cond_17
    iput v2, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 634
    .line 635
    :goto_9
    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 636
    .line 637
    .line 638
    move-result v5

    .line 639
    if-ne v5, v12, :cond_1d

    .line 640
    .line 641
    const-wide/16 v8, 0x0

    .line 642
    .line 643
    invoke-virtual {v6, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 644
    .line 645
    .line 646
    iget v4, v13, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->year:I

    .line 647
    .line 648
    iget-boolean v5, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 649
    .line 650
    if-eqz v5, :cond_18

    .line 651
    .line 652
    const-string v2, "factory binary"

    .line 653
    .line 654
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .line 656
    .line 657
    goto :goto_c

    .line 658
    :cond_18
    sget-object v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->BRAND_NAME:Ljava/lang/String;

    .line 659
    .line 660
    if-eqz v5, :cond_19

    .line 661
    .line 662
    const-string v6, "Note10"

    .line 663
    .line 664
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    if-eqz v5, :cond_19

    .line 669
    .line 670
    goto :goto_c

    .line 671
    :cond_19
    iget-object v5, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    .line 672
    .line 673
    const-string v6, "SM-N935"

    .line 674
    .line 675
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 676
    .line 677
    .line 678
    move-result v5

    .line 679
    if-nez v5, :cond_1b

    .line 680
    .line 681
    iget-object v5, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    .line 682
    .line 683
    const-string v6, "SM-N960"

    .line 684
    .line 685
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 686
    .line 687
    .line 688
    move-result v5

    .line 689
    if-nez v5, :cond_1b

    .line 690
    .line 691
    iget-object v5, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    .line 692
    .line 693
    const-string v6, "SM-G97"

    .line 694
    .line 695
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 696
    .line 697
    .line 698
    move-result v5

    .line 699
    if-nez v5, :cond_1b

    .line 700
    .line 701
    iget-object v5, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    .line 702
    .line 703
    const-string v6, "SM-G960"

    .line 704
    .line 705
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 706
    .line 707
    .line 708
    move-result v5

    .line 709
    if-nez v5, :cond_1b

    .line 710
    .line 711
    iget-object v5, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    .line 712
    .line 713
    const-string v6, "SM-G965"

    .line 714
    .line 715
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 716
    .line 717
    .line 718
    move-result v5

    .line 719
    if-eqz v5, :cond_1a

    .line 720
    .line 721
    goto :goto_a

    .line 722
    :cond_1a
    const/16 v5, 0x10

    .line 723
    .line 724
    goto :goto_b

    .line 725
    :cond_1b
    :goto_a
    sget-boolean v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 726
    .line 727
    if-eqz v5, :cond_1a

    .line 728
    .line 729
    goto :goto_c

    .line 730
    :goto_b
    if-ge v4, v5, :cond_1c

    .line 731
    .line 732
    const-string v1, "This cover is not available"

    .line 733
    .line 734
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    .line 736
    .line 737
    const/16 v1, 0x5d

    .line 738
    .line 739
    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 740
    .line 741
    .line 742
    iget v1, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 743
    .line 744
    iget v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 745
    .line 746
    invoke-virtual {v11, v1, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 747
    .line 748
    .line 749
    goto :goto_d

    .line 750
    :cond_1c
    :goto_c
    iget v2, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 751
    .line 752
    invoke-virtual {v11, v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 753
    .line 754
    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    const-string v4, "Accessory = "

    .line 758
    .line 759
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    iget v4, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 763
    .line 764
    invoke-static {v2, v4, v7}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 765
    .line 766
    .line 767
    move v2, v3

    .line 768
    goto :goto_d

    .line 769
    :cond_1d
    const/16 v1, 0x5c

    .line 770
    .line 771
    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 772
    .line 773
    .line 774
    iget v1, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 775
    .line 776
    iget v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 777
    .line 778
    invoke-virtual {v11, v1, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 779
    .line 780
    .line 781
    iput v2, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 782
    .line 783
    const-string v3, "Authentication is success, but Accessory is detached."

    .line 784
    .line 785
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .line 787
    .line 788
    :goto_d
    invoke-static {v1, v14, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    iget-object v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    .line 792
    .line 793
    if-eqz v1, :cond_2b

    .line 794
    .line 795
    const/16 v1, 0x31

    .line 796
    .line 797
    invoke-virtual {v11, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V

    .line 798
    .line 799
    .line 800
    goto/16 :goto_12

    .line 801
    .line 802
    :cond_1e
    iget v4, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 803
    .line 804
    invoke-virtual {v11, v1, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 805
    .line 806
    .line 807
    new-instance v4, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v4

    .line 819
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .line 821
    .line 822
    if-ne v1, v12, :cond_1f

    .line 823
    .line 824
    goto/16 :goto_12

    .line 825
    .line 826
    :cond_1f
    const/16 v4, 0xb

    .line 827
    .line 828
    if-eq v1, v4, :cond_29

    .line 829
    .line 830
    if-ne v1, v10, :cond_20

    .line 831
    .line 832
    goto/16 :goto_10

    .line 833
    .line 834
    :cond_20
    const/16 v4, 0x1f

    .line 835
    .line 836
    if-ne v1, v4, :cond_21

    .line 837
    .line 838
    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v6, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 842
    .line 843
    .line 844
    goto/16 :goto_11

    .line 845
    .line 846
    :cond_21
    const/16 v4, 0xc

    .line 847
    .line 848
    if-ne v1, v4, :cond_22

    .line 849
    .line 850
    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v6, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    .line 855
    .line 856
    goto/16 :goto_12

    .line 857
    .line 858
    :cond_22
    const/16 v4, 0xd

    .line 859
    .line 860
    if-ne v1, v4, :cond_25

    .line 861
    .line 862
    iget v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    .line 863
    .line 864
    if-ge v1, v15, :cond_24

    .line 865
    .line 866
    const/4 v1, 0x5

    .line 867
    invoke-virtual {v6, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 868
    .line 869
    .line 870
    move-result v4

    .line 871
    if-eqz v4, :cond_24

    .line 872
    .line 873
    iget v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    .line 874
    .line 875
    add-int/2addr v1, v12

    .line 876
    iput v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    .line 877
    .line 878
    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    if-nez v1, :cond_23

    .line 883
    .line 884
    goto/16 :goto_11

    .line 885
    .line 886
    :cond_23
    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 890
    .line 891
    .line 892
    iget-object v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 893
    .line 894
    const-wide/16 v3, 0x2710

    .line 895
    .line 896
    const/4 v5, 0x5

    .line 897
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 898
    .line 899
    .line 900
    const-wide/16 v3, 0x1388

    .line 901
    .line 902
    invoke-virtual {v6, v15, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 903
    .line 904
    .line 905
    goto/16 :goto_11

    .line 906
    .line 907
    :cond_24
    iput v2, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    .line 908
    .line 909
    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v6, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 913
    .line 914
    .line 915
    goto/16 :goto_12

    .line 916
    .line 917
    :cond_25
    const/16 v3, 0x16

    .line 918
    .line 919
    const/16 v4, 0x14

    .line 920
    .line 921
    if-eq v1, v4, :cond_26

    .line 922
    .line 923
    const/16 v4, 0x15

    .line 924
    .line 925
    if-eq v1, v4, :cond_26

    .line 926
    .line 927
    if-eq v1, v3, :cond_26

    .line 928
    .line 929
    const/16 v4, 0x17

    .line 930
    .line 931
    if-eq v1, v4, :cond_26

    .line 932
    .line 933
    const/16 v4, 0x18

    .line 934
    .line 935
    if-eq v1, v4, :cond_26

    .line 936
    .line 937
    const/16 v4, 0x20

    .line 938
    .line 939
    if-eq v1, v4, :cond_26

    .line 940
    .line 941
    if-eq v1, v8, :cond_26

    .line 942
    .line 943
    const/16 v4, 0x5a

    .line 944
    .line 945
    if-eq v1, v4, :cond_26

    .line 946
    .line 947
    const/16 v4, 0x19

    .line 948
    .line 949
    if-eq v1, v4, :cond_26

    .line 950
    .line 951
    const/16 v4, 0x1a

    .line 952
    .line 953
    if-eq v1, v4, :cond_26

    .line 954
    .line 955
    const/16 v4, 0x1b

    .line 956
    .line 957
    if-eq v1, v4, :cond_26

    .line 958
    .line 959
    const/16 v4, 0x28

    .line 960
    .line 961
    if-eq v1, v4, :cond_26

    .line 962
    .line 963
    const/16 v4, 0x29

    .line 964
    .line 965
    if-eq v1, v4, :cond_26

    .line 966
    .line 967
    const/16 v4, 0x2a

    .line 968
    .line 969
    if-eq v1, v4, :cond_26

    .line 970
    .line 971
    const/16 v4, 0x2b

    .line 972
    .line 973
    if-eq v1, v4, :cond_26

    .line 974
    .line 975
    const/16 v4, 0x2c

    .line 976
    .line 977
    if-eq v1, v4, :cond_26

    .line 978
    .line 979
    const/16 v4, 0x2d

    .line 980
    .line 981
    if-eq v1, v4, :cond_26

    .line 982
    .line 983
    const/16 v4, 0x2e

    .line 984
    .line 985
    if-eq v1, v4, :cond_26

    .line 986
    .line 987
    const/16 v4, 0x5e

    .line 988
    .line 989
    if-eq v1, v4, :cond_26

    .line 990
    .line 991
    const/16 v4, 0x5f

    .line 992
    .line 993
    if-ne v1, v4, :cond_2a

    .line 994
    .line 995
    :cond_26
    if-eq v1, v3, :cond_28

    .line 996
    .line 997
    if-eq v1, v8, :cond_28

    .line 998
    .line 999
    const/16 v3, 0xe

    .line 1000
    .line 1001
    if-ne v1, v3, :cond_27

    .line 1002
    .line 1003
    goto :goto_e

    .line 1004
    :cond_27
    const/4 v1, 0x5

    .line 1005
    const-wide/16 v3, 0x3e8

    .line 1006
    .line 1007
    goto :goto_f

    .line 1008
    :cond_28
    :goto_e
    const/4 v1, 0x5

    .line 1009
    const-wide/16 v3, 0x12c

    .line 1010
    .line 1011
    :goto_f
    invoke-virtual {v6, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1012
    .line 1013
    .line 1014
    move-result v1

    .line 1015
    if-eqz v1, :cond_2a

    .line 1016
    .line 1017
    invoke-virtual {v11, v3, v4, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    .line 1018
    .line 1019
    .line 1020
    goto :goto_11

    .line 1021
    :cond_29
    :goto_10
    const-string v1, "do nothing.."

    .line 1022
    .line 1023
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .line 1025
    .line 1026
    :cond_2a
    :goto_11
    move v12, v2

    .line 1027
    :cond_2b
    :goto_12
    if-eqz v12, :cond_2d

    .line 1028
    .line 1029
    iget v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 1030
    .line 1031
    if-nez v1, :cond_2c

    .line 1032
    .line 1033
    invoke-virtual {v11, v2, v13, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 1034
    .line 1035
    .line 1036
    :goto_13
    const-wide/16 v0, 0x0

    .line 1037
    .line 1038
    goto :goto_14

    .line 1039
    :cond_2c
    invoke-virtual {v11, v2, v13, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 1040
    .line 1041
    .line 1042
    goto :goto_13

    .line 1043
    :goto_14
    invoke-virtual {v11, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    .line 1044
    .line 1045
    .line 1046
    :cond_2d
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1047
    .line 1048
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1049
    .line 1050
    .line 1051
    goto/16 :goto_18

    .line 1052
    .line 1053
    :pswitch_5
    iget v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    .line 1054
    .line 1055
    if-ne v0, v3, :cond_2e

    .line 1056
    .line 1057
    const/4 v0, -0x1

    .line 1058
    invoke-virtual {v11, v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 1059
    .line 1060
    .line 1061
    :goto_15
    const-wide/16 v0, 0x0

    .line 1062
    .line 1063
    goto :goto_16

    .line 1064
    :cond_2e
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    .line 1065
    .line 1066
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1067
    .line 1068
    .line 1069
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    .line 1070
    .line 1071
    if-eqz v0, :cond_2f

    .line 1072
    .line 1073
    const-string v0, "Authentication is blocked"

    .line 1074
    .line 1075
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .line 1077
    .line 1078
    goto :goto_15

    .line 1079
    :cond_2f
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    .line 1080
    .line 1081
    if-nez v0, :cond_32

    .line 1082
    .line 1083
    if-nez v0, :cond_30

    .line 1084
    .line 1085
    move v2, v15

    .line 1086
    :cond_30
    if-ne v2, v15, :cond_31

    .line 1087
    .line 1088
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    .line 1089
    .line 1090
    const/4 v1, 0x3

    .line 1091
    invoke-direct {v0, v11, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1092
    .line 1093
    .line 1094
    iget-object v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 1095
    .line 1096
    const-wide/16 v3, 0x3e8

    .line 1097
    .line 1098
    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1099
    .line 1100
    .line 1101
    :cond_31
    const-string v0, "Authentication is blocked.. type = "

    .line 1102
    .line 1103
    invoke-static {v2, v0, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    goto :goto_15

    .line 1107
    :goto_16
    invoke-virtual {v11, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    .line 1108
    .line 1109
    .line 1110
    goto/16 :goto_18

    .line 1111
    .line 1112
    :cond_32
    const-string v0, "handleAuthStart"

    .line 1113
    .line 1114
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    .line 1116
    .line 1117
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1118
    .line 1119
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1120
    .line 1121
    .line 1122
    iget-boolean v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 1123
    .line 1124
    if-nez v0, :cond_33

    .line 1125
    .line 1126
    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 1127
    .line 1128
    .line 1129
    move-result v0

    .line 1130
    if-ge v0, v12, :cond_33

    .line 1131
    .line 1132
    const-string v0, "This is unlikely indicates that cover is detached while starting auth"

    .line 1133
    .line 1134
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    .line 1136
    .line 1137
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1138
    .line 1139
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1140
    .line 1141
    .line 1142
    goto/16 :goto_18

    .line 1143
    .line 1144
    :cond_33
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 1145
    .line 1146
    iget-object v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 1147
    .line 1148
    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    .line 1149
    .line 1150
    .line 1151
    move-result v0

    .line 1152
    if-eq v0, v4, :cond_34

    .line 1153
    .line 1154
    if-eq v0, v12, :cond_34

    .line 1155
    .line 1156
    const-string/jumbo v0, "session is busy"

    .line 1157
    .line 1158
    .line 1159
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    .line 1161
    .line 1162
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1163
    .line 1164
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1165
    .line 1166
    .line 1167
    goto/16 :goto_18

    .line 1168
    .line 1169
    :cond_34
    new-instance v0, Landroid/os/Message;

    .line 1170
    .line 1171
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    iget-object v2, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 1175
    .line 1176
    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    .line 1177
    .line 1178
    .line 1179
    move-result v2

    .line 1180
    if-ne v2, v4, :cond_35

    .line 1181
    .line 1182
    const-string v2, "connectivity_type"

    .line 1183
    .line 1184
    invoke-static {v12, v2}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v2

    .line 1188
    iput-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1189
    .line 1190
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->start(Landroid/os/Message;)V

    .line 1194
    .line 1195
    .line 1196
    goto :goto_17

    .line 1197
    :cond_35
    iget-object v2, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 1198
    .line 1199
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1200
    .line 1201
    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->start(Landroid/os/Message;)V

    .line 1202
    .line 1203
    .line 1204
    :goto_17
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1205
    .line 1206
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1207
    .line 1208
    .line 1209
    goto/16 :goto_18

    .line 1210
    .line 1211
    :pswitch_6
    const-string v0, "Initialize cover authenticator"

    .line 1212
    .line 1213
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    .line 1215
    .line 1216
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 1217
    .line 1218
    .line 1219
    move-result v0

    .line 1220
    iput-boolean v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 1221
    .line 1222
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 1223
    .line 1224
    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;-><init>()V

    .line 1225
    .line 1226
    .line 1227
    iput-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 1228
    .line 1229
    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;

    .line 1230
    .line 1231
    invoke-direct {v1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1235
    .line 1236
    .line 1237
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    .line 1238
    .line 1239
    iget-object v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 1240
    .line 1241
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v1

    .line 1248
    new-instance v3, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 1249
    .line 1250
    invoke-direct {v3, v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;-><init>(Landroid/content/ContentResolver;)V

    .line 1251
    .line 1252
    .line 1253
    sput-object v3, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 1254
    .line 1255
    const-string v3, "cover_pubkey_blocklist"

    .line 1256
    .line 1257
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v3

    .line 1261
    sget-object v4, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 1262
    .line 1263
    invoke-virtual {v1, v3, v12, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1264
    .line 1265
    .line 1266
    const-string v3, "cover_authentication_blocked"

    .line 1267
    .line 1268
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v3

    .line 1272
    new-instance v4, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;

    .line 1273
    .line 1274
    invoke-direct {v4, v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;-><init>(Landroid/content/ContentResolver;)V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v1, v3, v12, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1278
    .line 1279
    .line 1280
    iput-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    .line 1281
    .line 1282
    sput-object v11, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    .line 1283
    .line 1284
    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 1285
    .line 1286
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1287
    .line 1288
    .line 1289
    new-instance v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;

    .line 1290
    .line 1291
    invoke-direct {v1, v0, v2}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;-><init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;I)V

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1295
    .line 1296
    .line 1297
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    .line 1298
    .line 1299
    iget-object v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 1300
    .line 1301
    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;-><init>(Landroid/content/Context;)V

    .line 1302
    .line 1303
    .line 1304
    iput-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    .line 1305
    .line 1306
    sput-object v11, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    .line 1307
    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1309
    .line 1310
    const-string/jumbo v1, "nfc restriction policy = "

    .line 1311
    .line 1312
    .line 1313
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1314
    .line 1315
    .line 1316
    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    .line 1317
    .line 1318
    invoke-static {v7, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1319
    .line 1320
    .line 1321
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 1322
    .line 1323
    const-string/jumbo v1, "power"

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    check-cast v0, Landroid/os/PowerManager;

    .line 1331
    .line 1332
    iput-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    .line 1333
    .line 1334
    invoke-virtual {v0, v12, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v0

    .line 1338
    iput-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1339
    .line 1340
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1341
    .line 1342
    .line 1343
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    .line 1344
    .line 1345
    const-string v1, "SAccessoryManager_CoverAuthenticatorDetachTimeoutWakeLock"

    .line 1346
    .line 1347
    invoke-virtual {v0, v12, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v0

    .line 1351
    iput-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1352
    .line 1353
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1354
    .line 1355
    .line 1356
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 1357
    .line 1358
    const-string v1, "alarm"

    .line 1359
    .line 1360
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v0

    .line 1364
    check-cast v0, Landroid/app/AlarmManager;

    .line 1365
    .line 1366
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1367
    .line 1368
    if-eqz v0, :cond_36

    .line 1369
    .line 1370
    iput-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    .line 1371
    .line 1372
    :cond_36
    sput-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    .line 1373
    .line 1374
    new-instance v6, Landroid/content/IntentFilter;

    .line 1375
    .line 1376
    const-string v0, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

    .line 1377
    .line 1378
    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1379
    .line 1380
    .line 1381
    const-string v0, "com.samsung.accessory.manager.action.START_AUTHENTICATION"

    .line 1382
    .line 1383
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1384
    .line 1385
    .line 1386
    iget-object v3, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 1387
    .line 1388
    iget-object v4, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryReceiver:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 1389
    .line 1390
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1391
    .line 1392
    const/4 v8, 0x0

    .line 1393
    const/4 v9, 0x2

    .line 1394
    const-string v7, "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

    .line 1395
    .line 1396
    invoke-virtual/range {v3 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1397
    .line 1398
    .line 1399
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 1400
    .line 1401
    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 1402
    .line 1403
    invoke-direct {v1, v11, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1404
    .line 1405
    .line 1406
    new-instance v2, Landroid/content/IntentFilter;

    .line 1407
    .line 1408
    const-string v3, "com.samsung.android.nfc.INIT_READY"

    .line 1409
    .line 1410
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v0, v1, v2, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 1414
    .line 1415
    .line 1416
    iget-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 1417
    .line 1418
    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 1419
    .line 1420
    invoke-direct {v1, v11, v15}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1421
    .line 1422
    .line 1423
    new-instance v2, Landroid/content/IntentFilter;

    .line 1424
    .line 1425
    const-string v3, "com.samsung.android.nfc.action.COVER_AUTH_READY"

    .line 1426
    .line 1427
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v0, v1, v2, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 1431
    .line 1432
    .line 1433
    new-instance v0, Landroid/content/IntentFilter;

    .line 1434
    .line 1435
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 1436
    .line 1437
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1438
    .line 1439
    .line 1440
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 1441
    .line 1442
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1443
    .line 1444
    .line 1445
    iget-object v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 1446
    .line 1447
    new-instance v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 1448
    .line 1449
    const/4 v3, 0x3

    .line 1450
    invoke-direct {v2, v11, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1454
    .line 1455
    .line 1456
    const-string/jumbo v0, "ro.product.vendor.device"

    .line 1457
    .line 1458
    .line 1459
    const-string v1, "NONE"

    .line 1460
    .line 1461
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v0

    .line 1465
    const-string/jumbo v1, "q2q"

    .line 1466
    .line 1467
    .line 1468
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1469
    .line 1470
    .line 1471
    move-result v1

    .line 1472
    if-nez v1, :cond_37

    .line 1473
    .line 1474
    const-string/jumbo v1, "v2q"

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1478
    .line 1479
    .line 1480
    move-result v0

    .line 1481
    if-eqz v0, :cond_38

    .line 1482
    .line 1483
    :cond_37
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    .line 1484
    .line 1485
    iget-object v1, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 1486
    .line 1487
    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;-><init>(Landroid/content/Context;)V

    .line 1488
    .line 1489
    .line 1490
    iput-object v0, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    .line 1491
    .line 1492
    :cond_38
    iput-boolean v12, v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    .line 1493
    .line 1494
    :cond_39
    :goto_18
    return-void

    .line 1495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
