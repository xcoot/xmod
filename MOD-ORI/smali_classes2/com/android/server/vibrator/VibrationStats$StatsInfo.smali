.class public final Lcom/android/server/vibrator/VibrationStats$StatsInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final adaptiveScale:F

.field public final endLatencyMillis:I

.field public final endedBySameUid:Z

.field public final endedByUsage:I

.field public final halComposeCount:I

.field public final halComposePwleCount:I

.field public final halCompositionSize:I

.field public final halOffCount:I

.field public final halOnCount:I

.field public final halPerformCount:I

.field public final halPwleSize:I

.field public final halSetAmplitudeCount:I

.field public final halSetExternalControlCount:I

.field public final halSupportedCompositionPrimitivesUsed:[I

.field public final halSupportedEffectsUsed:[I

.field public final halUnsupportedCompositionPrimitivesUsed:[I

.field public final halUnsupportedEffectsUsed:[I

.field public final interruptedUsage:I

.field public mIsWritten:Z

.field public final repeatCount:I

.field public final startLatencyMillis:I

.field public final status:I

.field public final totalDurationMillis:I

.field public final uid:I

.field public final usage:I

.field public final vibrationType:I

.field public final vibratorOnMillis:I


# direct methods
.method public constructor <init>(IIILcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/VibrationStats;J)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibrationType:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->usage:I

    .line 9
    .line 10
    invoke-virtual {p4}, Lcom/android/server/vibrator/Vibration$Status;->getProtoEnumValue()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput p2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->status:I

    .line 15
    .line 16
    iget p2, p5, Lcom/android/server/vibrator/VibrationStats;->mAdaptiveScale:F

    .line 17
    .line 18
    iput p2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->adaptiveScale:F

    .line 19
    .line 20
    iget p2, p5, Lcom/android/server/vibrator/VibrationStats;->mEndedByUid:I

    .line 21
    .line 22
    const/4 p3, 0x1

    .line 23
    const/4 p4, 0x0

    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    .line 26
    move p1, p3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p1, p4

    .line 29
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedBySameUid:Z

    .line 30
    .line 31
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mEndedByUsage:I

    .line 32
    .line 33
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedByUsage:I

    .line 34
    .line 35
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    .line 36
    .line 37
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->interruptedUsage:I

    .line 38
    .line 39
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mRepeatCount:I

    .line 40
    .line 41
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->repeatCount:I

    .line 42
    .line 43
    iget-wide p1, p5, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    .line 44
    .line 45
    sub-long v0, p6, p1

    .line 46
    .line 47
    const-wide/16 v2, 0x0

    .line 48
    .line 49
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    long-to-int v0, v0

    .line 54
    iput v0, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->totalDurationMillis:I

    .line 55
    .line 56
    iget v0, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 57
    .line 58
    iput v0, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibratorOnMillis:I

    .line 59
    .line 60
    iget-wide v0, p5, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    .line 61
    .line 62
    cmp-long v4, v0, v2

    .line 63
    .line 64
    if-lez v4, :cond_1

    .line 65
    .line 66
    sub-long/2addr v0, p1

    .line 67
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide p1

    .line 71
    long-to-int p1, p1

    .line 72
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    .line 73
    .line 74
    iget-wide p1, p5, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    .line 75
    .line 76
    sub-long/2addr p6, p1

    .line 77
    invoke-static {v2, v3, p6, p7}, Ljava/lang/Math;->max(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide p1

    .line 81
    long-to-int p1, p1

    .line 82
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iput p4, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    .line 86
    .line 87
    iput p4, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    .line 88
    .line 89
    :goto_1
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposeCount:I

    .line 90
    .line 91
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposeCount:I

    .line 92
    .line 93
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposePwleCount:I

    .line 94
    .line 95
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposePwleCount:I

    .line 96
    .line 97
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    .line 98
    .line 99
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOnCount:I

    .line 100
    .line 101
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorOffCount:I

    .line 102
    .line 103
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOffCount:I

    .line 104
    .line 105
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformCount:I

    .line 106
    .line 107
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformCount:I

    .line 108
    .line 109
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetAmplitudeCount:I

    .line 110
    .line 111
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetAmplitudeCount:I

    .line 112
    .line 113
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetExternalControlCount:I

    .line 114
    .line 115
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetExternalControlCount:I

    .line 116
    .line 117
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibrationCompositionTotalSize:I

    .line 118
    .line 119
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halCompositionSize:I

    .line 120
    .line 121
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibrationPwleTotalSize:I

    .line 122
    .line 123
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPwleSize:I

    .line 124
    .line 125
    iget-object p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    .line 126
    .line 127
    invoke-static {p1, p3}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedCompositionPrimitivesUsed:[I

    .line 132
    .line 133
    iget-object p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    .line 134
    .line 135
    invoke-static {p1, p3}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedEffectsUsed:[I

    .line 140
    .line 141
    iget-object p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    .line 142
    .line 143
    invoke-static {p1, p4}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedCompositionPrimitivesUsed:[I

    .line 148
    .line 149
    iget-object p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    .line 150
    .line 151
    invoke-static {p1, p4}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedEffectsUsed:[I

    .line 156
    .line 157
    return-void
.end method

.method public static filteredKeys(Landroid/util/SparseBooleanArray;Z)[I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-ge v1, v3, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ne v3, p1, :cond_0

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-nez v2, :cond_2

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :cond_2
    new-array v1, v2, [I

    .line 26
    .line 27
    move v2, v0

    .line 28
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v0, v3, :cond_4

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ne v3, p1, :cond_3

    .line 39
    .line 40
    add-int/lit8 v3, v2, 0x1

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    aput v4, v1, v2

    .line 47
    .line 48
    move v2, v3

    .line 49
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    return-object v1
.end method


# virtual methods
.method public isWritten()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    .line 2
    .line 3
    return p0
.end method
