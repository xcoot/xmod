.class public final Lcom/android/server/vibrator/VibrationStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAdaptiveScale:F

.field public mCreateTimeDebug:J

.field public mCreateUptimeMillis:J

.field public mEndTimeDebug:J

.field public mEndUptimeMillis:J

.field public mEndedByUid:I

.field public mEndedByUsage:I

.field public mInterruptedUsage:I

.field public mRepeatCount:I

.field public mStartTimeDebug:J

.field public mStartUptimeMillis:J

.field public mVibrationCompositionTotalSize:I

.field public mVibrationPwleTotalSize:I

.field public mVibratorComposeCount:I

.field public mVibratorComposePwleCount:I

.field public mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

.field public mVibratorOffCount:I

.field public mVibratorOnCount:I

.field public mVibratorOnTotalDurationMillis:I

.field public mVibratorPerformCount:I

.field public mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

.field public mVibratorSetAmplitudeCount:I

.field public mVibratorSetExternalControlCount:I


# virtual methods
.method public final reportComposePrimitives([Landroid/os/vibrator/PrimitiveSegment;J)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposeCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposeCount:I

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibrationCompositionTotalSize:I

    .line 8
    .line 9
    array-length v2, p1

    .line 10
    add-int/2addr v0, v2

    .line 11
    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibrationCompositionTotalSize:I

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v0, p2, v2

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    array-length v0, p1

    .line 21
    :goto_0
    if-ge v4, v0, :cond_0

    .line 22
    .line 23
    aget-object v5, p1, v4

    .line 24
    .line 25
    invoke-virtual {v5}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    int-to-long v6, v6

    .line 30
    sub-long/2addr p2, v6

    .line 31
    iget-object v6, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    .line 32
    .line 33
    invoke-virtual {v5}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v6, v5, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    cmp-long p1, p2, v2

    .line 44
    .line 45
    if-lez p1, :cond_2

    .line 46
    .line 47
    iget p1, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 48
    .line 49
    long-to-int p2, p2

    .line 50
    add-int/2addr p1, p2

    .line 51
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    array-length p2, p1

    .line 55
    move p3, v4

    .line 56
    :goto_1
    if-ge p3, p2, :cond_2

    .line 57
    .line 58
    aget-object v0, p1, p3

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 p3, p3, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_2
    return-void
.end method

.method public final reportEnded(Lcom/android/server/vibrator/Vibration$CallerInfo;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget v0, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUid:I

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUsage:I

    .line 23
    .line 24
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndTimeDebug:J

    .line 35
    .line 36
    return-void
.end method

.method public final reportInterruptedAnotherVibration(Lcom/android/server/vibrator/Vibration$CallerInfo;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    .line 12
    .line 13
    :cond_0
    return-void
.end method
