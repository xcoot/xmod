.class public final Lcom/android/server/vibrator/FinishSequentialEffectStep;
.super Lcom/android/server/vibrator/Step;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 2
    .line 3
    const-wide v1, 0x7fffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final cancel()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;->cancelImmediately()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    .line 5
    .line 6
    return-object p0
.end method

.method public final cancelImmediately()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->noteVibratorOff(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final play()Ljava/util/List;
    .locals 5

    .line 1
    const-string v0, "FinishSequentialEffectStep for effect #"

    .line 2
    .line 3
    const-wide/32 v1, 0x800000

    .line 4
    .line 5
    .line 6
    const-string v3, "FinishSequentialEffectStep"

    .line 7
    .line 8
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-string v3, "VibrationThread"

    .line 12
    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 19
    .line 20
    iget v0, v0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 39
    .line 40
    iget v0, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->noteVibratorOff(I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-nez p0, :cond_0

    .line 52
    .line 53
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    filled-new-array {p0}, [Lcom/android/server/vibrator/Step;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 67
    .line 68
    .line 69
    return-object p0

    .line 70
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method
