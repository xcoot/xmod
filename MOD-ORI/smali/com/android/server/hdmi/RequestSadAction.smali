.class public final Lcom/android/server/hdmi/RequestSadAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;

.field public final mCecCodecsToQuery:Ljava/util/List;

.field public mQueriedSadCount:I

.field public final mSupportedSads:Ljava/util/List;

.field public final mTargetAddress:I

.field public mTimeoutRetry:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    iput v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/hdmi/RequestSadAction;->mCallback:Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string/jumbo p2, "query_sad_lpcm"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    const/4 v1, 0x1

    .line 44
    if-ne p2, v1, :cond_0

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    const-string/jumbo p2, "query_sad_dd"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-ne p2, v1, :cond_1

    .line 61
    .line 62
    const/4 p2, 0x2

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    const-string/jumbo p2, "query_sad_mpeg1"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-ne p2, v1, :cond_2

    .line 78
    .line 79
    const/4 p2, 0x3

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    const-string/jumbo p2, "query_sad_mp3"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-ne p2, v1, :cond_3

    .line 95
    .line 96
    const/4 p2, 0x4

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_3
    const-string/jumbo p2, "query_sad_mpeg2"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-ne p2, v1, :cond_4

    .line 112
    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_4
    const-string/jumbo p2, "query_sad_aac"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-ne p2, v1, :cond_5

    .line 128
    .line 129
    const/4 p2, 0x6

    .line 130
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_5
    const-string/jumbo p2, "query_sad_dts"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-ne p2, v1, :cond_6

    .line 145
    .line 146
    const/4 p2, 0x7

    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_6
    const-string/jumbo p2, "query_sad_atrac"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-ne p2, v1, :cond_7

    .line 162
    .line 163
    const/16 p2, 0x8

    .line 164
    .line 165
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_7
    const-string/jumbo p2, "query_sad_onebitaudio"

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-ne p2, v1, :cond_8

    .line 180
    .line 181
    const/16 p2, 0x9

    .line 182
    .line 183
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_8
    const-string/jumbo p2, "query_sad_ddp"

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-ne p2, v1, :cond_9

    .line 198
    .line 199
    const/16 p2, 0xa

    .line 200
    .line 201
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :cond_9
    const-string/jumbo p2, "query_sad_dtshd"

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-ne p2, v1, :cond_a

    .line 216
    .line 217
    const/16 p2, 0xb

    .line 218
    .line 219
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_a
    const-string/jumbo p2, "query_sad_truehd"

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-ne p2, v1, :cond_b

    .line 234
    .line 235
    const/16 p2, 0xc

    .line 236
    .line 237
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    :cond_b
    const-string/jumbo p2, "query_sad_dst"

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    if-ne p2, v1, :cond_c

    .line 252
    .line 253
    const/16 p2, 0xd

    .line 254
    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    :cond_c
    const-string/jumbo p2, "query_sad_wmapro"

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result p2

    .line 269
    if-ne p2, v1, :cond_d

    .line 270
    .line 271
    const/16 p2, 0xe

    .line 272
    .line 273
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    :cond_d
    const-string/jumbo p2, "query_sad_max"

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    move-result p0

    .line 287
    if-ne p0, v1, :cond_e

    .line 288
    .line 289
    const/16 p0, 0xf

    .line 290
    .line 291
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    :cond_e
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_2

    .line 8
    .line 9
    iget p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 10
    .line 11
    add-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 13
    .line 14
    if-gt p1, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish$1()V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    if-ne v2, v4, :cond_8

    .line 8
    .line 9
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 10
    .line 11
    iget v5, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    .line 12
    .line 13
    if-eq v5, v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    const/16 v2, 0xa3

    .line 18
    .line 19
    iget-object v5, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 20
    .line 21
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 22
    .line 23
    if-ne p1, v2, :cond_6

    .line 24
    .line 25
    if-eqz v5, :cond_5

    .line 26
    .line 27
    array-length p1, v5

    .line 28
    if-eqz p1, :cond_5

    .line 29
    .line 30
    array-length p1, v5

    .line 31
    rem-int/2addr p1, v1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_1
    move p1, v3

    .line 36
    :goto_0
    array-length v2, v5

    .line 37
    sub-int/2addr v2, v0

    .line 38
    if-ge p1, v2, :cond_4

    .line 39
    .line 40
    aget-byte v2, v5, p1

    .line 41
    .line 42
    and-int/lit16 v6, v2, 0x80

    .line 43
    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    and-int/lit8 v6, v2, 0x78

    .line 48
    .line 49
    shr-int/2addr v6, v1

    .line 50
    if-lez v6, :cond_3

    .line 51
    .line 52
    const/16 v7, 0xf

    .line 53
    .line 54
    if-gt v6, v7, :cond_3

    .line 55
    .line 56
    add-int/lit8 v6, p1, 0x1

    .line 57
    .line 58
    aget-byte v6, v5, v6

    .line 59
    .line 60
    add-int/lit8 v7, p1, 0x2

    .line 61
    .line 62
    aget-byte v7, v5, v7

    .line 63
    .line 64
    new-array v8, v1, [B

    .line 65
    .line 66
    aput-byte v2, v8, v3

    .line 67
    .line 68
    aput-byte v6, v8, v4

    .line 69
    .line 70
    aput-byte v7, v8, v0

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    .line 73
    .line 74
    check-cast v2, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v6, "Dropped invalid codec "

    .line 83
    .line 84
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    aget-byte v6, v5, p1

    .line 88
    .line 89
    const-string v7, "."

    .line 90
    .line 91
    const-string v8, "RequestSadAction"

    .line 92
    .line 93
    invoke-static {v2, v6, v7, v8}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_2
    add-int/2addr p1, v1

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    iget p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 99
    .line 100
    add-int/lit8 p1, p1, 0x4

    .line 101
    .line 102
    iput p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 103
    .line 104
    iput v3, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    .line 107
    .line 108
    .line 109
    :cond_5
    :goto_3
    return v4

    .line 110
    :cond_6
    if-nez p1, :cond_8

    .line 111
    .line 112
    aget-byte p1, v5, v3

    .line 113
    .line 114
    and-int/lit16 p1, p1, 0xff

    .line 115
    .line 116
    const/16 v0, 0xa4

    .line 117
    .line 118
    if-ne p1, v0, :cond_8

    .line 119
    .line 120
    aget-byte p1, v5, v4

    .line 121
    .line 122
    and-int/lit16 p1, p1, 0xff

    .line 123
    .line 124
    if-nez p1, :cond_7

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish$1()V

    .line 127
    .line 128
    .line 129
    return v4

    .line 130
    :cond_7
    if-ne p1, v1, :cond_8

    .line 131
    .line 132
    iget p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 133
    .line 134
    add-int/lit8 p1, p1, 0x4

    .line 135
    .line 136
    iput p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 137
    .line 138
    iput v3, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    .line 141
    .line 142
    .line 143
    return v4

    .line 144
    :cond_8
    :goto_4
    return v3
.end method

.method public final querySad()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish$1()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    check-cast v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget v3, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    add-int/2addr v3, v4

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lcom/android/server/hdmi/RequestSadAction$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    array-length v2, v0

    .line 64
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    new-array v3, v2, [B

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    :goto_0
    if-ge v4, v2, :cond_1

    .line 72
    .line 73
    aget v5, v0, v4

    .line 74
    .line 75
    and-int/lit16 v5, v5, 0xff

    .line 76
    .line 77
    int-to-byte v5, v5

    .line 78
    aput-byte v5, v3, v4

    .line 79
    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/16 v0, 0xa4

    .line 84
    .line 85
    iget v2, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    .line 86
    .line 87
    invoke-static {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 92
    .line 93
    .line 94
    const/4 v0, 0x1

    .line 95
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 96
    .line 97
    const/16 v1, 0x7d0

    .line 98
    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final start()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final wrapUpAndFinish$1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mCallback:Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v2, "SetArcTransmissionStateAction"

    .line 9
    .line 10
    const-string v3, "Enabling ARC"

    .line 11
    .line 12
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 18
    .line 19
    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 22
    .line 23
    .line 24
    iget-boolean v3, v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 25
    .line 26
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "Set Arc Status[old:%b new:true]"

    .line 35
    .line 36
    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel$1(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->notifyArcStatusToAudioService(Ljava/util/List;Z)V

    .line 44
    .line 45
    .line 46
    iput-boolean v3, v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 47
    .line 48
    iput v3, v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 49
    .line 50
    const/16 v0, 0x7d0

    .line 51
    .line 52
    invoke-virtual {v1, v3, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/16 v2, 0xc1

    .line 60
    .line 61
    iget v4, v1, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    .line 62
    .line 63
    invoke-static {v0, v4, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v2, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;

    .line 68
    .line 69
    invoke-direct {v2, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;-><init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
