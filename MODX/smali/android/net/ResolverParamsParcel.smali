.class public Landroid/net/ResolverParamsParcel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public baseTimeoutMsec:I

.field public caCertificate:Ljava/lang/String;

.field public domains:[Ljava/lang/String;

.field public maxSamples:I

.field public minSamples:I

.field public netId:I

.field public resolverOptions:Landroid/net/ResolverOptionsParcel;

.field public retryCount:I

.field public sampleValiditySeconds:I

.field public servers:[Ljava/lang/String;

.field public successThreshold:I

.field public tlsConnectTimeoutMs:I

.field public tlsFingerprints:[Ljava/lang/String;

.field public tlsName:Ljava/lang/String;

.field public tlsServers:[Ljava/lang/String;

.field public transportTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ResolverParamsParcel$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/net/ResolverParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/ResolverParamsParcel;->netId:I

    .line 7
    iput v0, p0, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    .line 9
    iput v0, p0, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 11
    iput v0, p0, Landroid/net/ResolverParamsParcel;->minSamples:I

    .line 13
    iput v0, p0, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 15
    iput v0, p0, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    .line 17
    iput v0, p0, Landroid/net/ResolverParamsParcel;->retryCount:I

    .line 19
    new-array v1, v0, [Ljava/lang/String;

    .line 21
    iput-object v1, p0, Landroid/net/ResolverParamsParcel;->tlsFingerprints:[Ljava/lang/String;

    .line 23
    const-string v1, ""

    .line 25
    iput-object v1, p0, Landroid/net/ResolverParamsParcel;->caCertificate:Ljava/lang/String;

    .line 27
    iput v0, p0, Landroid/net/ResolverParamsParcel;->tlsConnectTimeoutMs:I

    .line 29
    new-array v0, v0, [I

    .line 31
    iput-object v0, p0, Landroid/net/ResolverParamsParcel;->transportTypes:[I

    .line 33
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 2
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;

    invoke-direct {p0, v0}, Landroid/net/ResolverParamsParcel;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const-string v3, "Overflow in the size of parcelable"

    .line 12
    const v4, 0x7fffffff

    .line 15
    if-lt v1, v2, :cond_21

    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    if-lt v2, v1, :cond_1

    .line 24
    sub-int/2addr v4, v1

    .line 25
    if-gt v0, v4, :cond_0

    .line 27
    :goto_0
    add-int/2addr v0, v1

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 34
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0

    .line 38
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 41
    move-result v2

    .line 42
    iput v2, p0, Landroid/net/ResolverParamsParcel;->netId:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 47
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    sub-int/2addr v2, v0

    .line 49
    if-lt v2, v1, :cond_3

    .line 51
    sub-int/2addr v4, v1

    .line 52
    if-gt v0, v4, :cond_2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 57
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0

    .line 61
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 64
    move-result v2

    .line 65
    iput v2, p0, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 70
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    sub-int/2addr v2, v0

    .line 72
    if-lt v2, v1, :cond_5

    .line 74
    sub-int/2addr v4, v1

    .line 75
    if-gt v0, v4, :cond_4

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 80
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0

    .line 84
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 87
    move-result v2

    .line 88
    iput v2, p0, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 93
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    sub-int/2addr v2, v0

    .line 95
    if-lt v2, v1, :cond_7

    .line 97
    sub-int/2addr v4, v1

    .line 98
    if-gt v0, v4, :cond_6

    .line 100
    goto :goto_0

    .line 101
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 103
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0

    .line 107
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 110
    move-result v2

    .line 111
    iput v2, p0, Landroid/net/ResolverParamsParcel;->minSamples:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 116
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    sub-int/2addr v2, v0

    .line 118
    if-lt v2, v1, :cond_9

    .line 120
    sub-int/2addr v4, v1

    .line 121
    if-gt v0, v4, :cond_8

    .line 123
    goto :goto_0

    .line 124
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 126
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p0

    .line 130
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 133
    move-result v2

    .line 134
    iput v2, p0, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 139
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    sub-int/2addr v2, v0

    .line 141
    if-lt v2, v1, :cond_b

    .line 143
    sub-int/2addr v4, v1

    .line 144
    if-gt v0, v4, :cond_a

    .line 146
    goto :goto_0

    .line 147
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 149
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 152
    throw p0

    .line 153
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 156
    move-result v2

    .line 157
    iput v2, p0, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 162
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    sub-int/2addr v2, v0

    .line 164
    if-lt v2, v1, :cond_d

    .line 166
    sub-int/2addr v4, v1

    .line 167
    if-gt v0, v4, :cond_c

    .line 169
    goto/16 :goto_0

    .line 171
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 173
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p0

    .line 177
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 180
    move-result v2

    .line 181
    iput v2, p0, Landroid/net/ResolverParamsParcel;->retryCount:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 186
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 187
    sub-int/2addr v2, v0

    .line 188
    if-lt v2, v1, :cond_f

    .line 190
    sub-int/2addr v4, v1

    .line 191
    if-gt v0, v4, :cond_e

    .line 193
    goto/16 :goto_0

    .line 195
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 197
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 200
    throw p0

    .line 201
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 204
    move-result-object v2

    .line 205
    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 210
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 211
    sub-int/2addr v2, v0

    .line 212
    if-lt v2, v1, :cond_11

    .line 214
    sub-int/2addr v4, v1

    .line 215
    if-gt v0, v4, :cond_10

    .line 217
    goto/16 :goto_0

    .line 219
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 221
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 224
    throw p0

    .line 225
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 228
    move-result-object v2

    .line 229
    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 234
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 235
    sub-int/2addr v2, v0

    .line 236
    if-lt v2, v1, :cond_13

    .line 238
    sub-int/2addr v4, v1

    .line 239
    if-gt v0, v4, :cond_12

    .line 241
    goto/16 :goto_0

    .line 243
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 245
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 248
    throw p0

    .line 249
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 252
    move-result-object v2

    .line 253
    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 258
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 259
    sub-int/2addr v2, v0

    .line 260
    if-lt v2, v1, :cond_15

    .line 262
    sub-int/2addr v4, v1

    .line 263
    if-gt v0, v4, :cond_14

    .line 265
    goto/16 :goto_0

    .line 267
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 269
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 272
    throw p0

    .line 273
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 276
    move-result-object v2

    .line 277
    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 282
    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 283
    sub-int/2addr v2, v0

    .line 284
    if-lt v2, v1, :cond_17

    .line 286
    sub-int/2addr v4, v1

    .line 287
    if-gt v0, v4, :cond_16

    .line 289
    goto/16 :goto_0

    .line 291
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 293
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 296
    throw p0

    .line 297
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 300
    move-result-object v2

    .line 301
    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->tlsFingerprints:[Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 306
    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 307
    sub-int/2addr v2, v0

    .line 308
    if-lt v2, v1, :cond_19

    .line 310
    sub-int/2addr v4, v1

    .line 311
    if-gt v0, v4, :cond_18

    .line 313
    goto/16 :goto_0

    .line 315
    :cond_18
    new-instance p0, Landroid/os/BadParcelableException;

    .line 317
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 320
    throw p0

    .line 321
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 324
    move-result-object v2

    .line 325
    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->caCertificate:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 330
    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 331
    sub-int/2addr v2, v0

    .line 332
    if-lt v2, v1, :cond_1b

    .line 334
    sub-int/2addr v4, v1

    .line 335
    if-gt v0, v4, :cond_1a

    .line 337
    goto/16 :goto_0

    .line 339
    :cond_1a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 341
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 344
    throw p0

    .line 345
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 348
    move-result v2

    .line 349
    iput v2, p0, Landroid/net/ResolverParamsParcel;->tlsConnectTimeoutMs:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 354
    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 355
    sub-int/2addr v2, v0

    .line 356
    if-lt v2, v1, :cond_1d

    .line 358
    sub-int/2addr v4, v1

    .line 359
    if-gt v0, v4, :cond_1c

    .line 361
    goto/16 :goto_0

    .line 363
    :cond_1c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 365
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 368
    throw p0

    .line 369
    :cond_1d
    :try_start_f
    sget-object v2, Landroid/net/ResolverOptionsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 371
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 374
    move-result-object v2

    .line 375
    check-cast v2, Landroid/net/ResolverOptionsParcel;

    .line 377
    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 382
    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 383
    sub-int/2addr v2, v0

    .line 384
    if-lt v2, v1, :cond_1f

    .line 386
    sub-int/2addr v4, v1

    .line 387
    if-gt v0, v4, :cond_1e

    .line 389
    goto/16 :goto_0

    .line 391
    :cond_1e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 393
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 396
    throw p0

    .line 397
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 400
    move-result-object v2

    .line 401
    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->transportTypes:[I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 403
    sub-int/2addr v4, v1

    .line 404
    if-gt v0, v4, :cond_20

    .line 406
    add-int/2addr v0, v1

    .line 407
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 410
    return-void

    .line 411
    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    .line 413
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 416
    throw p0

    .line 417
    :catchall_0
    move-exception p0

    .line 418
    goto :goto_1

    .line 419
    :cond_21
    :try_start_11
    new-instance p0, Landroid/os/BadParcelableException;

    .line 421
    const-string v2, "Parcelable too small"

    .line 423
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 426
    throw p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 427
    :goto_1
    sub-int/2addr v4, v1

    .line 428
    if-le v0, v4, :cond_22

    .line 430
    new-instance p0, Landroid/os/BadParcelableException;

    .line 432
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 435
    throw p0

    .line 436
    :cond_22
    add-int/2addr v0, v1

    .line 437
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 440
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v1, p0, Landroid/net/ResolverParamsParcel;->netId:I

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v1, p0, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget v1, p0, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget v1, p0, Landroid/net/ResolverParamsParcel;->minSamples:I

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget v1, p0, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v1, p0, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v1, p0, Landroid/net/ResolverParamsParcel;->retryCount:I

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->tlsFingerprints:[Ljava/lang/String;

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->caCertificate:Ljava/lang/String;

    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v1, p0, Landroid/net/ResolverParamsParcel;->tlsConnectTimeoutMs:I

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;

    .line 81
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 84
    iget-object p0, p0, Landroid/net/ResolverParamsParcel;->transportTypes:[I

    .line 86
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 92
    move-result p0

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    invoke-static {p0, v0, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 99
    return-void
.end method
