.class public final Lcom/android/server/usb/UsbMidiPacketConverter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CODE_INDEX_NUMBER_FROM_SYSTEM_TYPE:[I

.field public static final PAYLOAD_SIZE:[I


# instance fields
.field public final mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

.field public mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

.field public mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/android/server/usb/UsbMidiPacketConverter;->PAYLOAD_SIZE:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/usb/UsbMidiPacketConverter;->CODE_INDEX_NUMBER_FROM_SYSTEM_TYPE:[I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        -0x1
        -0x1
        0x2
        0x3
        0x3
        0x1
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x3
        0x1
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    :array_1
    .array-data 4
        -0x1
        0x2
        0x3
        0x2
        -0x1
        -0x1
        0x5
        -0x1
        0x5
        -0x1
        0x5
        0x5
        0x5
        -0x1
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final createEncoders(I)V
    .locals 6

    .line 1
    new-array v0, p1, [Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    if-ge v1, p1, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    .line 10
    .line 11
    new-instance v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    new-array v5, v4, [B

    .line 18
    .line 19
    iput-object v5, v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    .line 20
    .line 21
    iput v0, v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 22
    .line 23
    iput-boolean v0, v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 24
    .line 25
    new-array v4, v4, [B

    .line 26
    .line 27
    iput-object v4, v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    .line 28
    .line 29
    shl-int/lit8 v4, v1, 0x4

    .line 30
    .line 31
    int-to-byte v4, v4

    .line 32
    iput-byte v4, v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mShiftedCableNumber:B

    .line 33
    .line 34
    aput-object v3, v2, v1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public final decodeMidiPackets(I[B)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    .line 10
    .line 11
    rem-int/lit8 v0, p1, 0x4

    .line 12
    .line 13
    const-string v1, "UsbMidiPacketConverter"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v2, "size "

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, " not multiple of 4"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    move v2, v0

    .line 42
    :goto_0
    add-int/lit8 v3, v2, 0x3

    .line 43
    .line 44
    if-ge v3, p1, :cond_3

    .line 45
    .line 46
    aget-byte v3, p2, v2

    .line 47
    .line 48
    shr-int/lit8 v4, v3, 0x4

    .line 49
    .line 50
    and-int/lit8 v4, v4, 0xf

    .line 51
    .line 52
    and-int/lit8 v3, v3, 0xf

    .line 53
    .line 54
    sget-object v5, Lcom/android/server/usb/UsbMidiPacketConverter;->PAYLOAD_SIZE:[I

    .line 55
    .line 56
    aget v3, v5, v3

    .line 57
    .line 58
    if-gez v3, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mNumJacks:I

    .line 62
    .line 63
    if-lt v4, v5, :cond_2

    .line 64
    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v6, "cableNumber "

    .line 68
    .line 69
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, " invalid"

    .line 76
    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move v4, v0

    .line 88
    :cond_2
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mDecodedByteArrays:[Ljava/io/ByteArrayOutputStream;

    .line 89
    .line 90
    aget-object v4, v5, v4

    .line 91
    .line 92
    add-int/lit8 v5, v2, 0x1

    .line 93
    .line 94
    invoke-virtual {v4, p2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 95
    .line 96
    .line 97
    :goto_1
    add-int/lit8 v2, v2, 0x4

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    return-void
.end method

.method public final encodeMidiPackets(II[B)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-lt p2, v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "encoderId "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, " invalid"

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, "UsbMidiPacketConverter"

    .line 27
    .line 28
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move p2, v1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    .line 33
    .line 34
    aget-object p2, v0, p2

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    .line 43
    .line 44
    move v2, v1

    .line 45
    :cond_1
    :goto_0
    if-ge v2, p1, :cond_d

    .line 46
    .line 47
    aget-byte v3, p3, v2

    .line 48
    .line 49
    const/4 v4, 0x3

    .line 50
    const/4 v5, 0x1

    .line 51
    iget-byte v6, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mShiftedCableNumber:B

    .line 52
    .line 53
    iget-object v7, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    .line 54
    .line 55
    if-ltz v3, :cond_4

    .line 56
    .line 57
    iget-boolean v8, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 58
    .line 59
    if-eqz v8, :cond_2

    .line 60
    .line 61
    iget v8, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 62
    .line 63
    aput-byte v3, v7, v8

    .line 64
    .line 65
    add-int/2addr v8, v5

    .line 66
    iput v8, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 67
    .line 68
    if-ne v8, v4, :cond_3

    .line 69
    .line 70
    or-int/lit8 v3, v6, 0x4

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v7, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 76
    .line 77
    .line 78
    iput v1, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p2, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const/16 v8, -0x9

    .line 88
    .line 89
    if-eq v3, v8, :cond_6

    .line 90
    .line 91
    iget-boolean v3, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 92
    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    move v3, v1

    .line 96
    :goto_2
    iget v9, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 97
    .line 98
    if-ge v3, v9, :cond_5

    .line 99
    .line 100
    aget-byte v9, v7, v3

    .line 101
    .line 102
    invoke-virtual {p2, v0, v9}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    iput v1, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 109
    .line 110
    iput-boolean v1, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 111
    .line 112
    :cond_6
    aget-byte v3, p3, v2

    .line 113
    .line 114
    sget-object v9, Lcom/android/server/usb/UsbMidiPacketConverter;->PAYLOAD_SIZE:[I

    .line 115
    .line 116
    const/16 v10, -0x10

    .line 117
    .line 118
    iget-object v11, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    .line 119
    .line 120
    if-ge v3, v10, :cond_8

    .line 121
    .line 122
    shr-int/lit8 v3, v3, 0x4

    .line 123
    .line 124
    and-int/lit8 v3, v3, 0xf

    .line 125
    .line 126
    int-to-byte v3, v3

    .line 127
    aget v4, v9, v3

    .line 128
    .line 129
    add-int v5, v2, v4

    .line 130
    .line 131
    if-gt v5, p1, :cond_7

    .line 132
    .line 133
    or-int/2addr v3, v6

    .line 134
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 138
    .line 139
    .line 140
    rsub-int/lit8 v2, v4, 0x3

    .line 141
    .line 142
    invoke-virtual {v0, v11, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 143
    .line 144
    .line 145
    :goto_3
    move v2, v5

    .line 146
    goto :goto_0

    .line 147
    :cond_7
    :goto_4
    if-ge v2, p1, :cond_1

    .line 148
    .line 149
    aget-byte v3, p3, v2

    .line 150
    .line 151
    invoke-virtual {p2, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v2, v2, 0x1

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_8
    if-ne v3, v10, :cond_9

    .line 158
    .line 159
    iput-boolean v5, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 160
    .line 161
    aput-byte v3, v7, v1

    .line 162
    .line 163
    iput v5, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_9
    if-ne v3, v8, :cond_a

    .line 167
    .line 168
    iget v3, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 169
    .line 170
    add-int/lit8 v3, v3, 0x5

    .line 171
    .line 172
    or-int/2addr v3, v6

    .line 173
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 174
    .line 175
    .line 176
    iget v3, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 177
    .line 178
    aget-byte v6, p3, v2

    .line 179
    .line 180
    aput-byte v6, v7, v3

    .line 181
    .line 182
    add-int/2addr v3, v5

    .line 183
    iput v3, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 184
    .line 185
    invoke-virtual {v0, v7, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 186
    .line 187
    .line 188
    iget v3, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 189
    .line 190
    sub-int/2addr v4, v3

    .line 191
    invoke-virtual {v0, v11, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 192
    .line 193
    .line 194
    iput-boolean v1, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 195
    .line 196
    iput v1, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_a
    and-int/lit8 v4, v3, 0xf

    .line 200
    .line 201
    sget-object v5, Lcom/android/server/usb/UsbMidiPacketConverter;->CODE_INDEX_NUMBER_FROM_SYSTEM_TYPE:[I

    .line 202
    .line 203
    aget v4, v5, v4

    .line 204
    .line 205
    if-gez v4, :cond_b

    .line 206
    .line 207
    invoke-virtual {p2, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_b
    aget v3, v9, v4

    .line 212
    .line 213
    add-int v5, v2, v3

    .line 214
    .line 215
    if-gt v5, p1, :cond_c

    .line 216
    .line 217
    or-int/2addr v4, v6

    .line 218
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, p3, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 222
    .line 223
    .line 224
    rsub-int/lit8 v2, v3, 0x3

    .line 225
    .line 226
    invoke-virtual {v0, v11, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_c
    :goto_5
    if-ge v2, p1, :cond_1

    .line 231
    .line 232
    aget-byte v3, p3, v2

    .line 233
    .line 234
    invoke-virtual {p2, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    .line 235
    .line 236
    .line 237
    add-int/lit8 v2, v2, 0x1

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 245
    .line 246
    array-length p2, p1

    .line 247
    invoke-virtual {p0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method public final pullDecodedMidiPackets(I)[B
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mNumJacks:I

    .line 4
    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "cableNumber "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, " invalid"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "UsbMidiPacketConverter"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mDecodedByteArrays:[Ljava/io/ByteArrayOutputStream;

    .line 33
    .line 34
    aget-object v0, v0, p1

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mDecodedByteArrays:[Ljava/io/ByteArrayOutputStream;

    .line 41
    .line 42
    aget-object p0, p0, p1

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method
