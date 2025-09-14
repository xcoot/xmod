.class public final Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public bitRatePerSecond:I

.field public bitWidth:I

.field public bufferSize:I

.field public channelMask:I

.field public durationMicroseconds:J

.field public format:I

.field public hasVideo:Z

.field public isStreaming:Z

.field public sampleRateHz:I

.field public streamType:I

.field public usage:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 19
    .line 20
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    .line 21
    .line 22
    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    .line 28
    .line 29
    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    .line 30
    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    return v1

    .line 34
    :cond_4
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    .line 35
    .line 36
    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    .line 37
    .line 38
    if-eq v2, v3, :cond_5

    .line 39
    .line 40
    return v1

    .line 41
    :cond_5
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    .line 42
    .line 43
    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    .line 44
    .line 45
    if-eq v2, v3, :cond_6

    .line 46
    .line 47
    return v1

    .line 48
    :cond_6
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    .line 49
    .line 50
    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    .line 51
    .line 52
    if-eq v2, v3, :cond_7

    .line 53
    .line 54
    return v1

    .line 55
    :cond_7
    iget-wide v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    .line 56
    .line 57
    iget-wide v4, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    .line 58
    .line 59
    cmp-long v2, v2, v4

    .line 60
    .line 61
    if-eqz v2, :cond_8

    .line 62
    .line 63
    return v1

    .line 64
    :cond_8
    iget-boolean v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    .line 65
    .line 66
    iget-boolean v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    .line 67
    .line 68
    if-eq v2, v3, :cond_9

    .line 69
    .line 70
    return v1

    .line 71
    :cond_9
    iget-boolean v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    .line 72
    .line 73
    iget-boolean v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    .line 74
    .line 75
    if-eq v2, v3, :cond_a

    .line 76
    .line 77
    return v1

    .line 78
    :cond_a
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    .line 79
    .line 80
    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    .line 81
    .line 82
    if-eq v2, v3, :cond_b

    .line 83
    .line 84
    return v1

    .line 85
    :cond_b
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    .line 86
    .line 87
    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    .line 88
    .line 89
    if-eq v2, v3, :cond_c

    .line 90
    .line 91
    return v1

    .line 92
    :cond_c
    iget p0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    .line 93
    .line 94
    iget p1, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    .line 95
    .line 96
    if-eq p0, p1, :cond_d

    .line 97
    .line 98
    return v1

    .line 99
    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 12

    .line 1
    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    .line 8
    .line 9
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    .line 14
    .line 15
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    .line 20
    .line 21
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    .line 26
    .line 27
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-wide v6, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    .line 32
    .line 33
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iget-boolean v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    .line 46
    .line 47
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget-boolean v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    .line 52
    .line 53
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    .line 58
    .line 59
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    iget v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    .line 64
    .line 65
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    iget p0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    .line 70
    .line 71
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "{.sampleRateHz = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", .channelMask = "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    .line 22
    .line 23
    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioChannelMask;->toString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ", .format = "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    .line 36
    .line 37
    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioFormat;->toString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", .streamType = "

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    .line 50
    .line 51
    const/4 v3, -0x1

    .line 52
    const-string v4, "0x"

    .line 53
    .line 54
    const-string v5, "CNT"

    .line 55
    .line 56
    const/16 v10, 0x9

    .line 57
    .line 58
    const/16 v11, 0x8

    .line 59
    .line 60
    const/4 v12, 0x7

    .line 61
    const/4 v13, 0x6

    .line 62
    const-string v14, "NOTIFICATION"

    .line 63
    .line 64
    const/4 v15, 0x5

    .line 65
    const-string v16, "ALARM"

    .line 66
    .line 67
    const/4 v6, 0x4

    .line 68
    const/4 v7, 0x3

    .line 69
    const/4 v8, 0x2

    .line 70
    const/4 v9, 0x1

    .line 71
    if-ne v2, v3, :cond_0

    .line 72
    .line 73
    const-string v2, "DEFAULT"

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_0
    if-nez v2, :cond_1

    .line 78
    .line 79
    const-string v2, "MIN"

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_1
    if-nez v2, :cond_2

    .line 84
    .line 85
    const-string v2, "VOICE_CALL"

    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_2
    if-ne v2, v9, :cond_3

    .line 90
    .line 91
    const-string v2, "SYSTEM"

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_3
    if-ne v2, v8, :cond_4

    .line 96
    .line 97
    const-string v2, "RING"

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    if-ne v2, v7, :cond_5

    .line 101
    .line 102
    const-string v2, "MUSIC"

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    if-ne v2, v6, :cond_6

    .line 106
    .line 107
    move-object/from16 v2, v16

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    if-ne v2, v15, :cond_7

    .line 111
    .line 112
    move-object v2, v14

    .line 113
    goto :goto_0

    .line 114
    :cond_7
    if-ne v2, v13, :cond_8

    .line 115
    .line 116
    const-string v2, "BLUETOOTH_SCO"

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_8
    if-ne v2, v12, :cond_9

    .line 120
    .line 121
    const-string v2, "ENFORCED_AUDIBLE"

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_9
    if-ne v2, v11, :cond_a

    .line 125
    .line 126
    const-string v2, "DTMF"

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_a
    if-ne v2, v10, :cond_b

    .line 130
    .line 131
    const-string v2, "TTS"

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_b
    const/16 v3, 0xa

    .line 135
    .line 136
    if-ne v2, v3, :cond_c

    .line 137
    .line 138
    const-string v2, "ACCESSIBILITY"

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_c
    const/16 v3, 0xb

    .line 142
    .line 143
    if-ne v2, v3, :cond_d

    .line 144
    .line 145
    const-string v2, "REROUTING"

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_d
    const/16 v10, 0xc

    .line 149
    .line 150
    if-ne v2, v10, :cond_e

    .line 151
    .line 152
    const-string v2, "PATCH"

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_e
    if-ne v2, v3, :cond_f

    .line 156
    .line 157
    const-string v2, "PUBLIC_CNT"

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_f
    if-ne v2, v10, :cond_10

    .line 161
    .line 162
    const-string v2, "FOR_POLICY_CNT"

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_10
    const/16 v3, 0xd

    .line 166
    .line 167
    if-ne v2, v3, :cond_11

    .line 168
    .line 169
    move-object v2, v5

    .line 170
    goto :goto_0

    .line 171
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v3, v2}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v2, ", .bitRatePerSecond = "

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v2, ", .durationMicroseconds = "

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-wide v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    .line 199
    .line 200
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v2, ", .hasVideo = "

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget-boolean v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v2, ", .isStreaming = "

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-boolean v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    .line 219
    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v2, ", .bitWidth = "

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v2, ", .bufferSize = "

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget v2, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v2, ", .usage = "

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget v0, v0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    .line 249
    .line 250
    if-nez v0, :cond_12

    .line 251
    .line 252
    const-string v5, "UNKNOWN"

    .line 253
    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :cond_12
    if-ne v0, v9, :cond_13

    .line 257
    .line 258
    const-string v5, "MEDIA"

    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_13
    if-ne v0, v8, :cond_14

    .line 263
    .line 264
    const-string v5, "VOICE_COMMUNICATION"

    .line 265
    .line 266
    goto/16 :goto_1

    .line 267
    .line 268
    :cond_14
    if-ne v0, v7, :cond_15

    .line 269
    .line 270
    const-string v5, "VOICE_COMMUNICATION_SIGNALLING"

    .line 271
    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :cond_15
    if-ne v0, v6, :cond_16

    .line 275
    .line 276
    move-object/from16 v5, v16

    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :cond_16
    if-ne v0, v15, :cond_17

    .line 281
    .line 282
    move-object v5, v14

    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :cond_17
    if-ne v0, v13, :cond_18

    .line 286
    .line 287
    const-string v5, "NOTIFICATION_TELEPHONY_RINGTONE"

    .line 288
    .line 289
    goto :goto_1

    .line 290
    :cond_18
    if-ne v0, v12, :cond_19

    .line 291
    .line 292
    const-string v5, "NOTIFICATION_COMMUNICATION_REQUEST"

    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_19
    if-ne v0, v11, :cond_1a

    .line 296
    .line 297
    const-string v5, "NOTIFICATION_COMMUNICATION_INSTANT"

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :cond_1a
    const/16 v2, 0x9

    .line 301
    .line 302
    if-ne v0, v2, :cond_1b

    .line 303
    .line 304
    const-string v5, "NOTIFICATION_COMMUNICATION_DELAYED"

    .line 305
    .line 306
    goto :goto_1

    .line 307
    :cond_1b
    const/16 v2, 0xa

    .line 308
    .line 309
    if-ne v0, v2, :cond_1c

    .line 310
    .line 311
    const-string v5, "NOTIFICATION_EVENT"

    .line 312
    .line 313
    goto :goto_1

    .line 314
    :cond_1c
    const/16 v2, 0xb

    .line 315
    .line 316
    if-ne v0, v2, :cond_1d

    .line 317
    .line 318
    const-string v5, "ASSISTANCE_ACCESSIBILITY"

    .line 319
    .line 320
    goto :goto_1

    .line 321
    :cond_1d
    const/16 v2, 0xc

    .line 322
    .line 323
    if-ne v0, v2, :cond_1e

    .line 324
    .line 325
    const-string v5, "ASSISTANCE_NAVIGATION_GUIDANCE"

    .line 326
    .line 327
    goto :goto_1

    .line 328
    :cond_1e
    const/16 v2, 0xd

    .line 329
    .line 330
    if-ne v0, v2, :cond_1f

    .line 331
    .line 332
    const-string v5, "ASSISTANCE_SONIFICATION"

    .line 333
    .line 334
    goto :goto_1

    .line 335
    :cond_1f
    const/16 v2, 0xe

    .line 336
    .line 337
    if-ne v0, v2, :cond_20

    .line 338
    .line 339
    const-string v5, "GAME"

    .line 340
    .line 341
    goto :goto_1

    .line 342
    :cond_20
    const/16 v2, 0xf

    .line 343
    .line 344
    if-ne v0, v2, :cond_21

    .line 345
    .line 346
    const-string v5, "VIRTUAL_SOURCE"

    .line 347
    .line 348
    goto :goto_1

    .line 349
    :cond_21
    const/16 v2, 0x10

    .line 350
    .line 351
    if-ne v0, v2, :cond_22

    .line 352
    .line 353
    const-string v5, "ASSISTANT"

    .line 354
    .line 355
    goto :goto_1

    .line 356
    :cond_22
    const/16 v3, 0x11

    .line 357
    .line 358
    if-ne v0, v3, :cond_23

    .line 359
    .line 360
    goto :goto_1

    .line 361
    :cond_23
    if-ne v0, v2, :cond_24

    .line 362
    .line 363
    const-string v5, "MAX"

    .line 364
    .line 365
    goto :goto_1

    .line 366
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-static {v2, v0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    :goto_1
    const-string/jumbo v0, "}"

    .line 376
    .line 377
    .line 378
    invoke-static {v1, v5, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    return-object v0
.end method
