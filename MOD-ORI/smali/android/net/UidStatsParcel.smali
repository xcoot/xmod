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

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/net/UidStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/UidStatsParcel;->key:I

    .line 6
    .line 7
    iput v0, p0, Landroid/net/UidStatsParcel;->uid:I

    .line 8
    .line 9
    iput v0, p0, Landroid/net/UidStatsParcel;->sport:I

    .line 10
    .line 11
    iput v0, p0, Landroid/net/UidStatsParcel;->dport:I

    .line 12
    .line 13
    iput v0, p0, Landroid/net/UidStatsParcel;->ipVersion:I

    .line 14
    .line 15
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv4Addr:I

    .line 16
    .line 17
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr1:I

    .line 18
    .line 19
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr2:I

    .line 20
    .line 21
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr3:I

    .line 22
    .line 23
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr4:I

    .line 24
    .line 25
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv4sAddr:I

    .line 26
    .line 27
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr1:I

    .line 28
    .line 29
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr2:I

    .line 30
    .line 31
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr3:I

    .line 32
    .line 33
    iput v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr4:I

    .line 34
    .line 35
    iput v0, p0, Landroid/net/UidStatsParcel;->tcpPackets:I

    .line 36
    .line 37
    iput v0, p0, Landroid/net/UidStatsParcel;->udpPackets:I

    .line 38
    .line 39
    iput v0, p0, Landroid/net/UidStatsParcel;->rxPackets:I

    .line 40
    .line 41
    iput v0, p0, Landroid/net/UidStatsParcel;->txPackets:I

    .line 42
    .line 43
    const-wide/16 v1, 0x0

    .line 44
    .line 45
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->rxBytes:J

    .line 46
    .line 47
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->txBytes:J

    .line 48
    .line 49
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->firstTxTime:J

    .line 50
    .line 51
    iput v0, p0, Landroid/net/UidStatsParcel;->maxTxPacketSize:I

    .line 52
    .line 53
    iput v0, p0, Landroid/net/UidStatsParcel;->minTxPacketSize:I

    .line 54
    .line 55
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->maxTxInterPacketTime:J

    .line 56
    .line 57
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->minTxInterPacketTime:J

    .line 58
    .line 59
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->latestTxTime:J

    .line 60
    .line 61
    iput v0, p0, Landroid/net/UidStatsParcel;->maxRxPacketSize:I

    .line 62
    .line 63
    iput v0, p0, Landroid/net/UidStatsParcel;->minRxPacketSize:I

    .line 64
    .line 65
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime2:J

    .line 66
    .line 67
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime:J

    .line 68
    .line 69
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->latestRxTime:J

    .line 70
    .line 71
    iput-wide v1, p0, Landroid/net/UidStatsParcel;->cliMacAddr:J

    .line 72
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const-string v3, "Overflow in the size of parcelable"

    .line 11
    .line 12
    const v4, 0x7fffffff

    .line 13
    .line 14
    .line 15
    if-lt v1, v2, :cond_43

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    if-lt v2, v1, :cond_1

    .line 23
    .line 24
    sub-int/2addr v4, v1

    .line 25
    if-gt v0, v4, :cond_0

    .line 26
    .line 27
    :goto_0
    add-int/2addr v0, v1

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 33
    .line 34
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput v2, p0, Landroid/net/UidStatsParcel;->key:I

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 45
    .line 46
    .line 47
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    sub-int/2addr v2, v0

    .line 49
    if-lt v2, v1, :cond_3

    .line 50
    .line 51
    sub-int/2addr v4, v1

    .line 52
    if-gt v0, v4, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 56
    .line 57
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput v2, p0, Landroid/net/UidStatsParcel;->uid:I

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 68
    .line 69
    .line 70
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    sub-int/2addr v2, v0

    .line 72
    if-lt v2, v1, :cond_5

    .line 73
    .line 74
    sub-int/2addr v4, v1

    .line 75
    if-gt v0, v4, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 79
    .line 80
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput v2, p0, Landroid/net/UidStatsParcel;->sport:I

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 91
    .line 92
    .line 93
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    sub-int/2addr v2, v0

    .line 95
    if-lt v2, v1, :cond_7

    .line 96
    .line 97
    sub-int/2addr v4, v1

    .line 98
    if-gt v0, v4, :cond_6

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 102
    .line 103
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput v2, p0, Landroid/net/UidStatsParcel;->dport:I

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 114
    .line 115
    .line 116
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    sub-int/2addr v2, v0

    .line 118
    if-lt v2, v1, :cond_9

    .line 119
    .line 120
    sub-int/2addr v4, v1

    .line 121
    if-gt v0, v4, :cond_8

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 125
    .line 126
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iput v2, p0, Landroid/net/UidStatsParcel;->ipVersion:I

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 137
    .line 138
    .line 139
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    sub-int/2addr v2, v0

    .line 141
    if-lt v2, v1, :cond_b

    .line 142
    .line 143
    sub-int/2addr v4, v1

    .line 144
    if-gt v0, v4, :cond_a

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 148
    .line 149
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv4Addr:I

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 160
    .line 161
    .line 162
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    sub-int/2addr v2, v0

    .line 164
    if-lt v2, v1, :cond_d

    .line 165
    .line 166
    sub-int/2addr v4, v1

    .line 167
    if-gt v0, v4, :cond_c

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 172
    .line 173
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6Addr1:I

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 184
    .line 185
    .line 186
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 187
    sub-int/2addr v2, v0

    .line 188
    if-lt v2, v1, :cond_f

    .line 189
    .line 190
    sub-int/2addr v4, v1

    .line 191
    if-gt v0, v4, :cond_e

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 196
    .line 197
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p0

    .line 201
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6Addr2:I

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 208
    .line 209
    .line 210
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 211
    sub-int/2addr v2, v0

    .line 212
    if-lt v2, v1, :cond_11

    .line 213
    .line 214
    sub-int/2addr v4, v1

    .line 215
    if-gt v0, v4, :cond_10

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 220
    .line 221
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p0

    .line 225
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6Addr3:I

    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 232
    .line 233
    .line 234
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 235
    sub-int/2addr v2, v0

    .line 236
    if-lt v2, v1, :cond_13

    .line 237
    .line 238
    sub-int/2addr v4, v1

    .line 239
    if-gt v0, v4, :cond_12

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 244
    .line 245
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p0

    .line 249
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6Addr4:I

    .line 254
    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 256
    .line 257
    .line 258
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 259
    sub-int/2addr v2, v0

    .line 260
    if-lt v2, v1, :cond_15

    .line 261
    .line 262
    sub-int/2addr v4, v1

    .line 263
    if-gt v0, v4, :cond_14

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 268
    .line 269
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw p0

    .line 273
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv4sAddr:I

    .line 278
    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 280
    .line 281
    .line 282
    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 283
    sub-int/2addr v2, v0

    .line 284
    if-lt v2, v1, :cond_17

    .line 285
    .line 286
    sub-int/2addr v4, v1

    .line 287
    if-gt v0, v4, :cond_16

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 292
    .line 293
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw p0

    .line 297
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6sAddr1:I

    .line 302
    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 304
    .line 305
    .line 306
    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 307
    sub-int/2addr v2, v0

    .line 308
    if-lt v2, v1, :cond_19

    .line 309
    .line 310
    sub-int/2addr v4, v1

    .line 311
    if-gt v0, v4, :cond_18

    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_18
    new-instance p0, Landroid/os/BadParcelableException;

    .line 316
    .line 317
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw p0

    .line 321
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6sAddr2:I

    .line 326
    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 328
    .line 329
    .line 330
    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 331
    sub-int/2addr v2, v0

    .line 332
    if-lt v2, v1, :cond_1b

    .line 333
    .line 334
    sub-int/2addr v4, v1

    .line 335
    if-gt v0, v4, :cond_1a

    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :cond_1a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 340
    .line 341
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw p0

    .line 345
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6sAddr3:I

    .line 350
    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 352
    .line 353
    .line 354
    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 355
    sub-int/2addr v2, v0

    .line 356
    if-lt v2, v1, :cond_1d

    .line 357
    .line 358
    sub-int/2addr v4, v1

    .line 359
    if-gt v0, v4, :cond_1c

    .line 360
    .line 361
    goto/16 :goto_0

    .line 362
    .line 363
    :cond_1c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 364
    .line 365
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    throw p0

    .line 369
    :cond_1d
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    iput v2, p0, Landroid/net/UidStatsParcel;->ipv6sAddr4:I

    .line 374
    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 376
    .line 377
    .line 378
    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 379
    sub-int/2addr v2, v0

    .line 380
    if-lt v2, v1, :cond_1f

    .line 381
    .line 382
    sub-int/2addr v4, v1

    .line 383
    if-gt v0, v4, :cond_1e

    .line 384
    .line 385
    goto/16 :goto_0

    .line 386
    .line 387
    :cond_1e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 388
    .line 389
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw p0

    .line 393
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    iput v2, p0, Landroid/net/UidStatsParcel;->tcpPackets:I

    .line 398
    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 400
    .line 401
    .line 402
    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 403
    sub-int/2addr v2, v0

    .line 404
    if-lt v2, v1, :cond_21

    .line 405
    .line 406
    sub-int/2addr v4, v1

    .line 407
    if-gt v0, v4, :cond_20

    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    .line 412
    .line 413
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw p0

    .line 417
    :cond_21
    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    iput v2, p0, Landroid/net/UidStatsParcel;->udpPackets:I

    .line 422
    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 424
    .line 425
    .line 426
    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 427
    sub-int/2addr v2, v0

    .line 428
    if-lt v2, v1, :cond_23

    .line 429
    .line 430
    sub-int/2addr v4, v1

    .line 431
    if-gt v0, v4, :cond_22

    .line 432
    .line 433
    goto/16 :goto_0

    .line 434
    .line 435
    :cond_22
    new-instance p0, Landroid/os/BadParcelableException;

    .line 436
    .line 437
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw p0

    .line 441
    :cond_23
    :try_start_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    iput v2, p0, Landroid/net/UidStatsParcel;->rxPackets:I

    .line 446
    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 448
    .line 449
    .line 450
    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 451
    sub-int/2addr v2, v0

    .line 452
    if-lt v2, v1, :cond_25

    .line 453
    .line 454
    sub-int/2addr v4, v1

    .line 455
    if-gt v0, v4, :cond_24

    .line 456
    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :cond_24
    new-instance p0, Landroid/os/BadParcelableException;

    .line 460
    .line 461
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw p0

    .line 465
    :cond_25
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    iput v2, p0, Landroid/net/UidStatsParcel;->txPackets:I

    .line 470
    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 472
    .line 473
    .line 474
    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 475
    sub-int/2addr v2, v0

    .line 476
    if-lt v2, v1, :cond_27

    .line 477
    .line 478
    sub-int/2addr v4, v1

    .line 479
    if-gt v0, v4, :cond_26

    .line 480
    .line 481
    goto/16 :goto_0

    .line 482
    .line 483
    :cond_26
    new-instance p0, Landroid/os/BadParcelableException;

    .line 484
    .line 485
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    throw p0

    .line 489
    :cond_27
    :try_start_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 490
    .line 491
    .line 492
    move-result-wide v5

    .line 493
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->rxBytes:J

    .line 494
    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 496
    .line 497
    .line 498
    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 499
    sub-int/2addr v2, v0

    .line 500
    if-lt v2, v1, :cond_29

    .line 501
    .line 502
    sub-int/2addr v4, v1

    .line 503
    if-gt v0, v4, :cond_28

    .line 504
    .line 505
    goto/16 :goto_0

    .line 506
    .line 507
    :cond_28
    new-instance p0, Landroid/os/BadParcelableException;

    .line 508
    .line 509
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    throw p0

    .line 513
    :cond_29
    :try_start_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 514
    .line 515
    .line 516
    move-result-wide v5

    .line 517
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->txBytes:J

    .line 518
    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 520
    .line 521
    .line 522
    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 523
    sub-int/2addr v2, v0

    .line 524
    if-lt v2, v1, :cond_2b

    .line 525
    .line 526
    sub-int/2addr v4, v1

    .line 527
    if-gt v0, v4, :cond_2a

    .line 528
    .line 529
    goto/16 :goto_0

    .line 530
    .line 531
    :cond_2a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 532
    .line 533
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    throw p0

    .line 537
    :cond_2b
    :try_start_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 538
    .line 539
    .line 540
    move-result-wide v5

    .line 541
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->firstTxTime:J

    .line 542
    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 544
    .line 545
    .line 546
    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 547
    sub-int/2addr v2, v0

    .line 548
    if-lt v2, v1, :cond_2d

    .line 549
    .line 550
    sub-int/2addr v4, v1

    .line 551
    if-gt v0, v4, :cond_2c

    .line 552
    .line 553
    goto/16 :goto_0

    .line 554
    .line 555
    :cond_2c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 556
    .line 557
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw p0

    .line 561
    :cond_2d
    :try_start_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    iput v2, p0, Landroid/net/UidStatsParcel;->maxTxPacketSize:I

    .line 566
    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 568
    .line 569
    .line 570
    move-result v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 571
    sub-int/2addr v2, v0

    .line 572
    if-lt v2, v1, :cond_2f

    .line 573
    .line 574
    sub-int/2addr v4, v1

    .line 575
    if-gt v0, v4, :cond_2e

    .line 576
    .line 577
    goto/16 :goto_0

    .line 578
    .line 579
    :cond_2e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 580
    .line 581
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    throw p0

    .line 585
    :cond_2f
    :try_start_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    iput v2, p0, Landroid/net/UidStatsParcel;->minTxPacketSize:I

    .line 590
    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 592
    .line 593
    .line 594
    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 595
    sub-int/2addr v2, v0

    .line 596
    if-lt v2, v1, :cond_31

    .line 597
    .line 598
    sub-int/2addr v4, v1

    .line 599
    if-gt v0, v4, :cond_30

    .line 600
    .line 601
    goto/16 :goto_0

    .line 602
    .line 603
    :cond_30
    new-instance p0, Landroid/os/BadParcelableException;

    .line 604
    .line 605
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    throw p0

    .line 609
    :cond_31
    :try_start_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 610
    .line 611
    .line 612
    move-result-wide v5

    .line 613
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->maxTxInterPacketTime:J

    .line 614
    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 616
    .line 617
    .line 618
    move-result v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 619
    sub-int/2addr v2, v0

    .line 620
    if-lt v2, v1, :cond_33

    .line 621
    .line 622
    sub-int/2addr v4, v1

    .line 623
    if-gt v0, v4, :cond_32

    .line 624
    .line 625
    goto/16 :goto_0

    .line 626
    .line 627
    :cond_32
    new-instance p0, Landroid/os/BadParcelableException;

    .line 628
    .line 629
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    throw p0

    .line 633
    :cond_33
    :try_start_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 634
    .line 635
    .line 636
    move-result-wide v5

    .line 637
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->minTxInterPacketTime:J

    .line 638
    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 640
    .line 641
    .line 642
    move-result v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 643
    sub-int/2addr v2, v0

    .line 644
    if-lt v2, v1, :cond_35

    .line 645
    .line 646
    sub-int/2addr v4, v1

    .line 647
    if-gt v0, v4, :cond_34

    .line 648
    .line 649
    goto/16 :goto_0

    .line 650
    .line 651
    :cond_34
    new-instance p0, Landroid/os/BadParcelableException;

    .line 652
    .line 653
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    throw p0

    .line 657
    :cond_35
    :try_start_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 658
    .line 659
    .line 660
    move-result-wide v5

    .line 661
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->latestTxTime:J

    .line 662
    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 664
    .line 665
    .line 666
    move-result v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 667
    sub-int/2addr v2, v0

    .line 668
    if-lt v2, v1, :cond_37

    .line 669
    .line 670
    sub-int/2addr v4, v1

    .line 671
    if-gt v0, v4, :cond_36

    .line 672
    .line 673
    goto/16 :goto_0

    .line 674
    .line 675
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    .line 676
    .line 677
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    throw p0

    .line 681
    :cond_37
    :try_start_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    iput v2, p0, Landroid/net/UidStatsParcel;->maxRxPacketSize:I

    .line 686
    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 688
    .line 689
    .line 690
    move-result v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 691
    sub-int/2addr v2, v0

    .line 692
    if-lt v2, v1, :cond_39

    .line 693
    .line 694
    sub-int/2addr v4, v1

    .line 695
    if-gt v0, v4, :cond_38

    .line 696
    .line 697
    goto/16 :goto_0

    .line 698
    .line 699
    :cond_38
    new-instance p0, Landroid/os/BadParcelableException;

    .line 700
    .line 701
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    throw p0

    .line 705
    :cond_39
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 706
    .line 707
    .line 708
    move-result v2

    .line 709
    iput v2, p0, Landroid/net/UidStatsParcel;->minRxPacketSize:I

    .line 710
    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 712
    .line 713
    .line 714
    move-result v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 715
    sub-int/2addr v2, v0

    .line 716
    if-lt v2, v1, :cond_3b

    .line 717
    .line 718
    sub-int/2addr v4, v1

    .line 719
    if-gt v0, v4, :cond_3a

    .line 720
    .line 721
    goto/16 :goto_0

    .line 722
    .line 723
    :cond_3a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 724
    .line 725
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    throw p0

    .line 729
    :cond_3b
    :try_start_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 730
    .line 731
    .line 732
    move-result-wide v5

    .line 733
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime2:J

    .line 734
    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 736
    .line 737
    .line 738
    move-result v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 739
    sub-int/2addr v2, v0

    .line 740
    if-lt v2, v1, :cond_3d

    .line 741
    .line 742
    sub-int/2addr v4, v1

    .line 743
    if-gt v0, v4, :cond_3c

    .line 744
    .line 745
    goto/16 :goto_0

    .line 746
    .line 747
    :cond_3c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 748
    .line 749
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    throw p0

    .line 753
    :cond_3d
    :try_start_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 754
    .line 755
    .line 756
    move-result-wide v5

    .line 757
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime:J

    .line 758
    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 760
    .line 761
    .line 762
    move-result v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 763
    sub-int/2addr v2, v0

    .line 764
    if-lt v2, v1, :cond_3f

    .line 765
    .line 766
    sub-int/2addr v4, v1

    .line 767
    if-gt v0, v4, :cond_3e

    .line 768
    .line 769
    goto/16 :goto_0

    .line 770
    .line 771
    :cond_3e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 772
    .line 773
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    throw p0

    .line 777
    :cond_3f
    :try_start_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 778
    .line 779
    .line 780
    move-result-wide v5

    .line 781
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->latestRxTime:J

    .line 782
    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 784
    .line 785
    .line 786
    move-result v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 787
    sub-int/2addr v2, v0

    .line 788
    if-lt v2, v1, :cond_41

    .line 789
    .line 790
    sub-int/2addr v4, v1

    .line 791
    if-gt v0, v4, :cond_40

    .line 792
    .line 793
    goto/16 :goto_0

    .line 794
    .line 795
    :cond_40
    new-instance p0, Landroid/os/BadParcelableException;

    .line 796
    .line 797
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    throw p0

    .line 801
    :cond_41
    :try_start_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 802
    .line 803
    .line 804
    move-result-wide v5

    .line 805
    iput-wide v5, p0, Landroid/net/UidStatsParcel;->cliMacAddr:J
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 806
    .line 807
    sub-int/2addr v4, v1

    .line 808
    if-gt v0, v4, :cond_42

    .line 809
    .line 810
    add-int/2addr v0, v1

    .line 811
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 812
    .line 813
    .line 814
    return-void

    .line 815
    :cond_42
    new-instance p0, Landroid/os/BadParcelableException;

    .line 816
    .line 817
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 818
    .line 819
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

    .line 824
    .line 825
    const-string v2, "Parcelable too small"

    .line 826
    .line 827
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    throw p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 831
    :goto_1
    sub-int/2addr v4, v1

    .line 832
    if-le v0, v4, :cond_44

    .line 833
    .line 834
    new-instance p0, Landroid/os/BadParcelableException;

    .line 835
    .line 836
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    throw p0

    .line 840
    :cond_44
    add-int/2addr v0, v1

    .line 841
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 842
    .line 843
    .line 844
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Landroid/net/UidStatsParcel;->key:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Landroid/net/UidStatsParcel;->uid:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Landroid/net/UidStatsParcel;->sport:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Landroid/net/UidStatsParcel;->dport:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Landroid/net/UidStatsParcel;->ipVersion:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv4Addr:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr1:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr2:I

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr3:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6Addr4:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    .line 58
    .line 59
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv4sAddr:I

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr1:I

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr2:I

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr3:I

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    iget v0, p0, Landroid/net/UidStatsParcel;->ipv6sAddr4:I

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    .line 83
    .line 84
    iget v0, p0, Landroid/net/UidStatsParcel;->tcpPackets:I

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    iget v0, p0, Landroid/net/UidStatsParcel;->udpPackets:I

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    .line 93
    .line 94
    iget v0, p0, Landroid/net/UidStatsParcel;->rxPackets:I

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget v0, p0, Landroid/net/UidStatsParcel;->txPackets:I

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    .line 103
    .line 104
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->rxBytes:J

    .line 105
    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    .line 108
    .line 109
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->txBytes:J

    .line 110
    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    .line 113
    .line 114
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->firstTxTime:J

    .line 115
    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    .line 118
    .line 119
    iget v0, p0, Landroid/net/UidStatsParcel;->maxTxPacketSize:I

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    .line 123
    .line 124
    iget v0, p0, Landroid/net/UidStatsParcel;->minTxPacketSize:I

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    .line 128
    .line 129
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->maxTxInterPacketTime:J

    .line 130
    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    .line 133
    .line 134
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->minTxInterPacketTime:J

    .line 135
    .line 136
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    .line 138
    .line 139
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->latestTxTime:J

    .line 140
    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    .line 143
    .line 144
    iget v0, p0, Landroid/net/UidStatsParcel;->maxRxPacketSize:I

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    .line 148
    .line 149
    iget v0, p0, Landroid/net/UidStatsParcel;->minRxPacketSize:I

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    .line 153
    .line 154
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime2:J

    .line 155
    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    .line 158
    .line 159
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime:J

    .line 160
    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    .line 163
    .line 164
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->latestRxTime:J

    .line 165
    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    .line 168
    .line 169
    iget-wide v0, p0, Landroid/net/UidStatsParcel;->cliMacAddr:J

    .line 170
    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 179
    .line 180
    .line 181
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 182
    .line 183
    .line 184
    return-void
.end method
