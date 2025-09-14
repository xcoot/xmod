.class public abstract Lcom/android/internal/net/IOemNetd$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/net/IOemNetd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string/jumbo v0, "com.android.internal.net.IOemNetd"

    .line 7
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string/jumbo v0, "com.android.internal.net.IOemNetd"

    .line 8
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    instance-of v1, v0, Lcom/android/internal/net/IOemNetd;

    .line 16
    if-eqz v1, :cond_1

    .line 18
    check-cast v0, Lcom/android/internal/net/IOemNetd;

    .line 20
    return-object v0

    .line 21
    :cond_1
    new-instance v0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;

    .line 23
    invoke-direct {v0, p0}, Lcom/android/internal/net/IOemNetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 26
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string/jumbo v3, "com.android.internal.net.IOemNetd"

    .line 4
    const/4 v7, 0x1

    .line 5
    if-lt p1, v7, :cond_0

    .line 7
    const v4, 0xffffff

    .line 10
    if-gt p1, v4, :cond_0

    .line 12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    :cond_0
    const v4, 0x5f4e5446

    .line 18
    if-ne p1, v4, :cond_1

    .line 20
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    return v7

    .line 24
    :cond_1
    const/4 v3, 0x0

    .line 25
    packed-switch p1, :pswitch_data_0

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 36
    move-result v1

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 44
    move-result v4

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 56
    move-object v0, p0

    .line 57
    move-object v2, v3

    .line 58
    move v3, v4

    .line 59
    move-object v4, v5

    .line 60
    move-object v5, v6

    .line 61
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->setMptcpUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    goto/16 :goto_3

    .line 69
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 84
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->delMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    goto/16 :goto_3

    .line 92
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    goto/16 :goto_3

    .line 115
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 118
    move-result v1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 130
    move-result v5

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 134
    move-result v6

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    move-object v0, p0

    .line 139
    move-object v2, v3

    .line 140
    move-object v3, v4

    .line 141
    move v4, v5

    .line 142
    move v5, v6

    .line 143
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->setMptcpDestBaseMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto/16 :goto_3

    .line 151
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 154
    move-result v1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 162
    move-result v4

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setMptcpPrivateIpRoute(ZLjava/lang/String;I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto/16 :goto_3

    .line 174
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 177
    move-result v1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateMptcpSourceRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto/16 :goto_3

    .line 197
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 204
    move-result v3

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setMtuValueMptcp(Ljava/lang/String;I)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto/16 :goto_3

    .line 216
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setMptcpTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto/16 :goto_3

    .line 235
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 246
    move-result v4

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->delMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto/16 :goto_3

    .line 258
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 269
    move-result v4

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto/16 :goto_3

    .line 281
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 296
    move-result v5

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 300
    move-result-object v6

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    move-object v0, p0

    .line 305
    move-object v2, v3

    .line 306
    move-object v3, v4

    .line 307
    move v4, v5

    .line 308
    move-object v5, v6

    .line 309
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_3

    .line 317
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 332
    move-result v5

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 336
    move-result-object v6

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    move-object v0, p0

    .line 341
    move-object v2, v3

    .line 342
    move-object v3, v4

    .line 343
    move v4, v5

    .line 344
    move-object v5, v6

    .line 345
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    goto/16 :goto_3

    .line 353
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->delMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    goto/16 :goto_3

    .line 376
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 383
    move-result-object v3

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    goto/16 :goto_3

    .line 399
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 406
    move-result v3

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 410
    move-result-object v4

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->removeUidFromMptcpChain(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    goto/16 :goto_3

    .line 422
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 429
    move-result v3

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 433
    move-result-object v4

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addUidToMptcpChain(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    goto/16 :goto_3

    .line 445
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 452
    move-result-object v3

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 456
    move-result-object v4

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 460
    move-result v5

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 464
    move-result v6

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 468
    move-result-object v8

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    move-object v0, p0

    .line 473
    move-object v2, v3

    .line 474
    move-object v3, v4

    .line 475
    move v4, v5

    .line 476
    move v5, v6

    .line 477
    move-object v6, v8

    .line 478
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/net/IOemNetd;->removeMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    goto/16 :goto_3

    .line 486
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 493
    move-result-object v3

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 497
    move-result-object v4

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 501
    move-result v5

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 505
    move-result v6

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 509
    move-result-object v8

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    move-object v0, p0

    .line 514
    move-object v2, v3

    .line 515
    move-object v3, v4

    .line 516
    move v4, v5

    .line 517
    move v5, v6

    .line 518
    move-object v6, v8

    .line 519
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/net/IOemNetd;->addMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    goto/16 :goto_3

    .line 527
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 530
    move-result-object v1

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 534
    move-result-object v3

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->removeMptcpChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto/16 :goto_3

    .line 546
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 553
    move-result-object v3

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 557
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->addMptcpChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    goto/16 :goto_3

    .line 565
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 568
    move-result-object v1

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeMptcpLinkIface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    goto/16 :goto_3

    .line 580
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 583
    move-result-object v1

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->addMptcpLinkIface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    goto/16 :goto_3

    .line 595
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 598
    move-result-object v1

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 602
    move-result-object v3

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 606
    move-result-object v4

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 610
    move-result v5

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 614
    move-result-object v6

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    move-object v0, p0

    .line 619
    move-object v2, v3

    .line 620
    move-object v3, v4

    .line 621
    move v4, v5

    .line 622
    move-object v5, v6

    .line 623
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    goto/16 :goto_3

    .line 631
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 634
    move-result-object v1

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 638
    move-result-object v3

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 642
    move-result-object v4

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 646
    move-result v5

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 650
    move-result-object v6

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    move-object v0, p0

    .line 655
    move-object v2, v3

    .line 656
    move-object v3, v4

    .line 657
    move v4, v5

    .line 658
    move-object v5, v6

    .line 659
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    goto/16 :goto_3

    .line 667
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 670
    move-result-object v1

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 674
    move-result-object v3

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 678
    move-result-object v4

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    goto/16 :goto_3

    .line 690
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 693
    move-result-object v1

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 697
    move-result-object v3

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 701
    move-result-object v4

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    goto/16 :goto_3

    .line 713
    :pswitch_1a
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->disableMptcpMode()V

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    goto/16 :goto_3

    .line 721
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 724
    move-result-object v1

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableMptcpModes(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    goto/16 :goto_3

    .line 736
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 739
    move-result v1

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->updateGroPshOption(I)V

    .line 746
    goto/16 :goto_3

    .line 748
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 751
    move-result-wide v3

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-interface {p0, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateGroFlushTime(J)V

    .line 758
    goto/16 :goto_3

    .line 760
    :pswitch_1e
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterCloEventListener()V

    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    goto/16 :goto_3

    .line 768
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 771
    move-result-object v1

    .line 772
    if-nez v1, :cond_2

    .line 774
    goto :goto_0

    .line 775
    :cond_2
    const-string/jumbo v3, "com.android.internal.net.INetdCloEventListener"

    .line 778
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 781
    move-result-object v3

    .line 782
    if-eqz v3, :cond_3

    .line 784
    instance-of v4, v3, Lcom/android/internal/net/INetdCloEventListener;

    .line 786
    if-eqz v4, :cond_3

    .line 788
    check-cast v3, Lcom/android/internal/net/INetdCloEventListener;

    .line 790
    goto :goto_0

    .line 791
    :cond_3
    new-instance v3, Lcom/android/internal/net/INetdCloEventListener$Stub$Proxy;

    .line 793
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 796
    iput-object v1, v3, Lcom/android/internal/net/INetdCloEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 798
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-interface {p0, v3}, Lcom/android/internal/net/IOemNetd;->registerCloEventListener(Lcom/android/internal/net/INetdCloEventListener;)V

    .line 804
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    goto/16 :goto_3

    .line 809
    :pswitch_20
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->deactivateCloGro()V

    .line 812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    goto/16 :goto_3

    .line 817
    :pswitch_21
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->activateCloGro()V

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    goto/16 :goto_3

    .line 825
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 828
    move-result-object v1

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->deactivateClo(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    goto/16 :goto_3

    .line 840
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 843
    move-result-object v1

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->activateClo(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    goto/16 :goto_3

    .line 855
    :pswitch_24
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->l4StatsGet()[J

    .line 858
    move-result-object v0

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 865
    goto/16 :goto_3

    .line 867
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 870
    move-result v1

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setAdvertiseWindowSize(I)V

    .line 877
    goto/16 :goto_3

    .line 879
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 882
    move-result-object v1

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 886
    move-result v3

    .line 887
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 890
    move-result v4

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->replaceMnxbRule(Ljava/lang/String;II)I

    .line 897
    move-result v0

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    goto/16 :goto_3

    .line 906
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 909
    move-result v1

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 913
    move-result-object v3

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 917
    move-result v4

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMnxbRule(ZLjava/lang/String;I)I

    .line 924
    move-result v0

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    goto/16 :goto_3

    .line 933
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 936
    move-result v1

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 940
    move-result v3

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioritizeMnxbApp(ZI)I

    .line 947
    move-result v0

    .line 948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    goto/16 :goto_3

    .line 956
    :pswitch_29
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanOnlyAllowIPs()V

    .line 959
    goto/16 :goto_3

    .line 961
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 964
    move-result-object v1

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setOnlyAllowIPs(Ljava/lang/String;)V

    .line 971
    goto/16 :goto_3

    .line 973
    :pswitch_2b
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanBlockPorts()V

    .line 976
    goto/16 :goto_3

    .line 978
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 981
    move-result-object v1

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 985
    move-result v3

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 989
    move-result-object v4

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V

    .line 996
    goto/16 :goto_3

    .line 998
    :pswitch_2d
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->setBlockAllPackets()V

    .line 1001
    goto/16 :goto_3

    .line 1003
    :pswitch_2e
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanAllBlock()V

    .line 1006
    goto/16 :goto_3

    .line 1008
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1011
    move-result-object v1

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setAllowHostAlone(Ljava/lang/String;)V

    .line 1018
    goto/16 :goto_3

    .line 1020
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1023
    move-result-object v1

    .line 1024
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setBlockHostAlone(Ljava/lang/String;)V

    .line 1030
    goto/16 :goto_3

    .line 1032
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1035
    move-result-object v1

    .line 1036
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setAllowListIPs(Ljava/lang/String;)V

    .line 1042
    goto/16 :goto_3

    .line 1044
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1047
    move-result-object v1

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1051
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setBlockListIPs(Ljava/lang/String;)V

    .line 1054
    goto/16 :goto_3

    .line 1056
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1059
    move-result v1

    .line 1060
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setBlockAllDNSPackets(Z)V

    .line 1066
    goto/16 :goto_3

    .line 1068
    :pswitch_34
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->makeBlockChildChain()V

    .line 1071
    goto/16 :goto_3

    .line 1073
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1076
    move-result v1

    .line 1077
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1080
    move-result-object v3

    .line 1081
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1084
    move-result-object v4

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1088
    move-result-object v5

    .line 1089
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1092
    move-result v6

    .line 1093
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1096
    move-object v0, p0

    .line 1097
    move-object v2, v3

    .line 1098
    move-object v3, v4

    .line 1099
    move-object v4, v5

    .line 1100
    move v5, v6

    .line 1101
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    goto/16 :goto_3

    .line 1109
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1112
    move-result v1

    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1116
    move-result-object v3

    .line 1117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1120
    move-result-object v4

    .line 1121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1124
    move-result-object v5

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1128
    move-result v6

    .line 1129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1132
    move-object v0, p0

    .line 1133
    move-object v2, v3

    .line 1134
    move-object v3, v4

    .line 1135
    move-object v4, v5

    .line 1136
    move v5, v6

    .line 1137
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    goto/16 :goto_3

    .line 1145
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1148
    move-result-object v1

    .line 1149
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1152
    move-result v3

    .line 1153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1156
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->interfaceSetAutoConf(Ljava/lang/String;Z)V

    .line 1159
    goto/16 :goto_3

    .line 1161
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1164
    move-result-object v1

    .line 1165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1168
    move-result-object v3

    .line 1169
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1172
    move-result v4

    .line 1173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setEpdgInterfaceDropRule(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1179
    goto/16 :goto_3

    .line 1181
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1184
    move-result v1

    .line 1185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1188
    move-result-object v3

    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1192
    move-result-object v4

    .line 1193
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1196
    move-result v5

    .line 1197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-interface {p0, v1, v3, v4, v5}, Lcom/android/internal/net/IOemNetd;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1203
    goto/16 :goto_3

    .line 1205
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1208
    move-result v1

    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1212
    move-result-object v3

    .line 1213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1216
    move-result-object v4

    .line 1217
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1220
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->runVpnRulesCommand(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1223
    move-result-object v0

    .line 1224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1230
    goto/16 :goto_3

    .line 1232
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1235
    move-result-object v1

    .line 1236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1239
    move-result-object v3

    .line 1240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1243
    move-result-object v4

    .line 1244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1247
    move-result-object v5

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1251
    move-result v6

    .line 1252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    move-object v0, p0

    .line 1256
    move-object v2, v3

    .line 1257
    move-object v3, v4

    .line 1258
    move-object v4, v5

    .line 1259
    move v5, v6

    .line 1260
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1263
    goto/16 :goto_3

    .line 1265
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1268
    move-result v1

    .line 1269
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1272
    move-result v3

    .line 1273
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->spegRestrictNetworkConnection(IZ)V

    .line 1279
    goto/16 :goto_3

    .line 1281
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1284
    move-result-object v1

    .line 1285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1288
    move-result-object v3

    .line 1289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1295
    move-result-object v0

    .line 1296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1302
    goto/16 :goto_3

    .line 1304
    :pswitch_3e
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getTrafficTimeStats()Landroid/net/TrafficTimeStatsParcel;

    .line 1307
    move-result-object v0

    .line 1308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1314
    goto/16 :goto_3

    .line 1316
    :pswitch_3f
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getMhsTrafficStats()[Landroid/net/UidStatsParcel;

    .line 1319
    move-result-object v0

    .line 1320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1326
    goto/16 :goto_3

    .line 1328
    :pswitch_40
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getUidTrafficStats()[Landroid/net/UidStatsParcel;

    .line 1331
    move-result-object v0

    .line 1332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1338
    goto/16 :goto_3

    .line 1340
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1343
    move-result-object v1

    .line 1344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1347
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->stopTrafficStatsController(Ljava/lang/String;)I

    .line 1350
    move-result v0

    .line 1351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1354
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    goto/16 :goto_3

    .line 1359
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1362
    move-result-object v1

    .line 1363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1366
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startTrafficStatsController(Ljava/lang/String;)I

    .line 1369
    move-result v0

    .line 1370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1376
    goto/16 :goto_3

    .line 1378
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1381
    move-result-object v1

    .line 1382
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1385
    move-result-object v3

    .line 1386
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1389
    move-result-object v4

    .line 1390
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1393
    move-result-object v5

    .line 1394
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1397
    move-result-object v6

    .line 1398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1401
    move-object v0, p0

    .line 1402
    move-object v2, v3

    .line 1403
    move-object v3, v4

    .line 1404
    move-object v4, v5

    .line 1405
    move-object v5, v6

    .line 1406
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->delIpToPrioList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    .line 1409
    move-result v0

    .line 1410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    goto/16 :goto_3

    .line 1418
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1421
    move-result-object v1

    .line 1422
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1425
    move-result-object v3

    .line 1426
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1429
    move-result-object v4

    .line 1430
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1433
    move-result-object v5

    .line 1434
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1437
    move-result-object v6

    .line 1438
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1441
    move-object v0, p0

    .line 1442
    move-object v2, v3

    .line 1443
    move-object v3, v4

    .line 1444
    move-object v4, v5

    .line 1445
    move-object v5, v6

    .line 1446
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->addIpToPrioList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    .line 1449
    move-result v0

    .line 1450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1456
    goto/16 :goto_3

    .line 1458
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1461
    move-result v1

    .line 1462
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1465
    move-result-object v3

    .line 1466
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1469
    move-result-object v4

    .line 1470
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1473
    move-result-object v5

    .line 1474
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1477
    move-result-object v6

    .line 1478
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1481
    move-object v0, p0

    .line 1482
    move-object v2, v3

    .line 1483
    move-object v3, v4

    .line 1484
    move-object v4, v5

    .line 1485
    move-object v5, v6

    .line 1486
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->prioDevice(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    .line 1489
    move-result v0

    .line 1490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1496
    goto/16 :goto_3

    .line 1498
    :pswitch_46
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->clearPriorityMap()I

    .line 1501
    move-result v0

    .line 1502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1508
    goto/16 :goto_3

    .line 1510
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1513
    move-result-object v1

    .line 1514
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1517
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->prioDisable(Ljava/lang/String;)I

    .line 1520
    move-result v0

    .line 1521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1527
    goto/16 :goto_3

    .line 1529
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1532
    move-result-object v1

    .line 1533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1536
    move-result v3

    .line 1537
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1540
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioUpdate(Ljava/lang/String;I)I

    .line 1543
    move-result v0

    .line 1544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1550
    goto/16 :goto_3

    .line 1552
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1555
    move-result-object v1

    .line 1556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1559
    move-result v3

    .line 1560
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1563
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioEnable(Ljava/lang/String;I)I

    .line 1566
    move-result v0

    .line 1567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    goto/16 :goto_3

    .line 1575
    :pswitch_4a
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->isMBBPathsPresent()I

    .line 1578
    move-result v0

    .line 1579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1582
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1585
    goto/16 :goto_3

    .line 1587
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1590
    move-result-object v1

    .line 1591
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1594
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->flushArpEntry(Ljava/lang/String;)I

    .line 1597
    move-result v0

    .line 1598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    goto/16 :goto_3

    .line 1606
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1609
    move-result-object v1

    .line 1610
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1613
    move-result v3

    .line 1614
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1617
    move-result-object v4

    .line 1618
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1621
    move-result-wide v5

    .line 1622
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1625
    move-object v0, p0

    .line 1626
    move v2, v3

    .line 1627
    move-object v3, v4

    .line 1628
    move-wide v4, v5

    .line 1629
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->pauseDevice(Ljava/lang/String;ZLjava/lang/String;J)I

    .line 1632
    move-result v0

    .line 1633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1636
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1639
    goto/16 :goto_3

    .line 1641
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1644
    move-result-object v1

    .line 1645
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1648
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOff(Ljava/lang/String;)I

    .line 1651
    move-result v0

    .line 1652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1655
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    goto/16 :goto_3

    .line 1660
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1663
    move-result-object v1

    .line 1664
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1667
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOn(Ljava/lang/String;)I

    .line 1670
    move-result v0

    .line 1671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    goto/16 :goto_3

    .line 1679
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1682
    move-result-object v1

    .line 1683
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1686
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->getTotalDataUsage(Ljava/lang/String;)J

    .line 1689
    move-result-wide v0

    .line 1690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1693
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1696
    goto/16 :goto_3

    .line 1698
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1701
    move-result-object v1

    .line 1702
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1705
    move-result-object v3

    .line 1706
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1709
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getDataUsage(Ljava/lang/String;Ljava/util/List;)[Landroid/net/MBBStatsParcel;

    .line 1712
    move-result-object v0

    .line 1713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1716
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1719
    goto/16 :goto_3

    .line 1721
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 1724
    move-result-object v1

    .line 1725
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1728
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->getTcpLocalPorts([I)[I

    .line 1731
    move-result-object v0

    .line 1732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1735
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1738
    goto/16 :goto_3

    .line 1740
    :pswitch_52
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->clearTosMap()V

    .line 1743
    goto/16 :goto_3

    .line 1745
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1748
    move-result v1

    .line 1749
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1752
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeTosPolicy(I)V

    .line 1755
    goto/16 :goto_3

    .line 1757
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1760
    move-result v1

    .line 1761
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1764
    move-result v3

    .line 1765
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1768
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->addTosPolicy(II)V

    .line 1771
    goto/16 :goto_3

    .line 1773
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1776
    move-result-object v1

    .line 1777
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1780
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->stopTosMarker(Ljava/lang/String;)V

    .line 1783
    goto/16 :goto_3

    .line 1785
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1788
    move-result-object v1

    .line 1789
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1792
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startTosMarker(Ljava/lang/String;)V

    .line 1795
    goto/16 :goto_3

    .line 1797
    :pswitch_57
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getL4sConnCount()I

    .line 1800
    move-result v0

    .line 1801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1804
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1807
    goto/16 :goto_3

    .line 1809
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1812
    move-result-object v1

    .line 1813
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1816
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->stopL4s(Ljava/lang/String;)I

    .line 1819
    move-result v0

    .line 1820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1823
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1826
    goto/16 :goto_3

    .line 1828
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1831
    move-result-object v1

    .line 1832
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1835
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startL4s(Ljava/lang/String;)I

    .line 1838
    move-result v0

    .line 1839
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1842
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1845
    goto/16 :goto_3

    .line 1847
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1850
    move-result v1

    .line 1851
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1854
    move-result v3

    .line 1855
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1858
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setQboxUid(IZ)I

    .line 1861
    move-result v0

    .line 1862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1865
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1868
    goto/16 :goto_3

    .line 1870
    :pswitch_5b
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->stopQbox()I

    .line 1873
    move-result v0

    .line 1874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1877
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1880
    goto/16 :goto_3

    .line 1882
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1885
    move-result-object v1

    .line 1886
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1889
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startQbox(Ljava/lang/String;)I

    .line 1892
    move-result v0

    .line 1893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1896
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1899
    goto/16 :goto_3

    .line 1901
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1904
    move-result v1

    .line 1905
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1908
    move-result-object v3

    .line 1909
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1912
    move-result-object v4

    .line 1913
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1916
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->tcSetTCRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1922
    goto/16 :goto_3

    .line 1924
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1927
    move-result-object v1

    .line 1928
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1931
    move-result v3

    .line 1932
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1935
    move-result v4

    .line 1936
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1939
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->replaceApeRule(Ljava/lang/String;II)I

    .line 1942
    move-result v0

    .line 1943
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1946
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1949
    goto/16 :goto_3

    .line 1951
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1954
    move-result v1

    .line 1955
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1958
    move-result-object v3

    .line 1959
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1962
    move-result v4

    .line 1963
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1966
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addApeRule(ZLjava/lang/String;I)I

    .line 1969
    move-result v0

    .line 1970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1973
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1976
    goto/16 :goto_3

    .line 1978
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1981
    move-result v1

    .line 1982
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1985
    move-result v3

    .line 1986
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1989
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioritizeApp(ZI)I

    .line 1992
    move-result v0

    .line 1993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    goto/16 :goto_3

    .line 2001
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2004
    move-result v1

    .line 2005
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2008
    move-result-object v3

    .line 2009
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2012
    move-result v4

    .line 2013
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2016
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlWifiRule(ILjava/lang/String;I)V

    .line 2019
    goto/16 :goto_3

    .line 2021
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2024
    move-result v1

    .line 2025
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2028
    move-result-object v3

    .line 2029
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2032
    move-result v4

    .line 2033
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2036
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlMobileDataRule(ILjava/lang/String;I)V

    .line 2039
    goto/16 :goto_3

    .line 2041
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2044
    move-result v1

    .line 2045
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2048
    move-result v3

    .line 2049
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2052
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleMobileData(IZ)V

    .line 2055
    goto/16 :goto_3

    .line 2057
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2060
    move-result v1

    .line 2061
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2064
    move-result v3

    .line 2065
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2068
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleWifi(IZ)V

    .line 2071
    goto/16 :goto_3

    .line 2073
    :pswitch_65
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->firewallBuild()V

    .line 2076
    goto/16 :goto_3

    .line 2078
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2081
    move-result-object v1

    .line 2082
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2085
    move-result v3

    .line 2086
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2089
    move-result v4

    .line 2090
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2093
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->getVideoStats(Ljava/lang/String;II)[Landroid/net/TetherStatsParcel;

    .line 2096
    move-result-object v0

    .line 2097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2100
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2103
    goto/16 :goto_3

    .line 2105
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2108
    move-result-object v1

    .line 2109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2112
    move-result v3

    .line 2113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2116
    move-result v4

    .line 2117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2120
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->stopVideoStats(Ljava/lang/String;II)V

    .line 2123
    goto/16 :goto_3

    .line 2125
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2128
    move-result-object v1

    .line 2129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2132
    move-result v3

    .line 2133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2136
    move-result v4

    .line 2137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2140
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->startVideoStats(Ljava/lang/String;II)V

    .line 2143
    goto/16 :goto_3

    .line 2145
    :pswitch_69
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->makeVideoCallChain()V

    .line 2148
    goto/16 :goto_3

    .line 2150
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2153
    move-result-object v1

    .line 2154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2157
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->disableTlsPacketTracing(Ljava/lang/String;)I

    .line 2160
    move-result v0

    .line 2161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2164
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2167
    goto/16 :goto_3

    .line 2169
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2172
    move-result-object v1

    .line 2173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2176
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableTlsPacketTracing(Ljava/lang/String;)I

    .line 2179
    move-result v0

    .line 2180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2186
    goto/16 :goto_3

    .line 2188
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2191
    move-result-object v1

    .line 2192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2195
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->isIptablesMatchEnabled(Ljava/lang/String;)I

    .line 2198
    move-result v0

    .line 2199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2202
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2205
    goto/16 :goto_3

    .line 2207
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2210
    move-result v1

    .line 2211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2214
    move-result v3

    .line 2215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2218
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V

    .line 2221
    goto/16 :goto_3

    .line 2223
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2226
    move-result v1

    .line 2227
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2230
    move-result v3

    .line 2231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2234
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setDnsCacheStatus(IZ)V

    .line 2237
    goto/16 :goto_3

    .line 2239
    :pswitch_6f
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->clearKnoxNwFilterProxyEntries()V

    .line 2242
    goto/16 :goto_3

    .line 2244
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2247
    move-result v1

    .line 2248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2251
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V

    .line 2254
    goto/16 :goto_3

    .line 2256
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2259
    move-result v1

    .line 2260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2263
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setKnoxNwFilterProxyApp(I)V

    .line 2266
    goto/16 :goto_3

    .line 2268
    :pswitch_72
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2270
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2273
    move-result-object v1

    .line 2274
    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 2276
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2279
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeExemptUidFromNwFilterRange([Landroid/net/UidRangeParcel;)V

    .line 2282
    goto/16 :goto_3

    .line 2284
    :pswitch_73
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2286
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2289
    move-result-object v1

    .line 2290
    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 2292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2295
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->exemptUidFromNwFilterRange([Landroid/net/UidRangeParcel;)V

    .line 2298
    goto/16 :goto_3

    .line 2300
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2303
    move-result v1

    .line 2304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2307
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    .line 2310
    goto/16 :goto_3

    .line 2312
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2315
    move-result v1

    .line 2316
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2319
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->addUserToNwFilterRange(I)V

    .line 2322
    goto/16 :goto_3

    .line 2324
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2327
    move-result v1

    .line 2328
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2331
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    .line 2334
    move-result v0

    .line 2335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2338
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2341
    goto/16 :goto_3

    .line 2343
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2346
    move-result v1

    .line 2347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2350
    move-result v3

    .line 2351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2354
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    .line 2357
    goto/16 :goto_3

    .line 2359
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2362
    move-result v1

    .line 2363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2366
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V

    .line 2369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2372
    goto/16 :goto_3

    .line 2374
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2377
    move-result v1

    .line 2378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2381
    move-result v3

    .line 2382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2385
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterUdpV6Entry(II)Ljava/lang/String;

    .line 2388
    move-result-object v0

    .line 2389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2392
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2395
    goto/16 :goto_3

    .line 2397
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2400
    move-result v1

    .line 2401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2404
    move-result v3

    .line 2405
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2408
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV6Entry(II)Ljava/lang/String;

    .line 2411
    move-result-object v0

    .line 2412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2415
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2418
    goto/16 :goto_3

    .line 2420
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2423
    move-result v1

    .line 2424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2427
    move-result v3

    .line 2428
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2431
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV4Entry(II)Ljava/lang/String;

    .line 2434
    move-result-object v0

    .line 2435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2438
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2441
    goto/16 :goto_3

    .line 2443
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2446
    move-result v1

    .line 2447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2450
    move-result v3

    .line 2451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2454
    move-result v4

    .line 2455
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2458
    move-result v5

    .line 2459
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2462
    invoke-interface {p0, v1, v3, v4, v5}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 2465
    goto/16 :goto_3

    .line 2467
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2470
    move-result v1

    .line 2471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2474
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableIpOptionModification(Z)V

    .line 2477
    goto/16 :goto_3

    .line 2479
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2482
    move-result v1

    .line 2483
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 2486
    move-result-object v3

    .line 2487
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2490
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->runKnoxRulesCommand(I[Ljava/lang/String;)Ljava/lang/String;

    .line 2493
    move-result-object v0

    .line 2494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2497
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2500
    goto/16 :goto_3

    .line 2502
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2505
    move-result v1

    .line 2506
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 2509
    move-result-object v3

    .line 2510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2513
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->updateDomainFilterCache(I[Ljava/lang/String;)V

    .line 2516
    goto/16 :goto_3

    .line 2518
    :pswitch_80
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterDomainFilterEventListener()V

    .line 2521
    goto/16 :goto_3

    .line 2523
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2526
    move-result-object v1

    .line 2527
    if-nez v1, :cond_4

    .line 2529
    goto :goto_1

    .line 2530
    :cond_4
    const-string/jumbo v3, "com.android.internal.net.IDomainFilterEventListener"

    .line 2533
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 2536
    move-result-object v3

    .line 2537
    if-eqz v3, :cond_5

    .line 2539
    instance-of v4, v3, Lcom/android/internal/net/IDomainFilterEventListener;

    .line 2541
    if-eqz v4, :cond_5

    .line 2543
    check-cast v3, Lcom/android/internal/net/IDomainFilterEventListener;

    .line 2545
    goto :goto_1

    .line 2546
    :cond_5
    new-instance v3, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;

    .line 2548
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2551
    iput-object v1, v3, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2553
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2556
    invoke-interface {p0, v3}, Lcom/android/internal/net/IOemNetd;->registerDomainFilterEventListener(Lcom/android/internal/net/IDomainFilterEventListener;)V

    .line 2559
    goto/16 :goto_3

    .line 2561
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2564
    move-result v1

    .line 2565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2568
    move-result v3

    .line 2569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2572
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnBlockUserWideDnsQuery(ZI)V

    .line 2575
    goto/16 :goto_3

    .line 2577
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2580
    move-result v1

    .line 2581
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2583
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2586
    move-result-object v3

    .line 2587
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2589
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2592
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 2595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2598
    goto/16 :goto_3

    .line 2600
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2603
    move-result v1

    .line 2604
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2606
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2609
    move-result-object v3

    .line 2610
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2615
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 2618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2621
    goto/16 :goto_3

    .line 2623
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2626
    move-result v1

    .line 2627
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2630
    move-result v3

    .line 2631
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2634
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setKnoxVpn(IZ)V

    .line 2637
    goto/16 :goto_3

    .line 2639
    :pswitch_86
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterNetdTetherEventListener()V

    .line 2642
    goto/16 :goto_3

    .line 2644
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2647
    move-result-object v1

    .line 2648
    if-nez v1, :cond_6

    .line 2650
    goto :goto_2

    .line 2651
    :cond_6
    const-string/jumbo v3, "com.android.internal.net.INetdTetherEventListener"

    .line 2654
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 2657
    move-result-object v3

    .line 2658
    if-eqz v3, :cond_7

    .line 2660
    instance-of v4, v3, Lcom/android/internal/net/INetdTetherEventListener;

    .line 2662
    if-eqz v4, :cond_7

    .line 2664
    check-cast v3, Lcom/android/internal/net/INetdTetherEventListener;

    .line 2666
    goto :goto_2

    .line 2667
    :cond_7
    new-instance v3, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;

    .line 2669
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2672
    iput-object v1, v3, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2674
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2677
    invoke-interface {p0, v3}, Lcom/android/internal/net/IOemNetd;->registerNetdTetherEventListener(Lcom/android/internal/net/INetdTetherEventListener;)V

    .line 2680
    goto/16 :goto_3

    .line 2682
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2685
    move-result v1

    .line 2686
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2689
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableKnoxVpnFlagForTether(Z)V

    .line 2692
    goto/16 :goto_3

    .line 2694
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2697
    move-result v1

    .line 2698
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2701
    move-result-object v3

    .line 2702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2705
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 2708
    move-result-object v0

    .line 2709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2712
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2715
    goto/16 :goto_3

    .line 2717
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2720
    move-result v1

    .line 2721
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2724
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->clearEbpfMap(I)V

    .line 2727
    goto/16 :goto_3

    .line 2729
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2732
    move-result-object v1

    .line 2733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2736
    move-result v3

    .line 2737
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2740
    move-result v4

    .line 2741
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2744
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateInputFilterAppWideRules([III)V

    .line 2747
    goto/16 :goto_3

    .line 2749
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2752
    move-result-object v1

    .line 2753
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2756
    move-result v3

    .line 2757
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2760
    move-result v4

    .line 2761
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2764
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateInputFilterUserWideRules([III)V

    .line 2767
    goto/16 :goto_3

    .line 2769
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2772
    move-result v1

    .line 2773
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2776
    move-result v3

    .line 2777
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2780
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->updateInputFilterExemptRules(II)V

    .line 2783
    goto/16 :goto_3

    .line 2785
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2788
    move-result v1

    .line 2789
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2792
    move-result v3

    .line 2793
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2796
    move-result v4

    .line 2797
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2800
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setNetworkInfo(IZI)V

    .line 2803
    goto/16 :goto_3

    .line 2805
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2808
    move-result-object v1

    .line 2809
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2812
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->knoxVpnInsertUidForDnsAuthorization([I)V

    .line 2815
    goto/16 :goto_3

    .line 2817
    :pswitch_90
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveUidFromDnsAuthorization()V

    .line 2820
    goto/16 :goto_3

    .line 2822
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2825
    move-result v1

    .line 2826
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2828
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2831
    move-result-object v3

    .line 2832
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2834
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2837
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V

    .line 2840
    goto/16 :goto_3

    .line 2842
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2845
    move-result v1

    .line 2846
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2848
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2851
    move-result-object v3

    .line 2852
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2854
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2857
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V

    .line 2860
    goto :goto_3

    .line 2861
    :pswitch_93
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnDestroyBlockedKnoxNetwork()V

    .line 2864
    goto :goto_3

    .line 2865
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2868
    move-result v1

    .line 2869
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2871
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2874
    move-result-object v3

    .line 2875
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2877
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2880
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    .line 2883
    goto :goto_3

    .line 2884
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2887
    move-result v1

    .line 2888
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2890
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2893
    move-result-object v3

    .line 2894
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2896
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2899
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    .line 2902
    goto :goto_3

    .line 2903
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2906
    move-result v1

    .line 2907
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2909
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2912
    move-result-object v3

    .line 2913
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2915
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2918
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    .line 2921
    goto :goto_3

    .line 2922
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2925
    move-result v1

    .line 2926
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2928
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2931
    move-result-object v3

    .line 2932
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2934
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2937
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnBlockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    .line 2940
    goto :goto_3

    .line 2941
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2944
    move-result-object v1

    .line 2945
    invoke-static {v1}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    .line 2948
    move-result-object v1

    .line 2949
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2952
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->registerOemUnsolicitedEventListener(Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;)V

    .line 2955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2958
    goto :goto_3

    .line 2959
    :pswitch_99
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->isAlive()Z

    .line 2962
    move-result v0

    .line 2963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2966
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2969
    :goto_3
    return v7

    .line 2970
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
