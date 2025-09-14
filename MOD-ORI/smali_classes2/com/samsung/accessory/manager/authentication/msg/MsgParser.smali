.class public final Lcom/samsung/accessory/manager/authentication/msg/MsgParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public extraData:[B

.field public keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

.field public mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

.field public mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field public managerUrl:[B

.field public productId:B

.field public publicKey:Ljava/lang/String;

.field public randNum:[B

.field public serialNumber:[B

.field public urlExtra:[B


# direct methods
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
.method public final checkPubKey(IZ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v1, v1

    .line 10
    iget v2, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    .line 11
    .line 12
    iget v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    .line 13
    .line 14
    add-int/2addr v2, v0

    .line 15
    const/4 v0, 0x0

    .line 16
    if-ne v1, v2, :cond_3

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    .line 27
    .line 28
    iget v4, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    .line 29
    .line 30
    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    iget v3, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    div-int/2addr v3, v5

    .line 37
    iget-object v6, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    .line 38
    .line 39
    invoke-static {v2, v4, v6, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    add-int/2addr v4, v3

    .line 43
    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    .line 44
    .line 45
    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    const/4 v5, 0x3

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    if-ne p1, v5, :cond_1

    .line 54
    .line 55
    move v5, v0

    .line 56
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    .line 59
    .line 60
    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 65
    .line 66
    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    .line 67
    .line 68
    invoke-static {p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    .line 75
    .line 76
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 81
    .line 82
    invoke-virtual {v2, v5, p1, p2, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->verify_certificate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-ne p1, v0, :cond_2

    .line 87
    .line 88
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 89
    .line 90
    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    .line 91
    .line 92
    invoke-static {p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->publicKey:Ljava/lang/String;

    .line 97
    .line 98
    :cond_2
    move v0, p1

    .line 99
    :cond_3
    return v0
.end method

.method public final parseData(I[BZ)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const-string v3, "SAccessoryManager_MsgParser"

    .line 5
    .line 6
    if-eq p1, v0, :cond_4

    .line 7
    .line 8
    const-string v4, ":"

    .line 9
    .line 10
    const-string v5, "command "

    .line 11
    .line 12
    if-eq p1, v1, :cond_3

    .line 13
    .line 14
    const/4 v6, 0x3

    .line 15
    if-eq p1, v6, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    const-string v1, "extra Data: "

    .line 21
    .line 22
    const-string/jumbo v4, "url: "

    .line 23
    .line 24
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :pswitch_0
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 31
    .line 32
    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    .line 33
    .line 34
    .line 35
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    .line 42
    .line 43
    aget-byte p2, p1, v2

    .line 44
    .line 45
    and-int/lit16 p2, p2, 0xff

    .line 46
    .line 47
    add-int/2addr p2, v0

    .line 48
    aget-byte p3, p1, p2

    .line 49
    .line 50
    and-int/lit16 p3, p3, 0xff

    .line 51
    .line 52
    new-array v5, p2, [B

    .line 53
    .line 54
    iput-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    .line 55
    .line 56
    add-int/2addr p3, v0

    .line 57
    new-array v6, p3, [B

    .line 58
    .line 59
    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    .line 60
    .line 61
    invoke-static {p1, v2, v5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    .line 65
    .line 66
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    .line 67
    .line 68
    invoke-static {p1, p2, v5, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    .line 77
    .line 78
    invoke-static {p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v3, p1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    .line 98
    .line 99
    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v3, p0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :pswitch_1
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 116
    .line 117
    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    .line 118
    .line 119
    .line 120
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 121
    .line 122
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    .line 127
    .line 128
    array-length p2, p1

    .line 129
    add-int/lit8 p3, p2, 0x1

    .line 130
    .line 131
    new-array p3, p3, [B

    .line 132
    .line 133
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    .line 134
    .line 135
    int-to-byte v4, p2

    .line 136
    aput-byte v4, p3, v2

    .line 137
    .line 138
    invoke-static {p1, v2, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    .line 140
    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    .line 147
    .line 148
    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {v3, p0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :pswitch_2
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 165
    .line 166
    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    .line 167
    .line 168
    .line 169
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 170
    .line 171
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    .line 176
    .line 177
    array-length p2, p1

    .line 178
    add-int/lit8 p3, p2, 0x1

    .line 179
    .line 180
    new-array p3, p3, [B

    .line 181
    .line 182
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    .line 183
    .line 184
    int-to-byte v1, p2

    .line 185
    aput-byte v1, p3, v2

    .line 186
    .line 187
    invoke-static {p1, v2, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    .line 189
    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    .line 196
    .line 197
    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-static {v3, p0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    goto/16 :goto_2

    .line 212
    .line 213
    :pswitch_3
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 214
    .line 215
    invoke-direct {v0, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    .line 216
    .line 217
    .line 218
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 219
    .line 220
    const/16 p1, 0x8

    .line 221
    .line 222
    invoke-virtual {p0, p1, p3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkPubKey(IZ)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    goto/16 :goto_2

    .line 227
    .line 228
    :cond_0
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 229
    .line 230
    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    .line 231
    .line 232
    .line 233
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 234
    .line 235
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->serialNumber:[B

    .line 240
    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :cond_1
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 244
    .line 245
    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    .line 246
    .line 247
    .line 248
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 249
    .line 250
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 251
    .line 252
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    array-length p3, p3

    .line 257
    iget p2, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    .line 258
    .line 259
    if-ne p3, p2, :cond_2

    .line 260
    .line 261
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 262
    .line 263
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 264
    .line 265
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    .line 266
    .line 267
    .line 268
    move-result-object p3

    .line 269
    iget v0, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    .line 270
    .line 271
    div-int/2addr v0, v1

    .line 272
    iget-object v1, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    .line 273
    .line 274
    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    .line 276
    .line 277
    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    .line 278
    .line 279
    invoke-static {p3, v0, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    .line 281
    .line 282
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 283
    .line 284
    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    .line 285
    .line 286
    invoke-static {p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    .line 291
    .line 292
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 293
    .line 294
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    .line 295
    .line 296
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 301
    .line 302
    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    .line 303
    .line 304
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 309
    .line 310
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->verify_rand_signature(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result p0

    .line 314
    move v0, p0

    .line 315
    goto :goto_0

    .line 316
    :cond_2
    const-string/jumbo p0, "signature is invalid"

    .line 317
    .line 318
    .line 319
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    move v0, v2

    .line 323
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    invoke-static {v3, p0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    goto/16 :goto_2

    .line 345
    .line 346
    :cond_3
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 347
    .line 348
    invoke-direct {v0, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    .line 349
    .line 350
    .line 351
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 352
    .line 353
    invoke-virtual {p0, v1, p3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkPubKey(IZ)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    new-instance p0, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    invoke-static {v3, p0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    goto :goto_2

    .line 379
    :cond_4
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 380
    .line 381
    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    .line 382
    .line 383
    .line 384
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 385
    .line 386
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    array-length p1, p1

    .line 391
    if-lt p1, v1, :cond_6

    .line 392
    .line 393
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 394
    .line 395
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    aget-byte p1, p1, v0

    .line 400
    .line 401
    iput-byte p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    .line 402
    .line 403
    new-instance p1, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string/jumbo p2, "productId = "

    .line 406
    .line 407
    .line 408
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    iget-byte p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    .line 412
    .line 413
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p2

    .line 417
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string p2, "h"

    .line 421
    .line 422
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-static {v3, p1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .line 431
    .line 432
    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 433
    .line 434
    iget-byte p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    .line 435
    .line 436
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 437
    .line 438
    .line 439
    and-int/lit16 p2, p2, 0xff

    .line 440
    .line 441
    const/16 p3, 0x33

    .line 442
    .line 443
    if-eq p2, p3, :cond_5

    .line 444
    .line 445
    const/16 p3, 0x55

    .line 446
    .line 447
    if-eq p2, p3, :cond_5

    .line 448
    .line 449
    goto :goto_1

    .line 450
    :cond_5
    const/16 p2, 0x28

    .line 451
    .line 452
    iput p2, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    .line 453
    .line 454
    const/16 p3, 0x2a

    .line 455
    .line 456
    iput p3, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    .line 457
    .line 458
    new-array p2, p2, [B

    .line 459
    .line 460
    iput-object p2, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    .line 461
    .line 462
    const/16 p2, 0x15

    .line 463
    .line 464
    new-array p3, p2, [B

    .line 465
    .line 466
    iput-object p3, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    .line 467
    .line 468
    new-array p3, p2, [B

    .line 469
    .line 470
    iput-object p3, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    .line 471
    .line 472
    new-array p3, p2, [B

    .line 473
    .line 474
    iput-object p3, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    .line 475
    .line 476
    new-array p2, p2, [B

    .line 477
    .line 478
    iput-object p2, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    .line 479
    .line 480
    :goto_1
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 481
    .line 482
    goto :goto_2

    .line 483
    :cond_6
    move v0, v2

    .line 484
    :goto_2
    return v0

    .line 485
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
