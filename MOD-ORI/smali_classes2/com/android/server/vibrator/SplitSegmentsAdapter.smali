.class public final Lcom/android/server/vibrator/SplitSegmentsAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 25

    .line 1
    const-wide/16 v0, 0x400

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return p3

    .line 12
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/VibratorInfo;->getPwlePrimitiveDurationMax()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-gtz v0, :cond_1

    .line 17
    .line 18
    return p3

    .line 19
    :cond_1
    move-object/from16 v1, p2

    .line 20
    .line 21
    check-cast v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    move v5, v4

    .line 29
    move v4, v3

    .line 30
    move/from16 v3, p3

    .line 31
    .line 32
    :goto_0
    if-ge v5, v4, :cond_a

    .line 33
    .line 34
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    instance-of v6, v6, Landroid/os/vibrator/RampSegment;

    .line 39
    .line 40
    const/4 v7, 0x1

    .line 41
    if-nez v6, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Landroid/os/vibrator/RampSegment;

    .line 49
    .line 50
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getDuration()J

    .line 51
    .line 52
    .line 53
    move-result-wide v8

    .line 54
    long-to-int v8, v8

    .line 55
    add-int/2addr v8, v0

    .line 56
    sub-int/2addr v8, v7

    .line 57
    div-int/2addr v8, v0

    .line 58
    if-gt v8, v7, :cond_3

    .line 59
    .line 60
    :goto_1
    move v6, v7

    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    new-instance v9, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    const/4 v12, 0x0

    .line 84
    if-eqz v11, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    cmpl-float v11, v10, v12

    .line 88
    .line 89
    if-nez v11, :cond_5

    .line 90
    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    :cond_5
    :goto_2
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    if-eqz v13, :cond_6

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    cmpl-float v12, v11, v12

    .line 111
    .line 112
    if-nez v12, :cond_7

    .line 113
    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    :cond_7
    :goto_3
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getDuration()J

    .line 119
    .line 120
    .line 121
    move-result-wide v12

    .line 122
    int-to-long v14, v8

    .line 123
    div-long/2addr v12, v14

    .line 124
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    .line 125
    .line 126
    .line 127
    move-result v14

    .line 128
    const-wide/16 v15, 0x0

    .line 129
    .line 130
    move/from16 v20, v10

    .line 131
    .line 132
    move/from16 v18, v14

    .line 133
    .line 134
    move v14, v7

    .line 135
    :goto_4
    if-ge v14, v8, :cond_8

    .line 136
    .line 137
    move/from16 p2, v8

    .line 138
    .line 139
    add-long v7, v15, v12

    .line 140
    .line 141
    long-to-float v15, v7

    .line 142
    move-wide/from16 v23, v7

    .line 143
    .line 144
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getDuration()J

    .line 145
    .line 146
    .line 147
    move-result-wide v7

    .line 148
    long-to-float v7, v7

    .line 149
    div-float/2addr v15, v7

    .line 150
    invoke-static {v10, v11, v15}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 151
    .line 152
    .line 153
    move-result v21

    .line 154
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    invoke-static {v7, v8, v15}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 163
    .line 164
    .line 165
    move-result v19

    .line 166
    new-instance v7, Landroid/os/vibrator/RampSegment;

    .line 167
    .line 168
    long-to-int v8, v12

    .line 169
    move-object/from16 v17, v7

    .line 170
    .line 171
    move/from16 v22, v8

    .line 172
    .line 173
    invoke-direct/range {v17 .. v22}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 180
    .line 181
    .line 182
    move-result v18

    .line 183
    invoke-virtual {v7}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    .line 184
    .line 185
    .line 186
    move-result v20

    .line 187
    add-int/lit8 v14, v14, 0x1

    .line 188
    .line 189
    move/from16 v8, p2

    .line 190
    .line 191
    move-wide/from16 v15, v23

    .line 192
    .line 193
    const/4 v7, 0x1

    .line 194
    goto :goto_4

    .line 195
    :cond_8
    move/from16 p2, v8

    .line 196
    .line 197
    new-instance v7, Landroid/os/vibrator/RampSegment;

    .line 198
    .line 199
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 200
    .line 201
    .line 202
    move-result v14

    .line 203
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getDuration()J

    .line 204
    .line 205
    .line 206
    move-result-wide v12

    .line 207
    sub-long/2addr v12, v15

    .line 208
    long-to-int v6, v12

    .line 209
    move-object v12, v7

    .line 210
    move/from16 v13, v18

    .line 211
    .line 212
    move/from16 v15, v20

    .line 213
    .line 214
    move/from16 v16, v11

    .line 215
    .line 216
    move/from16 v17, v6

    .line 217
    .line 218
    invoke-direct/range {v12 .. v17}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v5, v9}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 225
    .line 226
    .line 227
    add-int/lit8 v8, p2, -0x1

    .line 228
    .line 229
    if-le v3, v5, :cond_9

    .line 230
    .line 231
    add-int/2addr v3, v8

    .line 232
    :cond_9
    add-int/2addr v5, v8

    .line 233
    add-int/2addr v4, v8

    .line 234
    const/4 v6, 0x1

    .line 235
    :goto_5
    add-int/2addr v5, v6

    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_a
    return v3
.end method
