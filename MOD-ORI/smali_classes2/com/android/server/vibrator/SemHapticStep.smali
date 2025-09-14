.class public final Lcom/android/server/vibrator/SemHapticStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mNextOffTime:J


# virtual methods
.method public final acceptVibratorCompleteCallback(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    .line 19
    .line 20
    :cond_0
    iget-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    .line 21
    .line 22
    iget-wide v4, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 23
    .line 24
    cmp-long p1, v2, v4

    .line 25
    .line 26
    if-gez p1, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    cmpl-float p0, p0, p1

    .line 34
    .line 35
    if-lez p0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_0
    return v1
.end method

.method public final play()Ljava/util/List;
    .locals 15

    .line 1
    const-string/jumbo v1, "sepIndex="

    .line 2
    .line 3
    .line 4
    const-string v2, "Ignoring wrong segment for a SemHapticSegment: "

    .line 5
    .line 6
    const-wide/32 v7, 0x800000

    .line 7
    .line 8
    .line 9
    const-string v3, "SemHapticStep"

    .line 10
    .line 11
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 15
    .line 16
    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iget v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 21
    .line 22
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 27
    .line 28
    instance-of v5, v4, Landroid/os/vibrator/SemHapticSegment;

    .line 29
    .line 30
    const/4 v9, 0x1

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v9}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(I)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    :try_start_1
    check-cast v4, Landroid/os/vibrator/SemHapticSegment;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 61
    .line 62
    iget-object v10, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 63
    .line 64
    iget v5, v10, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/os/vibrator/SemHapticSegment;->getSepIndex()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iget-wide v11, v10, Lcom/android/server/vibrator/HalVibration;->mTimeout:J

    .line 71
    .line 72
    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const/4 v13, -0x1

    .line 79
    if-le v4, v13, :cond_1

    .line 80
    .line 81
    move v14, v9

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/4 v4, 0x0

    .line 84
    move v14, v4

    .line 85
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", intensity="

    .line 94
    .line 95
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", repeat="

    .line 102
    .line 103
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, ", duration="

    .line 110
    .line 111
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-object v1, p0

    .line 125
    move v3, v5

    .line 126
    move v4, v14

    .line 127
    move-wide v5, v11

    .line 128
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vibrator/SemHapticStep;->startVibrating(IIZJ)V

    .line 129
    .line 130
    .line 131
    if-eqz v14, :cond_2

    .line 132
    .line 133
    iget-object v1, v10, Lcom/android/server/vibrator/HalVibration;->mEngineData:[I

    .line 134
    .line 135
    if-nez v1, :cond_2

    .line 136
    .line 137
    const-wide v1, 0x7fffffffffffec77L

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    iput-wide v1, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    .line 143
    .line 144
    move v9, v13

    .line 145
    goto :goto_1

    .line 146
    :cond_2
    iget-wide v1, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 147
    .line 148
    add-long/2addr v1, v11

    .line 149
    iput-wide v1, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    .line 150
    .line 151
    :goto_1
    iget-wide v1, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    .line 152
    .line 153
    invoke-virtual {p0, v9, v1, v2}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(IJ)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 158
    .line 159
    .line 160
    return-object v0

    .line 161
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 162
    .line 163
    .line 164
    throw v0
.end method

.method public final startVibrating(IIZJ)V
    .locals 7

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
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string/jumbo p4, "ms"

    .line 28
    .line 29
    .line 30
    const-string p5, "SemHapticStep"

    .line 31
    .line 32
    invoke-static {v0, p4, p5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p4, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 36
    .line 37
    iget-object p4, p4, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 38
    .line 39
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HYBRID_HAPTIC()Z

    .line 40
    .line 41
    .line 42
    move-result p5

    .line 43
    const/4 v0, 0x1

    .line 44
    if-eqz p5, :cond_1

    .line 45
    .line 46
    iget-object p5, p4, Lcom/android/server/vibrator/HalVibration;->mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    .line 47
    .line 48
    if-eqz p5, :cond_1

    .line 49
    .line 50
    array-length p1, p5

    .line 51
    mul-int/lit8 p1, p1, 0x5

    .line 52
    .line 53
    add-int/2addr p1, v0

    .line 54
    new-array p1, p1, [I

    .line 55
    .line 56
    array-length p5, p5

    .line 57
    const/4 v1, 0x0

    .line 58
    aput p5, p1, v1

    .line 59
    .line 60
    move p5, v0

    .line 61
    :goto_0
    iget-object v2, p4, Lcom/android/server/vibrator/HalVibration;->mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    .line 62
    .line 63
    array-length v3, v2

    .line 64
    if-ge v1, v3, :cond_0

    .line 65
    .line 66
    add-int/lit8 v3, p5, 0x1

    .line 67
    .line 68
    aget-object v2, v2, v1

    .line 69
    .line 70
    iget v4, v2, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->type:I

    .line 71
    .line 72
    aput v4, p1, p5

    .line 73
    .line 74
    add-int/lit8 v4, p5, 0x2

    .line 75
    .line 76
    iget v5, v2, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->index:I

    .line 77
    .line 78
    aput v5, p1, v3

    .line 79
    .line 80
    add-int/lit8 v3, p5, 0x3

    .line 81
    .line 82
    iget v5, v2, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->scale:I

    .line 83
    .line 84
    aput v5, p1, v4

    .line 85
    .line 86
    add-int/lit8 v4, p5, 0x4

    .line 87
    .line 88
    iget v5, v2, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->duration:I

    .line 89
    .line 90
    aput v5, p1, v3

    .line 91
    .line 92
    add-int/lit8 p5, p5, 0x5

    .line 93
    .line 94
    iget v2, v2, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->frequency:I

    .line 95
    .line 96
    aput v2, p1, v4

    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 102
    .line 103
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 104
    .line 105
    invoke-virtual {p4, p1, p3, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performCommonInputff([IZI)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    iget-object p4, p4, Lcom/android/server/vibrator/HalVibration;->mEngineData:[I

    .line 113
    .line 114
    if-nez p4, :cond_2

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 117
    .line 118
    int-to-long v2, p1

    .line 119
    int-to-long v4, p2

    .line 120
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 121
    .line 122
    move v6, p3

    .line 123
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPrebakedHapticPattern(JJZ)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 131
    .line 132
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, [I

    .line 137
    .line 138
    iget-object p3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 139
    .line 140
    invoke-virtual {p3, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performHapticEngine([II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 144
    .line 145
    .line 146
    :goto_1
    return-void
.end method
