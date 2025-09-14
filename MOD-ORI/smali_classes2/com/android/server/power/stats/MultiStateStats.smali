.class public final Lcom/android/server/power/stats/MultiStateStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCompositeState:I

.field public final mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

.field public final mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

.field public mTracking:Z


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/MultiStateStats$Factory;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 5
    .line 6
    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 7
    .line 8
    iget p1, p1, Lcom/android/server/power/stats/MultiStateStats$Factory;->mSerialStateCount:I

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    new-array v4, v3, [J

    .line 16
    .line 17
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    :goto_0
    const/4 v6, 0x1

    .line 22
    if-eq v5, v6, :cond_0

    .line 23
    .line 24
    const/4 v7, 0x3

    .line 25
    if-ne v5, v7, :cond_1

    .line 26
    .line 27
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-nez v7, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move v0, v6

    .line 39
    goto/16 :goto_9

    .line 40
    .line 41
    :cond_1
    :goto_1
    const/4 v7, 0x2

    .line 42
    if-ne v5, v7, :cond_b

    .line 43
    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string/jumbo v7, "stats"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_b

    .line 56
    .line 57
    const-wide/16 v7, 0x0

    .line 58
    .line 59
    invoke-static {v4, v7, v8}, Ljava/util/Arrays;->fill([JJ)V

    .line 60
    .line 61
    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const/4 v7, 0x0

    .line 67
    move v8, v7

    .line 68
    move v9, v8

    .line 69
    :goto_2
    iget-object v10, v0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 70
    .line 71
    if-ge v8, v5, :cond_a

    .line 72
    .line 73
    invoke-interface {v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    const-string v12, "_"

    .line 78
    .line 79
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    const-string v13, "MultiStateStats"

    .line 84
    .line 85
    if-eqz v12, :cond_4

    .line 86
    .line 87
    :try_start_0
    invoke-virtual {v11, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    if-ltz v10, :cond_3

    .line 96
    .line 97
    if-lt v10, v3, :cond_2

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_2
    invoke-interface {v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    .line 101
    .line 102
    .line 103
    move-result-wide v11

    .line 104
    aput-wide v11, v4, v10

    .line 105
    .line 106
    move v1, v7

    .line 107
    goto/16 :goto_8

    .line 108
    .line 109
    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v1, "State index out of bounds: "

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, " length: "

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return v7

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 137
    .line 138
    const-string v3, "Unexpected index syntax: "

    .line 139
    .line 140
    invoke-virtual {v3, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-direct {v2, v3, v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    throw v2

    .line 148
    :cond_4
    invoke-interface {v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    move v14, v7

    .line 153
    :goto_4
    iget-object v15, v10, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 154
    .line 155
    array-length v6, v15

    .line 156
    if-ge v14, v6, :cond_8

    .line 157
    .line 158
    aget-object v6, v15, v14

    .line 159
    .line 160
    iget-object v15, v6, Lcom/android/server/power/stats/MultiStateStats$States;->mName:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v15

    .line 166
    if-eqz v15, :cond_7

    .line 167
    .line 168
    const/4 v15, 0x0

    .line 169
    :goto_5
    iget-object v7, v6, Lcom/android/server/power/stats/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 170
    .line 171
    array-length v1, v7

    .line 172
    if-ge v15, v1, :cond_6

    .line 173
    .line 174
    aget-object v1, v7, v15

    .line 175
    .line 176
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_5

    .line 181
    .line 182
    iget-object v1, v10, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    .line 183
    .line 184
    aget v1, v1, v14

    .line 185
    .line 186
    not-int v1, v1

    .line 187
    and-int/2addr v1, v9

    .line 188
    iget-object v6, v10, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    .line 189
    .line 190
    aget-short v6, v6, v14

    .line 191
    .line 192
    shl-int v6, v15, v6

    .line 193
    .line 194
    or-int/2addr v1, v6

    .line 195
    move v9, v1

    .line 196
    const/4 v1, -0x1

    .line 197
    goto :goto_7

    .line 198
    :cond_5
    add-int/lit8 v15, v15, 0x1

    .line 199
    .line 200
    move-object/from16 v1, p1

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v6, "Unexpected label \'"

    .line 206
    .line 207
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v6, "\' for state: "

    .line 214
    .line 215
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    :goto_6
    const/4 v1, -0x1

    .line 229
    const/4 v9, -0x1

    .line 230
    goto :goto_7

    .line 231
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 232
    .line 233
    move-object/from16 v1, p1

    .line 234
    .line 235
    const/4 v6, 0x1

    .line 236
    const/4 v7, 0x0

    .line 237
    goto :goto_4

    .line 238
    :cond_8
    const-string v1, "Unsupported state: "

    .line 239
    .line 240
    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    goto :goto_6

    .line 248
    :goto_7
    if-ne v9, v1, :cond_9

    .line 249
    .line 250
    const/4 v1, 0x0

    .line 251
    return v1

    .line 252
    :cond_9
    const/4 v1, 0x0

    .line 253
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 254
    .line 255
    move v7, v1

    .line 256
    const/4 v6, 0x1

    .line 257
    move-object/from16 v1, p1

    .line 258
    .line 259
    goto/16 :goto_2

    .line 260
    .line 261
    :cond_a
    iget-object v1, v0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 262
    .line 263
    iget-object v5, v10, Lcom/android/server/power/stats/MultiStateStats$Factory;->mCompositeToSerialState:[I

    .line 264
    .line 265
    aget v5, v5, v9

    .line 266
    .line 267
    invoke-virtual {v1, v5, v4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setValues(I[J)V

    .line 268
    .line 269
    .line 270
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    move-object/from16 v1, p1

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :goto_9
    return v0
.end method

.method public final setState(IIJ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/MultiStateStats;->mTracking:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->updateValues([JJ)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/server/power/stats/MultiStateStats;->mTracking:Z

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/android/server/power/stats/MultiStateStats;->mCompositeState:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    .line 24
    .line 25
    aget v2, v2, p1

    .line 26
    .line 27
    not-int v2, v2

    .line 28
    and-int/2addr v0, v2

    .line 29
    iget-object v2, v1, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    .line 30
    .line 31
    aget-short p1, v2, p1

    .line 32
    .line 33
    shl-int p1, p2, p1

    .line 34
    .line 35
    or-int/2addr p1, v0

    .line 36
    iput p1, p0, Lcom/android/server/power/stats/MultiStateStats;->mCompositeState:I

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 39
    .line 40
    iget-object p2, v1, Lcom/android/server/power/stats/MultiStateStats$Factory;->mCompositeToSerialState:[I

    .line 41
    .line 42
    aget p1, p2, p1

    .line 43
    .line 44
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 17
    .line 18
    new-instance v3, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/MultiStateStats;[JLjava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    array-length p0, v2

    .line 24
    new-array p0, p0, [I

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {v3, v2, p0, v1}, Lcom/android/server/power/stats/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [J

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 12
    .line 13
    new-instance v2, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/MultiStateStats;Lcom/android/modules/utils/TypedXmlSerializer;[J)V

    .line 16
    .line 17
    .line 18
    array-length p0, v1

    .line 19
    new-array p0, p0, [I

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {v2, v1, p0, p1}, Lcom/android/server/power/stats/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    instance-of p1, p1, Ljava/io/IOException;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/io/IOException;

    .line 40
    .line 41
    throw p0

    .line 42
    :cond_0
    throw p0
.end method

.method public final writeXmlForStates(Lcom/android/modules/utils/TypedXmlSerializer;[I[J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/MultiStateStats$Factory;->getSerialState([I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, p3, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)V

    .line 10
    .line 11
    .line 12
    array-length v0, p3

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_5

    .line 16
    .line 17
    aget-wide v3, p3, v2

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    cmp-long v3, v3, v5

    .line 22
    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const-string/jumbo v2, "stats"

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    .line 31
    .line 32
    move v3, v1

    .line 33
    :goto_1
    array-length v4, p2

    .line 34
    if-ge v3, v4, :cond_1

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 37
    .line 38
    aget-object v4, v4, v3

    .line 39
    .line 40
    iget-boolean v7, v4, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 41
    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    aget v7, p2, v3

    .line 45
    .line 46
    if-eqz v7, :cond_0

    .line 47
    .line 48
    iget-object v8, v4, Lcom/android/server/power/stats/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 49
    .line 50
    aget-object v7, v8, v7

    .line 51
    .line 52
    iget-object v4, v4, Lcom/android/server/power/stats/MultiStateStats$States;->mName:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {p1, v0, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    .line 56
    .line 57
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_2
    array-length p0, p3

    .line 61
    if-ge v1, p0, :cond_3

    .line 62
    .line 63
    aget-wide v3, p3, v1

    .line 64
    .line 65
    cmp-long p0, v3, v5

    .line 66
    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    const-string p0, "_"

    .line 70
    .line 71
    invoke-static {v1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    aget-wide v3, p3, v1

    .line 76
    .line 77
    invoke-interface {p1, v0, p0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    .line 79
    .line 80
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    return-void
.end method
