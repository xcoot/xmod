.class public abstract Landroid/net/IDnsResolver$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/IDnsResolver;


# static fields
.field static final TRANSACTION_createNetworkCache:I = 0x8

.field static final TRANSACTION_destroyNetworkCache:I = 0x9

.field static final TRANSACTION_flushNetworkCache:I = 0xb

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getPrefix64:I = 0x7

.field static final TRANSACTION_getResolverInfo:I = 0x4

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_registerEventListener:I = 0x2

.field static final TRANSACTION_registerUnsolicitedEventListener:I = 0xd

.field static final TRANSACTION_setLogSeverity:I = 0xa

.field static final TRANSACTION_setPrefix64:I = 0xc

.field static final TRANSACTION_setResolverConfiguration:I = 0x3

.field static final TRANSACTION_setResolverOptions:I = 0xe

.field static final TRANSACTION_startPrefix64Discovery:I = 0x5

.field static final TRANSACTION_stopPrefix64Discovery:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/net/IDnsResolver;->DESCRIPTOR:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IDnsResolver;
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
    sget-object v0, Landroid/net/IDnsResolver;->DESCRIPTOR:Ljava/lang/String;

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
    instance-of v1, v0, Landroid/net/IDnsResolver;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/net/IDnsResolver;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/IDnsResolver$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I

    .line 27
    .line 28
    const-string v1, "-1"

    .line 29
    .line 30
    iput-object v1, v0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p0, v0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 33
    .line 34
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v8, p3

    .line 8
    .line 9
    sget-object v3, Landroid/net/IDnsResolver;->DESCRIPTOR:Ljava/lang/String;

    .line 10
    .line 11
    const v4, 0xffffff

    .line 12
    .line 13
    .line 14
    const/4 v9, 0x1

    .line 15
    if-lt v1, v9, :cond_0

    .line 16
    .line 17
    if-gt v1, v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const v5, 0x5f4e5446

    .line 23
    .line 24
    .line 25
    if-ne v1, v5, :cond_1

    .line 26
    .line 27
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v9

    .line 31
    :cond_1
    if-ne v1, v4, :cond_2

    .line 32
    .line 33
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    .line 35
    .line 36
    invoke-interface/range {p0 .. p0}, Landroid/net/IDnsResolver;->getInterfaceVersion()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    return v9

    .line 44
    :cond_2
    const v3, 0xfffffe

    .line 45
    .line 46
    .line 47
    if-ne v1, v3, :cond_3

    .line 48
    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    .line 51
    .line 52
    invoke-interface/range {p0 .. p0}, Landroid/net/IDnsResolver;->getInterfaceHash()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return v9

    .line 60
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    return v0

    .line 68
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    sget-object v3, Landroid/net/ResolverOptionsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Landroid/net/ResolverOptionsParcel;

    .line 79
    .line 80
    invoke-interface {v0, v1, v2}, Landroid/net/IDnsResolver;->setResolverOptions(ILandroid/net/ResolverOptionsParcel;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_7

    .line 87
    .line 88
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->registerUnsolicitedEventListener(Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v0, v1, v2}, Landroid/net/IDnsResolver;->setPrefix64(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->flushNetworkCache(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_7

    .line 131
    .line 132
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->setLogSeverity(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_7

    .line 143
    .line 144
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->destroyNetworkCache(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_7

    .line 155
    .line 156
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->createNetworkCache(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_7

    .line 167
    .line 168
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->getPrefix64(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_7

    .line 183
    .line 184
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->stopPrefix64Discovery(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_7

    .line 195
    .line 196
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->startPrefix64Discovery(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_7

    .line 207
    .line 208
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    const/4 v4, 0x0

    .line 217
    if-gez v3, :cond_4

    .line 218
    .line 219
    move-object v10, v4

    .line 220
    goto :goto_0

    .line 221
    :cond_4
    new-array v3, v3, [Ljava/lang/String;

    .line 222
    .line 223
    move-object v10, v3

    .line 224
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-gez v3, :cond_5

    .line 229
    .line 230
    move-object v11, v4

    .line 231
    goto :goto_1

    .line 232
    :cond_5
    new-array v3, v3, [Ljava/lang/String;

    .line 233
    .line 234
    move-object v11, v3

    .line 235
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-gez v3, :cond_6

    .line 240
    .line 241
    move-object v12, v4

    .line 242
    goto :goto_2

    .line 243
    :cond_6
    new-array v3, v3, [Ljava/lang/String;

    .line 244
    .line 245
    move-object v12, v3

    .line 246
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-gez v3, :cond_7

    .line 251
    .line 252
    move-object v13, v4

    .line 253
    goto :goto_3

    .line 254
    :cond_7
    new-array v3, v3, [I

    .line 255
    .line 256
    move-object v13, v3

    .line 257
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-gez v3, :cond_8

    .line 262
    .line 263
    move-object v14, v4

    .line 264
    goto :goto_4

    .line 265
    :cond_8
    new-array v3, v3, [I

    .line 266
    .line 267
    move-object v14, v3

    .line 268
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-gez v2, :cond_9

    .line 273
    .line 274
    :goto_5
    move-object v15, v4

    .line 275
    goto :goto_6

    .line 276
    :cond_9
    new-array v4, v2, [I

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :goto_6
    move-object/from16 v0, p0

    .line 280
    .line 281
    move-object v2, v10

    .line 282
    move-object v3, v11

    .line 283
    move-object v4, v12

    .line 284
    move-object v5, v13

    .line 285
    move-object v6, v14

    .line 286
    move-object v7, v15

    .line 287
    invoke-interface/range {v0 .. v7}, Landroid/net/IDnsResolver;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v8, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v8, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 309
    .line 310
    .line 311
    goto :goto_7

    .line 312
    :pswitch_b
    sget-object v1, Landroid/net/ResolverParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 313
    .line 314
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    check-cast v1, Landroid/net/ResolverParamsParcel;

    .line 319
    .line 320
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    .line 325
    .line 326
    goto :goto_7

    .line 327
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-static {v1}, Landroid/net/metrics/INetdEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/metrics/INetdEventListener;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->registerEventListener(Landroid/net/metrics/INetdEventListener;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    .line 340
    .line 341
    goto :goto_7

    .line 342
    :pswitch_d
    invoke-interface/range {p0 .. p0}, Landroid/net/IDnsResolver;->isAlive()Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 350
    .line 351
    .line 352
    :goto_7
    return v9

    .line 353
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
