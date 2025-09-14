.class public abstract Landroid/gsi/IImageService$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/gsi/IImageService;


# static fields
.field static final TRANSACTION_backingImageExists:I = 0x5

.field static final TRANSACTION_createBackingImage:I = 0x1

.field static final TRANSACTION_deleteBackingImage:I = 0x2

.field static final TRANSACTION_disableImage:I = 0xb

.field static final TRANSACTION_getAllBackingImages:I = 0x8

.field static final TRANSACTION_getAvbPublicKey:I = 0x7

.field static final TRANSACTION_getMappedImageDevice:I = 0xe

.field static final TRANSACTION_isImageDisabled:I = 0xd

.field static final TRANSACTION_isImageMapped:I = 0x6

.field static final TRANSACTION_mapImageDevice:I = 0x3

.field static final TRANSACTION_removeAllImages:I = 0xa

.field static final TRANSACTION_removeDisabledImages:I = 0xc

.field static final TRANSACTION_unmapImageDevice:I = 0x4

.field static final TRANSACTION_zeroFillNewImage:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "android.gsi.IImageService"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IImageService;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.gsi.IImageService"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/gsi/IImageService;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/gsi/IImageService;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/gsi/IImageService$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, v0, Landroid/gsi/IImageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "android.gsi.IImageService"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 38
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->getMappedImageDevice(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    goto/16 :goto_0

    .line 50
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 57
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->isImageDisabled(Ljava/lang/String;)Z

    .line 60
    move-result p0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 67
    goto/16 :goto_0

    .line 69
    :pswitch_2
    invoke-interface {p0}, Landroid/gsi/IImageService;->removeDisabledImages()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    goto/16 :goto_0

    .line 77
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 84
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->disableImage(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    goto/16 :goto_0

    .line 92
    :pswitch_4
    invoke-interface {p0}, Landroid/gsi/IImageService;->removeAllImages()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    goto/16 :goto_0

    .line 100
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 107
    move-result-wide v2

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-interface {p0, p1, v2, v3}, Landroid/gsi/IImageService;->zeroFillNewImage(Ljava/lang/String;J)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    goto/16 :goto_0

    .line 119
    :pswitch_6
    invoke-interface {p0}, Landroid/gsi/IImageService;->getAllBackingImages()Ljava/util/List;

    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 129
    goto/16 :goto_0

    .line 131
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    new-instance p4, Landroid/gsi/AvbPublicKey;

    .line 137
    invoke-direct {p4}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-interface {p0, p1, p4}, Landroid/gsi/IImageService;->getAvbPublicKey(Ljava/lang/String;Landroid/gsi/AvbPublicKey;)I

    .line 146
    move-result p0

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 156
    goto/16 :goto_0

    .line 158
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->isImageMapped(Ljava/lang/String;)Z

    .line 168
    move-result p0

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 175
    goto :goto_0

    .line 176
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->backingImageExists(Ljava/lang/String;)Z

    .line 186
    move-result p0

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    goto :goto_0

    .line 194
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->unmapImageDevice(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_0

    .line 208
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 215
    move-result p4

    .line 216
    new-instance v0, Landroid/gsi/MappedImage;

    .line 218
    invoke-direct {v0}, Landroid/gsi/MappedImage;-><init>()V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-interface {p0, p1, p4, v0}, Landroid/gsi/IImageService;->mapImageDevice(Ljava/lang/String;ILandroid/gsi/MappedImage;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 233
    goto :goto_0

    .line 234
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->deleteBackingImage(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto :goto_0

    .line 248
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 255
    move-result-wide v4

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 259
    move-result v6

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 263
    move-result-object p1

    .line 264
    invoke-static {p1}, Landroid/gsi/IProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IProgressCallback;

    .line 267
    move-result-object v7

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    move-object v2, p0

    .line 272
    invoke-interface/range {v2 .. v7}, Landroid/gsi/IImageService;->createBackingImage(Ljava/lang/String;JILandroid/gsi/IProgressCallback;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    :goto_0
    return v1

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
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
