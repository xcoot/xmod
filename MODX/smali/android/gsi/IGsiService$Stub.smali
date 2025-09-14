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

    .line 4
    const-string v0, "android.gsi.IGsiService"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.gsi.IGsiService"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/gsi/IGsiService;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/gsi/IGsiService;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/gsi/IGsiService$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, v0, Landroid/gsi/IGsiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 6
    const v2, 0xffffff

    .line 9
    if-gt p1, v2, :cond_0

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 17
    if-ne p1, v2, :cond_1

    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return v1

    .line 23
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :pswitch_0
    invoke-interface {p0}, Landroid/gsi/IGsiService;->suggestScratchSize()J

    .line 34
    move-result-wide p0

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    goto/16 :goto_0

    .line 43
    :pswitch_1
    new-instance p1, Landroid/gsi/AvbPublicKey;

    .line 45
    invoke-direct {p1}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 51
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    .line 54
    move-result p0

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 64
    goto/16 :goto_0

    .line 66
    :pswitch_2
    invoke-interface {p0}, Landroid/gsi/IGsiService;->dumpDeviceMapperDevices()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    goto/16 :goto_0

    .line 78
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 85
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->openImageService(Ljava/lang/String;)Landroid/gsi/IImageService;

    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 95
    goto/16 :goto_0

    .line 97
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->zeroPartition(Ljava/lang/String;)I

    .line 107
    move-result p0

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    goto/16 :goto_0

    .line 116
    :pswitch_5
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closePartition()I

    .line 119
    move-result p0

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    goto/16 :goto_0

    .line 128
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 135
    move-result-wide v2

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 139
    move-result p4

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-interface {p0, p1, v2, v3, p4}, Landroid/gsi/IGsiService;->createPartition(Ljava/lang/String;JZ)I

    .line 146
    move-result p0

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    goto/16 :goto_0

    .line 155
    :pswitch_7
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closeInstall()I

    .line 158
    move-result p0

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    goto/16 :goto_0

    .line 167
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->openInstall(Ljava/lang/String;)I

    .line 177
    move-result p0

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    goto/16 :goto_0

    .line 186
    :pswitch_9
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstalledDsuSlots()Ljava/util/List;

    .line 189
    move-result-object p0

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 196
    goto/16 :goto_0

    .line 198
    :pswitch_a
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstalledGsiImageDir()Ljava/lang/String;

    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    goto/16 :goto_0

    .line 210
    :pswitch_b
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getActiveDsuSlot()Ljava/lang/String;

    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    goto/16 :goto_0

    .line 222
    :pswitch_c
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiRunning()Z

    .line 225
    move-result p0

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 232
    goto/16 :goto_0

    .line 234
    :pswitch_d
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiInstalled()Z

    .line 237
    move-result p0

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 244
    goto/16 :goto_0

    .line 246
    :pswitch_e
    invoke-interface {p0}, Landroid/gsi/IGsiService;->disableGsi()Z

    .line 249
    move-result p0

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 256
    goto/16 :goto_0

    .line 258
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 261
    move-result-object p1

    .line 262
    invoke-static {p1}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    .line 272
    goto/16 :goto_0

    .line 274
    :pswitch_10
    invoke-interface {p0}, Landroid/gsi/IGsiService;->removeGsi()Z

    .line 277
    move-result p0

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 284
    goto/16 :goto_0

    .line 286
    :pswitch_11
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiInstallInProgress()Z

    .line 289
    move-result p0

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 296
    goto/16 :goto_0

    .line 298
    :pswitch_12
    invoke-interface {p0}, Landroid/gsi/IGsiService;->cancelGsiInstall()Z

    .line 301
    move-result p0

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 308
    goto/16 :goto_0

    .line 310
    :pswitch_13
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiEnabled()Z

    .line 313
    move-result p0

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 320
    goto/16 :goto_0

    .line 322
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 325
    move-result p1

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 329
    move-result-object p3

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 333
    move-result-object p4

    .line 334
    invoke-static {p4}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    .line 337
    move-result-object p4

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-interface {p0, p1, p3, p4}, Landroid/gsi/IGsiService;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    .line 344
    goto :goto_0

    .line 345
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 348
    move-result p1

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 352
    move-result-object p4

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-interface {p0, p1, p4}, Landroid/gsi/IGsiService;->enableGsi(ZLjava/lang/String;)I

    .line 359
    move-result p0

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    goto :goto_0

    .line 367
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 370
    move-result-wide v2

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-interface {p0, v2, v3}, Landroid/gsi/IGsiService;->commitGsiChunkFromAshmem(J)Z

    .line 377
    move-result p0

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 384
    goto :goto_0

    .line 385
    :pswitch_17
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 387
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 390
    move-result-object p1

    .line 391
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 396
    move-result-wide v2

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-interface {p0, p1, v2, v3}, Landroid/gsi/IGsiService;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    .line 403
    move-result p0

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 410
    goto :goto_0

    .line 411
    :pswitch_18
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstallProgress()Landroid/gsi/GsiProgress;

    .line 414
    move-result-object p0

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 421
    goto :goto_0

    .line 422
    :pswitch_19
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 424
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 427
    move-result-object p1

    .line 428
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 433
    move-result-wide v2

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-interface {p0, p1, v2, v3}, Landroid/gsi/IGsiService;->commitGsiChunkFromStream(Landroid/os/ParcelFileDescriptor;J)Z

    .line 440
    move-result p0

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

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
