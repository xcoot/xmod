.class public final Lcom/android/server/AnyMotionDetector$RunningSignalStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field public energy:F

.field public previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field public runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

.field public sampleCount:I


# virtual methods
.method public final accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    .line 7
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v7, Lcom/android/server/AnyMotionDetector$Vector3;

    .line 14
    iget v1, v0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 16
    iget v8, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 18
    add-float v2, v1, v8

    .line 20
    iget v1, v0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 22
    iget v9, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 24
    add-float v3, v1, v9

    .line 26
    iget v0, v0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 28
    iget v10, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 30
    add-float v4, v0, v10

    .line 32
    iget-wide v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    .line 34
    move-object v1, v7

    .line 35
    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(FFFJ)V

    .line 38
    iput-object v7, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 40
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 42
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 44
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 46
    if-eqz v0, :cond_0

    .line 48
    iget p1, v0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 50
    sub-float/2addr v8, p1

    .line 51
    iget p1, v0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 53
    sub-float/2addr v9, p1

    .line 54
    iget p1, v0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 56
    sub-float/2addr v10, p1

    .line 57
    mul-float/2addr v8, v8

    .line 58
    mul-float/2addr v9, v9

    .line 59
    add-float/2addr v9, v8

    .line 60
    mul-float/2addr v10, v10

    .line 61
    add-float/2addr v10, v9

    .line 62
    iget p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    .line 64
    add-float/2addr p1, v10

    .line 65
    iput p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    .line 67
    sget-boolean p1, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    .line 69
    if-eqz p1, :cond_0

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    const-string v0, "Accumulated vector "

    .line 75
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 80
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, ", runningSum = "

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 94
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v0, ", incrementalEnergy = "

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 109
    const-string v0, ", energy = "

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget p0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    .line 116
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    const-string p1, "AnyMotionDetector"

    .line 125
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 4
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 6
    new-instance v0, Lcom/android/server/AnyMotionDetector$Vector3;

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const-wide/16 v5, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    move-object v1, v0

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(FFFJ)V

    .line 17
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    .line 25
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 3
    const-string/jumbo v1, "null"

    .line 6
    if-nez v0, :cond_0

    .line 8
    move-object v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 16
    if-nez v2, :cond_1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    :goto_1
    const-string/jumbo v2, "previousVector = "

    .line 26
    invoke-static {v2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, ", currentVector = "

    .line 32
    invoke-static {v1, v2, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, ", sampleCount = "

    .line 38
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object v0

    .line 42
    iget v1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    const-string v1, ", energy = "

    .line 53
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v0

    .line 57
    iget p0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
