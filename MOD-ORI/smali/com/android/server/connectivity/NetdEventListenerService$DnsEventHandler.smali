.class public final Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    iget v3, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/16 v4, 0x2711

    .line 8
    .line 9
    if-eq v3, v4, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;

    .line 16
    .line 17
    move-object/from16 v3, p0

    .line 18
    .line 19
    iget-object v3, v3, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget v4, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mReturnCode:I

    .line 25
    .line 26
    iget v5, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mUid:I

    .line 27
    .line 28
    iget v6, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    .line 29
    .line 30
    iget v7, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mLatencyMs:I

    .line 31
    .line 32
    iget-object v8, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    if-nez v8, :cond_1

    .line 35
    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v8, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    const-string v9, ""

    .line 47
    .line 48
    const/4 v10, 0x0

    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    aget-object v9, v8, v10

    .line 52
    .line 53
    array-length v8, v8

    .line 54
    if-le v8, v1, :cond_2

    .line 55
    .line 56
    const-string v8, ",..."

    .line 57
    .line 58
    invoke-static {v9, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    :cond_2
    if-eqz v4, :cond_b

    .line 63
    .line 64
    iget-object v8, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    .line 65
    .line 66
    iget-object v11, v8, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->mCapabilities:Landroid/util/SparseArray;

    .line 67
    .line 68
    monitor-enter v11

    .line 69
    :try_start_0
    iget-object v8, v8, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->mCapabilities:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Landroid/net/NetworkCapabilities;

    .line 76
    .line 77
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 78
    if-eqz v6, :cond_c

    .line 79
    .line 80
    iget-object v8, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 81
    .line 82
    if-nez v8, :cond_3

    .line 83
    .line 84
    goto/16 :goto_8

    .line 85
    .line 86
    :cond_3
    const/16 v8, 0xb

    .line 87
    .line 88
    invoke-virtual {v6, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    xor-int/2addr v6, v1

    .line 93
    iget-object v8, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 94
    .line 95
    invoke-virtual {v8, v5, v6}, Landroid/net/NetworkPolicyManager;->isUidNetworkingBlocked(IZ)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    const-string v8, "NetdEventListenerService"

    .line 100
    .line 101
    new-instance v11, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v12, "DNS Requested by "

    .line 104
    .line 105
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget v12, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    .line 109
    .line 110
    const-string v13, ", "

    .line 111
    .line 112
    const-string v14, "("

    .line 113
    .line 114
    invoke-static {v12, v5, v13, v14, v11}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 115
    .line 116
    .line 117
    const-string v5, "), "

    .line 118
    .line 119
    const-string v12, "("

    .line 120
    .line 121
    invoke-static {v4, v9, v5, v12, v11}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v4}, Lcom/android/server/connectivity/NetdEventListenerService;->getReturnCodeToString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v5, "), isBlocked="

    .line 132
    .line 133
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v5, ", "

    .line 140
    .line 141
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string/jumbo v5, "ms"

    .line 145
    .line 146
    .line 147
    invoke-static {v11, v7, v5, v8}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v5, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 151
    .line 152
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    if-nez v5, :cond_4

    .line 157
    .line 158
    goto/16 :goto_8

    .line 159
    .line 160
    :cond_4
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    new-instance v7, Landroid/telephony/TelephonyManager;

    .line 169
    .line 170
    iget-object v8, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    .line 171
    .line 172
    invoke-direct {v7, v8, v6}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v19

    .line 183
    invoke-virtual {v7, v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    iget v7, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    .line 188
    .line 189
    if-eqz v8, :cond_5

    .line 190
    .line 191
    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getLevel()I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    goto :goto_0

    .line 196
    :cond_5
    move v8, v10

    .line 197
    :goto_0
    iget v11, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    .line 198
    .line 199
    const/16 v15, 0x14

    .line 200
    .line 201
    if-ne v11, v15, :cond_7

    .line 202
    .line 203
    if-nez v5, :cond_7

    .line 204
    .line 205
    iget v11, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mCheckedNetId:I

    .line 206
    .line 207
    if-eq v7, v11, :cond_7

    .line 208
    .line 209
    iput v7, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mCheckedNetId:I

    .line 210
    .line 211
    :try_start_1
    new-instance v11, Ljava/net/DatagramSocket;

    .line 212
    .line 213
    invoke-direct {v11}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    .line 215
    .line 216
    :try_start_2
    const-string v12, "NetdEventListenerService"

    .line 217
    .line 218
    const-string/jumbo v13, "sending DNS"

    .line 219
    .line 220
    .line 221
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    const/16 v12, 0x3e8

    .line 225
    .line 226
    invoke-virtual {v11, v12}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mHostname:Ljava/lang/String;

    .line 230
    .line 231
    const-string v12, "\\."

    .line 232
    .line 233
    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-instance v12, Ljava/util/Random;

    .line 238
    .line 239
    invoke-direct {v12}, Ljava/util/Random;-><init>()V

    .line 240
    .line 241
    .line 242
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .line 243
    .line 244
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    .line 246
    .line 247
    new-array v14, v2, [B

    .line 248
    .line 249
    invoke-virtual {v12, v14}, Ljava/util/Random;->nextBytes([B)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v13, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 253
    .line 254
    .line 255
    new-array v12, v2, [B

    .line 256
    .line 257
    fill-array-data v12, :array_0

    .line 258
    .line 259
    .line 260
    invoke-virtual {v13, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 261
    .line 262
    .line 263
    new-array v12, v2, [B

    .line 264
    .line 265
    fill-array-data v12, :array_1

    .line 266
    .line 267
    .line 268
    invoke-virtual {v13, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 269
    .line 270
    .line 271
    new-array v12, v2, [B

    .line 272
    .line 273
    fill-array-data v12, :array_2

    .line 274
    .line 275
    .line 276
    invoke-virtual {v13, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 277
    .line 278
    .line 279
    new-array v12, v2, [B

    .line 280
    .line 281
    fill-array-data v12, :array_3

    .line 282
    .line 283
    .line 284
    invoke-virtual {v13, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 285
    .line 286
    .line 287
    new-array v12, v2, [B

    .line 288
    .line 289
    fill-array-data v12, :array_4

    .line 290
    .line 291
    .line 292
    invoke-virtual {v13, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 293
    .line 294
    .line 295
    array-length v12, v0

    .line 296
    move v14, v10

    .line 297
    :goto_1
    if-ge v14, v12, :cond_6

    .line 298
    .line 299
    aget-object v15, v0, v14

    .line 300
    .line 301
    const-string v2, "US-ASCII"

    .line 302
    .line 303
    invoke-virtual {v15, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    array-length v15, v2

    .line 308
    invoke-virtual {v13, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 312
    .line 313
    .line 314
    add-int/2addr v14, v1

    .line 315
    const/4 v2, 0x2

    .line 316
    const/16 v15, 0x14

    .line 317
    .line 318
    goto :goto_1

    .line 319
    :catchall_0
    move-exception v0

    .line 320
    goto :goto_2

    .line 321
    :cond_6
    invoke-virtual {v13, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 322
    .line 323
    .line 324
    const/4 v0, 0x2

    .line 325
    new-array v2, v0, [B

    .line 326
    .line 327
    fill-array-data v2, :array_5

    .line 328
    .line 329
    .line 330
    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 331
    .line 332
    .line 333
    new-array v0, v0, [B

    .line 334
    .line 335
    fill-array-data v0, :array_6

    .line 336
    .line 337
    .line 338
    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    new-instance v2, Ljava/net/DatagramPacket;

    .line 346
    .line 347
    array-length v12, v0

    .line 348
    const-string v13, "8.8.8.8"

    .line 349
    .line 350
    invoke-static {v13}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    const/16 v14, 0x35

    .line 355
    .line 356
    invoke-direct {v2, v0, v12, v13, v14}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v11, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 360
    .line 361
    .line 362
    array-length v0, v0

    .line 363
    new-array v2, v0, [B

    .line 364
    .line 365
    new-instance v12, Ljava/net/DatagramPacket;

    .line 366
    .line 367
    invoke-direct {v12, v2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v11, v12}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    .line 372
    .line 373
    :try_start_3
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->close()V

    .line 374
    .line 375
    .line 376
    move v0, v10

    .line 377
    goto :goto_4

    .line 378
    :catch_0
    move-exception v0

    .line 379
    goto :goto_3

    .line 380
    :goto_2
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->close()V

    .line 381
    .line 382
    .line 383
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 384
    :goto_3
    const-string v2, "NetdEventListenerService"

    .line 385
    .line 386
    new-instance v11, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v12, "IOException error: "

    .line 389
    .line 390
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    move v0, v1

    .line 404
    goto :goto_4

    .line 405
    :cond_7
    const/4 v0, -0x1

    .line 406
    :goto_4
    iget-object v2, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    .line 407
    .line 408
    const-string v15, "%02d %02d %d %d %d %d %d %s %s"

    .line 409
    .line 410
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    .line 412
    .line 413
    move-result-object v11

    .line 414
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v12

    .line 418
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 419
    .line 420
    .line 421
    move-result-object v13

    .line 422
    iget v4, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    .line 423
    .line 424
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v14

    .line 428
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v16

    .line 436
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v17

    .line 440
    move-object v5, v15

    .line 441
    const/16 v4, 0x14

    .line 442
    .line 443
    move-object v15, v0

    .line 444
    move-object/from16 v18, v9

    .line 445
    .line 446
    filled-new-array/range {v11 .. v19}, [Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v17

    .line 454
    iget v0, v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mMaxLines:I

    .line 455
    .line 456
    if-gtz v0, :cond_8

    .line 457
    .line 458
    goto :goto_6

    .line 459
    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 464
    .line 465
    .line 466
    move-result-wide v5

    .line 467
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 468
    .line 469
    .line 470
    const-string v5, "%ty-%tm-%td_%tH:%tM:%tS %s"

    .line 471
    .line 472
    move-object v11, v0

    .line 473
    move-object v12, v0

    .line 474
    move-object v13, v0

    .line 475
    move-object v14, v0

    .line 476
    move-object v15, v0

    .line 477
    move-object/from16 v16, v0

    .line 478
    .line 479
    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    monitor-enter v2

    .line 488
    :goto_5
    :try_start_4
    iget-object v5, v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    .line 489
    .line 490
    check-cast v5, Ljava/util/ArrayDeque;

    .line 491
    .line 492
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    .line 493
    .line 494
    .line 495
    move-result v5

    .line 496
    iget v6, v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mMaxLines:I

    .line 497
    .line 498
    if-lt v5, v6, :cond_9

    .line 499
    .line 500
    iget-object v5, v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    .line 501
    .line 502
    check-cast v5, Ljava/util/ArrayDeque;

    .line 503
    .line 504
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    goto :goto_5

    .line 508
    :catchall_1
    move-exception v0

    .line 509
    goto :goto_7

    .line 510
    :cond_9
    iget-object v5, v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    .line 511
    .line 512
    check-cast v5, Ljava/util/ArrayDeque;

    .line 513
    .line 514
    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 515
    .line 516
    .line 517
    monitor-exit v2

    .line 518
    :goto_6
    iget v0, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    .line 519
    .line 520
    if-ne v0, v4, :cond_a

    .line 521
    .line 522
    iput v10, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    .line 523
    .line 524
    goto :goto_8

    .line 525
    :cond_a
    add-int/2addr v0, v1

    .line 526
    iput v0, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    .line 527
    .line 528
    goto :goto_8

    .line 529
    :goto_7
    monitor-exit v2

    .line 530
    throw v0

    .line 531
    :catchall_2
    move-exception v0

    .line 532
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 533
    throw v0

    .line 534
    :cond_b
    const-string v1, "NetdEventListenerService"

    .line 535
    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    const-string v6, "DNS Requested by "

    .line 539
    .line 540
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    iget v0, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    .line 544
    .line 545
    const-string v6, ", "

    .line 546
    .line 547
    const-string v8, "("

    .line 548
    .line 549
    invoke-static {v0, v5, v6, v8, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v0, "), "

    .line 556
    .line 557
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-static {v4}, Lcom/android/server/connectivity/NetdEventListenerService;->getReturnCodeToString(I)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string v0, ", "

    .line 568
    .line 569
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    const-string/jumbo v0, "ms"

    .line 573
    .line 574
    .line 575
    invoke-static {v2, v7, v0, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    iput v10, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mCheckedNetId:I

    .line 579
    .line 580
    iput v10, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    .line 581
    .line 582
    :cond_c
    :goto_8
    return-void

    .line 583
    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    nop

    .line 589
    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    nop

    .line 595
    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    nop

    .line 601
    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    nop

    .line 607
    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    nop

    .line 613
    :array_5
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    nop

    .line 619
    :array_6
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method
