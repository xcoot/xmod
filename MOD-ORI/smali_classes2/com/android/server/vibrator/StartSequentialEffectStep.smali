.class public final Lcom/android/server/vibrator/StartSequentialEffectStep;
.super Lcom/android/server/vibrator/Step;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final currentIndex:I

.field public mVibratorsOnMaxDuration:J

.field public final sequentialEffect:Landroid/os/CombinedVibration$Sequential;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    .line 5
    .line 6
    iput p5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final cancel()Ljava/util/List;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final cancelImmediately()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getVibratorOnDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final nextStep()Lcom/android/server/vibrator/StartSequentialEffectStep;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    .line 2
    .line 3
    add-int/lit8 v6, v0, 0x1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lt v6, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    int-to-long v0, v0

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    add-long v3, v2, v0

    .line 41
    .line 42
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 45
    .line 46
    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public final play()Ljava/util/List;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "StartSequentialEffectStep for effect #"

    .line 4
    .line 5
    const-wide/32 v2, 0x800000

    .line 6
    .line 7
    .line 8
    const-string v4, "StartSequentialEffectStep"

    .line 9
    .line 10
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v4, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const-wide/16 v5, -0x1

    .line 19
    .line 20
    iput-wide v5, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 21
    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    :try_start_0
    const-string v7, "VibrationThread"

    .line 25
    .line 26
    new-instance v8, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v0, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    .line 32
    .line 33
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v0, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v7, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    .line 50
    .line 51
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/os/CombinedVibration;

    .line 56
    .line 57
    instance-of v7, v0, Landroid/os/CombinedVibration$Mono;

    .line 58
    .line 59
    if-eqz v7, :cond_0

    .line 60
    .line 61
    new-instance v7, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    .line 62
    .line 63
    check-cast v0, Landroid/os/CombinedVibration$Mono;

    .line 64
    .line 65
    invoke-direct {v7, v1, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Mono;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    instance-of v7, v0, Landroid/os/CombinedVibration$Stereo;

    .line 70
    .line 71
    if-eqz v7, :cond_1

    .line 72
    .line 73
    new-instance v7, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    .line 74
    .line 75
    check-cast v0, Landroid/os/CombinedVibration$Stereo;

    .line 76
    .line 77
    invoke-direct {v7, v1, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Stereo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/4 v7, 0x0

    .line 82
    :goto_0
    if-nez v7, :cond_4

    .line 83
    .line 84
    iget-wide v7, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 85
    .line 86
    cmp-long v0, v7, v5

    .line 87
    .line 88
    if-ltz v0, :cond_3

    .line 89
    .line 90
    if-lez v0, :cond_2

    .line 91
    .line 92
    new-instance v0, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    .line 93
    .line 94
    invoke-direct {v0, v1}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_1
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 108
    .line 109
    .line 110
    return-object v4

    .line 111
    :cond_4
    :try_start_1
    iget-object v0, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_e

    .line 122
    .line 123
    iget-object v0, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mComposed:Landroid/os/VibrationEffect$Composed;

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    const/4 v9, 0x0

    .line 132
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    .line 137
    .line 138
    iget-object v10, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 139
    .line 140
    iget-object v10, v10, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 141
    .line 142
    iget-object v10, v10, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    .line 143
    .line 144
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    check-cast v9, Lcom/android/server/vibrator/VibratorController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .line 150
    if-nez v9, :cond_7

    .line 151
    .line 152
    iget-wide v7, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 153
    .line 154
    cmp-long v0, v7, v5

    .line 155
    .line 156
    if-ltz v0, :cond_6

    .line 157
    .line 158
    if-lez v0, :cond_5

    .line 159
    .line 160
    new-instance v0, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    .line 161
    .line 162
    invoke-direct {v0, v1}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    :goto_2
    if-eqz v0, :cond_6

    .line 171
    .line 172
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_6
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 176
    .line 177
    .line 178
    return-object v4

    .line 179
    :cond_7
    :try_start_2
    iget-object v10, v9, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 180
    .line 181
    instance-of v11, v8, Landroid/os/vibrator/StepSegment;

    .line 182
    .line 183
    const/4 v12, -0x1

    .line 184
    if-eqz v11, :cond_b

    .line 185
    .line 186
    check-cast v8, Landroid/os/vibrator/StepSegment;

    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    if-le v11, v12, :cond_8

    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    goto :goto_3

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    goto/16 :goto_a

    .line 201
    .line 202
    :cond_8
    iget-object v0, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 203
    .line 204
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 205
    .line 206
    iget v0, v0, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    .line 207
    .line 208
    :goto_3
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    if-eqz v11, :cond_9

    .line 213
    .line 214
    int-to-long v13, v0

    .line 215
    iget-object v12, v9, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 216
    .line 217
    const/16 v17, 0x0

    .line 218
    .line 219
    const-wide/16 v15, 0x0

    .line 220
    .line 221
    move-wide/from16 v18, v13

    .line 222
    .line 223
    move-wide v13, v15

    .line 224
    move-wide/from16 v15, v18

    .line 225
    .line 226
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPrebakedHapticPattern(JJZ)V

    .line 227
    .line 228
    .line 229
    const/4 v0, 0x1

    .line 230
    invoke-virtual {v9, v0}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_9
    iget-boolean v11, v9, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    .line 235
    .line 236
    if-eqz v11, :cond_a

    .line 237
    .line 238
    int-to-long v11, v0

    .line 239
    invoke-virtual {v10, v11, v12}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setIntensity(J)V

    .line 240
    .line 241
    .line 242
    :cond_a
    :goto_4
    iget-boolean v0, v9, Lcom/android/server/vibrator/VibratorController;->mSupportFrequencyControl:Z

    .line 243
    .line 244
    if-eqz v0, :cond_e

    .line 245
    .line 246
    invoke-virtual {v8}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    float-to-long v8, v0

    .line 251
    invoke-virtual {v10, v8, v9}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFrequencyType(J)V

    .line 252
    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_b
    instance-of v8, v8, Landroid/os/vibrator/PrimitiveSegment;

    .line 256
    .line 257
    if-eqz v8, :cond_e

    .line 258
    .line 259
    iget-boolean v8, v9, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    .line 260
    .line 261
    if-eqz v8, :cond_d

    .line 262
    .line 263
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    if-le v8, v12, :cond_c

    .line 268
    .line 269
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    :goto_5
    int-to-long v8, v0

    .line 274
    goto :goto_6

    .line 275
    :cond_c
    iget-object v0, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 276
    .line 277
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 278
    .line 279
    iget v0, v0, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :goto_6
    invoke-virtual {v10, v8, v9}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setIntensity(J)V

    .line 283
    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    .line 287
    .line 288
    invoke-virtual {v9, v0}, Lcom/android/server/vibrator/VibratorController;->setAmplitude(F)V

    .line 289
    .line 290
    .line 291
    :cond_e
    :goto_7
    invoke-virtual {v1, v7, v4}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v7

    .line 295
    iput-wide v7, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 296
    .line 297
    iget-object v0, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 298
    .line 299
    iget-object v9, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 300
    .line 301
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 302
    .line 303
    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 304
    .line 305
    iget v0, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 306
    .line 307
    iget-object v9, v9, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v9, Lcom/android/server/vibrator/VibratorManagerService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    .line 311
    cmp-long v10, v7, v5

    .line 312
    .line 313
    if-gtz v10, :cond_f

    .line 314
    .line 315
    goto :goto_8

    .line 316
    :cond_f
    const-wide v10, 0x7fffffffffffffffL

    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    cmp-long v10, v7, v10

    .line 322
    .line 323
    if-nez v10, :cond_10

    .line 324
    .line 325
    const-wide/16 v7, 0x1388

    .line 326
    .line 327
    :cond_10
    :try_start_3
    iget-object v10, v9, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 328
    .line 329
    invoke-interface {v10, v0, v7, v8}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 330
    .line 331
    .line 332
    iget-object v9, v9, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 333
    .line 334
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    new-instance v10, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda1;

    .line 338
    .line 339
    invoke-direct {v10, v0, v7, v8}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda1;-><init>(IJ)V

    .line 340
    .line 341
    .line 342
    iget-object v0, v9, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    .line 343
    .line 344
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    .line 346
    .line 347
    goto :goto_8

    .line 348
    :catch_0
    move-exception v0

    .line 349
    :try_start_4
    const-string v7, "VibratorManagerService"

    .line 350
    .line 351
    const-string v8, "Error logging VibratorStateChanged to ON"

    .line 352
    .line 353
    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 354
    .line 355
    .line 356
    :goto_8
    iget-wide v7, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 357
    .line 358
    cmp-long v0, v7, v5

    .line 359
    .line 360
    if-ltz v0, :cond_12

    .line 361
    .line 362
    if-lez v0, :cond_11

    .line 363
    .line 364
    new-instance v0, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    .line 365
    .line 366
    invoke-direct {v0, v1}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    .line 367
    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    :goto_9
    if-eqz v0, :cond_12

    .line 375
    .line 376
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    :cond_12
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 380
    .line 381
    .line 382
    return-object v4

    .line 383
    :goto_a
    iget-wide v7, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 384
    .line 385
    cmp-long v5, v7, v5

    .line 386
    .line 387
    if-ltz v5, :cond_14

    .line 388
    .line 389
    if-lez v5, :cond_13

    .line 390
    .line 391
    new-instance v5, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    .line 392
    .line 393
    invoke-direct {v5, v1}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    .line 394
    .line 395
    .line 396
    goto :goto_b

    .line 397
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    :goto_b
    if-eqz v5, :cond_14

    .line 402
    .line 403
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    :cond_14
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 407
    .line 408
    .line 409
    throw v0
.end method

.method public final startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    return-wide v4

    .line 13
    :cond_0
    new-array v6, v3, [Lcom/android/server/vibrator/AbstractVibratorStep;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v15

    .line 19
    const/16 v17, 0x0

    .line 20
    .line 21
    move/from16 v13, v17

    .line 22
    .line 23
    :goto_0
    if-ge v13, v3, :cond_1

    .line 24
    .line 25
    iget-object v7, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 26
    .line 27
    iget-object v8, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 28
    .line 29
    iget-object v8, v8, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    .line 30
    .line 31
    iget-object v9, v1, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    move-object v10, v8

    .line 42
    check-cast v10, Lcom/android/server/vibrator/VibratorController;

    .line 43
    .line 44
    iget-object v8, v1, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    move-object v11, v8

    .line 51
    check-cast v11, Landroid/os/VibrationEffect$Composed;

    .line 52
    .line 53
    const/4 v12, 0x0

    .line 54
    const-wide/16 v18, 0x0

    .line 55
    .line 56
    move-wide v8, v15

    .line 57
    move/from16 v20, v13

    .line 58
    .line 59
    move-wide/from16 v13, v18

    .line 60
    .line 61
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    aput-object v7, v6, v20

    .line 66
    .line 67
    add-int/lit8 v13, v20, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v7, 0x1

    .line 71
    if-ne v3, v7, :cond_3

    .line 72
    .line 73
    aget-object v0, v6, v17

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    move-object/from16 v2, p2

    .line 80
    .line 81
    check-cast v2, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    iget-wide v1, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    .line 87
    .line 88
    cmp-long v3, v1, v4

    .line 89
    .line 90
    if-gez v3, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iget-object v0, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getDuration()J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 100
    .line 101
    .line 102
    move-result-wide v1

    .line 103
    :goto_1
    return-wide v1

    .line 104
    :cond_3
    iget-object v8, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 105
    .line 106
    iget-object v8, v8, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 107
    .line 108
    iget-object v8, v8, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v8, Lcom/android/server/vibrator/VibratorManagerService;

    .line 111
    .line 112
    iget-wide v9, v8, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    .line 113
    .line 114
    iget-wide v11, v1, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    .line 115
    .line 116
    and-long/2addr v9, v11

    .line 117
    cmp-long v1, v9, v11

    .line 118
    .line 119
    if-eqz v1, :cond_4

    .line 120
    .line 121
    move/from16 v1, v17

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    iget-object v1, v8, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    .line 125
    .line 126
    iget-wide v8, v1, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 127
    .line 128
    invoke-static {v8, v9, v2}, Lcom/android/server/vibrator/VibratorManagerService;->nativePrepareSynced(J[I)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    :goto_2
    move-wide v8, v4

    .line 133
    move/from16 v2, v17

    .line 134
    .line 135
    :goto_3
    if-ge v2, v3, :cond_7

    .line 136
    .line 137
    aget-object v10, v6, v2

    .line 138
    .line 139
    invoke-virtual {v10}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    move-object/from16 v12, p2

    .line 144
    .line 145
    check-cast v12, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    .line 149
    .line 150
    iget-wide v11, v10, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    .line 151
    .line 152
    cmp-long v13, v11, v4

    .line 153
    .line 154
    if-gez v13, :cond_5

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_5
    iget-object v10, v10, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 158
    .line 159
    invoke-virtual {v10}, Landroid/os/VibrationEffect$Composed;->getDuration()J

    .line 160
    .line 161
    .line 162
    move-result-wide v13

    .line 163
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 164
    .line 165
    .line 166
    move-result-wide v11

    .line 167
    :goto_4
    cmp-long v10, v11, v4

    .line 168
    .line 169
    if-gez v10, :cond_6

    .line 170
    .line 171
    move v2, v7

    .line 172
    goto :goto_5

    .line 173
    :cond_6
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 174
    .line 175
    .line 176
    move-result-wide v8

    .line 177
    add-int/lit8 v2, v2, 0x1

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_7
    move/from16 v2, v17

    .line 181
    .line 182
    :goto_5
    if-eqz v1, :cond_8

    .line 183
    .line 184
    if-nez v2, :cond_8

    .line 185
    .line 186
    cmp-long v3, v8, v4

    .line 187
    .line 188
    if-lez v3, :cond_8

    .line 189
    .line 190
    iget-object v3, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 191
    .line 192
    iget-object v4, v3, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 193
    .line 194
    iget-object v3, v3, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 195
    .line 196
    iget-wide v5, v3, Lcom/android/server/vibrator/Vibration;->id:J

    .line 197
    .line 198
    iget-object v3, v4, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v3, Lcom/android/server/vibrator/VibratorManagerService;

    .line 201
    .line 202
    iget-object v3, v3, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    .line 203
    .line 204
    iget-wide v3, v3, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 205
    .line 206
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/vibrator/VibratorManagerService;->nativeTriggerSynced(JJ)Z

    .line 207
    .line 208
    .line 209
    move-result v17

    .line 210
    and-int v2, v2, v17

    .line 211
    .line 212
    :cond_8
    if-eqz v2, :cond_9

    .line 213
    .line 214
    move-object/from16 v3, p2

    .line 215
    .line 216
    check-cast v3, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    sub-int/2addr v4, v7

    .line 223
    :goto_6
    if-ltz v4, :cond_9

    .line 224
    .line 225
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    check-cast v5, Lcom/android/server/vibrator/Step;

    .line 230
    .line 231
    invoke-virtual {v5}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    .line 232
    .line 233
    .line 234
    add-int/lit8 v4, v4, -0x1

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_9
    if-eqz v1, :cond_a

    .line 238
    .line 239
    if-nez v17, :cond_a

    .line 240
    .line 241
    iget-object v0, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 242
    .line 243
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 244
    .line 245
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 248
    .line 249
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    .line 250
    .line 251
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    .line 252
    .line 253
    .line 254
    :cond_a
    if-eqz v2, :cond_b

    .line 255
    .line 256
    const-wide/16 v8, -0x1

    .line 257
    .line 258
    :cond_b
    return-wide v8
.end method
