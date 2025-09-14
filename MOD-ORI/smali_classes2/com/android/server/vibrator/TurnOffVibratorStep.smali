.class public final Lcom/android/server/vibrator/TurnOffVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIsCleanUp:Z


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Z)V
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
    move-object v4, p4

    .line 7
    move-wide v7, p2

    .line 8
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 9
    .line 10
    .line 11
    iput-boolean p5, p0, Lcom/android/server/vibrator/TurnOffVibratorStep;->mIsCleanUp:Z

    .line 12
    .line 13
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

.method public final cancelImmediately()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final isCleanUp()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/vibrator/TurnOffVibratorStep;->mIsCleanUp:Z

    .line 2
    .line 3
    return p0
.end method

.method public final play()Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "TurnOffVibratorStep"

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
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method
