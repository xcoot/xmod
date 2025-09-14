.class public final Lcom/android/server/display/DisplayBrightnessState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBrightness:F

.field public final mBrightnessAdjustmentFlag:I

.field public final mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mCustomAnimationRate:F

.field public final mDisplayBrightnessStrategyName:Ljava/lang/String;

.field public final mIsSlowChange:Z

.field public final mIsUserInitiatedChange:Z

.field public final mMaxBrightness:F

.field public final mMinBrightness:F

.field public final mSdrBrightness:F

.field public final mShouldUpdateScreenBrightnessSetting:Z

.field public final mShouldUseAutoBrightness:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    .line 6
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 8
    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mSdrBrightness:F

    .line 10
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mSdrBrightness:F

    .line 12
    iget-object v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 14
    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 16
    iget-object v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 20
    iget-boolean v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUseAutoBrightness:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 24
    iget-boolean v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 28
    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    .line 30
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 32
    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMinBrightness:F

    .line 34
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 36
    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    .line 38
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 40
    iget-boolean v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 44
    iget-object v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 46
    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 48
    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    .line 50
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    .line 52
    iget-boolean p1, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    .line 54
    iput-boolean p1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 56
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/display/DisplayBrightnessState;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/display/DisplayBrightnessState;

    .line 13
    iget v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 15
    iget v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 17
    cmpl-float v1, v3, v1

    .line 19
    if-nez v1, :cond_2

    .line 21
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mSdrBrightness:F

    .line 23
    iget v3, p1, Lcom/android/server/display/DisplayBrightnessState;->mSdrBrightness:F

    .line 25
    cmpl-float v1, v1, v3

    .line 27
    if-nez v1, :cond_2

    .line 29
    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 31
    iget-object v3, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 33
    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 41
    iget-object v3, p1, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 43
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 49
    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 51
    iget-boolean v3, p1, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 53
    if-ne v1, v3, :cond_2

    .line 55
    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 57
    iget-boolean v3, p1, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 59
    if-ne v1, v3, :cond_2

    .line 61
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 63
    iget v3, p1, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 65
    cmpl-float v1, v1, v3

    .line 67
    if-nez v1, :cond_2

    .line 69
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 71
    iget v3, p1, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 73
    cmpl-float v1, v1, v3

    .line 75
    if-nez v1, :cond_2

    .line 77
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 79
    iget v3, p1, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 81
    cmpl-float v1, v1, v3

    .line 83
    if-nez v1, :cond_2

    .line 85
    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 87
    iget-boolean v3, p1, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 89
    if-ne v1, v3, :cond_2

    .line 91
    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 93
    iget-object v3, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 95
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 101
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    .line 103
    iget v3, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    .line 105
    if-ne v1, v3, :cond_2

    .line 107
    iget-boolean p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 109
    iget-boolean p1, p1, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 111
    if-ne p0, p1, :cond_2

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    move v0, v2

    .line 115
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object v1

    .line 7
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mSdrBrightness:F

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    move-result-object v2

    .line 13
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v4

    .line 19
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object v5

    .line 25
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    move-result-object v6

    .line 31
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 33
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    move-result-object v7

    .line 37
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 39
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object v8

    .line 43
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    move-result-object v9

    .line 49
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v11

    .line 55
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    move-result-object v12

    .line 61
    iget-object v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 63
    iget-object v10, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 65
    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 72
    move-result p0

    .line 73
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "DisplayBrightnessState:\n    brightness:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "\n    sdrBrightness:"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mSdrBrightness:F

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "\n    brightnessReason:"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "\n    shouldUseAutoBrightness:"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "\n    isSlowChange:"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "\n    maxBrightness:"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, "\n    minBrightness:"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "\n    customAnimationRate:"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "\n    shouldUpdateScreenBrightnessSetting:"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "\n    mBrightnessEvent:"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 100
    const-string/jumbo v2, "null"

    .line 103
    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "\n    mBrightnessAdjustmentFlag:"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "\n    mIsUserInitiatedChange:"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-boolean p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    return-object p0
.end method
