.class public final Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllowAutoBrightnessWhileDozingConfig:Z

.field public final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public final mIsAutoBrightnessEnabled:Z

.field public final mLastUserSetScreenBrightness:F

.field public final mSelectedDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

.field public final mTargetDisplayState:I

.field public final mUserSetBrightnessChanged:Z


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;FZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mTargetDisplayState:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mSelectedDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mLastUserSetScreenBrightness:F

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mUserSetBrightnessChanged:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mIsAutoBrightnessEnabled:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mSelectedDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mSelectedDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 18
    .line 19
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget v0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mTargetDisplayState:I

    .line 26
    .line 27
    iget v2, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mTargetDisplayState:I

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mUserSetBrightnessChanged:Z

    .line 32
    .line 33
    iget-boolean v2, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mUserSetBrightnessChanged:Z

    .line 34
    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    iget v0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mLastUserSetScreenBrightness:F

    .line 38
    .line 39
    iget v2, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mLastUserSetScreenBrightness:F

    .line 40
    .line 41
    cmpl-float v0, v0, v2

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 46
    .line 47
    iget-boolean v2, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 48
    .line 49
    if-ne v0, v2, :cond_1

    .line 50
    .line 51
    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mIsAutoBrightnessEnabled:Z

    .line 52
    .line 53
    iget-boolean p1, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mIsAutoBrightnessEnabled:Z

    .line 54
    .line 55
    if-ne p0, p1, :cond_1

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mTargetDisplayState:I

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mUserSetBrightnessChanged:Z

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget v0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mLastUserSetScreenBrightness:F

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mIsAutoBrightnessEnabled:Z

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-object v0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mSelectedDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 34
    .line 35
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StrategySelectionNotifyRequest: mDisplayPowerRequest="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " mTargetDisplayState="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mTargetDisplayState:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " mSelectedDisplayBrightnessStrategy="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mSelectedDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " mLastUserSetScreenBrightness="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mLastUserSetScreenBrightness:F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " mUserSetBrightnessChanged="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mUserSetBrightnessChanged:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " mAllowAutoBrightnessWhileDozingConfig="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " mIsAutoBrightnessEnabled="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mIsAutoBrightnessEnabled:Z

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method
