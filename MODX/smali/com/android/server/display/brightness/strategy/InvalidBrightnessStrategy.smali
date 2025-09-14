.class public final Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;
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
    const-string p0, "InvalidBrightnessStrategy"

    .line 3
    return-object p0
.end method

.method public final getReason()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 4
    const-string v0, "InvalidBrightnessStrategy"

    .line 6
    invoke-static {p0, p1, p1, v0, p0}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
