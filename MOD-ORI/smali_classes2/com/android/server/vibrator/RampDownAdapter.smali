.class public final Lcom/android/server/vibrator/RampDownAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# instance fields
.field public final mRampDownDuration:I

.field public final mStepDuration:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    .line 7
    .line 8
    return-void
.end method

.method public static endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p0, Landroid/os/vibrator/StepSegment;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    cmpl-float p0, p0, v2

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v3

    .line 20
    :goto_0
    return v1

    .line 21
    :cond_1
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    check-cast p0, Landroid/os/vibrator/RampSegment;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    cmpl-float p0, p0, v2

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move v1, v3

    .line 37
    :goto_1
    return v1

    .line 38
    :cond_3
    return v3
.end method

.method public static isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p0, Landroid/os/vibrator/StepSegment;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    cmpl-float p0, p0, v3

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    return v1

    .line 21
    :cond_1
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    check-cast p0, Landroid/os/vibrator/RampSegment;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    cmpl-float v0, v0, v3

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    cmpl-float p0, p0, v3

    .line 40
    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v1, v2

    .line 45
    :goto_1
    return v1

    .line 46
    :cond_3
    return v2
.end method

.method public static updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 7

    .line 1
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/os/vibrator/RampSegment;

    .line 6
    .line 7
    new-instance v6, Landroid/os/vibrator/RampSegment;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    long-to-int v5, p1

    .line 26
    move-object v0, v6

    .line 27
    invoke-direct/range {v0 .. v5}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 28
    .line 29
    .line 30
    return-object v6

    .line 31
    :cond_0
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    check-cast p0, Landroid/os/vibrator/StepSegment;

    .line 36
    .line 37
    new-instance v0, Landroid/os/vibrator/StepSegment;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    long-to-int p1, p1

    .line 48
    invoke-direct {v0, v1, p0, p1}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    .line 4
    .line 5
    if-gtz v1, :cond_0

    .line 6
    .line 7
    return p3

    .line 8
    :cond_0
    move-object/from16 v2, p2

    .line 9
    .line 10
    check-cast v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x1

    .line 17
    move v5, v3

    .line 18
    move v6, v4

    .line 19
    move/from16 v3, p3

    .line 20
    .line 21
    :goto_0
    if-ge v6, v5, :cond_8

    .line 22
    .line 23
    add-int/lit8 v7, v6, -0x1

    .line 24
    .line 25
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    check-cast v7, Landroid/os/vibrator/VibrationEffectSegment;

    .line 30
    .line 31
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    .line 36
    .line 37
    invoke-static {v8}, Lcom/android/server/vibrator/RampDownAdapter;->isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_7

    .line 42
    .line 43
    invoke-static {v7}, Lcom/android/server/vibrator/RampDownAdapter;->endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-nez v8, :cond_1

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    .line 56
    .line 57
    invoke-virtual {v8}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    instance-of v10, v7, Landroid/os/vibrator/StepSegment;

    .line 62
    .line 63
    if-eqz v10, :cond_2

    .line 64
    .line 65
    check-cast v7, Landroid/os/vibrator/StepSegment;

    .line 66
    .line 67
    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    invoke-virtual {v0, v10, v7, v8, v9}, Lcom/android/server/vibrator/RampDownAdapter;->createStepsDown(FFJ)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    instance-of v10, v7, Landroid/os/vibrator/RampSegment;

    .line 81
    .line 82
    if-eqz v10, :cond_4

    .line 83
    .line 84
    check-cast v7, Landroid/os/vibrator/RampSegment;

    .line 85
    .line 86
    invoke-virtual {v7}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    invoke-virtual {v7}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    .line 91
    .line 92
    .line 93
    move-result v16

    .line 94
    int-to-long v14, v1

    .line 95
    cmp-long v7, v8, v14

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    if-gtz v7, :cond_3

    .line 100
    .line 101
    new-array v7, v4, [Landroid/os/vibrator/VibrationEffectSegment;

    .line 102
    .line 103
    new-instance v18, Landroid/os/vibrator/RampSegment;

    .line 104
    .line 105
    const/4 v12, 0x0

    .line 106
    long-to-int v15, v8

    .line 107
    move-object/from16 v10, v18

    .line 108
    .line 109
    move/from16 v13, v16

    .line 110
    .line 111
    move/from16 v14, v16

    .line 112
    .line 113
    invoke-direct/range {v10 .. v15}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 114
    .line 115
    .line 116
    aput-object v18, v7, v17

    .line 117
    .line 118
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    const/4 v7, 0x2

    .line 124
    new-array v7, v7, [Landroid/os/vibrator/VibrationEffectSegment;

    .line 125
    .line 126
    new-instance v18, Landroid/os/vibrator/RampSegment;

    .line 127
    .line 128
    const/4 v12, 0x0

    .line 129
    long-to-int v13, v14

    .line 130
    move-object/from16 v10, v18

    .line 131
    .line 132
    move/from16 v19, v13

    .line 133
    .line 134
    move/from16 v13, v16

    .line 135
    .line 136
    move-wide/from16 v20, v14

    .line 137
    .line 138
    move/from16 v14, v16

    .line 139
    .line 140
    move/from16 v15, v19

    .line 141
    .line 142
    invoke-direct/range {v10 .. v15}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 143
    .line 144
    .line 145
    aput-object v18, v7, v17

    .line 146
    .line 147
    sub-long v8, v8, v20

    .line 148
    .line 149
    new-instance v10, Landroid/os/vibrator/RampSegment;

    .line 150
    .line 151
    const/4 v14, 0x0

    .line 152
    long-to-int v8, v8

    .line 153
    const/4 v13, 0x0

    .line 154
    move-object v12, v10

    .line 155
    move/from16 v15, v16

    .line 156
    .line 157
    move/from16 v17, v8

    .line 158
    .line 159
    invoke-direct/range {v12 .. v17}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 160
    .line 161
    .line 162
    aput-object v10, v7, v4

    .line 163
    .line 164
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    goto :goto_1

    .line 169
    :cond_4
    const/4 v7, 0x0

    .line 170
    :goto_1
    if-eqz v7, :cond_7

    .line 171
    .line 172
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    sub-int/2addr v8, v4

    .line 177
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    check-cast v9, Landroid/os/vibrator/VibrationEffectSegment;

    .line 182
    .line 183
    invoke-virtual {v2, v6, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 184
    .line 185
    .line 186
    if-lt v3, v6, :cond_6

    .line 187
    .line 188
    if-ne v3, v6, :cond_5

    .line 189
    .line 190
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    add-int/lit8 v3, v3, 0x1

    .line 194
    .line 195
    add-int/lit8 v5, v5, 0x1

    .line 196
    .line 197
    :cond_5
    add-int/2addr v3, v8

    .line 198
    :cond_6
    add-int/2addr v6, v8

    .line 199
    add-int/2addr v5, v8

    .line 200
    :cond_7
    :goto_2
    add-int/2addr v6, v4

    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_8
    if-gez v3, :cond_9

    .line 204
    .line 205
    goto/16 :goto_3

    .line 206
    .line 207
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    sub-int/2addr v5, v4

    .line 212
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 217
    .line 218
    invoke-static {v4}, Lcom/android/server/vibrator/RampDownAdapter;->endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-eqz v4, :cond_d

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 229
    .line 230
    invoke-static {v4}, Lcom/android/server/vibrator/RampDownAdapter;->isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-nez v4, :cond_a

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    .line 248
    .line 249
    invoke-virtual {v5}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    .line 250
    .line 251
    .line 252
    move-result-wide v6

    .line 253
    int-to-long v8, v1

    .line 254
    cmp-long v1, v6, v8

    .line 255
    .line 256
    if-lez v1, :cond_b

    .line 257
    .line 258
    sub-long v10, v6, v8

    .line 259
    .line 260
    invoke-static {v5, v10, v11}, Lcom/android/server/vibrator/RampDownAdapter;->updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    invoke-static {v5, v8, v9}, Lcom/android/server/vibrator/RampDownAdapter;->updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 275
    .line 276
    instance-of v1, v4, Landroid/os/vibrator/StepSegment;

    .line 277
    .line 278
    if-eqz v1, :cond_c

    .line 279
    .line 280
    check-cast v4, Landroid/os/vibrator/StepSegment;

    .line 281
    .line 282
    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 291
    .line 292
    .line 293
    move-result-wide v5

    .line 294
    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/vibrator/RampDownAdapter;->createStepsDown(FFJ)Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_c
    instance-of v0, v4, Landroid/os/vibrator/RampSegment;

    .line 303
    .line 304
    if-eqz v0, :cond_d

    .line 305
    .line 306
    check-cast v4, Landroid/os/vibrator/RampSegment;

    .line 307
    .line 308
    invoke-virtual {v4}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 309
    .line 310
    .line 311
    move-result v11

    .line 312
    invoke-virtual {v4}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    .line 313
    .line 314
    .line 315
    move-result v14

    .line 316
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 317
    .line 318
    .line 319
    move-result-wide v0

    .line 320
    new-instance v4, Landroid/os/vibrator/RampSegment;

    .line 321
    .line 322
    const/4 v12, 0x0

    .line 323
    long-to-int v15, v0

    .line 324
    move-object v10, v4

    .line 325
    move v13, v14

    .line 326
    invoke-direct/range {v10 .. v15}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    :cond_d
    :goto_3
    return v3
.end method

.method public final createStepsDown(FFJ)Ljava/util/List;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    long-to-int v0, v0

    .line 9
    iget p0, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    .line 10
    .line 11
    div-int/2addr v0, p0

    .line 12
    int-to-float v1, v0

    .line 13
    div-float v1, p1, v1

    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    move v4, v3

    .line 22
    :goto_0
    if-ge v4, v0, :cond_0

    .line 23
    .line 24
    new-instance v5, Landroid/os/vibrator/StepSegment;

    .line 25
    .line 26
    int-to-float v6, v4

    .line 27
    mul-float/2addr v6, v1

    .line 28
    sub-float v6, p1, v6

    .line 29
    .line 30
    invoke-direct {v5, v6, p2, p0}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    long-to-int p1, p3

    .line 40
    sub-int/2addr v0, v3

    .line 41
    mul-int/2addr v0, p0

    .line 42
    sub-int/2addr p1, v0

    .line 43
    new-instance p0, Landroid/os/vibrator/StepSegment;

    .line 44
    .line 45
    const/4 p3, 0x0

    .line 46
    invoke-direct {p0, p3, p2, p1}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-object v2
.end method
