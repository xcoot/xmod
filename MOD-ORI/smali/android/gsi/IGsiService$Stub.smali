.class public abstract Landroid/gsi/IGsiService$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/gsi/IGsiService;


# static fields
.field static final TRANSACTION_cancelGsiInstall:I = 0x8

.field static final TRANSACTION_closeInstall:I = 0x13

.field static final TRANSACTION_closePartition:I = 0x15

.field static final TRANSACTION_commitGsiChunkFromAshmem:I = 0x4

.field static final TRANSACTION_commitGsiChunkFromStream:I = 0x1

.field static final TRANSACTION_createPartition:I = 0x14

.field static final TRANSACTION_disableGsi:I = 0xc

.field static final TRANSACTION_dumpDeviceMapperDevices:I = 0x18

.field static final TRANSACTION_enableGsi:I = 0x5

.field static final TRANSACTION_enableGsiAsync:I = 0x6

.field static final TRANSACTION_getActiveDsuSlot:I = 0xf

.field static final TRANSACTION_getAvbPublicKey:I = 0x19

.field static final TRANSACTION_getInstallProgress:I = 0x2

.field static final TRANSACTION_getInstalledDsuSlots:I = 0x11

.field static final TRANSACTION_getInstalledGsiImageDir:I = 0x10

.field static final TRANSACTION_isGsiEnabled:I = 0x7

.field static final TRANSACTION_isGsiInstallInProgress:I = 0x9

.field static final TRANSACTION_isGsiInstalled:I = 0xd

.field static final TRANSACTION_isGsiRunning:I = 0xe

.field static final TRANSACTION_openImageService:I = 0x17

.field static final TRANSACTION_openInstall:I = 0x12

.field static final TRANSACTION_removeGsi:I = 0xa

.field static final TRANSACTION_removeGsiAsync:I = 0xb

.field static final TRANSACTION_setGsiAshmem:I = 0x3

.field static final TRANSACTION_suggestScratchSize:I = 0x1a

.field static final TRANSACTION_zeroPartition:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.gsi.IGsiService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;
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
    const-string v0, "android.gsi.IGsiService"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/gsi/IGsiService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/gsi/IGsiService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/gsi/IGsiService$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p0, v0, Landroid/gsi/IGsiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 26
    .line 27
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "android.gsi.IGsiService"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :pswitch_0
    invoke-interface {p0}, Landroid/gsi/IGsiService;->suggestScratchSize()J

    .line 32
    .line 33
    .line 34
    move-result-wide p0

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :pswitch_1
    new-instance p1, Landroid/gsi/AvbPublicKey;

    .line 44
    .line 45
    invoke-direct {p1}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 49
    .line 50
    .line 51
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :pswitch_2
    invoke-interface {p0}, Landroid/gsi/IGsiService;->dumpDeviceMapperDevices()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 83
    .line 84
    .line 85
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->openImageService(Ljava/lang/String;)Landroid/gsi/IImageService;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    .line 103
    .line 104
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->zeroPartition(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :pswitch_5
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closePartition()I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 137
    .line 138
    .line 139
    move-result p4

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    .line 142
    .line 143
    invoke-interface {p0, p1, v2, v3, p4}, Landroid/gsi/IGsiService;->createPartition(Ljava/lang/String;JZ)I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :pswitch_7
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closeInstall()I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    .line 173
    .line 174
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->openInstall(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :pswitch_9
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstalledDsuSlots()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :pswitch_a
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstalledGsiImageDir()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :pswitch_b
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getActiveDsuSlot()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :pswitch_c
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiRunning()Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :pswitch_d
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiInstalled()Z

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :pswitch_e
    invoke-interface {p0}, Landroid/gsi/IGsiService;->disableGsi()Z

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-static {p1}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    .line 268
    .line 269
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :pswitch_10
    invoke-interface {p0}, Landroid/gsi/IGsiService;->removeGsi()Z

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :pswitch_11
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiInstallInProgress()Z

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :pswitch_12
    invoke-interface {p0}, Landroid/gsi/IGsiService;->cancelGsiInstall()Z

    .line 299
    .line 300
    .line 301
    move-result p0

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :pswitch_13
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiEnabled()Z

    .line 311
    .line 312
    .line 313
    move-result p0

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p3

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 331
    .line 332
    .line 333
    move-result-object p4

    .line 334
    invoke-static {p4}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    .line 335
    .line 336
    .line 337
    move-result-object p4

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    .line 340
    .line 341
    invoke-interface {p0, p1, p3, p4}, Landroid/gsi/IGsiService;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    .line 342
    .line 343
    .line 344
    goto :goto_0

    .line 345
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p4

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    .line 355
    .line 356
    invoke-interface {p0, p1, p4}, Landroid/gsi/IGsiService;->enableGsi(ZLjava/lang/String;)I

    .line 357
    .line 358
    .line 359
    move-result p0

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    .line 365
    .line 366
    goto :goto_0

    .line 367
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 368
    .line 369
    .line 370
    move-result-wide v2

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    .line 373
    .line 374
    invoke-interface {p0, v2, v3}, Landroid/gsi/IGsiService;->commitGsiChunkFromAshmem(J)Z

    .line 375
    .line 376
    .line 377
    move-result p0

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 382
    .line 383
    .line 384
    goto :goto_0

    .line 385
    :pswitch_17
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 386
    .line 387
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 392
    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 394
    .line 395
    .line 396
    move-result-wide v2

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    .line 399
    .line 400
    invoke-interface {p0, p1, v2, v3}, Landroid/gsi/IGsiService;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    .line 401
    .line 402
    .line 403
    move-result p0

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 408
    .line 409
    .line 410
    goto :goto_0

    .line 411
    :pswitch_18
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstallProgress()Landroid/gsi/GsiProgress;

    .line 412
    .line 413
    .line 414
    move-result-object p0

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 419
    .line 420
    .line 421
    goto :goto_0

    .line 422
    :pswitch_19
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 423
    .line 424
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 429
    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 431
    .line 432
    .line 433
    move-result-wide v2

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    .line 436
    .line 437
    invoke-interface {p0, p1, v2, v3}, Landroid/gsi/IGsiService;->commitGsiChunkFromStream(Landroid/os/ParcelFileDescriptor;J)Z

    .line 438
    .line 439
    .line 440
    move-result p0

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 445
    .line 446
    .line 447
    :goto_0
    return v1

    .line 448
    nop

    .line 449
    :pswitch_data_0
    .packed-switch 0x1
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
