.class public final Lcom/android/server/vibrator/CompleteEffectVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCancelled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V
    .locals 9

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, -0x1

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-object v4, p5

    .line 7
    move-wide v7, p6

    .line 8
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 9
    .line 10
    .line 11
    move v1, p4

    .line 12
    iput-boolean v1, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final cancel()Ljava/util/List;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/vibrator/TurnOffVibratorStep;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    move-object v1, v0

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Z)V

    .line 18
    .line 19
    .line 20
    filled-new-array {v0}, [Lcom/android/server/vibrator/Step;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-super {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->cancel()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final isCleanUp()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final play()Ljava/util/List;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "VibrationThread"

    .line 4
    .line 5
    const-string v2, "Ramping down vibrator "

    .line 6
    .line 7
    const-string v3, "Running "

    .line 8
    .line 9
    const-wide/32 v4, 0x800000

    .line 10
    .line 11
    .line 12
    const-string v6, "CompleteEffectVibratorStep"

    .line 13
    .line 14
    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v3, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const-string v3, "cancel"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    const-string v3, "complete"

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, " vibration step on vibrator "

    .line 38
    .line 39
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getId()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-boolean v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    iget-object v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 78
    .line 79
    iget v3, v3, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 80
    .line 81
    iget-wide v8, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 82
    .line 83
    sub-long/2addr v8, v6

    .line 84
    const-wide/16 v10, 0x3e8

    .line 85
    .line 86
    sub-long/2addr v8, v10

    .line 87
    iget-object v10, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 88
    .line 89
    iget-object v10, v10, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 90
    .line 91
    iget-object v10, v10, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 92
    .line 93
    invoke-virtual {v10}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    int-to-long v10, v10

    .line 98
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v8

    .line 102
    iget-object v10, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 103
    .line 104
    iget-object v10, v10, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 105
    .line 106
    iget-object v10, v10, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 107
    .line 108
    invoke-virtual {v10}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    int-to-long v10, v10

    .line 113
    const v12, 0x3a83126f    # 0.001f

    .line 114
    .line 115
    .line 116
    cmpg-float v12, v3, v12

    .line 117
    .line 118
    if-ltz v12, :cond_4

    .line 119
    .line 120
    cmp-long v12, v8, v10

    .line 121
    .line 122
    if-gtz v12, :cond_2

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 131
    .line 132
    iget-object v2, v2, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 133
    .line 134
    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, " from amplitude "

    .line 142
    .line 143
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, " for "

    .line 150
    .line 151
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string/jumbo v2, "ms"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    iget-boolean v1, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    .line 171
    .line 172
    if-eqz v1, :cond_3

    .line 173
    .line 174
    add-long/2addr v6, v8

    .line 175
    :goto_1
    move-wide/from16 v19, v6

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_3
    iget-wide v6, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :goto_2
    div-long/2addr v8, v10

    .line 182
    long-to-float v1, v8

    .line 183
    div-float v17, v3, v1

    .line 184
    .line 185
    sub-float v16, v3, v17

    .line 186
    .line 187
    new-instance v1, Lcom/android/server/vibrator/RampOffVibratorStep;

    .line 188
    .line 189
    iget-object v13, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 190
    .line 191
    iget-wide v14, v0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 192
    .line 193
    iget-object v0, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 194
    .line 195
    move-object v12, v1

    .line 196
    move-object/from16 v18, v0

    .line 197
    .line 198
    invoke-direct/range {v12 .. v20}, Lcom/android/server/vibrator/RampOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V

    .line 199
    .line 200
    .line 201
    filled-new-array {v1}, [Lcom/android/server/vibrator/Step;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 210
    .line 211
    .line 212
    return-object v0

    .line 213
    :cond_4
    :goto_3
    :try_start_2
    iget-boolean v1, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    .line 214
    .line 215
    if-eqz v1, :cond_5

    .line 216
    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 218
    .line 219
    .line 220
    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    .line 222
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 223
    .line 224
    .line 225
    return-object v0

    .line 226
    :cond_5
    :try_start_3
    new-instance v1, Lcom/android/server/vibrator/TurnOffVibratorStep;

    .line 227
    .line 228
    iget-object v7, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 229
    .line 230
    iget-wide v8, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 231
    .line 232
    iget-object v10, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 233
    .line 234
    const/4 v11, 0x0

    .line 235
    move-object v6, v1

    .line 236
    invoke-direct/range {v6 .. v11}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Z)V

    .line 237
    .line 238
    .line 239
    filled-new-array {v1}, [Lcom/android/server/vibrator/Step;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 248
    .line 249
    .line 250
    return-object v0

    .line 251
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 252
    .line 253
    .line 254
    throw v0
.end method
