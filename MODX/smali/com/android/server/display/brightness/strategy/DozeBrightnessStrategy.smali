.class public final Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;
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
    const-string p0, "DozeBrightnessStrategy"

    .line 3
    return-object p0
.end method

.method public final getReason()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 2

    .line 1
    iget-object p0, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 3
    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 5
    const/4 p1, 0x2

    .line 6
    const-string v0, "DozeBrightnessStrategy"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p1, p0, p0, v0, v1}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
