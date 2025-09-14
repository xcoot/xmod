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

    .line 2
    .line 3
    .line 4
    const-string v0, "android.gsi.IImageService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IImageService;
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
    const-string v0, "android.gsi.IImageService"

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
    instance-of v1, v0, Landroid/gsi/IImageService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/gsi/IImageService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/gsi/IImageService$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p0, v0, Landroid/gsi/IImageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "android.gsi.IImageService"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->getMappedImageDevice(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->isImageDisabled(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :pswitch_2
    invoke-interface {p0}, Landroid/gsi/IImageService;->removeDisabledImages()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    .line 83
    .line 84
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->disableImage(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :pswitch_4
    invoke-interface {p0}, Landroid/gsi/IImageService;->removeAllImages()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    .line 110
    .line 111
    invoke-interface {p0, p1, v2, v3}, Landroid/gsi/IImageService;->zeroFillNewImage(Ljava/lang/String;J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_0

    .line 118
    .line 119
    :pswitch_6
    invoke-interface {p0}, Landroid/gsi/IImageService;->getAllBackingImages()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-instance p4, Landroid/gsi/AvbPublicKey;

    .line 136
    .line 137
    invoke-direct {p4}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    .line 142
    .line 143
    invoke-interface {p0, p1, p4}, Landroid/gsi/IImageService;->getAvbPublicKey(Ljava/lang/String;Landroid/gsi/AvbPublicKey;)I

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
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    .line 164
    .line 165
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->isImageMapped(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    .line 182
    .line 183
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->backingImageExists(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    .line 200
    .line 201
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->unmapImageDevice(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 213
    .line 214
    .line 215
    move-result p4

    .line 216
    new-instance v0, Landroid/gsi/MappedImage;

    .line 217
    .line 218
    invoke-direct {v0}, Landroid/gsi/MappedImage;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    .line 223
    .line 224
    invoke-interface {p0, p1, p4, v0}, Landroid/gsi/IImageService;->mapImageDevice(Ljava/lang/String;ILandroid/gsi/MappedImage;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    .line 240
    .line 241
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->deleteBackingImage(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    .line 246
    .line 247
    goto :goto_0

    .line 248
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 253
    .line 254
    .line 255
    move-result-wide v4

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-static {p1}, Landroid/gsi/IProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IProgressCallback;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    .line 270
    .line 271
    move-object v2, p0

    .line 272
    invoke-interface/range {v2 .. v7}, Landroid/gsi/IImageService;->createBackingImage(Ljava/lang/String;JILandroid/gsi/IProgressCallback;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    .line 277
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
