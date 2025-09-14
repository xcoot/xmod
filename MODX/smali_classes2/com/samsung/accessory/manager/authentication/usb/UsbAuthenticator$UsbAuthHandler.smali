.class public final Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

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
    .locals 11

    .line 1
    sget v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->$r8$clinit:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "handleMessage = "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v1, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->convertMsg(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SAccessoryManager_UsbAuthenticator"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    const/4 v3, 0x5

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x1

    .line 39
    packed-switch v0, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    .line 48
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    .line 50
    .line 51
    if-ne v0, v3, :cond_0

    .line 52
    .line 53
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    .line 54
    .line 55
    add-int/2addr v0, v5

    .line 56
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    .line 57
    .line 58
    const-string v0, "authentication is timed out!"

    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 68
    .line 69
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    .line 71
    .line 72
    const/4 v1, 0x6

    .line 73
    if-ne v0, v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 76
    .line 77
    .line 78
    move v0, v5

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move v0, v4

    .line 81
    :goto_0
    iget v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->usbState:I

    .line 82
    .line 83
    if-eq v1, v5, :cond_3

    .line 84
    .line 85
    iget p1, p1, Landroid/os/Message;->what:I

    .line 86
    .line 87
    if-ne p1, v3, :cond_2

    .line 88
    .line 89
    iget p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    .line 90
    .line 91
    if-gt p1, v5, :cond_3

    .line 92
    .line 93
    :cond_2
    if-eqz v0, :cond_12

    .line 94
    .line 95
    :cond_3
    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, v4, p1, p1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->setUsbVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_6

    .line 105
    .line 106
    :pswitch_2
    const-string v0, "handleAuthResponse"

    .line 107
    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 114
    .line 115
    .line 116
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string/jumbo v6, "reason"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v7, "auth reason = "

    .line 139
    .line 140
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    new-instance v6, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    .line 154
    .line 155
    iget-object v7, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    .line 156
    .line 157
    invoke-direct {v6, v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    .line 158
    .line 159
    .line 160
    const/4 v7, 0x4

    .line 161
    if-nez v0, :cond_4

    .line 162
    .line 163
    move v4, v5

    .line 164
    goto/16 :goto_4

    .line 165
    .line 166
    :cond_4
    if-ne v0, v5, :cond_5

    .line 167
    .line 168
    :goto_1
    move v10, v5

    .line 169
    move v5, v4

    .line 170
    move v4, v10

    .line 171
    goto/16 :goto_4

    .line 172
    .line 173
    :cond_5
    const/16 v8, 0xb

    .line 174
    .line 175
    if-eq v0, v8, :cond_c

    .line 176
    .line 177
    const/16 v8, 0x1e

    .line 178
    .line 179
    if-ne v0, v8, :cond_6

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 183
    .line 184
    const/16 v8, 0x1f

    .line 185
    .line 186
    if-ne v0, v8, :cond_7

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_7
    const/16 v8, 0xc

    .line 196
    .line 197
    if-ne v0, v8, :cond_8

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_8
    const/16 v8, 0xd

    .line 207
    .line 208
    if-ne v0, v8, :cond_b

    .line 209
    .line 210
    iget v8, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    .line 211
    .line 212
    if-ge v8, v2, :cond_a

    .line 213
    .line 214
    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    if-eqz v8, :cond_a

    .line 219
    .line 220
    iget v8, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    .line 221
    .line 222
    add-int/2addr v8, v5

    .line 223
    iput v8, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    .line 224
    .line 225
    iget-boolean v5, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSystemReady:Z

    .line 226
    .line 227
    if-nez v5, :cond_9

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_9
    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 234
    .line 235
    .line 236
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 237
    .line 238
    const-wide/16 v8, 0x2710

    .line 239
    .line 240
    invoke-virtual {v5, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 241
    .line 242
    .line 243
    const-wide/16 v8, 0x1388

    .line 244
    .line 245
    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_a
    iput v4, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_b
    const/16 v5, 0x5a

    .line 259
    .line 260
    if-ne v0, v5, :cond_d

    .line 261
    .line 262
    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_d

    .line 267
    .line 268
    const-wide/16 v8, 0x12c

    .line 269
    .line 270
    invoke-virtual {p0, v8, v9, v4}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication$1(JZ)V

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_c
    :goto_2
    const-string v3, "do nothing.."

    .line 275
    .line 276
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :cond_d
    :goto_3
    move v5, v4

    .line 280
    :goto_4
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    const/16 v3, 0x3c

    .line 287
    .line 288
    if-le v1, v3, :cond_e

    .line 289
    .line 290
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    :cond_e
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 296
    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v0, "/"

    .line 310
    .line 311
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 315
    .line 316
    .line 317
    move-result-wide v8

    .line 318
    invoke-static {v8, v9}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    if-eqz v4, :cond_f

    .line 333
    .line 334
    invoke-virtual {p0, v5, v6, p1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->setUsbVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 338
    .line 339
    .line 340
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 341
    .line 342
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    .line 344
    .line 345
    const-wide/16 v0, 0x0

    .line 346
    .line 347
    invoke-virtual {p1, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 348
    .line 349
    .line 350
    :cond_f
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 351
    .line 352
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_6

    .line 356
    .line 357
    :pswitch_3
    const-string p1, "handleAuthStart"

    .line 358
    .line 359
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 363
    .line 364
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 365
    .line 366
    .line 367
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 368
    .line 369
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 370
    .line 371
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    const/4 v2, 0x7

    .line 376
    if-eq p1, v2, :cond_10

    .line 377
    .line 378
    if-eq p1, v5, :cond_10

    .line 379
    .line 380
    const-string/jumbo p1, "session is busy"

    .line 381
    .line 382
    .line 383
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 387
    .line 388
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 389
    .line 390
    .line 391
    goto :goto_6

    .line 392
    :cond_10
    new-instance p1, Landroid/os/Message;

    .line 393
    .line 394
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 395
    .line 396
    .line 397
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 398
    .line 399
    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-ne v1, v2, :cond_11

    .line 404
    .line 405
    const-string v1, "connectivity_type"

    .line 406
    .line 407
    const/4 v2, 0x3

    .line 408
    invoke-static {v2, v1}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 413
    .line 414
    invoke-virtual {p1, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->start(Landroid/os/Message;)V

    .line 418
    .line 419
    .line 420
    goto :goto_5

    .line 421
    :cond_11
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 422
    .line 423
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 424
    .line 425
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->start(Landroid/os/Message;)V

    .line 426
    .line 427
    .line 428
    :goto_5
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 429
    .line 430
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :pswitch_4
    const-string p1, "Initialize usb authenticator"

    .line 435
    .line 436
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsFactoryBinary:Z

    .line 444
    .line 445
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mContext:Landroid/content/Context;

    .line 446
    .line 447
    const-string/jumbo v0, "power"

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    check-cast p1, Landroid/os/PowerManager;

    .line 455
    .line 456
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    .line 457
    .line 458
    invoke-virtual {p1, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 463
    .line 464
    invoke-virtual {p1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 465
    .line 466
    .line 467
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    .line 468
    .line 469
    const-string v0, "SAccessoryManager_UsbAuthenticatorDetachTimeoutWakeLock"

    .line 470
    .line 471
    invoke-virtual {p1, v5, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 476
    .line 477
    invoke-virtual {p1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 478
    .line 479
    .line 480
    iput-boolean v5, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSystemReady:Z

    .line 481
    .line 482
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 483
    .line 484
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->authenticationReady()V

    .line 485
    .line 486
    .line 487
    :cond_12
    :goto_6
    return-void

    .line 488
    nop

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
