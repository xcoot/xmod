.class public final Lcom/android/server/display/brightness/clamper/DisplayDimModifier;
.super Lcom/android/server/display/brightness/clamper/BrightnessModifier;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mScreenBrightnessDimConfig:F

.field public final mScreenBrightnessMinimumDimAmount:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;-><init>()V

    .line 4
    const-class v0, Landroid/os/PowerManager;

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/os/PowerManager;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Landroid/os/PowerManager;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;->mScreenBrightnessDimConfig:F

    .line 33
    const v0, 0x105010c

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;->mScreenBrightnessMinimumDimAmount:F

    .line 42
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "DisplayDimModifier:"

    .line 3
    const-string v1, "  mScreenBrightnessDimConfig="

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;->mScreenBrightnessDimConfig:F

    .line 11
    const-string v2, "  mScreenBrightnessMinimumDimAmount="

    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;->mScreenBrightnessMinimumDimAmount:F

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 31
    const-string v1, "    "

    .line 33
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 36
    const-string p1, "BrightnessModifier:"

    .line 38
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "  mApplied="

    .line 45
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public final getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;->mScreenBrightnessMinimumDimAmount:F

    .line 3
    sub-float/2addr p1, p2

    .line 4
    iget p0, p0, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;->mScreenBrightnessDimConfig:F

    .line 6
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    .line 9
    move-result p0

    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getModifier()I
    .locals 0

    .line 1
    const/4 p0, 0x1

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
    iget p0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 3
    const/4 p1, 0x2

    .line 4
    if-ne p0, p1, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
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
