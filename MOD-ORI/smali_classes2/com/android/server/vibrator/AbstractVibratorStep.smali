.class public abstract Lcom/android/server/vibrator/AbstractVibratorStep;
.super Lcom/android/server/vibrator/Step;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final controller:Lcom/android/server/vibrator/VibratorController;

.field public final effect:Landroid/os/VibrationEffect$Composed;

.field public mPendingVibratorOffDeadline:J

.field public mVibratorCompleteCallbackReceived:Z

.field public mVibratorOnResult:J

.field public final segmentIndex:I


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 7
    .line 8
    iput p6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 9
    .line 10
    iput-wide p7, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-wide v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    cmp-long v0, v2, v4

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    move v1, v2

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "Received completion callback from "

    .line 24
    .line 25
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ", accepted = "

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "VibrationThread"

    .line 44
    .line 45
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    const-wide/16 v3, 0x0

    .line 49
    .line 50
    iput-wide v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    .line 53
    .line 54
    return v1
.end method

.method public cancel()Ljava/util/List;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/server/vibrator/CompleteEffectVibratorStep;

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
    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 10
    .line 11
    iget-wide v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    move-object v0, v8

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/android/server/vibrator/CompleteEffectVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V

    .line 16
    .line 17
    .line 18
    filled-new-array {v8}, [Lcom/android/server/vibrator/Step;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public cancelImmediately()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final changeAmplitude(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Amplitude changed on vibrator "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " to "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "VibrationThread"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorController;->setAmplitude(F)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 42
    .line 43
    iget p1, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetAmplitudeCount:I

    .line 44
    .line 45
    add-int/lit8 p1, p1, 0x1

    .line 46
    .line 47
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetAmplitudeCount:I

    .line 48
    .line 49
    return-void
.end method

.method public final getVibratorId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getId()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getVibratorOnDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final handleVibratorOnResult(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string p2, "Turned on vibrator "

    .line 6
    .line 7
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, ", result = "

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    .line 23
    .line 24
    const-string p2, "VibrationThread"

    .line 25
    .line 26
    invoke-static {p1, v0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-wide p1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    .line 30
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    cmp-long p1, p1, v0

    .line 34
    .line 35
    if-lez p1, :cond_0

    .line 36
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    iget-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    .line 42
    .line 43
    add-long/2addr p1, v0

    .line 44
    const-wide/16 v0, 0x3e8

    .line 45
    .line 46
    add-long/2addr p1, v0

    .line 47
    iput-wide p1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iput-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public final nextSteps(I)Ljava/util/List;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    add-long/2addr v0, v2

    .line 3
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(IJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final nextSteps(IJ)Ljava/util/List;
    .locals 9

    .line 4
    iget v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    add-int/2addr v0, p1

    .line 5
    iget-object p1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    if-lt v0, p1, :cond_0

    if-ltz v1, :cond_0

    sub-int v2, p1, v1

    sub-int v3, v0, v1

    .line 7
    iget-object v4, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 8
    iget-object v4, v4, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 9
    iget-object v4, v4, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    div-int/2addr v3, v2

    .line 10
    iget v5, v4, Lcom/android/server/vibrator/VibrationStats;->mRepeatCount:I

    add-int/2addr v5, v3

    .line 11
    iput v5, v4, Lcom/android/server/vibrator/VibrationStats;->mRepeatCount:I

    sub-int/2addr v0, p1

    .line 12
    rem-int/2addr v0, v2

    add-int/2addr v0, v1

    :cond_0
    move v6, v0

    .line 13
    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget-wide v7, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    move-wide v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object p0

    .line 14
    filled-new-array {p0}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final stopVibrating()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Turning off vibrator "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "VibrationThread"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->off()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 34
    .line 35
    iget v1, v0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOffCount:I

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    iput v1, v0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOffCount:I

    .line 40
    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    iput-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 44
    .line 45
    return-void
.end method
