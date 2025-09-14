.class public final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAnimatedValue:F

.field public mAnimating:Z

.field public mAnimationDecreaseMaxTimeSecs:F

.field public mAnimationIncreaseMaxTimeSecs:F

.field public final mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

.field public mCurrentValue:F

.field public mFirstTime:Z

.field public mLastFrameTimeNanos:J

.field public final mObject:Ljava/lang/Object;

.field public final mProperty:Landroid/util/FloatProperty;

.field public mRate:F

.field public mRateAtHbm:F

.field public mTarget:F

.field public mTargetHlgValue:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 12
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    .line 16
    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 18
    return-void
.end method


# virtual methods
.method public final performNextAnimationStep(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 3
    sub-long v0, p1, v0

    .line 5
    long-to-float v0, v0

    .line 6
    const v1, 0x3089705f    # 1.0E-9f

    .line 9
    mul-float/2addr v0, v1

    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    cmpl-float v2, v0, v1

    .line 14
    if-ltz v2, :cond_0

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    const-string v3, "Choreographer callback time out: "

    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v3, "s"

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    const-string v3, "RampAnimator"

    .line 38
    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 43
    iget p1, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 45
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    .line 47
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 49
    cmpg-float p2, p2, v2

    .line 51
    if-gez p2, :cond_1

    .line 53
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 55
    cmpl-float p2, p2, v1

    .line 57
    if-lez p2, :cond_1

    .line 59
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    .line 61
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_1

    .line 67
    iget p1, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    .line 69
    :cond_1
    mul-float/2addr v0, p1

    .line 70
    div-float/2addr v0, v1

    .line 71
    iget p1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    .line 73
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 75
    cmpl-float p2, p1, p2

    .line 77
    if-lez p2, :cond_2

    .line 79
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 81
    add-float/2addr p2, v0

    .line 82
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 91
    sub-float/2addr p2, v0

    .line 92
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 95
    move-result p1

    .line 96
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 98
    :goto_0
    iget p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 100
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 102
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 104
    cmpl-float p1, p1, p2

    .line 106
    if-eqz p1, :cond_3

    .line 108
    iget-object p1, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    .line 110
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 112
    invoke-virtual {p1, v0, p2}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 115
    :cond_3
    iget p1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    .line 117
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 119
    cmpl-float p1, p1, p2

    .line 121
    if-nez p1, :cond_4

    .line 123
    const/4 p1, 0x0

    .line 124
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 126
    :cond_4
    return-void
.end method

.method public final setAnimationTarget(FFFZ)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_0

    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    .line 8
    :goto_0
    if-eqz p4, :cond_1

    .line 10
    move p4, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget p4, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    .line 14
    :goto_1
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTarget:F

    .line 16
    cmpl-float v2, v2, p1

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v2, :cond_2

    .line 22
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTarget:F

    .line 24
    move v2, v3

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v2, v4

    .line 27
    :goto_2
    iget-boolean v5, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 29
    if-nez v5, :cond_b

    .line 31
    cmpg-float v6, p2, v0

    .line 33
    if-gtz v6, :cond_3

    .line 35
    goto/16 :goto_4

    .line 37
    :cond_3
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 39
    cmpl-float v5, p1, v2

    .line 41
    if-lez v5, :cond_4

    .line 43
    cmpl-float v6, v1, v0

    .line 45
    if-lez v6, :cond_4

    .line 47
    sub-float v6, p1, v2

    .line 49
    div-float v7, v6, p2

    .line 51
    cmpl-float v7, v7, v1

    .line 53
    if-lez v7, :cond_4

    .line 55
    div-float p2, v6, v1

    .line 57
    goto :goto_3

    .line 58
    :cond_4
    cmpg-float v1, p1, v2

    .line 60
    if-gez v1, :cond_5

    .line 62
    cmpl-float v0, p4, v0

    .line 64
    if-lez v0, :cond_5

    .line 66
    sub-float v0, v2, p1

    .line 68
    div-float v1, v0, p2

    .line 70
    cmpl-float v1, v1, p4

    .line 72
    if-lez v1, :cond_5

    .line 74
    div-float p2, v0, p4

    .line 76
    :cond_5
    :goto_3
    iget-boolean p4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 78
    if-eqz p4, :cond_7

    .line 80
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 82
    cmpl-float v0, p2, v0

    .line 84
    if-nez v0, :cond_7

    .line 86
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    .line 88
    cmpl-float v0, p3, v0

    .line 90
    if-nez v0, :cond_7

    .line 92
    cmpg-float v0, p1, v2

    .line 94
    if-gtz v0, :cond_6

    .line 96
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    .line 98
    cmpg-float v0, v2, v0

    .line 100
    if-lez v0, :cond_7

    .line 102
    :cond_6
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    .line 104
    cmpg-float v0, v0, v2

    .line 106
    if-gtz v0, :cond_8

    .line 108
    cmpg-float v0, v2, p1

    .line 110
    if-gtz v0, :cond_8

    .line 112
    :cond_7
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 114
    iput p3, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    .line 116
    :cond_8
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    .line 118
    cmpl-float p2, p2, p1

    .line 120
    if-eqz p2, :cond_9

    .line 122
    move v4, v3

    .line 123
    :cond_9
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    .line 125
    if-nez p4, :cond_a

    .line 127
    if-eqz v5, :cond_a

    .line 129
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 131
    iput v2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 133
    iget-object p1, p0, Lcom/android/server/display/RampAnimator;->mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 141
    move-result-wide p1

    .line 142
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 144
    :cond_a
    move v3, v4

    .line 145
    goto :goto_5

    .line 146
    :cond_b
    :goto_4
    if-nez v5, :cond_c

    .line 148
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 150
    cmpl-float p2, p1, p2

    .line 152
    if-nez p2, :cond_c

    .line 154
    if-eqz v2, :cond_a

    .line 156
    :cond_c
    iput-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 158
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 160
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    .line 162
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    .line 164
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 166
    iget-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    .line 168
    iget-object p3, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 170
    invoke-virtual {p2, p3, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 173
    iput-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 175
    :goto_5
    return v3
.end method

.method public final setAnimationTimeLimits(JJ)V
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p1, v0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 8
    if-lez v2, :cond_0

    .line 10
    long-to-float p1, p1

    .line 11
    div-float/2addr p1, v4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v3

    .line 14
    :goto_0
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    .line 16
    cmp-long p1, p3, v0

    .line 18
    if-lez p1, :cond_1

    .line 20
    long-to-float p1, p3

    .line 21
    div-float v3, p1, v4

    .line 23
    :cond_1
    iput v3, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    .line 25
    return-void
.end method
