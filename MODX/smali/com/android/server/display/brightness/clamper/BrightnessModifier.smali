.class public abstract Lcom/android/server/display/brightness/clamper/BrightnessModifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mApplied:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    .line 7
    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F
.end method

.method public abstract getModifier()I
.end method

.method public abstract setAmbientLux(F)V
.end method

.method public abstract shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
.end method

.method public shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result p0

    return p0
.end method

.method public abstract shouldListenToLightSensor()Z
.end method

.method public stop()V
    .locals 0

    .line 1
    return-void
.end method
