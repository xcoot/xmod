.class public final Lcom/android/server/vibrator/RampOffVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAmplitudeDelta:F

.field public final mAmplitudeTarget:F


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v6, -0x1

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    move-object/from16 v4, p6

    .line 8
    .line 9
    move-wide/from16 v7, p7

    .line 10
    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 12
    .line 13
    .line 14
    move v0, p4

    .line 15
    iput v0, v9, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    .line 16
    .line 17
    move v0, p5

    .line 18
    iput v0, v9, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final cancel()Ljava/util/List;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/vibrator/TurnOffVibratorStep;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Z)V

    .line 14
    .line 15
    .line 16
    filled-new-array {v6}, [Lcom/android/server/vibrator/Step;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final isCleanUp()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final play()Ljava/util/List;
    .locals 15

    .line 1
    const-string v0, "Ramp down the vibrator amplitude, step with "

    .line 2
    .line 3
    const-string v1, "RampOffVibratorStep"

    .line 4
    .line 5
    const-wide/32 v2, 0x800000

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    iget-wide v6, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 16
    .line 17
    sub-long/2addr v4, v6

    .line 18
    const-string v1, "VibrationThread"

    .line 19
    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string/jumbo v0, "ms latency."

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->changeAmplitude(F)V

    .line 59
    .line 60
    .line 61
    iget v0, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    .line 62
    .line 63
    iget v1, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    .line 64
    .line 65
    sub-float v8, v0, v1

    .line 66
    .line 67
    const v0, 0x3a83126f    # 0.001f

    .line 68
    .line 69
    .line 70
    cmpg-float v0, v8, v0

    .line 71
    .line 72
    if-gez v0, :cond_1

    .line 73
    .line 74
    new-instance v0, Lcom/android/server/vibrator/TurnOffVibratorStep;

    .line 75
    .line 76
    iget-object v10, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 77
    .line 78
    iget-wide v11, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 79
    .line 80
    iget-object v13, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 81
    .line 82
    const/4 v14, 0x1

    .line 83
    move-object v9, v0

    .line 84
    invoke-direct/range {v9 .. v14}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Z)V

    .line 85
    .line 86
    .line 87
    filled-new-array {v0}, [Lcom/android/server/vibrator/Step;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_1
    :try_start_2
    new-instance v0, Lcom/android/server/vibrator/RampOffVibratorStep;

    .line 100
    .line 101
    iget-object v5, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 102
    .line 103
    iget-wide v6, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 104
    .line 105
    iget-object v1, v5, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    int-to-long v9, v1

    .line 114
    add-long/2addr v6, v9

    .line 115
    iget v9, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    .line 116
    .line 117
    iget-object v10, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 118
    .line 119
    iget-wide v11, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 120
    .line 121
    move-object v4, v0

    .line 122
    invoke-direct/range {v4 .. v12}, Lcom/android/server/vibrator/RampOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V

    .line 123
    .line 124
    .line 125
    filled-new-array {v0}, [Lcom/android/server/vibrator/Step;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 134
    .line 135
    .line 136
    return-object p0

    .line 137
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 138
    .line 139
    .line 140
    throw p0
.end method
