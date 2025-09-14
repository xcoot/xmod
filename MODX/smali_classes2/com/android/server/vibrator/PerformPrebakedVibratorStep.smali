.class public final Lcom/android/server/vibrator/PerformPrebakedVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final play()Ljava/util/List;
    .locals 15

    .line 1
    const-string v0, "Playing fallback for effect "

    .line 2
    .line 3
    const-string v1, "Perform "

    .line 4
    .line 5
    const-string v2, "Ignoring wrong segment for a PerformPrebakedVibratorStep: "

    .line 6
    .line 7
    const-string v3, "PerformPrebakedVibratorStep"

    .line 8
    .line 9
    const-wide/32 v4, 0x800000

    .line 10
    .line 11
    .line 12
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 22
    .line 23
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    .line 28
    .line 29
    instance-of v6, v3, Landroid/os/vibrator/PrebakedSegment;

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    const-string v0, "VibrationThread"

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v7}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(I)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_0
    :try_start_1
    check-cast v3, Landroid/os/vibrator/PrebakedSegment;

    .line 63
    .line 64
    const-string v2, "VibrationThread"

    .line 65
    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v1}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, " on vibrator "

    .line 83
    .line 84
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 108
    .line 109
    invoke-virtual {v3}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iget-object v1, v1, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Landroid/os/VibrationEffect;

    .line 120
    .line 121
    iget-object v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 122
    .line 123
    iget-object v6, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 124
    .line 125
    iget-object v6, v6, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 126
    .line 127
    iget-wide v13, v6, Lcom/android/server/vibrator/Vibration;->id:J

    .line 128
    .line 129
    iget-object v6, v2, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 130
    .line 131
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    iget-object v8, v2, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    int-to-long v9, v9

    .line 139
    invoke-virtual {v3}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    int-to-long v11, v11

    .line 144
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->perform(JJJ)J

    .line 145
    .line 146
    .line 147
    move-result-wide v8

    .line 148
    const-wide/16 v10, 0x0

    .line 149
    .line 150
    cmp-long v10, v8, v10

    .line 151
    .line 152
    if-lez v10, :cond_1

    .line 153
    .line 154
    const/high16 v11, -0x40800000    # -1.0f

    .line 155
    .line 156
    iput v11, v2, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 157
    .line 158
    invoke-virtual {v2, v7}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :catchall_1
    move-exception p0

    .line 163
    goto/16 :goto_2

    .line 164
    .line 165
    :cond_1
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    :try_start_3
    invoke-virtual {p0, v8, v9}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)V

    .line 167
    .line 168
    .line 169
    iget-object v2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 170
    .line 171
    iget-object v2, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 172
    .line 173
    iget-object v2, v2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 174
    .line 175
    iget v6, v2, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformCount:I

    .line 176
    .line 177
    add-int/2addr v6, v7

    .line 178
    iput v6, v2, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformCount:I

    .line 179
    .line 180
    if-lez v10, :cond_2

    .line 181
    .line 182
    iget-object v6, v2, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    .line 183
    .line 184
    invoke-virtual {v3}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    invoke-virtual {v6, v11, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 189
    .line 190
    .line 191
    iget v6, v2, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 192
    .line 193
    long-to-int v8, v8

    .line 194
    add-int/2addr v6, v8

    .line 195
    iput v6, v2, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_2
    iget-object v2, v2, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    .line 199
    .line 200
    invoke-virtual {v3}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    const/4 v8, 0x0

    .line 205
    invoke-virtual {v2, v6, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 206
    .line 207
    .line 208
    :goto_1
    if-nez v10, :cond_3

    .line 209
    .line 210
    invoke-virtual {v3}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_3

    .line 215
    .line 216
    instance-of v2, v1, Landroid/os/VibrationEffect$Composed;

    .line 217
    .line 218
    if-eqz v2, :cond_3

    .line 219
    .line 220
    const-string v2, "VibrationThread"

    .line 221
    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    invoke-static {v0}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    iget-object v6, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 246
    .line 247
    iget-wide v7, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 248
    .line 249
    iget-object v9, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 250
    .line 251
    check-cast v1, Landroid/os/VibrationEffect$Composed;

    .line 252
    .line 253
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    iget v11, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 258
    .line 259
    iget-wide v12, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 260
    .line 261
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    iget-wide v2, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    .line 270
    .line 271
    invoke-virtual {p0, v2, v3}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    .line 273
    .line 274
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 275
    .line 276
    .line 277
    return-object v1

    .line 278
    :cond_3
    :try_start_4
    invoke-virtual {p0, v7}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(I)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 283
    .line 284
    .line 285
    return-object p0

    .line 286
    :goto_2
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 287
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 288
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 289
    .line 290
    .line 291
    throw p0
.end method

.method public final replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-ge v2, p0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    add-int/lit8 p0, p0, -0x1

    .line 51
    .line 52
    add-int/2addr v1, p0

    .line 53
    :cond_0
    new-instance p0, Landroid/os/VibrationEffect$Composed;

    .line 54
    .line 55
    invoke-direct {p0, v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 56
    .line 57
    .line 58
    return-object p0
.end method
