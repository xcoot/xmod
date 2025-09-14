.class public final Lcom/android/server/vibrator/SetAmplitudeVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final acceptVibratorCompleteCallback(I)Z
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->acceptVibratorCompleteCallback(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 14
    .line 15
    cmp-long v0, v2, v4

    .line 16
    .line 17
    if-gez v0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 20
    .line 21
    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    cmpl-float p0, p0, v0

    .line 25
    .line 26
    if-lez p0, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "Amplitude step received completion callback from "

    .line 32
    .line 33
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ", accepted = "

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "VibrationThread"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return v1
.end method

.method public final getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    move v5, p2

    .line 16
    move-wide v6, v3

    .line 17
    :cond_0
    if-ge v5, v1, :cond_3

    .line 18
    .line 19
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    .line 24
    .line 25
    instance-of v9, v8, Landroid/os/vibrator/StepSegment;

    .line 26
    .line 27
    if-eqz v9, :cond_3

    .line 28
    .line 29
    invoke-virtual {v8}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    .line 30
    .line 31
    .line 32
    move-result-wide v9

    .line 33
    cmp-long v9, v9, v3

    .line 34
    .line 35
    if-lez v9, :cond_1

    .line 36
    .line 37
    move-object v9, v8

    .line 38
    check-cast v9, Landroid/os/vibrator/StepSegment;

    .line 39
    .line 40
    invoke-virtual {v9}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    const/4 v10, 0x0

    .line 45
    cmpl-float v9, v9, v10

    .line 46
    .line 47
    if-nez v9, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v8}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    .line 51
    .line 52
    .line 53
    move-result-wide v8

    .line 54
    add-long/2addr v6, v8

    .line 55
    add-int/lit8 v5, v5, 0x1

    .line 56
    .line 57
    if-ne v5, v1, :cond_2

    .line 58
    .line 59
    if-ltz v2, :cond_2

    .line 60
    .line 61
    const/4 v5, -0x1

    .line 62
    move v11, v5

    .line 63
    move v5, v2

    .line 64
    move v2, v11

    .line 65
    :cond_2
    if-ne v5, p2, :cond_0

    .line 66
    .line 67
    const-wide/16 p0, 0x1388

    .line 68
    .line 69
    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 70
    .line 71
    .line 72
    move-result-wide p0

    .line 73
    return-wide p0

    .line 74
    :cond_3
    :goto_0
    if-ne v5, v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-gez p1, :cond_4

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    int-to-long p0, p0

    .line 93
    add-long/2addr v6, p0

    .line 94
    :cond_4
    return-wide v6
.end method

