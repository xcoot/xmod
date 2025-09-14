.class public final Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mTemporaryScreenBrightness:F


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "TemporaryBrightnessStrategy:"

    .line 2
    .line 3
    const-string v1, "  mTemporaryScreenBrightness:"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget p0, p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    .line 10
    .line 11
    invoke-static {v0, p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "TemporaryBrightnessStrategy"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReason()I
    .locals 0

    .line 1
    const/4 p0, 0x7

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
    iget p0, p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x7

    .line 5
    const-string v1, "TemporaryBrightnessStrategy"

    .line 6
    .line 7
    invoke-static {v0, p0, p0, v1, p1}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
