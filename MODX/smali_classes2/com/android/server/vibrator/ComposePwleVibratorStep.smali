.class public final Lcom/android/server/vibrator/ComposePwleVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static unrollRampSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/high16 v3, 0x3f800000    # 1.0f

    .line 19
    .line 20
    move v4, p2

    .line 21
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-gt v5, p2, :cond_5

    .line 26
    .line 27
    if-ne p1, v1, :cond_0

    .line 28
    .line 29
    if-ltz v2, :cond_5

    .line 30
    .line 31
    move p1, v2

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    .line 41
    .line 42
    instance-of v6, v5, Landroid/os/vibrator/RampSegment;

    .line 43
    .line 44
    if-eqz v6, :cond_5

    .line 45
    .line 46
    check-cast v5, Landroid/os/vibrator/RampSegment;

    .line 47
    .line 48
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    add-int/lit8 v6, v6, -0x1

    .line 56
    .line 57
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Landroid/os/vibrator/RampSegment;

    .line 62
    .line 63
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-le v7, p2, :cond_1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    const/4 v8, 0x0

    .line 75
    cmpl-float v8, v6, v8

    .line 76
    .line 77
    if-nez v8, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    div-int/lit8 v8, p2, 0x2

    .line 81
    .line 82
    if-ge v7, v8, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    cmpg-float v6, v6, v3

    .line 86
    .line 87
    if-gtz v6, :cond_4

    .line 88
    .line 89
    :goto_1
    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-le p0, p2, :cond_6

    .line 105
    .line 106
    const/4 p0, 0x0

    .line 107
    invoke-virtual {v0, p0, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :cond_6
    return-object v0
.end method


# virtual methods
.method public final play()Ljava/util/List;
    .locals 14

    .line 1
    const-string v0, "Compose "

    .line 2
    .line 3
    const-string v1, "Ignoring wrong segment for a ComposePwleStep: "

    .line 4
    .line 5
    const-string v2, "ComposePwleStep"

    .line 6
    .line 7
    const-wide/32 v3, 0x800000

    .line 8
    .line 9
    .line 10
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getPwleSizeMax()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 22
    .line 23
    iget v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 24
    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v2, 0x64

    .line 29
    .line 30
    :goto_0
    invoke-static {v5, v6, v2}, Lcom/android/server/vibrator/ComposePwleVibratorStep;->unrollRampSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v6, 0x1

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    const-string v0, "VibrationThread"

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 55
    .line 56
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v6}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(I)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_1
    :try_start_1
    const-string v1, "VibrationThread"

    .line 82
    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, " PWLEs on vibrator "

    .line 92
    .line 93
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    new-array v0, v0, [Landroid/os/vibrator/RampSegment;

    .line 119
    .line 120
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, [Landroid/os/vibrator/RampSegment;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 127
    .line 128
    iget-object v5, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 129
    .line 130
    iget-object v5, v5, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 131
    .line 132
    iget-wide v7, v5, Lcom/android/server/vibrator/Vibration;->id:J

    .line 133
    .line 134
    iget-object v5, v1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 135
    .line 136
    const-wide/16 v9, 0x400

    .line 137
    .line 138
    invoke-virtual {v5, v9, v10}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    const-wide/16 v9, 0x0

    .line 143
    .line 144
    if-nez v5, :cond_2

    .line 145
    .line 146
    move-wide v7, v9

    .line 147
    goto :goto_2

    .line 148
    :cond_2
    iget-object v5, v1, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 149
    .line 150
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    iget-object v11, v1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 152
    .line 153
    invoke-virtual {v11}, Landroid/os/VibratorInfo;->getDefaultBraking()I

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    iget-object v12, v1, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 158
    .line 159
    invoke-virtual {v12, v0, v11, v7, v8}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->composePwle([Landroid/os/vibrator/RampSegment;IJ)J

    .line 160
    .line 161
    .line 162
    move-result-wide v7

    .line 163
    cmp-long v11, v7, v9

    .line 164
    .line 165
    if-lez v11, :cond_3

    .line 166
    .line 167
    const/high16 v11, -0x40800000    # -1.0f

    .line 168
    .line 169
    iput v11, v1, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 170
    .line 171
    invoke-virtual {v1, v6}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catchall_1
    move-exception p0

    .line 176
    goto :goto_4

    .line 177
    :cond_3
    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    :goto_2
    :try_start_3
    invoke-virtual {p0, v7, v8}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)V

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 182
    .line 183
    iget-object v1, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 184
    .line 185
    iget-object v1, v1, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 186
    .line 187
    iget v5, v1, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposePwleCount:I

    .line 188
    .line 189
    add-int/2addr v5, v6

    .line 190
    iput v5, v1, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposePwleCount:I

    .line 191
    .line 192
    iget v5, v1, Lcom/android/server/vibrator/VibrationStats;->mVibrationPwleTotalSize:I

    .line 193
    .line 194
    array-length v6, v0

    .line 195
    add-int/2addr v5, v6

    .line 196
    iput v5, v1, Lcom/android/server/vibrator/VibrationStats;->mVibrationPwleTotalSize:I

    .line 197
    .line 198
    cmp-long v5, v7, v9

    .line 199
    .line 200
    if-lez v5, :cond_6

    .line 201
    .line 202
    array-length v5, v0

    .line 203
    const/4 v6, 0x0

    .line 204
    :goto_3
    if-ge v6, v5, :cond_5

    .line 205
    .line 206
    aget-object v11, v0, v6

    .line 207
    .line 208
    invoke-virtual {v11}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    const/4 v13, 0x0

    .line 213
    cmpl-float v12, v12, v13

    .line 214
    .line 215
    if-nez v12, :cond_4

    .line 216
    .line 217
    invoke-virtual {v11}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    cmpl-float v12, v12, v13

    .line 222
    .line 223
    if-nez v12, :cond_4

    .line 224
    .line 225
    invoke-virtual {v11}, Landroid/os/vibrator/RampSegment;->getDuration()J

    .line 226
    .line 227
    .line 228
    move-result-wide v11

    .line 229
    sub-long/2addr v7, v11

    .line 230
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_5
    cmp-long v0, v7, v9

    .line 234
    .line 235
    if-lez v0, :cond_6

    .line 236
    .line 237
    iget v0, v1, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 238
    .line 239
    long-to-int v5, v7

    .line 240
    add-int/2addr v0, v5

    .line 241
    iput v0, v1, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 242
    .line 243
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(I)Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 252
    .line 253
    .line 254
    return-object p0

    .line 255
    :goto_4
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 256
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 257
    :goto_5
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 258
    .line 259
    .line 260
    throw p0
.end method
