.class public final Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x6

    .line 9
    const/4 v5, 0x5

    .line 10
    const/4 v6, 0x3

    .line 11
    const/4 v7, 0x2

    .line 12
    const/4 v8, 0x1

    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v10, 0x4

    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    :pswitch_0
    goto/16 :goto_b

    .line 19
    .line 20
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 21
    .line 22
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Landroid/os/Bundle;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 27
    .line 28
    monitor-enter v2

    .line 29
    :try_start_0
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 46
    .line 47
    iget v4, v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 48
    .line 49
    if-ne v4, v10, :cond_0

    .line 50
    .line 51
    invoke-virtual {v3, v10, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    monitor-exit v2

    .line 58
    goto/16 :goto_b

    .line 59
    .line 60
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw v0

    .line 62
    :pswitch_2
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    .line 65
    .line 66
    const-string v2, "CoverManager_GracefulNfcLedCoverController"

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v3, "Firmware version already retrieved: "

    .line 73
    .line 74
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_b

    .line 95
    .line 96
    :cond_2
    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    const-string v1, "Led is on, try checking version later"

    .line 101
    .line 102
    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_b

    .line 111
    .line 112
    :cond_3
    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->startLedCover()[B

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    array-length v1, v1

    .line 124
    if-le v1, v8, :cond_4

    .line 125
    .line 126
    move v1, v8

    .line 127
    goto :goto_2

    .line 128
    :cond_4
    move v1, v9

    .line 129
    :goto_2
    iget-object v3, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 130
    .line 131
    if-nez v1, :cond_6

    .line 132
    .line 133
    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v10}, Landroid/os/Handler;->hasMessages(I)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_5

    .line 146
    .line 147
    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {v8}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    .line 153
    .line 154
    .line 155
    :cond_5
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_b

    .line 161
    .line 162
    :cond_6
    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 163
    .line 164
    sget-object v11, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-static {v11}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->transceiveDataWithLedCover([B)[B

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    new-instance v12, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v13, "Verison check response: "

    .line 176
    .line 177
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    invoke-static {v2, v12}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    if-eqz v1, :cond_7

    .line 195
    .line 196
    array-length v12, v1

    .line 197
    const/4 v13, 0x7

    .line 198
    if-lt v12, v13, :cond_7

    .line 199
    .line 200
    aget-byte v12, v1, v9

    .line 201
    .line 202
    aget-byte v14, v11, v5

    .line 203
    .line 204
    if-ne v12, v14, :cond_7

    .line 205
    .line 206
    aget-byte v12, v1, v8

    .line 207
    .line 208
    aget-byte v14, v11, v4

    .line 209
    .line 210
    if-ne v12, v14, :cond_7

    .line 211
    .line 212
    aget-byte v7, v1, v7

    .line 213
    .line 214
    aget-byte v12, v11, v13

    .line 215
    .line 216
    if-ne v7, v12, :cond_7

    .line 217
    .line 218
    aget-byte v5, v1, v5

    .line 219
    .line 220
    const/16 v7, 0xa

    .line 221
    .line 222
    aget-byte v7, v11, v7

    .line 223
    .line 224
    if-ne v5, v7, :cond_7

    .line 225
    .line 226
    aget-byte v4, v1, v4

    .line 227
    .line 228
    const/16 v5, 0xb

    .line 229
    .line 230
    aget-byte v5, v11, v5

    .line 231
    .line 232
    if-ne v4, v5, :cond_7

    .line 233
    .line 234
    move v9, v8

    .line 235
    :cond_7
    if-eqz v9, :cond_8

    .line 236
    .line 237
    aget-byte v4, v1, v6

    .line 238
    .line 239
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    aget-byte v1, v1, v10

    .line 244
    .line 245
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    const-string v4, "%02X %02X"

    .line 254
    .line 255
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    iput-object v1, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    .line 260
    .line 261
    :cond_8
    if-eqz v9, :cond_9

    .line 262
    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v4, "Firmware version retrieved: "

    .line 266
    .line 267
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v4, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 283
    .line 284
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    const-string v2, "led_cover_firmware_version"

    .line 289
    .line 290
    iget-object v4, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    :cond_9
    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3, v10}, Landroid/os/Handler;->hasMessages(I)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-nez v1, :cond_a

    .line 308
    .line 309
    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    invoke-static {v8}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    .line 315
    .line 316
    .line 317
    :cond_a
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 318
    .line 319
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_b

    .line 323
    .line 324
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 325
    .line 326
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v1, Landroid/os/Bundle;

    .line 329
    .line 330
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 331
    .line 332
    monitor-enter v2

    .line 333
    :try_start_1
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-eqz v3, :cond_c

    .line 344
    .line 345
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    check-cast v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 350
    .line 351
    iget v4, v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 352
    .line 353
    if-ne v4, v10, :cond_b

    .line 354
    .line 355
    invoke-virtual {v3, v6, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 356
    .line 357
    .line 358
    goto :goto_3

    .line 359
    :catchall_1
    move-exception v0

    .line 360
    goto :goto_4

    .line 361
    :cond_c
    monitor-exit v2

    .line 362
    goto/16 :goto_b

    .line 363
    .line 364
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    throw v0

    .line 366
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 367
    .line 368
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v1, Landroid/os/Bundle;

    .line 371
    .line 372
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 373
    .line 374
    monitor-enter v2

    .line 375
    :try_start_2
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    :cond_d
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-eqz v3, :cond_e

    .line 386
    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    check-cast v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 392
    .line 393
    iget v4, v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 394
    .line 395
    if-ne v4, v10, :cond_d

    .line 396
    .line 397
    invoke-virtual {v3, v7, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 398
    .line 399
    .line 400
    goto :goto_5

    .line 401
    :catchall_2
    move-exception v0

    .line 402
    goto :goto_6

    .line 403
    :cond_e
    monitor-exit v2

    .line 404
    goto/16 :goto_b

    .line 405
    .line 406
    :goto_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 407
    throw v0

    .line 408
    :pswitch_5
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 409
    .line 410
    if-ne v1, v8, :cond_f

    .line 411
    .line 412
    goto/16 :goto_b

    .line 413
    .line 414
    :cond_f
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    const-string v1, "CoverManager_GracefulNfcLedCoverController"

    .line 420
    .line 421
    const-string v2, "handleCoverDetached()"

    .line 422
    .line 423
    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    iget-object v1, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    .line 427
    .line 428
    monitor-enter v1

    .line 429
    :try_start_3
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 430
    .line 431
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 435
    .line 436
    invoke-static {v2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 437
    .line 438
    .line 439
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 440
    .line 441
    invoke-static {v2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 442
    .line 443
    .line 444
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 445
    .line 446
    invoke-static {v2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 447
    .line 448
    .line 449
    iput-boolean v9, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 450
    .line 451
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 452
    .line 453
    .line 454
    iget-object v2, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 455
    .line 456
    if-nez v2, :cond_10

    .line 457
    .line 458
    iget-object v2, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 459
    .line 460
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    iput-object v2, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 465
    .line 466
    :cond_10
    iget-object v2, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 467
    .line 468
    if-nez v2, :cond_11

    .line 469
    .line 470
    const-string v2, "CoverManager_BaseNfcLedCoverController"

    .line 471
    .line 472
    const-string v4, "Could not get NfcAdapter"

    .line 473
    .line 474
    invoke-static {v2, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    :cond_11
    iget-object v2, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 478
    .line 479
    if-eqz v2, :cond_12

    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 482
    .line 483
    .line 484
    goto :goto_7

    .line 485
    :catchall_3
    move-exception v0

    .line 486
    goto :goto_8

    .line 487
    :cond_12
    :goto_7
    iput-object v3, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    .line 488
    .line 489
    monitor-exit v1

    .line 490
    goto/16 :goto_b

    .line 491
    .line 492
    :goto_8
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 493
    throw v0

    .line 494
    :pswitch_6
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 495
    .line 496
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    .line 497
    .line 498
    .line 499
    goto/16 :goto_b

    .line 500
    .line 501
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 502
    .line 503
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 504
    .line 505
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 506
    .line 507
    invoke-static {v0, v2, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;II)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_b

    .line 511
    .line 512
    :pswitch_8
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 513
    .line 514
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 515
    .line 516
    iget-boolean v0, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 517
    .line 518
    if-nez v0, :cond_13

    .line 519
    .line 520
    iget-object v0, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 521
    .line 522
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 523
    .line 524
    .line 525
    goto/16 :goto_b

    .line 526
    .line 527
    :cond_13
    sget v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    .line 528
    .line 529
    if-lez v0, :cond_14

    .line 530
    .line 531
    iget v0, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->testCount:I

    .line 532
    .line 533
    add-int/2addr v0, v8

    .line 534
    iput v0, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->testCount:I

    .line 535
    .line 536
    :cond_14
    new-array v0, v7, [B

    .line 537
    .line 538
    fill-array-data v0, :array_0

    .line 539
    .line 540
    .line 541
    const/16 v11, 0x11

    .line 542
    .line 543
    invoke-static {v11, v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    const-string v12, "CoverManager_GracefulNfcLedCoverController"

    .line 548
    .line 549
    if-nez v0, :cond_15

    .line 550
    .line 551
    const-string v0, "Invalid data"

    .line 552
    .line 553
    invoke-static {v12, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .line 555
    .line 556
    goto/16 :goto_b

    .line 557
    .line 558
    :cond_15
    :try_start_4
    sget v13, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    .line 559
    .line 560
    if-nez v13, :cond_17

    .line 561
    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 563
    .line 564
    .line 565
    move-result-wide v13

    .line 566
    iget-wide v5, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    .line 567
    .line 568
    sub-long v5, v13, v5

    .line 569
    .line 570
    const-wide/16 v15, 0x7530

    .line 571
    .line 572
    cmp-long v5, v5, v15

    .line 573
    .line 574
    if-lez v5, :cond_16

    .line 575
    .line 576
    iget-object v5, v2, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 577
    .line 578
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    invoke-static {v9}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    .line 582
    .line 583
    .line 584
    iput-wide v13, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    .line 585
    .line 586
    :cond_16
    iget-object v5, v2, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 587
    .line 588
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    .line 590
    .line 591
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->transceiveDataWithLedCover([B)[B

    .line 592
    .line 593
    .line 594
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 595
    goto :goto_9

    .line 596
    :catch_0
    move-exception v0

    .line 597
    const-string v5, "Error sending data to NFC"

    .line 598
    .line 599
    invoke-static {v12, v5, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    .line 601
    .line 602
    :cond_17
    :goto_9
    sget v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    .line 603
    .line 604
    if-lez v0, :cond_1a

    .line 605
    .line 606
    iget v5, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->testCount:I

    .line 607
    .line 608
    const/16 v6, 0x13

    .line 609
    .line 610
    if-le v5, v6, :cond_1a

    .line 611
    .line 612
    new-array v3, v4, [B

    .line 613
    .line 614
    aput-byte v4, v3, v9

    .line 615
    .line 616
    aput-byte v11, v3, v8

    .line 617
    .line 618
    aput-byte v9, v3, v7

    .line 619
    .line 620
    if-ne v0, v7, :cond_18

    .line 621
    .line 622
    const/4 v5, 0x3

    .line 623
    aput-byte v8, v3, v5

    .line 624
    .line 625
    goto :goto_a

    .line 626
    :cond_18
    const/4 v5, 0x3

    .line 627
    if-ne v0, v8, :cond_19

    .line 628
    .line 629
    aput-byte v7, v3, v5

    .line 630
    .line 631
    goto :goto_a

    .line 632
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    const-string v6, "Unknown test value: "

    .line 635
    .line 636
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    sget v6, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    .line 640
    .line 641
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    const-string v6, ", reject by default"

    .line 645
    .line 646
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-static {v12, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .line 655
    .line 656
    aput-byte v7, v3, v5

    .line 657
    .line 658
    :goto_a
    const/4 v0, -0x1

    .line 659
    aput-byte v0, v3, v10

    .line 660
    .line 661
    const/4 v5, 0x5

    .line 662
    aput-byte v0, v3, v5

    .line 663
    .line 664
    :cond_1a
    iget-object v0, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 665
    .line 666
    if-eqz v3, :cond_1c

    .line 667
    .line 668
    array-length v5, v3

    .line 669
    if-lt v5, v4, :cond_1c

    .line 670
    .line 671
    aget-byte v4, v3, v8

    .line 672
    .line 673
    if-ne v4, v11, :cond_1c

    .line 674
    .line 675
    const/4 v4, 0x3

    .line 676
    aget-byte v5, v3, v4

    .line 677
    .line 678
    if-eq v5, v8, :cond_1b

    .line 679
    .line 680
    if-ne v5, v7, :cond_1c

    .line 681
    .line 682
    :cond_1b
    iget-object v5, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 683
    .line 684
    invoke-static {v5}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 685
    .line 686
    .line 687
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 688
    .line 689
    .line 690
    move-result-object v5

    .line 691
    iput v4, v5, Landroid/os/Message;->what:I

    .line 692
    .line 693
    iput v1, v5, Landroid/os/Message;->arg1:I

    .line 694
    .line 695
    aget-byte v1, v3, v4

    .line 696
    .line 697
    iput v1, v5, Landroid/os/Message;->arg2:I

    .line 698
    .line 699
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    .line 701
    .line 702
    iput-boolean v9, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 703
    .line 704
    iget-object v0, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 705
    .line 706
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 707
    .line 708
    .line 709
    goto :goto_b

    .line 710
    :cond_1c
    const-string v2, "No touch event from LED cover, keep listening"

    .line 711
    .line 712
    invoke-static {v12, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .line 714
    .line 715
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    iput v7, v2, Landroid/os/Message;->what:I

    .line 720
    .line 721
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 722
    .line 723
    const-wide/16 v3, 0x64

    .line 724
    .line 725
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 726
    .line 727
    .line 728
    goto :goto_b

    .line 729
    :pswitch_9
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 730
    .line 731
    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 732
    .line 733
    .line 734
    :pswitch_a
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 735
    .line 736
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 737
    .line 738
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 739
    .line 740
    check-cast v1, [B

    .line 741
    .line 742
    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I[B)V

    .line 743
    .line 744
    .line 745
    iget-object v1, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 746
    .line 747
    iget-object v1, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 748
    .line 749
    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    .line 750
    .line 751
    .line 752
    move-result v1

    .line 753
    if-nez v1, :cond_1d

    .line 754
    .line 755
    iget-object v1, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 756
    .line 757
    iget-object v1, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 758
    .line 759
    invoke-virtual {v1, v10}, Landroid/os/Handler;->hasMessages(I)Z

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    if-nez v1, :cond_1d

    .line 764
    .line 765
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 766
    .line 767
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 768
    .line 769
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 770
    .line 771
    .line 772
    :cond_1d
    :goto_b
    return-void

    .line 773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
