.class public abstract Lcom/android/server/vibrator/Step;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final conductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final startTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract cancel()Ljava/util/List;
.end method

.method public abstract cancelImmediately()V
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/vibrator/Step;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 4
    .line 5
    iget-wide p0, p1, Lcom/android/server/vibrator/Step;->startTime:J

    .line 6
    .line 7
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getVibratorOnDuration()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public isCleanUp()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    .line 2
    .line 3
    return p0
.end method

.method public abstract play()Ljava/util/List;
.end method
