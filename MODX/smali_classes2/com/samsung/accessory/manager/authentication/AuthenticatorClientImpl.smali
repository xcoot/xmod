.class public final Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
.super Lcom/samsung/accessory/manager/authentication/Authenticator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final SW_FAIL:[B

.field public final SW_SECURITY_ATTACK:[B

.field public final SW_SUCCESS:[B

.field public final SW_SUCCESS_UBIVELOX:[B

.field public volatile isInterrupted:Z

.field public final mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

.field public final mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

.field public final statusWord:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    new-array v1, v0, [B

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    new-array v2, v0, [B

    .line 18
    .line 19
    fill-array-data v2, :array_1

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS_UBIVELOX:[B

    .line 23
    .line 24
    new-array v2, v0, [B

    .line 25
    .line 26
    fill-array-data v2, :array_2

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    .line 30
    .line 31
    new-array v2, v0, [B

    .line 32
    .line 33
    fill-array-data v2, :array_3

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 40
    .line 41
    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 42
    .line 43
    new-array v0, v0, [B

    .line 44
    .line 45
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    .line 46
    .line 47
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    .line 48
    .line 49
    iput p2, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    .line 50
    .line 51
    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    new-array p2, v1, [B

    .line 57
    .line 58
    iput-object p2, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    .line 59
    .line 60
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 61
    .line 62
    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    new-array p2, v1, [B

    .line 68
    .line 69
    iput-object p2, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    .line 70
    .line 71
    new-instance p2, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 72
    .line 73
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p2, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 79
    .line 80
    return-void

    .line 81
    :array_0
    .array-data 1
        -0x70t
        0x0t
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    nop

    .line 87
    :array_1
    .array-data 1
        -0x70t
        0x10t
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    nop

    .line 93
    :array_2
    .array-data 1
        0x69t
        -0x7ft
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    nop

    .line 99
    :array_3
    .array-data 1
        0x69t
        -0x7et
    .end array-data
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
.method public final checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checkError: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "SAccessoryManager_AuthenticatorClientImpl"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p2, :cond_13

    .line 26
    .line 27
    array-length v2, p2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_0
    array-length v2, p2

    .line 33
    const/4 v3, 0x1

    .line 34
    if-ne v2, v3, :cond_d

    .line 35
    .line 36
    aget-byte p0, p2, v0

    .line 37
    .line 38
    if-ne p0, v3, :cond_1

    .line 39
    .line 40
    const/16 p0, 0x14

    .line 41
    .line 42
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_1
    const/16 p1, -0x50

    .line 48
    .line 49
    if-ne p0, p1, :cond_2

    .line 50
    .line 51
    const/16 p0, 0x15

    .line 52
    .line 53
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_2
    const/16 p1, -0x4e

    .line 59
    .line 60
    if-ne p0, p1, :cond_3

    .line 61
    .line 62
    const/16 p0, 0x16

    .line 63
    .line 64
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_3
    const/16 p1, -0x20

    .line 70
    .line 71
    if-ne p0, p1, :cond_4

    .line 72
    .line 73
    const/16 p0, 0xd

    .line 74
    .line 75
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_4
    const/16 p1, -0xf

    .line 81
    .line 82
    if-ne p0, p1, :cond_5

    .line 83
    .line 84
    const/16 p0, 0x28

    .line 85
    .line 86
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :cond_5
    const/16 p1, -0xe

    .line 92
    .line 93
    if-ne p0, p1, :cond_6

    .line 94
    .line 95
    const/16 p0, 0x29

    .line 96
    .line 97
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :cond_6
    const/16 p1, -0xd

    .line 103
    .line 104
    if-ne p0, p1, :cond_7

    .line 105
    .line 106
    const/16 p0, 0x2a

    .line 107
    .line 108
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :cond_7
    const/16 p1, -0xc

    .line 114
    .line 115
    if-ne p0, p1, :cond_8

    .line 116
    .line 117
    const/16 p0, 0x2b

    .line 118
    .line 119
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :cond_8
    const/16 p1, -0xb

    .line 125
    .line 126
    if-ne p0, p1, :cond_9

    .line 127
    .line 128
    const/16 p0, 0x2c

    .line 129
    .line 130
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_1

    .line 134
    .line 135
    :cond_9
    const/16 p1, -0xa

    .line 136
    .line 137
    if-ne p0, p1, :cond_a

    .line 138
    .line 139
    const/16 p0, 0x2d

    .line 140
    .line 141
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_1

    .line 145
    .line 146
    :cond_a
    const/16 p1, -0x9

    .line 147
    .line 148
    if-ne p0, p1, :cond_b

    .line 149
    .line 150
    const/16 p0, 0x2e

    .line 151
    .line 152
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_b
    const/4 p1, -0x2

    .line 158
    if-ne p0, p1, :cond_c

    .line 159
    .line 160
    const/16 p0, 0x1c

    .line 161
    .line 162
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_c
    const/16 p0, 0x1b

    .line 167
    .line 168
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_d
    array-length v2, p2

    .line 173
    const/4 v4, 0x3

    .line 174
    if-le v2, v4, :cond_12

    .line 175
    .line 176
    array-length v2, p2

    .line 177
    sub-int/2addr v2, v4

    .line 178
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    .line 179
    .line 180
    const/4 v5, 0x2

    .line 181
    invoke-static {p2, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    .line 183
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v5, "Status Word: "

    .line 187
    .line 188
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    .line 206
    .line 207
    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS_UBIVELOX:[B

    .line 212
    .line 213
    if-nez v1, :cond_10

    .line 214
    .line 215
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_e

    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_e
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    .line 223
    .line 224
    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_f

    .line 229
    .line 230
    const/16 p0, 0x18

    .line 231
    .line 232
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 233
    .line 234
    .line 235
    return v0

    .line 236
    :cond_f
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    .line 237
    .line 238
    invoke-static {v4, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    if-eqz p0, :cond_12

    .line 243
    .line 244
    const/16 p0, 0x17

    .line 245
    .line 246
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 247
    .line 248
    .line 249
    return v0

    .line 250
    :cond_10
    :goto_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 251
    .line 252
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[BZ)Z

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    if-nez p0, :cond_11

    .line 261
    .line 262
    invoke-virtual {p3, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 263
    .line 264
    .line 265
    return v0

    .line 266
    :cond_11
    move v0, p0

    .line 267
    :cond_12
    :goto_1
    return v0

    .line 268
    :cond_13
    :goto_2
    const/16 p0, 0xc

    .line 269
    .line 270
    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 271
    .line 272
    .line 273
    return v0
.end method

.method public final sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    .line 8
    .line 9
    const-string v4, "SAccessoryManager_AuthenticatorClientImpl"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    if-ne v3, v6, :cond_0

    .line 14
    .line 15
    const-string v0, "interrupted!"

    .line 16
    .line 17
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 23
    .line 24
    .line 25
    return v5

    .line 26
    :cond_0
    const/16 v3, 0x52

    .line 27
    .line 28
    const/16 v7, 0x16

    .line 29
    .line 30
    const/16 v8, 0x10

    .line 31
    .line 32
    const/16 v9, 0x22

    .line 33
    .line 34
    const/16 v10, 0x54

    .line 35
    .line 36
    const-string v11, "URI is NULL"

    .line 37
    .line 38
    const-string v12, "ExtraData is NULL"

    .line 39
    .line 40
    const/16 v13, 0x5f

    .line 41
    .line 42
    const/16 v14, 0x5e

    .line 43
    .line 44
    const/16 v15, 0xe

    .line 45
    .line 46
    const-string v6, "Send Command "

    .line 47
    .line 48
    packed-switch v2, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :pswitch_0
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 59
    .line 60
    const/16 v7, 0x24

    .line 61
    .line 62
    invoke-direct {v3, v10, v7, v5, v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, [B

    .line 74
    .line 75
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_1

    .line 99
    .line 100
    invoke-virtual {v1, v14}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 101
    .line 102
    .line 103
    return v5

    .line 104
    :cond_1
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 105
    .line 106
    iget-object v6, v6, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    .line 107
    .line 108
    if-eqz v6, :cond_4

    .line 109
    .line 110
    invoke-virtual {v1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    .line 111
    .line 112
    .line 113
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    .line 116
    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_0
    move v5, v3

    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_3
    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v13}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 129
    .line 130
    .line 131
    return v5

    .line 132
    :cond_4
    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v14}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    return v5

    .line 139
    :catch_0
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 140
    .line 141
    .line 142
    return v5

    .line 143
    :pswitch_1
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 149
    .line 150
    const/16 v7, 0x11

    .line 151
    .line 152
    invoke-direct {v3, v10, v9, v7, v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    check-cast v3, [B

    .line 164
    .line 165
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_5

    .line 189
    .line 190
    invoke-virtual {v1, v13}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 191
    .line 192
    .line 193
    return v5

    .line 194
    :cond_5
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 195
    .line 196
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    .line 197
    .line 198
    if-eqz v0, :cond_6

    .line 199
    .line 200
    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_6
    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v13}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    .line 209
    .line 210
    return v5

    .line 211
    :catch_1
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 212
    .line 213
    .line 214
    return v5

    .line 215
    :pswitch_2
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 221
    .line 222
    invoke-direct {v3, v10, v9, v8, v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    check-cast v3, [B

    .line 234
    .line 235
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-nez v3, :cond_7

    .line 259
    .line 260
    invoke-virtual {v1, v14}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 261
    .line 262
    .line 263
    return v5

    .line 264
    :cond_7
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 265
    .line 266
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    .line 267
    .line 268
    if-eqz v0, :cond_8

    .line 269
    .line 270
    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :cond_8
    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v14}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 279
    .line 280
    .line 281
    return v5

    .line 282
    :catch_2
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 283
    .line 284
    .line 285
    return v5

    .line 286
    :pswitch_3
    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 287
    .line 288
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    new-instance v8, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 292
    .line 293
    invoke-direct {v8, v5, v7, v5, v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v8}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    check-cast v3, [B

    .line 305
    .line 306
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    .line 326
    .line 327
    .line 328
    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 329
    if-nez v0, :cond_9

    .line 330
    .line 331
    return v5

    .line 332
    :cond_9
    move v5, v0

    .line 333
    goto/16 :goto_2

    .line 334
    .line 335
    :catch_3
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 336
    .line 337
    .line 338
    return v5

    .line 339
    :pswitch_4
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 340
    .line 341
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 345
    .line 346
    const/16 v7, 0x42

    .line 347
    .line 348
    invoke-direct {v3, v5, v7, v5, v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    check-cast v3, [B

    .line 360
    .line 361
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    .line 381
    .line 382
    .line 383
    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 384
    if-nez v0, :cond_a

    .line 385
    .line 386
    return v5

    .line 387
    :cond_a
    :goto_1
    const/4 v5, 0x1

    .line 388
    goto/16 :goto_2

    .line 389
    .line 390
    :catch_4
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 391
    .line 392
    .line 393
    return v5

    .line 394
    :pswitch_5
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 395
    .line 396
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 400
    .line 401
    const/16 v7, 0x8

    .line 402
    .line 403
    invoke-direct {v3, v5, v8, v5, v7}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    check-cast v3, [B

    .line 415
    .line 416
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 432
    .line 433
    .line 434
    goto :goto_1

    .line 435
    :catch_5
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 436
    .line 437
    .line 438
    return v5

    .line 439
    :pswitch_6
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 440
    .line 441
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 445
    .line 446
    const/16 v7, 0x1f

    .line 447
    .line 448
    const/16 v8, 0x12

    .line 449
    .line 450
    invoke-direct {v3, v10, v9, v7, v8}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    check-cast v3, [B

    .line 462
    .line 463
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v6

    .line 475
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    if-nez v3, :cond_b

    .line 487
    .line 488
    return v5

    .line 489
    :cond_b
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 490
    .line 491
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->serialNumber:[B

    .line 492
    .line 493
    if-eqz v0, :cond_e

    .line 494
    .line 495
    array-length v3, v0

    .line 496
    new-array v3, v3, [B

    .line 497
    .line 498
    iput-object v3, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    .line 499
    .line 500
    array-length v6, v0

    .line 501
    invoke-static {v0, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    .line 503
    .line 504
    array-length v0, v0

    .line 505
    const/16 v3, 0x17

    .line 506
    .line 507
    if-ne v0, v3, :cond_e

    .line 508
    .line 509
    iget-object v0, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    .line 510
    .line 511
    const/16 v3, 0x15

    .line 512
    .line 513
    aget-byte v0, v0, v3

    .line 514
    .line 515
    and-int/lit16 v0, v0, 0xff

    .line 516
    .line 517
    const/4 v3, 0x1

    .line 518
    if-ne v0, v3, :cond_c

    .line 519
    .line 520
    iput v3, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    .line 521
    .line 522
    goto/16 :goto_0

    .line 523
    .line 524
    :cond_c
    const/4 v6, 0x2

    .line 525
    if-ne v0, v6, :cond_d

    .line 526
    .line 527
    iput v6, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    .line 528
    .line 529
    goto/16 :goto_0

    .line 530
    .line 531
    :cond_d
    const/4 v6, 0x3

    .line 532
    if-ne v0, v6, :cond_2

    .line 533
    .line 534
    iput v6, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 535
    .line 536
    goto/16 :goto_0

    .line 537
    .line 538
    :catch_6
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 539
    .line 540
    .line 541
    return v5

    .line 542
    :cond_e
    :pswitch_7
    const/4 v3, 0x1

    .line 543
    goto/16 :goto_0

    .line 544
    .line 545
    :pswitch_8
    :try_start_7
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 546
    .line 547
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 548
    .line 549
    .line 550
    new-instance v7, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 551
    .line 552
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->genRandom()[B

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    iput-object v7, v3, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    .line 560
    .line 561
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 562
    .line 563
    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    .line 564
    .line 565
    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 566
    .line 567
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    check-cast v3, [B

    .line 575
    .line 576
    iput-object v3, v7, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    .line 577
    .line 578
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 579
    .line 580
    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getDataVerification()[B

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    new-instance v7, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    .line 604
    .line 605
    .line 606
    move-result v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 607
    if-nez v0, :cond_9

    .line 608
    .line 609
    return v5

    .line 610
    :catch_7
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 611
    .line 612
    .line 613
    return v5

    .line 614
    :pswitch_9
    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 615
    .line 616
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    new-instance v8, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 620
    .line 621
    invoke-direct {v8, v5, v7, v5, v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v8}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    check-cast v3, [B

    .line 633
    .line 634
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    .line 635
    .line 636
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v6

    .line 646
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    .line 654
    .line 655
    .line 656
    move-result v3

    .line 657
    if-nez v3, :cond_f

    .line 658
    .line 659
    return v5

    .line 660
    :cond_f
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 661
    .line 662
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->publicKey:Ljava/lang/String;

    .line 663
    .line 664
    if-nez v0, :cond_10

    .line 665
    .line 666
    const-string v0, ""

    .line 667
    .line 668
    :cond_10
    iput-object v0, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 669
    .line 670
    goto/16 :goto_0

    .line 671
    .line 672
    :goto_2
    const-string v0, "Receive Command "

    .line 673
    .line 674
    invoke-static {v2, v0, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    return v5

    .line 678
    :catch_8
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 679
    .line 680
    .line 681
    return v5

    .line 682
    nop

    .line 683
    :pswitch_data_0
    .packed-switch 0x2
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

.method public final stopAuthentication()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    const-string p0, "SAccessoryManager_AuthenticatorClientImpl"

    .line 6
    .line 7
    const-string v0, "fail stop command"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method