.method public final play()Ljava/util/List;
    .locals 15

    .line 1
    const-string v0, "VibrationThread"

    .line 2
    .line 3
    const-string v1, "Ignoring wrong segment for a SetAmplitudeVibratorStep: "

    .line 4
    .line 5
    const-string v2, "Running amplitude step with "

    .line 6
    .line 7
    const-string v3, "SetAmplitudeVibratorStep"

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
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    iget-wide v8, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 20
    .line 21
    sub-long v8, v6, v8

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "ms latency."

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-boolean v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    .line 45
    .line 46
    const-wide/16 v10, 0x0

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    cmp-long v2, v8, v10

    .line 51
    .line 52
    if-gez v2, :cond_0

    .line 53
    .line 54
    neg-long v0, v8

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->turnVibratorBackOn(J)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;

    .line 59
    .line 60
    iget-object v7, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 61
    .line 62
    iget-wide v8, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 63
    .line 64
    iget-object v10, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 65
    .line 66
    iget-object v11, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 67
    .line 68
    iget v12, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 69
    .line 70
    iget-wide v13, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 71
    .line 72
    move-object v6, v0

    .line 73
    invoke-direct/range {v6 .. v14}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 74
    .line 75
    .line 76
    filled-new-array {v0}, [Lcom/android/server/vibrator/Step;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 85
    .line 86
    .line 87
    return-object p0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 97
    .line 98
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 103
    .line 104
    instance-of v3, v2, Landroid/os/vibrator/StepSegment;

    .line 105
    .line 106
    const/4 v8, 0x1

    .line 107
    if-nez v3, :cond_1

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iget-wide v0, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 125
    .line 126
    invoke-virtual {p0, v8, v0, v1}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(IJ)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 131
    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_1
    :try_start_2
    move-object v0, v2

    .line 135
    check-cast v0, Landroid/os/vibrator/StepSegment;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getDuration()J

    .line 138
    .line 139
    .line 140
    move-result-wide v12

    .line 141
    cmp-long v1, v12, v10

    .line 142
    .line 143
    if-nez v1, :cond_2

    .line 144
    .line 145
    iget-wide v0, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 146
    .line 147
    invoke-virtual {p0, v8, v0, v1}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(IJ)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 152
    .line 153
    .line 154
    return-object p0

    .line 155
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    const/4 v3, 0x0

    .line 160
    cmpl-float v1, v1, v3

    .line 161
    .line 162
    if-nez v1, :cond_3

    .line 163
    .line 164
    iget-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 165
    .line 166
    cmp-long v0, v0, v6

    .line 167
    .line 168
    if-lez v0, :cond_4

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 175
    .line 176
    iget v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 177
    .line 178
    invoke-virtual {p0, v1, v3}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    .line 179
    .line 180
    .line 181
    move-result-wide v6

    .line 182
    cmp-long v1, v6, v10

    .line 183
    .line 184
    if-lez v1, :cond_4

    .line 185
    .line 186
    invoke-virtual {p0, v6, v7, v0}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(JLandroid/os/vibrator/StepSegment;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    iput-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    .line 191
    .line 192
    :cond_4
    :goto_0
    iget-wide v0, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 193
    .line 194
    invoke-virtual {v2}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    .line 195
    .line 196
    .line 197
    move-result-wide v2

    .line 198
    add-long/2addr v0, v2

    .line 199
    invoke-virtual {p0, v8, v0, v1}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(IJ)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 204
    .line 205
    .line 206
    return-object p0

    .line 207
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 208
    .line 209
    .line 210
    throw p0
.end method

.method public final startVibrating(JLandroid/os/vibrator/StepSegment;)J
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Turning on vibrator "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " for "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "ms"

    .line 28
    .line 29
    .line 30
    const-string v2, "VibrationThread"

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 36
    .line 37
    iget-boolean v0, v0, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/high16 v1, -0x40800000    # -1.0f

    .line 46
    .line 47
    cmpl-float v0, v0, v1

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    invoke-virtual {v0, p3}, Lcom/android/server/vibrator/VibratorController;->setAmplitude(F)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object p3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 65
    .line 66
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration;->id:J

    .line 67
    .line 68
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/android/server/vibrator/VibratorController;->on(JJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide p0

    .line 72
    return-wide p0
.end method

.method public final turnVibratorBackOn(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-gtz v4, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    add-long/2addr v0, p1

    .line 17
    const-string v4, "Turning the vibrator back ON using the remaining duration of "

    .line 18
    .line 19
    const-string/jumbo v5, "ms, for a total of "

    .line 20
    .line 21
    .line 22
    invoke-static {v4, p1, p2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string/jumbo p2, "ms"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v4, "VibrationThread"

    .line 40
    .line 41
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 45
    .line 46
    iget p1, p1, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 47
    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v6, "Turning on vibrator "

    .line 51
    .line 52
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 56
    .line 57
    iget-object v6, v6, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 58
    .line 59
    invoke-virtual {v6}, Landroid/os/VibratorInfo;->getId()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v6, " for "

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {v5, p2, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 78
    .line 79
    iget-object v4, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 80
    .line 81
    iget-object v4, v4, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 82
    .line 83
    iget-wide v4, v4, Lcom/android/server/vibrator/Vibration;->id:J

    .line 84
    .line 85
    invoke-virtual {p2, v0, v1, v4, v5}, Lcom/android/server/vibrator/VibratorController;->on(JJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 93
    .line 94
    iget-object p2, p2, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 95
    .line 96
    iget-object p2, p2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 97
    .line 98
    iget v4, p2, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    .line 99
    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    iput v4, p2, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    .line 103
    .line 104
    cmp-long v2, v0, v2

    .line 105
    .line 106
    if-lez v2, :cond_1

    .line 107
    .line 108
    iget v3, p2, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 109
    .line 110
    long-to-int v0, v0

    .line 111
    add-int/2addr v3, v0

    .line 112
    iput v3, p2, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 113
    .line 114
    :cond_1
    if-lez v2, :cond_2

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->changeAmplitude(F)V

    .line 117
    .line 118
    .line 119
    :cond_2
    return-void
.end method
