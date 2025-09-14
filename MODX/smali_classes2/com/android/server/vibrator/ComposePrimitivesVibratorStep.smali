.class public final Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final play()Ljava/util/List;
    .locals 12

    .line 1
    const-string v0, "ComposePrimitivesStep"

    .line 2
    .line 3
    const-wide/32 v1, 0x800000

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getCompositionSizeMax()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 18
    .line 19
    iget v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0x64

    .line 25
    .line 26
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-ge v8, v0, :cond_2

    .line 48
    .line 49
    if-ne v4, v6, :cond_1

    .line 50
    .line 51
    if-ltz v7, :cond_2

    .line 52
    .line 53
    move v4, v7

    .line 54
    :cond_1
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    .line 63
    .line 64
    instance-of v9, v8, Landroid/os/vibrator/PrimitiveSegment;

    .line 65
    .line 66
    if-eqz v9, :cond_2

    .line 67
    .line 68
    check-cast v8, Landroid/os/vibrator/PrimitiveSegment;

    .line 69
    .line 70
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v3, 0x1

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    const-string v0, "VibrationThread"

    .line 84
    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v5, "Ignoring wrong segment for a ComposePrimitivesStep: "

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 96
    .line 97
    invoke-virtual {v5}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    iget v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 102
    .line 103
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(I)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 122
    .line 123
    .line 124
    return-object p0

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_3
    :try_start_1
    const-string v0, "VibrationThread"

    .line 129
    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v6, "Compose "

    .line 136
    .line 137
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v6, " primitives on vibrator "

    .line 144
    .line 145
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    new-array v0, v0, [Landroid/os/vibrator/PrimitiveSegment;

    .line 167
    .line 168
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, [Landroid/os/vibrator/PrimitiveSegment;

    .line 173
    .line 174
    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 175
    .line 176
    iget-object v6, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 177
    .line 178
    iget-object v6, v6, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 179
    .line 180
    iget-wide v6, v6, Lcom/android/server/vibrator/Vibration;->id:J

    .line 181
    .line 182
    iget-object v8, v4, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 183
    .line 184
    const-wide/16 v9, 0x20

    .line 185
    .line 186
    invoke-virtual {v8, v9, v10}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    const-wide/16 v9, 0x0

    .line 191
    .line 192
    if-nez v8, :cond_4

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_4
    iget-object v8, v4, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 196
    .line 197
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :try_start_2
    iget-object v11, v4, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 199
    .line 200
    invoke-virtual {v11, v0, v6, v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->compose([Landroid/os/vibrator/PrimitiveSegment;J)J

    .line 201
    .line 202
    .line 203
    move-result-wide v6

    .line 204
    cmp-long v9, v6, v9

    .line 205
    .line 206
    if-lez v9, :cond_5

    .line 207
    .line 208
    const/high16 v9, -0x40800000    # -1.0f

    .line 209
    .line 210
    iput v9, v4, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 211
    .line 212
    invoke-virtual {v4, v3}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :catchall_1
    move-exception p0

    .line 217
    goto :goto_4

    .line 218
    :cond_5
    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 219
    move-wide v9, v6

    .line 220
    :goto_3
    :try_start_3
    invoke-virtual {p0, v9, v10}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)V

    .line 221
    .line 222
    .line 223
    iget-object v3, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 224
    .line 225
    iget-object v3, v3, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 226
    .line 227
    iget-object v3, v3, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 228
    .line 229
    invoke-virtual {v3, v0, v9, v10}, Lcom/android/server/vibrator/VibrationStats;->reportComposePrimitives([Landroid/os/vibrator/PrimitiveSegment;J)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(I)Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 241
    .line 242
    .line 243
    return-object p0

    .line 244
    :goto_4
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 245
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 246
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 247
    .line 248
    .line 249
    throw p0
.end method
