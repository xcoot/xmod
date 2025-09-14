.class public final Lcom/android/server/display/brightness/StrategySelectionRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

.field public mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mLastUserSetScreenBrightness:F

.field public mTargetDisplayState:I

.field public mUserSetBrightnessChanged:Z


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/display/brightness/StrategySelectionRequest;

    .line 9
    iget-object v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 11
    iget-object v2, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    .line 21
    iget v2, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    .line 23
    if-ne v0, v2, :cond_1

    .line 25
    iget v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    .line 27
    iget v2, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    .line 29
    cmpl-float v0, v0, v2

    .line 31
    if-nez v0, :cond_1

    .line 33
    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    .line 35
    iget-boolean v2, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    .line 37
    if-ne v0, v2, :cond_1

    .line 39
    iget-object p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 41
    iget-object p1, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 43
    invoke-interface {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_1

    .line 49
    const/4 v1, 0x1

    .line 50
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 3
    iget v1, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    .line 11
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object v2

    .line 15
    iget-boolean v3, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    .line 17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object v3

    .line 21
    iget-object p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 23
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 30
    move-result p0

    .line 31
    return p0
.end method
