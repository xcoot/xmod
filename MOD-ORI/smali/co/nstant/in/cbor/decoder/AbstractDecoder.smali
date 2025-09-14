.class public abstract Lco/nstant/in/cbor/decoder/AbstractDecoder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final decoder:Lco/nstant/in/cbor/CborDecoder;

.field public final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    .line 5
    .line 6
    iput-object p2, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->inputStream:Ljava/io/InputStream;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getLength(I)J
    .locals 8

    .line 1
    and-int/lit8 p1, p1, 0x1f

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->DIRECT:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->INDEFINITE:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_1
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->RESERVED:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_3
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_4
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_5
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    if-eq v0, p1, :cond_4

    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    if-eq v0, p1, :cond_3

    .line 39
    .line 40
    const/4 p1, 0x3

    .line 41
    const/16 v2, 0x10

    .line 42
    .line 43
    const/16 v3, 0x18

    .line 44
    .line 45
    if-eq v0, p1, :cond_2

    .line 46
    .line 47
    const/4 p1, 0x4

    .line 48
    if-eq v0, p1, :cond_1

    .line 49
    .line 50
    const/4 p0, 0x6

    .line 51
    if-ne v0, p0, :cond_0

    .line 52
    .line 53
    const-wide/16 p0, -0x1

    .line 54
    .line 55
    return-wide p0

    .line 56
    :cond_0
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 57
    .line 58
    const-string p1, "Reserved additional information"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    int-to-long v4, p1

    .line 69
    const/16 p1, 0x38

    .line 70
    .line 71
    shl-long/2addr v4, p1

    .line 72
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    int-to-long v6, p1

    .line 77
    const/16 p1, 0x30

    .line 78
    .line 79
    shl-long/2addr v6, p1

    .line 80
    or-long/2addr v4, v6

    .line 81
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    int-to-long v6, p1

    .line 86
    const/16 p1, 0x28

    .line 87
    .line 88
    shl-long/2addr v6, p1

    .line 89
    or-long/2addr v4, v6

    .line 90
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    int-to-long v6, p1

    .line 95
    const/16 p1, 0x20

    .line 96
    .line 97
    shl-long/2addr v6, p1

    .line 98
    or-long/2addr v4, v6

    .line 99
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    int-to-long v6, p1

    .line 104
    shl-long/2addr v6, v3

    .line 105
    or-long v3, v4, v6

    .line 106
    .line 107
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    int-to-long v5, p1

    .line 112
    shl-long/2addr v5, v2

    .line 113
    or-long v2, v3, v5

    .line 114
    .line 115
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    int-to-long v4, p1

    .line 120
    shl-long v0, v4, v1

    .line 121
    .line 122
    or-long/2addr v0, v2

    .line 123
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    int-to-long p0, p0

    .line 128
    or-long/2addr p0, v0

    .line 129
    return-wide p0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    int-to-long v4, p1

    .line 135
    shl-long v3, v4, v3

    .line 136
    .line 137
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    int-to-long v5, p1

    .line 142
    shl-long/2addr v5, v2

    .line 143
    or-long v2, v3, v5

    .line 144
    .line 145
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    int-to-long v4, p1

    .line 150
    shl-long v0, v4, v1

    .line 151
    .line 152
    or-long/2addr v0, v2

    .line 153
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    int-to-long p0, p0

    .line 158
    or-long/2addr p0, v0

    .line 159
    return-wide p0

    .line 160
    :cond_3
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    shl-int/2addr p1, v1

    .line 165
    int-to-long v0, p1

    .line 166
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    int-to-long p0, p0

    .line 171
    or-long/2addr p0, v0

    .line 172
    return-wide p0

    .line 173
    :cond_4
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    int-to-long p0, p0

    .line 178
    return-wide p0

    .line 179
    :cond_5
    int-to-long p0, p1

    .line 180
    return-wide p0

    .line 181
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getLengthAsBigInteger(I)Ljava/math/BigInteger;
    .locals 7

    .line 1
    and-int/lit8 p1, p1, 0x1f

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->DIRECT:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->INDEFINITE:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_1
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->RESERVED:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_3
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_4
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_5
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    if-eq v0, p1, :cond_4

    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    if-eq v0, p1, :cond_3

    .line 39
    .line 40
    const/4 p1, 0x3

    .line 41
    const/16 v2, 0x10

    .line 42
    .line 43
    const/16 v3, 0x18

    .line 44
    .line 45
    if-eq v0, p1, :cond_2

    .line 46
    .line 47
    const/4 p1, 0x4

    .line 48
    if-eq v0, p1, :cond_1

    .line 49
    .line 50
    const/4 p0, 0x6

    .line 51
    if-ne v0, p0, :cond_0

    .line 52
    .line 53
    const-wide/16 p0, -0x1

    .line 54
    .line 55
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_0
    new-instance p0, Lco/nstant/in/cbor/CborException;

    .line 61
    .line 62
    const-string p1, "Reserved additional information"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_1
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 69
    .line 70
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    int-to-long v4, v0

    .line 75
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/16 v4, 0x38

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    int-to-long v4, v0

    .line 94
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const/16 v4, 0x30

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    int-to-long v4, v0

    .line 113
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/16 v4, 0x28

    .line 118
    .line 119
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    int-to-long v4, v0

    .line 132
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const/16 v4, 0x20

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    int-to-long v4, v0

    .line 151
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    int-to-long v3, v0

    .line 168
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    int-to-long v2, v0

    .line 185
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    int-to-long v0, p0

    .line 202
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    return-object p0

    .line 216
    :cond_2
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    int-to-long v4, p1

    .line 221
    shl-long v3, v4, v3

    .line 222
    .line 223
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    int-to-long v5, p1

    .line 228
    shl-long/2addr v5, v2

    .line 229
    or-long v2, v3, v5

    .line 230
    .line 231
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    int-to-long v4, p1

    .line 236
    shl-long v0, v4, v1

    .line 237
    .line 238
    or-long/2addr v0, v2

    .line 239
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    int-to-long p0, p0

    .line 244
    or-long/2addr p0, v0

    .line 245
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    return-object p0

    .line 250
    :cond_3
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    shl-int/2addr p1, v1

    .line 255
    int-to-long v0, p1

    .line 256
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    int-to-long p0, p0

    .line 261
    or-long/2addr p0, v0

    .line 262
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    return-object p0

    .line 267
    :cond_4
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    int-to-long p0, p0

    .line 272
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    return-object p0

    .line 277
    :cond_5
    int-to-long p0, p1

    .line 278
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    return-object p0

    .line 283
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextSymbol()I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->inputStream:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 12
    .line 13
    const-string v0, "Unexpected end of stream"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance v0, Lco/nstant/in/cbor/CborException;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method
