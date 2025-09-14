.class public final Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "FallbackBrightnessStrategy"

    .line 3
    return-object p0
.end method

.method public final getReason()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 3

    .line 1
    new-instance p0, Lcom/android/server/display/brightness/BrightnessReason;

    .line 3
    invoke-direct {p0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    .line 6
    const/4 v0, 0x1

    .line 7
    iget v1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 12
    new-instance v2, Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 14
    invoke-direct {v2}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 17
    iput v1, v2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    .line 19
    iput v1, v2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mSdrBrightness:F

    .line 21
    iput-object p0, v2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 23
    const-string p0, "FallbackBrightnessStrategy"

    .line 25
    iput-object p0, v2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 27
    iput-boolean v0, v2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    .line 29
    iget-boolean p0, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    .line 31
    iput-boolean p0, v2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    .line 33
    new-instance p0, Lcom/android/server/display/DisplayBrightnessState;

    .line 35
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    .line 38
    return-object p0
.end method
