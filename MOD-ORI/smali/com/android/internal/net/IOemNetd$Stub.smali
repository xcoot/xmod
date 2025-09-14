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

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "com.android.internal.net.IOemNetd"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string/jumbo v0, "com.android.internal.net.IOemNetd"

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    instance-of v1, v0, Lcom/android/internal/net/IOemNetd;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/android/internal/net/IOemNetd;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    new-instance v0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/internal/net/IOemNetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 24
    .line 25
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

    .line 2
    .line 3
    .line 4
    const/4 v7, 0x1

    .line 5
    if-lt p1, v7, :cond_0

    .line 6
    .line 7
    const v4, 0xffffff

    .line 8
    .line 9
    .line 10
    if-gt p1, v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const v4, 0x5f4e5446

    .line 16
    .line 17
    .line 18
    if-ne p1, v4, :cond_1

    .line 19
    .line 20
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v7

    .line 24
    :cond_1
    const/4 v3, 0x0

    .line 25
    packed-switch p1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 54
    .line 55
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

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    .line 83
    .line 84
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->delMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    .line 106
    .line 107
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    .line 137
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

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_3

    .line 150
    .line 151
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    .line 165
    .line 166
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setMptcpPrivateIpRoute(ZLjava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_3

    .line 173
    .line 174
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    .line 188
    .line 189
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateMptcpSourceRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_3

    .line 196
    .line 197
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    .line 207
    .line 208
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setMtuValueMptcp(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_3

    .line 215
    .line 216
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    .line 226
    .line 227
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setMptcpTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_3

    .line 234
    .line 235
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    .line 249
    .line 250
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->delMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_3

    .line 257
    .line 258
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    .line 272
    .line 273
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_3

    .line 280
    .line 281
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    .line 303
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

    .line 310
    .line 311
    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_3

    .line 316
    .line 317
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    .line 339
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

    .line 346
    .line 347
    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_3

    .line 352
    .line 353
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    .line 367
    .line 368
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->delMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_3

    .line 375
    .line 376
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    .line 390
    .line 391
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_3

    .line 398
    .line 399
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    .line 413
    .line 414
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->removeUidFromMptcpChain(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_3

    .line 421
    .line 422
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    .line 436
    .line 437
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addUidToMptcpChain(Ljava/lang/String;ILjava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_3

    .line 444
    .line 445
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    .line 471
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

    .line 479
    .line 480
    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_3

    .line 485
    .line 486
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v8

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    .line 512
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

    .line 520
    .line 521
    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    .line 524
    .line 525
    goto/16 :goto_3

    .line 526
    .line 527
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    .line 537
    .line 538
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->removeMptcpChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_3

    .line 545
    .line 546
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    .line 556
    .line 557
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->addMptcpChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_3

    .line 564
    .line 565
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    .line 571
    .line 572
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeMptcpLinkIface(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_3

    .line 579
    .line 580
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    .line 586
    .line 587
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->addMptcpLinkIface(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    .line 592
    .line 593
    goto/16 :goto_3

    .line 594
    .line 595
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v4

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v6

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    .line 617
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

    .line 624
    .line 625
    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    .line 628
    .line 629
    goto/16 :goto_3

    .line 630
    .line 631
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 644
    .line 645
    .line 646
    move-result v5

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v6

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    .line 653
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

    .line 660
    .line 661
    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    .line 664
    .line 665
    goto/16 :goto_3

    .line 666
    .line 667
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    .line 681
    .line 682
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_3

    .line 689
    .line 690
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v3

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    .line 704
    .line 705
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    .line 710
    .line 711
    goto/16 :goto_3

    .line 712
    .line 713
    :pswitch_1a
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->disableMptcpMode()V

    .line 714
    .line 715
    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    .line 718
    .line 719
    goto/16 :goto_3

    .line 720
    .line 721
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    .line 727
    .line 728
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableMptcpModes(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    .line 733
    .line 734
    goto/16 :goto_3

    .line 735
    .line 736
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 741
    .line 742
    .line 743
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->updateGroPshOption(I)V

    .line 744
    .line 745
    .line 746
    goto/16 :goto_3

    .line 747
    .line 748
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 749
    .line 750
    .line 751
    move-result-wide v3

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    .line 754
    .line 755
    invoke-interface {p0, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateGroFlushTime(J)V

    .line 756
    .line 757
    .line 758
    goto/16 :goto_3

    .line 759
    .line 760
    :pswitch_1e
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterCloEventListener()V

    .line 761
    .line 762
    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    .line 765
    .line 766
    goto/16 :goto_3

    .line 767
    .line 768
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    if-nez v1, :cond_2

    .line 773
    .line 774
    goto :goto_0

    .line 775
    :cond_2
    const-string/jumbo v3, "com.android.internal.net.INetdCloEventListener"

    .line 776
    .line 777
    .line 778
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    if-eqz v3, :cond_3

    .line 783
    .line 784
    instance-of v4, v3, Lcom/android/internal/net/INetdCloEventListener;

    .line 785
    .line 786
    if-eqz v4, :cond_3

    .line 787
    .line 788
    check-cast v3, Lcom/android/internal/net/INetdCloEventListener;

    .line 789
    .line 790
    goto :goto_0

    .line 791
    :cond_3
    new-instance v3, Lcom/android/internal/net/INetdCloEventListener$Stub$Proxy;

    .line 792
    .line 793
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 794
    .line 795
    .line 796
    iput-object v1, v3, Lcom/android/internal/net/INetdCloEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 797
    .line 798
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    .line 800
    .line 801
    invoke-interface {p0, v3}, Lcom/android/internal/net/IOemNetd;->registerCloEventListener(Lcom/android/internal/net/INetdCloEventListener;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    .line 806
    .line 807
    goto/16 :goto_3

    .line 808
    .line 809
    :pswitch_20
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->deactivateCloGro()V

    .line 810
    .line 811
    .line 812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    .line 814
    .line 815
    goto/16 :goto_3

    .line 816
    .line 817
    :pswitch_21
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->activateCloGro()V

    .line 818
    .line 819
    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    .line 822
    .line 823
    goto/16 :goto_3

    .line 824
    .line 825
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    .line 831
    .line 832
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->deactivateClo(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    .line 837
    .line 838
    goto/16 :goto_3

    .line 839
    .line 840
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    .line 846
    .line 847
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->activateClo(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    .line 852
    .line 853
    goto/16 :goto_3

    .line 854
    .line 855
    :pswitch_24
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->l4StatsGet()[J

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    .line 861
    .line 862
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 863
    .line 864
    .line 865
    goto/16 :goto_3

    .line 866
    .line 867
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    .line 873
    .line 874
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setAdvertiseWindowSize(I)V

    .line 875
    .line 876
    .line 877
    goto/16 :goto_3

    .line 878
    .line 879
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 884
    .line 885
    .line 886
    move-result v3

    .line 887
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 888
    .line 889
    .line 890
    move-result v4

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    .line 893
    .line 894
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->replaceMnxbRule(Ljava/lang/String;II)I

    .line 895
    .line 896
    .line 897
    move-result v0

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    .line 900
    .line 901
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    .line 903
    .line 904
    goto/16 :goto_3

    .line 905
    .line 906
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 907
    .line 908
    .line 909
    move-result v1

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v3

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 915
    .line 916
    .line 917
    move-result v4

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 919
    .line 920
    .line 921
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMnxbRule(ZLjava/lang/String;I)I

    .line 922
    .line 923
    .line 924
    move-result v0

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    .line 927
    .line 928
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    .line 930
    .line 931
    goto/16 :goto_3

    .line 932
    .line 933
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 934
    .line 935
    .line 936
    move-result v1

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    .line 943
    .line 944
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioritizeMnxbApp(ZI)I

    .line 945
    .line 946
    .line 947
    move-result v0

    .line 948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    .line 950
    .line 951
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    .line 953
    .line 954
    goto/16 :goto_3

    .line 955
    .line 956
    :pswitch_29
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanOnlyAllowIPs()V

    .line 957
    .line 958
    .line 959
    goto/16 :goto_3

    .line 960
    .line 961
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    .line 967
    .line 968
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setOnlyAllowIPs(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    goto/16 :goto_3

    .line 972
    .line 973
    :pswitch_2b
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanBlockPorts()V

    .line 974
    .line 975
    .line 976
    goto/16 :goto_3

    .line 977
    .line 978
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v1

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v4

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    .line 992
    .line 993
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V

    .line 994
    .line 995
    .line 996
    goto/16 :goto_3

    .line 997
    .line 998
    :pswitch_2d
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->setBlockAllPackets()V

    .line 999
    .line 1000
    .line 1001
    goto/16 :goto_3

    .line 1002
    .line 1003
    :pswitch_2e
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanAllBlock()V

    .line 1004
    .line 1005
    .line 1006
    goto/16 :goto_3

    .line 1007
    .line 1008
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v1

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    .line 1014
    .line 1015
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setAllowHostAlone(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    goto/16 :goto_3

    .line 1019
    .line 1020
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    .line 1026
    .line 1027
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setBlockHostAlone(Ljava/lang/String;)V

    .line 1028
    .line 1029
    .line 1030
    goto/16 :goto_3

    .line 1031
    .line 1032
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v1

    .line 1036
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    .line 1038
    .line 1039
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setAllowListIPs(Ljava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    goto/16 :goto_3

    .line 1043
    .line 1044
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v1

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1049
    .line 1050
    .line 1051
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setBlockListIPs(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    goto/16 :goto_3

    .line 1055
    .line 1056
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1057
    .line 1058
    .line 1059
    move-result v1

    .line 1060
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1061
    .line 1062
    .line 1063
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setBlockAllDNSPackets(Z)V

    .line 1064
    .line 1065
    .line 1066
    goto/16 :goto_3

    .line 1067
    .line 1068
    :pswitch_34
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->makeBlockChildChain()V

    .line 1069
    .line 1070
    .line 1071
    goto/16 :goto_3

    .line 1072
    .line 1073
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1074
    .line 1075
    .line 1076
    move-result v1

    .line 1077
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v3

    .line 1081
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v4

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v5

    .line 1089
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1090
    .line 1091
    .line 1092
    move-result v6

    .line 1093
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1094
    .line 1095
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

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    .line 1106
    .line 1107
    goto/16 :goto_3

    .line 1108
    .line 1109
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1110
    .line 1111
    .line 1112
    move-result v1

    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v3

    .line 1117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v4

    .line 1121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v5

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1126
    .line 1127
    .line 1128
    move-result v6

    .line 1129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1130
    .line 1131
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

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    .line 1142
    .line 1143
    goto/16 :goto_3

    .line 1144
    .line 1145
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v1

    .line 1149
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1150
    .line 1151
    .line 1152
    move-result v3

    .line 1153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    .line 1155
    .line 1156
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->interfaceSetAutoConf(Ljava/lang/String;Z)V

    .line 1157
    .line 1158
    .line 1159
    goto/16 :goto_3

    .line 1160
    .line 1161
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v3

    .line 1169
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1170
    .line 1171
    .line 1172
    move-result v4

    .line 1173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1174
    .line 1175
    .line 1176
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setEpdgInterfaceDropRule(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1177
    .line 1178
    .line 1179
    goto/16 :goto_3

    .line 1180
    .line 1181
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1182
    .line 1183
    .line 1184
    move-result v1

    .line 1185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v3

    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v4

    .line 1193
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v5

    .line 1197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1198
    .line 1199
    .line 1200
    invoke-interface {p0, v1, v3, v4, v5}, Lcom/android/internal/net/IOemNetd;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1201
    .line 1202
    .line 1203
    goto/16 :goto_3

    .line 1204
    .line 1205
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1206
    .line 1207
    .line 1208
    move-result v1

    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v3

    .line 1213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v4

    .line 1217
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    .line 1219
    .line 1220
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->runVpnRulesCommand(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v0

    .line 1224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    goto/16 :goto_3

    .line 1231
    .line 1232
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v1

    .line 1236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v3

    .line 1240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v4

    .line 1244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v5

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1249
    .line 1250
    .line 1251
    move-result v6

    .line 1252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1253
    .line 1254
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

    .line 1261
    .line 1262
    .line 1263
    goto/16 :goto_3

    .line 1264
    .line 1265
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1266
    .line 1267
    .line 1268
    move-result v1

    .line 1269
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1270
    .line 1271
    .line 1272
    move-result v3

    .line 1273
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1274
    .line 1275
    .line 1276
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->spegRestrictNetworkConnection(IZ)V

    .line 1277
    .line 1278
    .line 1279
    goto/16 :goto_3

    .line 1280
    .line 1281
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v1

    .line 1285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v3

    .line 1289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1290
    .line 1291
    .line 1292
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v0

    .line 1296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1300
    .line 1301
    .line 1302
    goto/16 :goto_3

    .line 1303
    .line 1304
    :pswitch_3e
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getTrafficTimeStats()Landroid/net/TrafficTimeStatsParcel;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1312
    .line 1313
    .line 1314
    goto/16 :goto_3

    .line 1315
    .line 1316
    :pswitch_3f
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getMhsTrafficStats()[Landroid/net/UidStatsParcel;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v0

    .line 1320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1324
    .line 1325
    .line 1326
    goto/16 :goto_3

    .line 1327
    .line 1328
    :pswitch_40
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getUidTrafficStats()[Landroid/net/UidStatsParcel;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v0

    .line 1332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1336
    .line 1337
    .line 1338
    goto/16 :goto_3

    .line 1339
    .line 1340
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v1

    .line 1344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1345
    .line 1346
    .line 1347
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->stopTrafficStatsController(Ljava/lang/String;)I

    .line 1348
    .line 1349
    .line 1350
    move-result v0

    .line 1351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1355
    .line 1356
    .line 1357
    goto/16 :goto_3

    .line 1358
    .line 1359
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v1

    .line 1363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1364
    .line 1365
    .line 1366
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startTrafficStatsController(Ljava/lang/String;)I

    .line 1367
    .line 1368
    .line 1369
    move-result v0

    .line 1370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    .line 1372
    .line 1373
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    .line 1375
    .line 1376
    goto/16 :goto_3

    .line 1377
    .line 1378
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v1

    .line 1382
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v3

    .line 1386
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v4

    .line 1390
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v5

    .line 1394
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v6

    .line 1398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1399
    .line 1400
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

    .line 1407
    .line 1408
    .line 1409
    move-result v0

    .line 1410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    .line 1415
    .line 1416
    goto/16 :goto_3

    .line 1417
    .line 1418
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v1

    .line 1422
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v3

    .line 1426
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v4

    .line 1430
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v5

    .line 1434
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v6

    .line 1438
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1439
    .line 1440
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

    .line 1447
    .line 1448
    .line 1449
    move-result v0

    .line 1450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1454
    .line 1455
    .line 1456
    goto/16 :goto_3

    .line 1457
    .line 1458
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1459
    .line 1460
    .line 1461
    move-result v1

    .line 1462
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v3

    .line 1466
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v4

    .line 1470
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v5

    .line 1474
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v6

    .line 1478
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    .line 1480
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

    .line 1487
    .line 1488
    .line 1489
    move-result v0

    .line 1490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    .line 1495
    .line 1496
    goto/16 :goto_3

    .line 1497
    .line 1498
    :pswitch_46
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->clearPriorityMap()I

    .line 1499
    .line 1500
    .line 1501
    move-result v0

    .line 1502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    .line 1507
    .line 1508
    goto/16 :goto_3

    .line 1509
    .line 1510
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v1

    .line 1514
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1515
    .line 1516
    .line 1517
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->prioDisable(Ljava/lang/String;)I

    .line 1518
    .line 1519
    .line 1520
    move-result v0

    .line 1521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    .line 1526
    .line 1527
    goto/16 :goto_3

    .line 1528
    .line 1529
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v1

    .line 1533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1534
    .line 1535
    .line 1536
    move-result v3

    .line 1537
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1538
    .line 1539
    .line 1540
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioUpdate(Ljava/lang/String;I)I

    .line 1541
    .line 1542
    .line 1543
    move-result v0

    .line 1544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    .line 1549
    .line 1550
    goto/16 :goto_3

    .line 1551
    .line 1552
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v1

    .line 1556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1557
    .line 1558
    .line 1559
    move-result v3

    .line 1560
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1561
    .line 1562
    .line 1563
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioEnable(Ljava/lang/String;I)I

    .line 1564
    .line 1565
    .line 1566
    move-result v0

    .line 1567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    .line 1569
    .line 1570
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1571
    .line 1572
    .line 1573
    goto/16 :goto_3

    .line 1574
    .line 1575
    :pswitch_4a
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->isMBBPathsPresent()I

    .line 1576
    .line 1577
    .line 1578
    move-result v0

    .line 1579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1583
    .line 1584
    .line 1585
    goto/16 :goto_3

    .line 1586
    .line 1587
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v1

    .line 1591
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1592
    .line 1593
    .line 1594
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->flushArpEntry(Ljava/lang/String;)I

    .line 1595
    .line 1596
    .line 1597
    move-result v0

    .line 1598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    .line 1600
    .line 1601
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1602
    .line 1603
    .line 1604
    goto/16 :goto_3

    .line 1605
    .line 1606
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v1

    .line 1610
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1611
    .line 1612
    .line 1613
    move-result v3

    .line 1614
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v4

    .line 1618
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1619
    .line 1620
    .line 1621
    move-result-wide v5

    .line 1622
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1623
    .line 1624
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

    .line 1630
    .line 1631
    .line 1632
    move-result v0

    .line 1633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    .line 1638
    .line 1639
    goto/16 :goto_3

    .line 1640
    .line 1641
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v1

    .line 1645
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1646
    .line 1647
    .line 1648
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOff(Ljava/lang/String;)I

    .line 1649
    .line 1650
    .line 1651
    move-result v0

    .line 1652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1653
    .line 1654
    .line 1655
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    .line 1657
    .line 1658
    goto/16 :goto_3

    .line 1659
    .line 1660
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v1

    .line 1664
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1665
    .line 1666
    .line 1667
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOn(Ljava/lang/String;)I

    .line 1668
    .line 1669
    .line 1670
    move-result v0

    .line 1671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1675
    .line 1676
    .line 1677
    goto/16 :goto_3

    .line 1678
    .line 1679
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v1

    .line 1683
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1684
    .line 1685
    .line 1686
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->getTotalDataUsage(Ljava/lang/String;)J

    .line 1687
    .line 1688
    .line 1689
    move-result-wide v0

    .line 1690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1691
    .line 1692
    .line 1693
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1694
    .line 1695
    .line 1696
    goto/16 :goto_3

    .line 1697
    .line 1698
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v1

    .line 1702
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v3

    .line 1706
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1707
    .line 1708
    .line 1709
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getDataUsage(Ljava/lang/String;Ljava/util/List;)[Landroid/net/MBBStatsParcel;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v0

    .line 1713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    .line 1715
    .line 1716
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1717
    .line 1718
    .line 1719
    goto/16 :goto_3

    .line 1720
    .line 1721
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 1722
    .line 1723
    .line 1724
    move-result-object v1

    .line 1725
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1726
    .line 1727
    .line 1728
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->getTcpLocalPorts([I)[I

    .line 1729
    .line 1730
    .line 1731
    move-result-object v0

    .line 1732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    .line 1734
    .line 1735
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1736
    .line 1737
    .line 1738
    goto/16 :goto_3

    .line 1739
    .line 1740
    :pswitch_52
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->clearTosMap()V

    .line 1741
    .line 1742
    .line 1743
    goto/16 :goto_3

    .line 1744
    .line 1745
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1746
    .line 1747
    .line 1748
    move-result v1

    .line 1749
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1750
    .line 1751
    .line 1752
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeTosPolicy(I)V

    .line 1753
    .line 1754
    .line 1755
    goto/16 :goto_3

    .line 1756
    .line 1757
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1758
    .line 1759
    .line 1760
    move-result v1

    .line 1761
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1762
    .line 1763
    .line 1764
    move-result v3

    .line 1765
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1766
    .line 1767
    .line 1768
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->addTosPolicy(II)V

    .line 1769
    .line 1770
    .line 1771
    goto/16 :goto_3

    .line 1772
    .line 1773
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v1

    .line 1777
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1778
    .line 1779
    .line 1780
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->stopTosMarker(Ljava/lang/String;)V

    .line 1781
    .line 1782
    .line 1783
    goto/16 :goto_3

    .line 1784
    .line 1785
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v1

    .line 1789
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1790
    .line 1791
    .line 1792
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startTosMarker(Ljava/lang/String;)V

    .line 1793
    .line 1794
    .line 1795
    goto/16 :goto_3

    .line 1796
    .line 1797
    :pswitch_57
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getL4sConnCount()I

    .line 1798
    .line 1799
    .line 1800
    move-result v0

    .line 1801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1802
    .line 1803
    .line 1804
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1805
    .line 1806
    .line 1807
    goto/16 :goto_3

    .line 1808
    .line 1809
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v1

    .line 1813
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1814
    .line 1815
    .line 1816
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->stopL4s(Ljava/lang/String;)I

    .line 1817
    .line 1818
    .line 1819
    move-result v0

    .line 1820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1821
    .line 1822
    .line 1823
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1824
    .line 1825
    .line 1826
    goto/16 :goto_3

    .line 1827
    .line 1828
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v1

    .line 1832
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1833
    .line 1834
    .line 1835
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startL4s(Ljava/lang/String;)I

    .line 1836
    .line 1837
    .line 1838
    move-result v0

    .line 1839
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1840
    .line 1841
    .line 1842
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1843
    .line 1844
    .line 1845
    goto/16 :goto_3

    .line 1846
    .line 1847
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1848
    .line 1849
    .line 1850
    move-result v1

    .line 1851
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1852
    .line 1853
    .line 1854
    move-result v3

    .line 1855
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1856
    .line 1857
    .line 1858
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setQboxUid(IZ)I

    .line 1859
    .line 1860
    .line 1861
    move-result v0

    .line 1862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    .line 1864
    .line 1865
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1866
    .line 1867
    .line 1868
    goto/16 :goto_3

    .line 1869
    .line 1870
    :pswitch_5b
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->stopQbox()I

    .line 1871
    .line 1872
    .line 1873
    move-result v0

    .line 1874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1875
    .line 1876
    .line 1877
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    .line 1879
    .line 1880
    goto/16 :goto_3

    .line 1881
    .line 1882
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v1

    .line 1886
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1887
    .line 1888
    .line 1889
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startQbox(Ljava/lang/String;)I

    .line 1890
    .line 1891
    .line 1892
    move-result v0

    .line 1893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1894
    .line 1895
    .line 1896
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1897
    .line 1898
    .line 1899
    goto/16 :goto_3

    .line 1900
    .line 1901
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1902
    .line 1903
    .line 1904
    move-result v1

    .line 1905
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v3

    .line 1909
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v4

    .line 1913
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1914
    .line 1915
    .line 1916
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->tcSetTCRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1917
    .line 1918
    .line 1919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1920
    .line 1921
    .line 1922
    goto/16 :goto_3

    .line 1923
    .line 1924
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v1

    .line 1928
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1929
    .line 1930
    .line 1931
    move-result v3

    .line 1932
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1933
    .line 1934
    .line 1935
    move-result v4

    .line 1936
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1937
    .line 1938
    .line 1939
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->replaceApeRule(Ljava/lang/String;II)I

    .line 1940
    .line 1941
    .line 1942
    move-result v0

    .line 1943
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1944
    .line 1945
    .line 1946
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1947
    .line 1948
    .line 1949
    goto/16 :goto_3

    .line 1950
    .line 1951
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1952
    .line 1953
    .line 1954
    move-result v1

    .line 1955
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v3

    .line 1959
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1960
    .line 1961
    .line 1962
    move-result v4

    .line 1963
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1964
    .line 1965
    .line 1966
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addApeRule(ZLjava/lang/String;I)I

    .line 1967
    .line 1968
    .line 1969
    move-result v0

    .line 1970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1971
    .line 1972
    .line 1973
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1974
    .line 1975
    .line 1976
    goto/16 :goto_3

    .line 1977
    .line 1978
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1979
    .line 1980
    .line 1981
    move-result v1

    .line 1982
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1983
    .line 1984
    .line 1985
    move-result v3

    .line 1986
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1987
    .line 1988
    .line 1989
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioritizeApp(ZI)I

    .line 1990
    .line 1991
    .line 1992
    move-result v0

    .line 1993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1994
    .line 1995
    .line 1996
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1997
    .line 1998
    .line 1999
    goto/16 :goto_3

    .line 2000
    .line 2001
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2002
    .line 2003
    .line 2004
    move-result v1

    .line 2005
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2006
    .line 2007
    .line 2008
    move-result-object v3

    .line 2009
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2010
    .line 2011
    .line 2012
    move-result v4

    .line 2013
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2014
    .line 2015
    .line 2016
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlWifiRule(ILjava/lang/String;I)V

    .line 2017
    .line 2018
    .line 2019
    goto/16 :goto_3

    .line 2020
    .line 2021
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2022
    .line 2023
    .line 2024
    move-result v1

    .line 2025
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v3

    .line 2029
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2030
    .line 2031
    .line 2032
    move-result v4

    .line 2033
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2034
    .line 2035
    .line 2036
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlMobileDataRule(ILjava/lang/String;I)V

    .line 2037
    .line 2038
    .line 2039
    goto/16 :goto_3

    .line 2040
    .line 2041
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2042
    .line 2043
    .line 2044
    move-result v1

    .line 2045
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2046
    .line 2047
    .line 2048
    move-result v3

    .line 2049
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2050
    .line 2051
    .line 2052
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleMobileData(IZ)V

    .line 2053
    .line 2054
    .line 2055
    goto/16 :goto_3

    .line 2056
    .line 2057
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2058
    .line 2059
    .line 2060
    move-result v1

    .line 2061
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2062
    .line 2063
    .line 2064
    move-result v3

    .line 2065
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2066
    .line 2067
    .line 2068
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleWifi(IZ)V

    .line 2069
    .line 2070
    .line 2071
    goto/16 :goto_3

    .line 2072
    .line 2073
    :pswitch_65
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->firewallBuild()V

    .line 2074
    .line 2075
    .line 2076
    goto/16 :goto_3

    .line 2077
    .line 2078
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v1

    .line 2082
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2083
    .line 2084
    .line 2085
    move-result v3

    .line 2086
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2087
    .line 2088
    .line 2089
    move-result v4

    .line 2090
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2091
    .line 2092
    .line 2093
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->getVideoStats(Ljava/lang/String;II)[Landroid/net/TetherStatsParcel;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v0

    .line 2097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    .line 2099
    .line 2100
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2101
    .line 2102
    .line 2103
    goto/16 :goto_3

    .line 2104
    .line 2105
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2106
    .line 2107
    .line 2108
    move-result-object v1

    .line 2109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2110
    .line 2111
    .line 2112
    move-result v3

    .line 2113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2114
    .line 2115
    .line 2116
    move-result v4

    .line 2117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2118
    .line 2119
    .line 2120
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->stopVideoStats(Ljava/lang/String;II)V

    .line 2121
    .line 2122
    .line 2123
    goto/16 :goto_3

    .line 2124
    .line 2125
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v1

    .line 2129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2130
    .line 2131
    .line 2132
    move-result v3

    .line 2133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2134
    .line 2135
    .line 2136
    move-result v4

    .line 2137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2138
    .line 2139
    .line 2140
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->startVideoStats(Ljava/lang/String;II)V

    .line 2141
    .line 2142
    .line 2143
    goto/16 :goto_3

    .line 2144
    .line 2145
    :pswitch_69
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->makeVideoCallChain()V

    .line 2146
    .line 2147
    .line 2148
    goto/16 :goto_3

    .line 2149
    .line 2150
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v1

    .line 2154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2155
    .line 2156
    .line 2157
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->disableTlsPacketTracing(Ljava/lang/String;)I

    .line 2158
    .line 2159
    .line 2160
    move-result v0

    .line 2161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2162
    .line 2163
    .line 2164
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2165
    .line 2166
    .line 2167
    goto/16 :goto_3

    .line 2168
    .line 2169
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v1

    .line 2173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2174
    .line 2175
    .line 2176
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableTlsPacketTracing(Ljava/lang/String;)I

    .line 2177
    .line 2178
    .line 2179
    move-result v0

    .line 2180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2181
    .line 2182
    .line 2183
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2184
    .line 2185
    .line 2186
    goto/16 :goto_3

    .line 2187
    .line 2188
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v1

    .line 2192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2193
    .line 2194
    .line 2195
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->isIptablesMatchEnabled(Ljava/lang/String;)I

    .line 2196
    .line 2197
    .line 2198
    move-result v0

    .line 2199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2200
    .line 2201
    .line 2202
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2203
    .line 2204
    .line 2205
    goto/16 :goto_3

    .line 2206
    .line 2207
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2208
    .line 2209
    .line 2210
    move-result v1

    .line 2211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2212
    .line 2213
    .line 2214
    move-result v3

    .line 2215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2216
    .line 2217
    .line 2218
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V

    .line 2219
    .line 2220
    .line 2221
    goto/16 :goto_3

    .line 2222
    .line 2223
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2224
    .line 2225
    .line 2226
    move-result v1

    .line 2227
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2228
    .line 2229
    .line 2230
    move-result v3

    .line 2231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2232
    .line 2233
    .line 2234
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setDnsCacheStatus(IZ)V

    .line 2235
    .line 2236
    .line 2237
    goto/16 :goto_3

    .line 2238
    .line 2239
    :pswitch_6f
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->clearKnoxNwFilterProxyEntries()V

    .line 2240
    .line 2241
    .line 2242
    goto/16 :goto_3

    .line 2243
    .line 2244
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2245
    .line 2246
    .line 2247
    move-result v1

    .line 2248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2249
    .line 2250
    .line 2251
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V

    .line 2252
    .line 2253
    .line 2254
    goto/16 :goto_3

    .line 2255
    .line 2256
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2257
    .line 2258
    .line 2259
    move-result v1

    .line 2260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2261
    .line 2262
    .line 2263
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setKnoxNwFilterProxyApp(I)V

    .line 2264
    .line 2265
    .line 2266
    goto/16 :goto_3

    .line 2267
    .line 2268
    :pswitch_72
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2269
    .line 2270
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2271
    .line 2272
    .line 2273
    move-result-object v1

    .line 2274
    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 2275
    .line 2276
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2277
    .line 2278
    .line 2279
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeExemptUidFromNwFilterRange([Landroid/net/UidRangeParcel;)V

    .line 2280
    .line 2281
    .line 2282
    goto/16 :goto_3

    .line 2283
    .line 2284
    :pswitch_73
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2285
    .line 2286
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2287
    .line 2288
    .line 2289
    move-result-object v1

    .line 2290
    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 2291
    .line 2292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2293
    .line 2294
    .line 2295
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->exemptUidFromNwFilterRange([Landroid/net/UidRangeParcel;)V

    .line 2296
    .line 2297
    .line 2298
    goto/16 :goto_3

    .line 2299
    .line 2300
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2301
    .line 2302
    .line 2303
    move-result v1

    .line 2304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2305
    .line 2306
    .line 2307
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    .line 2308
    .line 2309
    .line 2310
    goto/16 :goto_3

    .line 2311
    .line 2312
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2313
    .line 2314
    .line 2315
    move-result v1

    .line 2316
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2317
    .line 2318
    .line 2319
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->addUserToNwFilterRange(I)V

    .line 2320
    .line 2321
    .line 2322
    goto/16 :goto_3

    .line 2323
    .line 2324
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2325
    .line 2326
    .line 2327
    move-result v1

    .line 2328
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2329
    .line 2330
    .line 2331
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    .line 2332
    .line 2333
    .line 2334
    move-result v0

    .line 2335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2336
    .line 2337
    .line 2338
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2339
    .line 2340
    .line 2341
    goto/16 :goto_3

    .line 2342
    .line 2343
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2344
    .line 2345
    .line 2346
    move-result v1

    .line 2347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2348
    .line 2349
    .line 2350
    move-result v3

    .line 2351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2352
    .line 2353
    .line 2354
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    .line 2355
    .line 2356
    .line 2357
    goto/16 :goto_3

    .line 2358
    .line 2359
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2360
    .line 2361
    .line 2362
    move-result v1

    .line 2363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2364
    .line 2365
    .line 2366
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V

    .line 2367
    .line 2368
    .line 2369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2370
    .line 2371
    .line 2372
    goto/16 :goto_3

    .line 2373
    .line 2374
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2375
    .line 2376
    .line 2377
    move-result v1

    .line 2378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2379
    .line 2380
    .line 2381
    move-result v3

    .line 2382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2383
    .line 2384
    .line 2385
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterUdpV6Entry(II)Ljava/lang/String;

    .line 2386
    .line 2387
    .line 2388
    move-result-object v0

    .line 2389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2390
    .line 2391
    .line 2392
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2393
    .line 2394
    .line 2395
    goto/16 :goto_3

    .line 2396
    .line 2397
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2398
    .line 2399
    .line 2400
    move-result v1

    .line 2401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2402
    .line 2403
    .line 2404
    move-result v3

    .line 2405
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2406
    .line 2407
    .line 2408
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV6Entry(II)Ljava/lang/String;

    .line 2409
    .line 2410
    .line 2411
    move-result-object v0

    .line 2412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2413
    .line 2414
    .line 2415
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2416
    .line 2417
    .line 2418
    goto/16 :goto_3

    .line 2419
    .line 2420
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2421
    .line 2422
    .line 2423
    move-result v1

    .line 2424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2425
    .line 2426
    .line 2427
    move-result v3

    .line 2428
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2429
    .line 2430
    .line 2431
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV4Entry(II)Ljava/lang/String;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v0

    .line 2435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2436
    .line 2437
    .line 2438
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2439
    .line 2440
    .line 2441
    goto/16 :goto_3

    .line 2442
    .line 2443
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2444
    .line 2445
    .line 2446
    move-result v1

    .line 2447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2448
    .line 2449
    .line 2450
    move-result v3

    .line 2451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2452
    .line 2453
    .line 2454
    move-result v4

    .line 2455
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2456
    .line 2457
    .line 2458
    move-result v5

    .line 2459
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2460
    .line 2461
    .line 2462
    invoke-interface {p0, v1, v3, v4, v5}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 2463
    .line 2464
    .line 2465
    goto/16 :goto_3

    .line 2466
    .line 2467
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2468
    .line 2469
    .line 2470
    move-result v1

    .line 2471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2472
    .line 2473
    .line 2474
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableIpOptionModification(Z)V

    .line 2475
    .line 2476
    .line 2477
    goto/16 :goto_3

    .line 2478
    .line 2479
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2480
    .line 2481
    .line 2482
    move-result v1

    .line 2483
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 2484
    .line 2485
    .line 2486
    move-result-object v3

    .line 2487
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2488
    .line 2489
    .line 2490
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->runKnoxRulesCommand(I[Ljava/lang/String;)Ljava/lang/String;

    .line 2491
    .line 2492
    .line 2493
    move-result-object v0

    .line 2494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2495
    .line 2496
    .line 2497
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2498
    .line 2499
    .line 2500
    goto/16 :goto_3

    .line 2501
    .line 2502
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2503
    .line 2504
    .line 2505
    move-result v1

    .line 2506
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 2507
    .line 2508
    .line 2509
    move-result-object v3

    .line 2510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2511
    .line 2512
    .line 2513
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->updateDomainFilterCache(I[Ljava/lang/String;)V

    .line 2514
    .line 2515
    .line 2516
    goto/16 :goto_3

    .line 2517
    .line 2518
    :pswitch_80
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterDomainFilterEventListener()V

    .line 2519
    .line 2520
    .line 2521
    goto/16 :goto_3

    .line 2522
    .line 2523
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2524
    .line 2525
    .line 2526
    move-result-object v1

    .line 2527
    if-nez v1, :cond_4

    .line 2528
    .line 2529
    goto :goto_1

    .line 2530
    :cond_4
    const-string/jumbo v3, "com.android.internal.net.IDomainFilterEventListener"

    .line 2531
    .line 2532
    .line 2533
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 2534
    .line 2535
    .line 2536
    move-result-object v3

    .line 2537
    if-eqz v3, :cond_5

    .line 2538
    .line 2539
    instance-of v4, v3, Lcom/android/internal/net/IDomainFilterEventListener;

    .line 2540
    .line 2541
    if-eqz v4, :cond_5

    .line 2542
    .line 2543
    check-cast v3, Lcom/android/internal/net/IDomainFilterEventListener;

    .line 2544
    .line 2545
    goto :goto_1

    .line 2546
    :cond_5
    new-instance v3, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;

    .line 2547
    .line 2548
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2549
    .line 2550
    .line 2551
    iput-object v1, v3, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2552
    .line 2553
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2554
    .line 2555
    .line 2556
    invoke-interface {p0, v3}, Lcom/android/internal/net/IOemNetd;->registerDomainFilterEventListener(Lcom/android/internal/net/IDomainFilterEventListener;)V

    .line 2557
    .line 2558
    .line 2559
    goto/16 :goto_3

    .line 2560
    .line 2561
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2562
    .line 2563
    .line 2564
    move-result v1

    .line 2565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2566
    .line 2567
    .line 2568
    move-result v3

    .line 2569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2570
    .line 2571
    .line 2572
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnBlockUserWideDnsQuery(ZI)V

    .line 2573
    .line 2574
    .line 2575
    goto/16 :goto_3

    .line 2576
    .line 2577
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2578
    .line 2579
    .line 2580
    move-result v1

    .line 2581
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2582
    .line 2583
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2584
    .line 2585
    .line 2586
    move-result-object v3

    .line 2587
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2588
    .line 2589
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2590
    .line 2591
    .line 2592
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 2593
    .line 2594
    .line 2595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2596
    .line 2597
    .line 2598
    goto/16 :goto_3

    .line 2599
    .line 2600
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2601
    .line 2602
    .line 2603
    move-result v1

    .line 2604
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2605
    .line 2606
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2607
    .line 2608
    .line 2609
    move-result-object v3

    .line 2610
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2611
    .line 2612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2613
    .line 2614
    .line 2615
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 2616
    .line 2617
    .line 2618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2619
    .line 2620
    .line 2621
    goto/16 :goto_3

    .line 2622
    .line 2623
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2624
    .line 2625
    .line 2626
    move-result v1

    .line 2627
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2628
    .line 2629
    .line 2630
    move-result v3

    .line 2631
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2632
    .line 2633
    .line 2634
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setKnoxVpn(IZ)V

    .line 2635
    .line 2636
    .line 2637
    goto/16 :goto_3

    .line 2638
    .line 2639
    :pswitch_86
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterNetdTetherEventListener()V

    .line 2640
    .line 2641
    .line 2642
    goto/16 :goto_3

    .line 2643
    .line 2644
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2645
    .line 2646
    .line 2647
    move-result-object v1

    .line 2648
    if-nez v1, :cond_6

    .line 2649
    .line 2650
    goto :goto_2

    .line 2651
    :cond_6
    const-string/jumbo v3, "com.android.internal.net.INetdTetherEventListener"

    .line 2652
    .line 2653
    .line 2654
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 2655
    .line 2656
    .line 2657
    move-result-object v3

    .line 2658
    if-eqz v3, :cond_7

    .line 2659
    .line 2660
    instance-of v4, v3, Lcom/android/internal/net/INetdTetherEventListener;

    .line 2661
    .line 2662
    if-eqz v4, :cond_7

    .line 2663
    .line 2664
    check-cast v3, Lcom/android/internal/net/INetdTetherEventListener;

    .line 2665
    .line 2666
    goto :goto_2

    .line 2667
    :cond_7
    new-instance v3, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;

    .line 2668
    .line 2669
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2670
    .line 2671
    .line 2672
    iput-object v1, v3, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2673
    .line 2674
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2675
    .line 2676
    .line 2677
    invoke-interface {p0, v3}, Lcom/android/internal/net/IOemNetd;->registerNetdTetherEventListener(Lcom/android/internal/net/INetdTetherEventListener;)V

    .line 2678
    .line 2679
    .line 2680
    goto/16 :goto_3

    .line 2681
    .line 2682
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2683
    .line 2684
    .line 2685
    move-result v1

    .line 2686
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2687
    .line 2688
    .line 2689
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableKnoxVpnFlagForTether(Z)V

    .line 2690
    .line 2691
    .line 2692
    goto/16 :goto_3

    .line 2693
    .line 2694
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2695
    .line 2696
    .line 2697
    move-result v1

    .line 2698
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2699
    .line 2700
    .line 2701
    move-result-object v3

    .line 2702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2703
    .line 2704
    .line 2705
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 2706
    .line 2707
    .line 2708
    move-result-object v0

    .line 2709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2710
    .line 2711
    .line 2712
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2713
    .line 2714
    .line 2715
    goto/16 :goto_3

    .line 2716
    .line 2717
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2718
    .line 2719
    .line 2720
    move-result v1

    .line 2721
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2722
    .line 2723
    .line 2724
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->clearEbpfMap(I)V

    .line 2725
    .line 2726
    .line 2727
    goto/16 :goto_3

    .line 2728
    .line 2729
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2730
    .line 2731
    .line 2732
    move-result-object v1

    .line 2733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2734
    .line 2735
    .line 2736
    move-result v3

    .line 2737
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2738
    .line 2739
    .line 2740
    move-result v4

    .line 2741
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2742
    .line 2743
    .line 2744
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateInputFilterAppWideRules([III)V

    .line 2745
    .line 2746
    .line 2747
    goto/16 :goto_3

    .line 2748
    .line 2749
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2750
    .line 2751
    .line 2752
    move-result-object v1

    .line 2753
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2754
    .line 2755
    .line 2756
    move-result v3

    .line 2757
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2758
    .line 2759
    .line 2760
    move-result v4

    .line 2761
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2762
    .line 2763
    .line 2764
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateInputFilterUserWideRules([III)V

    .line 2765
    .line 2766
    .line 2767
    goto/16 :goto_3

    .line 2768
    .line 2769
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2770
    .line 2771
    .line 2772
    move-result v1

    .line 2773
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2774
    .line 2775
    .line 2776
    move-result v3

    .line 2777
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2778
    .line 2779
    .line 2780
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->updateInputFilterExemptRules(II)V

    .line 2781
    .line 2782
    .line 2783
    goto/16 :goto_3

    .line 2784
    .line 2785
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2786
    .line 2787
    .line 2788
    move-result v1

    .line 2789
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2790
    .line 2791
    .line 2792
    move-result v3

    .line 2793
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2794
    .line 2795
    .line 2796
    move-result v4

    .line 2797
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2798
    .line 2799
    .line 2800
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setNetworkInfo(IZI)V

    .line 2801
    .line 2802
    .line 2803
    goto/16 :goto_3

    .line 2804
    .line 2805
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2806
    .line 2807
    .line 2808
    move-result-object v1

    .line 2809
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2810
    .line 2811
    .line 2812
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->knoxVpnInsertUidForDnsAuthorization([I)V

    .line 2813
    .line 2814
    .line 2815
    goto/16 :goto_3

    .line 2816
    .line 2817
    :pswitch_90
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveUidFromDnsAuthorization()V

    .line 2818
    .line 2819
    .line 2820
    goto/16 :goto_3

    .line 2821
    .line 2822
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2823
    .line 2824
    .line 2825
    move-result v1

    .line 2826
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2827
    .line 2828
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2829
    .line 2830
    .line 2831
    move-result-object v3

    .line 2832
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2833
    .line 2834
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2835
    .line 2836
    .line 2837
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V

    .line 2838
    .line 2839
    .line 2840
    goto/16 :goto_3

    .line 2841
    .line 2842
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2843
    .line 2844
    .line 2845
    move-result v1

    .line 2846
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2847
    .line 2848
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2849
    .line 2850
    .line 2851
    move-result-object v3

    .line 2852
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2853
    .line 2854
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2855
    .line 2856
    .line 2857
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V

    .line 2858
    .line 2859
    .line 2860
    goto :goto_3

    .line 2861
    :pswitch_93
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnDestroyBlockedKnoxNetwork()V

    .line 2862
    .line 2863
    .line 2864
    goto :goto_3

    .line 2865
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2866
    .line 2867
    .line 2868
    move-result v1

    .line 2869
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2870
    .line 2871
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2872
    .line 2873
    .line 2874
    move-result-object v3

    .line 2875
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2876
    .line 2877
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2878
    .line 2879
    .line 2880
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    .line 2881
    .line 2882
    .line 2883
    goto :goto_3

    .line 2884
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2885
    .line 2886
    .line 2887
    move-result v1

    .line 2888
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2889
    .line 2890
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2891
    .line 2892
    .line 2893
    move-result-object v3

    .line 2894
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2895
    .line 2896
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2897
    .line 2898
    .line 2899
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    .line 2900
    .line 2901
    .line 2902
    goto :goto_3

    .line 2903
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2904
    .line 2905
    .line 2906
    move-result v1

    .line 2907
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2908
    .line 2909
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2910
    .line 2911
    .line 2912
    move-result-object v3

    .line 2913
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2914
    .line 2915
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2916
    .line 2917
    .line 2918
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    .line 2919
    .line 2920
    .line 2921
    goto :goto_3

    .line 2922
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2923
    .line 2924
    .line 2925
    move-result v1

    .line 2926
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2927
    .line 2928
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2929
    .line 2930
    .line 2931
    move-result-object v3

    .line 2932
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 2933
    .line 2934
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2935
    .line 2936
    .line 2937
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnBlockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    .line 2938
    .line 2939
    .line 2940
    goto :goto_3

    .line 2941
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2942
    .line 2943
    .line 2944
    move-result-object v1

    .line 2945
    invoke-static {v1}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    .line 2946
    .line 2947
    .line 2948
    move-result-object v1

    .line 2949
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2950
    .line 2951
    .line 2952
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->registerOemUnsolicitedEventListener(Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;)V

    .line 2953
    .line 2954
    .line 2955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2956
    .line 2957
    .line 2958
    goto :goto_3

    .line 2959
    :pswitch_99
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->isAlive()Z

    .line 2960
    .line 2961
    .line 2962
    move-result v0

    .line 2963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2964
    .line 2965
    .line 2966
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2967
    .line 2968
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
