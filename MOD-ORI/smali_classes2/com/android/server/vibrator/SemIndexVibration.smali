.class public final Lcom/android/server/vibrator/SemIndexVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getVibration()Lcom/android/server/vibrator/HalVibration;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/SemVibration;->commonValidation()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    iget v1, v0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    .line 12
    .line 13
    const v3, 0xc3a4

    .line 14
    .line 15
    .line 16
    const-string v4, "VibratorManagerService"

    .line 17
    .line 18
    if-ne v1, v3, :cond_1

    .line 19
    .line 20
    const-string v0, "Silent vibration is ignored."

    .line 21
    .line 22
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_1
    new-instance v3, Lcom/android/server/vibrator/HalVibration;

    .line 27
    .line 28
    iget-object v6, v0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    .line 29
    .line 30
    iget-object v7, v0, Lcom/android/server/vibrator/SemVibration;->mEffect:Landroid/os/CombinedVibration;

    .line 31
    .line 32
    iget-object v5, v0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 33
    .line 34
    invoke-virtual {v5, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIndexDuration(I)I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    int-to-long v8, v8

    .line 39
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HYBRID_HAPTIC()Z

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    if-eqz v10, :cond_3

    .line 44
    .line 45
    invoke-static {v1}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isRamIndexValid(I)Z

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    if-eqz v10, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {v1}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isResourceIndexValid(I)Z

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-eqz v10, :cond_4

    .line 57
    .line 58
    invoke-virtual {v5, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getResourceIndexData(I)[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :cond_3
    :goto_0
    move-object v12, v2

    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_4
    invoke-static {v1}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isHybridIndexValid(I)Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-eqz v10, :cond_3

    .line 70
    .line 71
    const-string v2, "get hybrid index data"

    .line 72
    .line 73
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    iget-object v10, v10, Lcom/samsung/android/server/vibrator/PatternInfo;->hybrid:[I

    .line 90
    .line 91
    array-length v11, v10

    .line 92
    if-nez v11, :cond_5

    .line 93
    .line 94
    const-string v11, "index : "

    .line 95
    .line 96
    const-string v12, " has not hybrid data"

    .line 97
    .line 98
    invoke-static {v1, v11, v12, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    array-length v1, v10

    .line 102
    const/4 v11, 0x0

    .line 103
    move v12, v11

    .line 104
    :goto_1
    if-ge v12, v1, :cond_a

    .line 105
    .line 106
    aget v13, v10, v12

    .line 107
    .line 108
    const v14, 0xc368

    .line 109
    .line 110
    .line 111
    add-int/2addr v14, v13

    .line 112
    if-gez v13, :cond_6

    .line 113
    .line 114
    new-instance v14, Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    .line 115
    .line 116
    mul-int/lit8 v19, v13, -0x1

    .line 117
    .line 118
    const/16 v17, 0x0

    .line 119
    .line 120
    const/16 v18, 0x0

    .line 121
    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    const/16 v20, 0x0

    .line 125
    .line 126
    move-object v15, v14

    .line 127
    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/server/vibrator/CommonPatternInfo;-><init>(IIIII)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_6
    invoke-static {v14}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isRamIndexValid(I)Z

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    if-eqz v13, :cond_8

    .line 139
    .line 140
    const-string v13, "get ram index data"

    .line 141
    .line 142
    invoke-static {v4, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    new-instance v13, Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    .line 146
    .line 147
    invoke-static {v14}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    .line 148
    .line 149
    .line 150
    move-result v17

    .line 151
    invoke-static {v14}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    .line 152
    .line 153
    .line 154
    move-result v15

    .line 155
    invoke-virtual {v5, v15}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v16

    .line 159
    if-nez v16, :cond_7

    .line 160
    .line 161
    const/16 v15, 0x64

    .line 162
    .line 163
    :goto_2
    move/from16 v18, v15

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    invoke-virtual {v5, v15}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v15

    .line 170
    iget v15, v15, Lcom/samsung/android/server/vibrator/PatternInfo;->scale:I

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :goto_3
    invoke-virtual {v5, v14}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIndexDuration(I)I

    .line 174
    .line 175
    .line 176
    move-result v19

    .line 177
    invoke-virtual {v5, v14}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternFrequencyByIndex(I)I

    .line 178
    .line 179
    .line 180
    move-result v20

    .line 181
    const/16 v16, 0x51

    .line 182
    .line 183
    move-object v15, v13

    .line 184
    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/server/vibrator/CommonPatternInfo;-><init>(IIIII)V

    .line 185
    .line 186
    .line 187
    filled-new-array {v13}, [Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    .line 188
    .line 189
    .line 190
    move-result-object v13

    .line 191
    aget-object v13, v13, v11

    .line 192
    .line 193
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_8
    invoke-static {v14}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isResourceIndexValid(I)Z

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    if-eqz v13, :cond_9

    .line 202
    .line 203
    invoke-virtual {v5, v14}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getResourceIndexData(I)[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    array-length v14, v13

    .line 208
    move v15, v11

    .line 209
    :goto_4
    if-ge v15, v14, :cond_9

    .line 210
    .line 211
    aget-object v11, v13, v15

    .line 212
    .line 213
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    add-int/lit8 v15, v15, 0x1

    .line 217
    .line 218
    const/4 v11, 0x0

    .line 219
    goto :goto_4

    .line 220
    :cond_9
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 221
    .line 222
    const/4 v11, 0x0

    .line 223
    goto :goto_1

    .line 224
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    new-array v1, v1, [Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    .line 229
    .line 230
    const/4 v11, 0x0

    .line 231
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-ge v11, v4, :cond_b

    .line 236
    .line 237
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    check-cast v4, Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    .line 242
    .line 243
    aput-object v4, v1, v11

    .line 244
    .line 245
    add-int/lit8 v11, v11, 0x1

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_b
    move-object v12, v1

    .line 249
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/SemVibration;->getCallerInfo()Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    iget v10, v0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    .line 254
    .line 255
    const/4 v11, 0x0

    .line 256
    move-object v5, v3

    .line 257
    invoke-direct/range {v5 .. v13}, Lcom/android/server/vibrator/HalVibration;-><init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;JI[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 258
    .line 259
    .line 260
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "semIndexVibrate : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
