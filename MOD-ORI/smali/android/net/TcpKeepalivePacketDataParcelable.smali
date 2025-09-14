.class public Landroid/net/TcpKeepalivePacketDataParcelable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public ack:I

.field public dstAddress:[B

.field public dstPort:I

.field public rcvWnd:I

.field public rcvWndScale:I

.field public seq:I

.field public srcAddress:[B

.field public srcPort:I

.field public tos:I

.field public ttl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/TcpKeepalivePacketDataParcelable$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/net/TcpKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    .line 6
    .line 7
    iput v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 8
    .line 9
    iput v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    .line 10
    .line 11
    iput v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    .line 12
    .line 13
    iput v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    .line 14
    .line 15
    iput v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    .line 16
    .line 17
    iput v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    .line 18
    .line 19
    iput v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    .line 20
    .line 21
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
    .locals 5

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
    if-lt v1, v2, :cond_15

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

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
    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iput-object v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

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
    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

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
    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

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
    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

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
    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

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
    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

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
    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

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
    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 254
    .line 255
    sub-int/2addr v4, v1

    .line 256
    if-gt v0, v4, :cond_14

    .line 257
    .line 258
    add-int/2addr v0, v1

    .line 259
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 264
    .line 265
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p0

    .line 269
    :catchall_0
    move-exception p0

    .line 270
    goto :goto_1

    .line 271
    :cond_15
    :try_start_b
    new-instance p0, Landroid/os/BadParcelableException;

    .line 272
    .line 273
    const-string v2, "Parcelable too small"

    .line 274
    .line 275
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 279
    :goto_1
    sub-int/2addr v4, v1

    .line 280
    if-le v0, v4, :cond_16

    .line 281
    .line 282
    new-instance p0, Landroid/os/BadParcelableException;

    .line 283
    .line 284
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw p0

    .line 288
    :cond_16
    add-int/2addr v0, v1

    .line 289
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 290
    .line 291
    .line 292
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "}"

    .line 7
    .line 8
    .line 9
    const-string v3, ", "

    .line 10
    .line 11
    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "srcAddress: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    .line 23
    .line 24
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v2, "srcPort: "

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    .line 47
    .line 48
    const-string/jumbo v3, "dstAddress: "

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 56
    .line 57
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 69
    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string/jumbo v2, "dstPort: "

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 80
    .line 81
    const-string/jumbo v3, "seq: "

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    .line 89
    .line 90
    const-string v3, "ack: "

    .line 91
    .line 92
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    .line 97
    .line 98
    const-string/jumbo v3, "rcvWnd: "

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    .line 106
    .line 107
    const-string/jumbo v3, "rcvWndScale: "

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    .line 115
    .line 116
    const-string/jumbo v3, "tos: "

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    .line 124
    .line 125
    const-string/jumbo v3, "ttl: "

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget p0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    .line 133
    .line 134
    const-string v2, "TcpKeepalivePacketDataParcelable"

    .line 135
    .line 136
    invoke-static {v1, p0, v0, v2}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

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
    iget-object v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget p0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    .line 55
    .line 56
    invoke-static {p1, p0, p2}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
