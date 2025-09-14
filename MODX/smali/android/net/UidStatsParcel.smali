.class public Landroid/net/UidStatsParcel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public cliMacAddr:J

.field public dport:I

.field public firstTxTime:J

.field public ipVersion:I

.field public ipv4Addr:I

.field public ipv4sAddr:I

.field public ipv6Addr1:I

.field public ipv6Addr2:I

.field public ipv6Addr3:I

.field public ipv6Addr4:I

.field public ipv6sAddr1:I

.field public ipv6sAddr2:I

.field public ipv6sAddr3:I

.field public ipv6sAddr4:I

.field public key:I

.field public latestRxTime:J

.field public latestTxTime:J

.field public maxRxInterPacketTime:J

.field public maxRxInterPacketTime2:J

.field public maxRxPacketSize:I

.field public maxTxInterPacketTime:J

.field public maxTxPacketSize:I

.field public minRxPacketSize:I

.field public minTxInterPacketTime:J

.field public minTxPacketSize:I

.field public rxBytes:J

.field public rxPackets:I

.field public sport:I

.field public tcpPackets:I

.field public txBytes:J

.field public txPackets:I

.field public udpPackets:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/UidStatsParcel$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/net/UidStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/UidStatsParcel;->key:I

    .line 7
    iput v0, p0, Landroid/net/UidStatsParcel;->uid:I

    .line 9
    iput v0, p0, Landroid/net/UidStatsParcel;->sport:I

    .line 11
    iput v0, p0, Landroid/net/UidStatsParcel;->dport:I

    .line 13
    iput v0, p0, Landroid/net/UidStatsParcel;->ipVersion:I

    .line 15
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv4Addr:I

    .line 17
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr1:I

    .line 19
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr2:I

    .line 21
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr3:I

    .line 23
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr4:I

    .line 25
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv4sAddr:I

    .line 27
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr1:I

    .line 29
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr2:I

    .line 31
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr3:I

    .line 33
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr4:I

    .line 35
    iput v0, p0, Landroid/net/UidStatsParcel;->tcpPackets:I

    .line 37
    iput v0, p0, Landroid/net/UidStatsParcel;->udpPackets:I

    .line 39
    iput v0, p0, Landroid/net/UidStatsParcel;->rxPackets:I

    .line 41
    iput v0, p0, Landroid/net/UidStatsParcel;->txPackets:I

    .line 43
    const-wide/16 v1, 0x0

    .line 45
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->rxBytes:J

    .line 47
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->txBytes:J

    .line 49
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->firstTxTime:J

    .line 51
    iput v0, p0, Landroid/net/UidStatsParcel;->maxTxPacketSize:I

    .line 53
    iput v0, p0, Landroid/net/UidStatsParcel;->minTxPacketSize:I

    .line 55
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->maxTxInterPacketTime:J

    .line 57
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->minTxInterPacketTime:J

    .line 59
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->latestTxTime:J

    .line 61
    iput v0, p0, Landroid/net/UidStatsParcel;->maxRxPacketSize:I

    .line 63
    iput v0, p0, Landroid/net/UidStatsParcel;->minRxPacketSize:I

    .line 65
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime2:J

    .line 67
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime:J

    .line 69
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->latestRxTime:J

    .line 71
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->cliMacAddr:J

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 7

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
    if-lt v1, v2, :cond_43

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
    iput v2, p0, Landroid/net/UidStatsParcel;->key:I

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
    iput v2, p0, Landroid/net/UidStatsParcel;->uid:I

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
    iput v2, p0, Landroid/net/UidStatsParcel;->sport:I

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
    iput v2, p0, Landroid/net/UidStatsParcel;->dport:I

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
    iput v2, p0, Landroid/net/UidStatsParcel;->ipVersion:I

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
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv4Addr:I

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
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6Addr1:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 204
    move-result v2

    .line 205
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6Addr2:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 228
    move-result v2

    .line 229
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6Addr3:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 252
    move-result v2

    .line 253
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6Addr4:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 276
    move-result v2

    .line 277
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv4sAddr:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 300
    move-result v2

    .line 301
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6sAddr1:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 324
    move-result v2

    .line 325
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6sAddr2:I

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
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6sAddr3:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 372
    move-result v2

    .line 373
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6sAddr4:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 378
    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 379
    sub-int/2addr v2, v0

    .line 380
    if-lt v2, v1, :cond_1f

    .line 382
    sub-int/2addr v4, v1

    .line 383
    if-gt v0, v4, :cond_1e

    .line 385
    goto/16 :goto_0

    .line 387
    :cond_1e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 389
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 392
    throw p0

    .line 393
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 396
    move-result v2

    .line 397
    iput v2, p0, Landroid/net/UidStatsParcel;->tcpPackets:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 402
    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 403
    sub-int/2addr v2, v0

    .line 404
    if-lt v2, v1, :cond_21

    .line 406
    sub-int/2addr v4, v1

    .line 407
    if-gt v0, v4, :cond_20

    .line 409
    goto/16 :goto_0

    .line 411
    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    .line 413
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 416
    throw p0

    .line 417
    :cond_21
    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 420
    move-result v2

    .line 421
    iput v2, p0, Landroid/net/UidStatsParcel;->udpPackets:I

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 426
    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 427
    sub-int/2addr v2, v0

    .line 428
    if-lt v2, v1, :cond_23

    .line 430
    sub-int/2addr v4, v1

    .line 431
    if-gt v0, v4, :cond_22

    .line 433
    goto/16 :goto_0

    .line 435
    :cond_22
    new-instance p0, Landroid/os/BadParcelableException;

    .line 437
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 440
    throw p0

    .line 441
    :cond_23
    :try_start_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 444
    move-result v2

    .line 445
    iput v2, p0, Landroid/net/UidStatsParcel;->rxPackets:I

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 450
    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 451
    sub-int/2addr v2, v0

    .line 452
    if-lt v2, v1, :cond_25

    .line 454
    sub-int/2addr v4, v1

    .line 455
    if-gt v0, v4, :cond_24

    .line 457
    goto/16 :goto_0

    .line 459
    :cond_24
    new-instance p0, Landroid/os/BadParcelableException;

    .line 461
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 464
    throw p0

    .line 465
    :cond_25
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 468
    move-result v2

    .line 469
    iput v2, p0, Landroid/net/UidStatsParcel;->txPackets:I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 474
    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 475
    sub-int/2addr v2, v0

    .line 476
    if-lt v2, v1, :cond_27

    .line 478
    sub-int/2addr v4, v1

    .line 479
    if-gt v0, v4, :cond_26

    .line 481
    goto/16 :goto_0

    .line 483
    :cond_26
    new-instance p0, Landroid/os/BadParcelableException;

    .line 485
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 488
    throw p0

    .line 489
    :cond_27
    :try_start_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 492
    move-result-wide v5

    .line 493
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->rxBytes:J

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 498
    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 499
    sub-int/2addr v2, v0

    .line 500
    if-lt v2, v1, :cond_29

    .line 502
    sub-int/2addr v4, v1

    .line 503
    if-gt v0, v4, :cond_28

    .line 505
    goto/16 :goto_0

    .line 507
    :cond_28
    new-instance p0, Landroid/os/BadParcelableException;

    .line 509
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 512
    throw p0

    .line 513
    :cond_29
    :try_start_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 516
    move-result-wide v5

    .line 517
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->txBytes:J

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 522
    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 523
    sub-int/2addr v2, v0

    .line 524
    if-lt v2, v1, :cond_2b

    .line 526
    sub-int/2addr v4, v1

    .line 527
    if-gt v0, v4, :cond_2a

    .line 529
    goto/16 :goto_0

    .line 531
    :cond_2a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 533
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 536
    throw p0

    .line 537
    :cond_2b
    :try_start_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 540
    move-result-wide v5

    .line 541
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->firstTxTime:J

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 546
    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 547
    sub-int/2addr v2, v0

    .line 548
    if-lt v2, v1, :cond_2d

    .line 550
    sub-int/2addr v4, v1

    .line 551
    if-gt v0, v4, :cond_2c

    .line 553
    goto/16 :goto_0

    .line 555
    :cond_2c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 557
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 560
    throw p0

    .line 561
    :cond_2d
    :try_start_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 564
    move-result v2

    .line 565
    iput v2, p0, Landroid/net/UidStatsParcel;->maxTxPacketSize:I

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 570
    move-result v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 571
    sub-int/2addr v2, v0

    .line 572
    if-lt v2, v1, :cond_2f

    .line 574
    sub-int/2addr v4, v1

    .line 575
    if-gt v0, v4, :cond_2e

    .line 577
    goto/16 :goto_0

    .line 579
    :cond_2e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 581
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 584
    throw p0

    .line 585
    :cond_2f
    :try_start_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 588
    move-result v2

    .line 589
    iput v2, p0, Landroid/net/UidStatsParcel;->minTxPacketSize:I

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 594
    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 595
    sub-int/2addr v2, v0

    .line 596
    if-lt v2, v1, :cond_31

    .line 598
    sub-int/2addr v4, v1

    .line 599
    if-gt v0, v4, :cond_30

    .line 601
    goto/16 :goto_0

    .line 603
    :cond_30
    new-instance p0, Landroid/os/BadParcelableException;

    .line 605
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 608
    throw p0

    .line 609
    :cond_31
    :try_start_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 612
    move-result-wide v5

    .line 613
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->maxTxInterPacketTime:J

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 618
    move-result v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 619
    sub-int/2addr v2, v0

    .line 620
    if-lt v2, v1, :cond_33

    .line 622
    sub-int/2addr v4, v1

    .line 623
    if-gt v0, v4, :cond_32

    .line 625
    goto/16 :goto_0

    .line 627
    :cond_32
    new-instance p0, Landroid/os/BadParcelableException;

    .line 629
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 632
    throw p0

    .line 633
    :cond_33
    :try_start_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 636
    move-result-wide v5

    .line 637
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->minTxInterPacketTime:J

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 642
    move-result v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 643
    sub-int/2addr v2, v0

    .line 644
    if-lt v2, v1, :cond_35

    .line 646
    sub-int/2addr v4, v1

    .line 647
    if-gt v0, v4, :cond_34

    .line 649
    goto/16 :goto_0

    .line 651
    :cond_34
    new-instance p0, Landroid/os/BadParcelableException;

    .line 653
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 656
    throw p0

    .line 657
    :cond_35
    :try_start_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 660
    move-result-wide v5

    .line 661
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->latestTxTime:J

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 666
    move-result v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 667
    sub-int/2addr v2, v0

    .line 668
    if-lt v2, v1, :cond_37

    .line 670
    sub-int/2addr v4, v1

    .line 671
    if-gt v0, v4, :cond_36

    .line 673
    goto/16 :goto_0

    .line 675
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    .line 677
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 680
    throw p0

    .line 681
    :cond_37
    :try_start_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 684
    move-result v2

    .line 685
    iput v2, p0, Landroid/net/UidStatsParcel;->maxRxPacketSize:I

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 690
    move-result v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 691
    sub-int/2addr v2, v0

    .line 692
    if-lt v2, v1, :cond_39

    .line 694
    sub-int/2addr v4, v1

    .line 695
    if-gt v0, v4, :cond_38

    .line 697
    goto/16 :goto_0

    .line 699
    :cond_38
    new-instance p0, Landroid/os/BadParcelableException;

    .line 701
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 704
    throw p0

    .line 705
    :cond_39
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 708
    move-result v2

    .line 709
    iput v2, p0, Landroid/net/UidStatsParcel;->minRxPacketSize:I

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 714
    move-result v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 715
    sub-int/2addr v2, v0

    .line 716
    if-lt v2, v1, :cond_3b

    .line 718
    sub-int/2addr v4, v1

    .line 719
    if-gt v0, v4, :cond_3a

    .line 721
    goto/16 :goto_0

    .line 723
    :cond_3a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 725
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 728
    throw p0

    .line 729
    :cond_3b
    :try_start_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 732
    move-result-wide v5

    .line 733
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime2:J

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 738
    move-result v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 739
    sub-int/2addr v2, v0

    .line 740
    if-lt v2, v1, :cond_3d

    .line 742
    sub-int/2addr v4, v1

    .line 743
    if-gt v0, v4, :cond_3c

    .line 745
    goto/16 :goto_0

    .line 747
    :cond_3c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 749
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 752
    throw p0

    .line 753
    :cond_3d
    :try_start_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 756
    move-result-wide v5

    .line 757
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime:J

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 762
    move-result v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 763
    sub-int/2addr v2, v0

    .line 764
    if-lt v2, v1, :cond_3f

    .line 766
    sub-int/2addr v4, v1

    .line 767
    if-gt v0, v4, :cond_3e

    .line 769
    goto/16 :goto_0

    .line 771
    :cond_3e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 773
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 776
    throw p0

    .line 777
    :cond_3f
    :try_start_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 780
    move-result-wide v5

    .line 781
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->latestRxTime:J

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 786
    move-result v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 787
    sub-int/2addr v2, v0

    .line 788
    if-lt v2, v1, :cond_41

    .line 790
    sub-int/2addr v4, v1

    .line 791
    if-gt v0, v4, :cond_40

    .line 793
    goto/16 :goto_0

    .line 795
    :cond_40
    new-instance p0, Landroid/os/BadParcelableException;

    .line 797
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 800
    throw p0

    .line 801
    :cond_41
    :try_start_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 804
    move-result-wide v5

    .line 805
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->cliMacAddr:J
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 807
    sub-int/2addr v4, v1

    .line 808
    if-gt v0, v4, :cond_42

    .line 810
    add-int/2addr v0, v1

    .line 811
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 814
    return-void

    .line 815
    :cond_42
    new-instance p0, Landroid/os/BadParcelableException;

    .line 817
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 820
    throw p0

    .line 821
    :catchall_0
    move-exception p0

    .line 822
    goto :goto_1

    .line 823
    :cond_43
    :try_start_22
    new-instance p0, Landroid/os/BadParcelableException;

    .line 825
    const-string v2, "Parcelable too small"

    .line 827
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 830
    throw p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 831
    :goto_1
    sub-int/2addr v4, v1

    .line 832
    if-le v0, v4, :cond_44

    .line 834
    new-instance p0, Landroid/os/BadParcelableException;

    .line 836
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 839
    throw p0

    .line 840
    :cond_44
    add-int/2addr v0, v1

    .line 841
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 844
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v0, p0, Landroid/net/UidStatsParcel;->key:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Landroid/net/UidStatsParcel;->uid:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget v0, p0, Landroid/net/UidStatsParcel;->sport:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget v0, p0, Landroid/net/UidStatsParcel;->dport:I

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget v0, p0, Landroid/net/UidStatsParcel;->ipVersion:I

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv4Addr:I

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr1:I

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr2:I

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr3:I

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr4:I

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv4sAddr:I

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr1:I

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr2:I

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr3:I

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr4:I

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Landroid/net/UidStatsParcel;->tcpPackets:I

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Landroid/net/UidStatsParcel;->udpPackets:I

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Landroid/net/UidStatsParcel;->rxPackets:I

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/net/UidStatsParcel;->txPackets:I

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->rxBytes:J

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->txBytes:J

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->firstTxTime:J

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget v0, p0, Landroid/net/UidStatsParcel;->maxTxPacketSize:I

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/net/UidStatsParcel;->minTxPacketSize:I

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->maxTxInterPacketTime:J

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->minTxInterPacketTime:J

    .line 136
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->latestTxTime:J

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget v0, p0, Landroid/net/UidStatsParcel;->maxRxPacketSize:I

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Landroid/net/UidStatsParcel;->minRxPacketSize:I

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime2:J

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime:J

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->latestRxTime:J

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->cliMacAddr:J

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 177
    move-result p0

    .line 178
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 181
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 184
    return-void
.end method
