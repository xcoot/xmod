.class public final Lcom/android/server/display/brightness/clamper/BrightnessLowPowerModeModifier;
.super Lcom/android/server/display/brightness/clamper/BrightnessModifier;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "BrightnessLowPowerModeModifier:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    const-string v1, "    "

    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p1, "BrightnessModifier:"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "  mApplied="

    .line 21
    .line 22
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F
    .locals 0

    .line 1
    iget p0, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 2
    .line 3
    const/high16 p2, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    mul-float/2addr p0, p1

    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getModifier()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final setAmbientLux(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 0

    .line 1
    iget-boolean p0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    return p0
.end method

.method public final shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;)Z
    .locals 0

    .line 2
    iget-boolean p0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz p0, :cond_0

    .line 3
    iget-boolean p0, p2, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;->mAwakenFromDozingInAutoBrightness:Z

    if-nez p0, :cond_0

    .line 4
    iget p0, p2, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;->mDisplayState:I

    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldListenToLightSensor()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
