.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final HexDecimalTable:[Ljava/lang/String;

.field public final chip_id:[B

.field public final color:I

.field public final id:Ljava/lang/String;

.field public final model:I

.field public final reserved:B

.field public final serial:Ljava/lang/String;

.field public final smapp:I

.field public type:I

.field public final url:I

.field public final valid:Z

.field public final year:I


# direct methods
.method public constructor <init>([B)V
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x17

    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    .line 13
    .line 14
    const/16 v3, 0xe

    .line 15
    .line 16
    new-array v4, v3, [B

    .line 17
    .line 18
    const/16 v5, 0x9

    .line 19
    .line 20
    new-array v6, v5, [B

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    iput-boolean v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    .line 24
    .line 25
    const-string v40, "Z"

    .line 26
    .line 27
    const-string v41, "I"

    .line 28
    .line 29
    const-string v8, "0"

    .line 30
    .line 31
    const-string v9, "1"

    .line 32
    .line 33
    const-string v10, "2"

    .line 34
    .line 35
    const-string v11, "3"

    .line 36
    .line 37
    const-string v12, "4"

    .line 38
    .line 39
    const-string v13, "5"

    .line 40
    .line 41
    const-string v14, "6"

    .line 42
    .line 43
    const-string v15, "7"

    .line 44
    .line 45
    const-string v16, "8"

    .line 46
    .line 47
    const-string v17, "9"

    .line 48
    .line 49
    const-string v18, "A"

    .line 50
    .line 51
    const-string v19, "B"

    .line 52
    .line 53
    const-string v20, "C"

    .line 54
    .line 55
    const-string v21, "D"

    .line 56
    .line 57
    const-string v22, "E"

    .line 58
    .line 59
    const-string v23, "F"

    .line 60
    .line 61
    const-string v24, "G"

    .line 62
    .line 63
    const-string v25, "H"

    .line 64
    .line 65
    const-string v26, "J"

    .line 66
    .line 67
    const-string v27, "K"

    .line 68
    .line 69
    const-string v28, "L"

    .line 70
    .line 71
    const-string v29, "M"

    .line 72
    .line 73
    const-string v30, "N"

    .line 74
    .line 75
    const-string v31, "P"

    .line 76
    .line 77
    const-string v32, "Q"

    .line 78
    .line 79
    const-string v33, "R"

    .line 80
    .line 81
    const-string v34, "S"

    .line 82
    .line 83
    const-string v35, "T"

    .line 84
    .line 85
    const-string v36, "V"

    .line 86
    .line 87
    const-string v37, "W"

    .line 88
    .line 89
    const-string v38, "X"

    .line 90
    .line 91
    const-string v39, "Y"

    .line 92
    .line 93
    const-string v42, "O"

    .line 94
    .line 95
    const-string v43, "U"

    .line 96
    .line 97
    filled-new-array/range {v8 .. v43}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    iput-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v1, :cond_0

    .line 104
    .line 105
    array-length v8, v1

    .line 106
    if-ne v8, v2, :cond_0

    .line 107
    .line 108
    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, [B

    .line 113
    .line 114
    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    .line 115
    .line 116
    invoke-static {v1, v7, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v3, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    .line 121
    .line 122
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->byteArrayToString([B)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iput-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->byteArrayToString([B)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iput-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->id:Ljava/lang/String;

    .line 141
    .line 142
    const/4 v2, 0x3

    .line 143
    aget-byte v2, v1, v2

    .line 144
    .line 145
    and-int/lit16 v2, v2, 0xff

    .line 146
    .line 147
    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->year:I

    .line 148
    .line 149
    const/4 v2, 0x4

    .line 150
    aget-byte v2, v1, v2

    .line 151
    .line 152
    aget-byte v2, v1, v3

    .line 153
    .line 154
    and-int/lit16 v2, v2, 0xff

    .line 155
    .line 156
    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->model:I

    .line 157
    .line 158
    const/16 v2, 0xf

    .line 159
    .line 160
    aget-byte v2, v1, v2

    .line 161
    .line 162
    and-int/lit16 v2, v2, 0xff

    .line 163
    .line 164
    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->smapp:I

    .line 165
    .line 166
    const/16 v2, 0x10

    .line 167
    .line 168
    aget-byte v2, v1, v2

    .line 169
    .line 170
    and-int/lit16 v2, v2, 0xff

    .line 171
    .line 172
    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->color:I

    .line 173
    .line 174
    const/16 v2, 0x11

    .line 175
    .line 176
    aget-byte v2, v1, v2

    .line 177
    .line 178
    and-int/lit16 v2, v2, 0xff

    .line 179
    .line 180
    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 181
    .line 182
    const/16 v2, 0x12

    .line 183
    .line 184
    aget-byte v2, v1, v2

    .line 185
    .line 186
    const/16 v2, 0x13

    .line 187
    .line 188
    aget-byte v2, v1, v2

    .line 189
    .line 190
    const/16 v2, 0x14

    .line 191
    .line 192
    aget-byte v2, v1, v2

    .line 193
    .line 194
    const/16 v2, 0x15

    .line 195
    .line 196
    aget-byte v2, v1, v2

    .line 197
    .line 198
    and-int/lit16 v2, v2, 0xff

    .line 199
    .line 200
    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    .line 201
    .line 202
    const/16 v2, 0x16

    .line 203
    .line 204
    aget-byte v1, v1, v2

    .line 205
    .line 206
    iput-byte v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->reserved:B

    .line 207
    .line 208
    const/4 v1, 0x1

    .line 209
    iput-boolean v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    .line 210
    .line 211
    :cond_0
    return-void
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    aget-byte v2, p0, v1

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "%02x"

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-static {v3, v2, v0, v1, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    const-string/jumbo p0, "null"

    .line 36
    .line 37
    .line 38
    return-object p0
.end method


# virtual methods
.method public final convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_3

    .line 21
    .line 22
    add-int/lit8 v2, v1, 0x2

    .line 23
    .line 24
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v3, 0x10

    .line 29
    .line 30
    :try_start_0
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/16 v3, 0xff

    .line 35
    .line 36
    if-ne v1, v3, :cond_1

    .line 37
    .line 38
    const-string v1, "0"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    if-ltz v1, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    .line 47
    .line 48
    array-length v4, v3

    .line 49
    if-ge v1, v4, :cond_2

    .line 50
    .line 51
    aget-object v1, v3, v1

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const-string v1, " "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :catch_0
    :goto_1
    move v1, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_4
    :goto_2
    const/4 p0, 0x0

    .line 70
    return-object p0
.end method
