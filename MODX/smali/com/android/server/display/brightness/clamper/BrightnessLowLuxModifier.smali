.class public final Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;
.super Lcom/android/server/display/brightness/clamper/BrightnessModifier;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAmbientLux:F

.field public mBrightnessLowerBound:F

.field public final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public mIsActive:Z

.field public mMinNitsAllowed:F

.field public mReason:I

.field public final mSettingsObserver:Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "BrightnessLowLuxModifier"

    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->DEBUG:Z

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 6
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mContentResolver:Landroid/content/ContentResolver;

    .line 12
    new-instance p2, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$SettingsObserver;

    .line 14
    invoke-direct {p2, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$SettingsObserver;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;Landroid/os/Handler;)V

    .line 17
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mSettingsObserver:Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$SettingsObserver;

    .line 19
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 21
    new-instance p2, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$$ExternalSyntheticLambda0;

    .line 23
    invoke-direct {p2, p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;)V

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "BrightnessLowLuxModifier:"

    .line 3
    const-string v1, "  mIsActive="

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    .line 11
    const-string v2, "  mBrightnessLowerBound="

    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    .line 19
    const-string v2, "  mReason="

    .line 21
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    .line 27
    const-string v2, "  mAmbientLux="

    .line 29
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v0

    .line 33
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    .line 35
    const-string v2, "  mMinNitsAllowed="

    .line 37
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v0

    .line 41
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mMinNitsAllowed:F

    .line 43
    invoke-static {v0, p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 46
    return-void
.end method

.method public final getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getBrightnessLowerBound()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    .line 3
    return p0
.end method

.method public getBrightnessReason()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    .line 3
    return p0
.end method

.method public final getModifier()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    .line 3
    return p0
.end method

.method public isActive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    .line 3
    return p0
.end method

.method public recalculateLowerBound()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mContentResolver:Landroid/content/ContentResolver;

    .line 3
    const-string/jumbo v1, "even_dimmer_min_nits"

    .line 6
    const v2, 0x3e4ccccd    # 0.2f

    .line 9
    const/4 v3, -0x2

    .line 10
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mContentResolver:Landroid/content/ContentResolver;

    .line 16
    const-string/jumbo v2, "even_dimmer_activated"

    .line 19
    const/high16 v4, 0x3f800000    # 1.0f

    .line 21
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 24
    move-result v1

    .line 25
    cmpl-float v1, v1, v4

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    if-nez v1, :cond_0

    .line 31
    move v1, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v1, v2

    .line 34
    :goto_0
    const/high16 v4, -0x40800000    # -1.0f

    .line 36
    if-eqz v1, :cond_1

    .line 38
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    .line 40
    cmpl-float v1, v1, v4

    .line 42
    if-eqz v1, :cond_1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v3, v2

    .line 46
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 48
    if-eqz v3, :cond_4

    .line 50
    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    .line 52
    iget-object v5, v1, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 54
    if-nez v5, :cond_2

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object v4, v5, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mMinLuxToNits:Landroid/util/Spline;

    .line 59
    invoke-virtual {v4, v2}, Landroid/util/Spline;->interpolate(F)F

    .line 62
    move-result v4

    .line 63
    :goto_2
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    .line 66
    move-result v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    .line 70
    move-result v5

    .line 71
    invoke-virtual {v1, v5}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    .line 74
    move-result v1

    .line 75
    cmpl-float v0, v0, v4

    .line 77
    if-lez v0, :cond_3

    .line 79
    const/16 v0, 0x20

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    const/16 v0, 0x10

    .line 84
    :goto_3
    move v4, v2

    .line 85
    move v2, v0

    .line 86
    goto :goto_5

    .line 87
    :cond_4
    iget-object v0, v1, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 89
    if-nez v0, :cond_5

    .line 91
    const/4 v0, 0x0

    .line 92
    :goto_4
    move v1, v0

    .line 93
    goto :goto_5

    .line 94
    :cond_5
    iget v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mTransitionPoint:F

    .line 96
    goto :goto_4

    .line 97
    :goto_5
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    .line 99
    cmpl-float v0, v0, v1

    .line 101
    if-nez v0, :cond_6

    .line 103
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    .line 105
    if-ne v0, v2, :cond_6

    .line 107
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    .line 109
    if-eq v0, v3, :cond_8

    .line 111
    :cond_6
    iput-boolean v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    .line 113
    iput v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    .line 115
    sget-boolean v0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->DEBUG:Z

    .line 117
    if-eqz v0, :cond_7

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v2, "isActive: "

    .line 124
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, ", minBrightnessAllowed: "

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, ", mAmbientLux: "

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 148
    const-string v2, ", mReason: "

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v2, ", minNitsAllowed: "

    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    const-string v2, "BrightnessLowLuxModifier"

    .line 172
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_7
    iput v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mMinNitsAllowed:F

    .line 177
    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    .line 179
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 181
    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 184
    :cond_8
    return-void
.end method

.method public setAmbientLux(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->recalculateLowerBound()V

    .line 6
    return-void
.end method

.method public final shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    .line 3
    return p0
.end method

.method public final shouldListenToLightSensor()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mContentResolver:Landroid/content/ContentResolver;

    .line 3
    const-string/jumbo v0, "even_dimmer_activated"

    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    const/4 v2, -0x2

    .line 9
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 12
    move-result p0

    .line 13
    cmpl-float p0, p0, v1

    .line 15
    if-nez p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mContentResolver:Landroid/content/ContentResolver;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mSettingsObserver:Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$SettingsObserver;

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8
    return-void
.end method
