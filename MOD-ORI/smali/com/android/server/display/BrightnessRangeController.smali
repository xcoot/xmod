.class public final Lcom/android/server/display/BrightnessRangeController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHbmController:Lcom/android/server/display/HighBrightnessModeController;

.field public final mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

.field public final mModeChangeCallback:Ljava/lang/Runnable;

.field public final mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

.field public final mUseHdrClamper:Z

.field public final mUseNbmController:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/NormalBrightnessModeController;Lcom/android/server/display/brightness/clamper/HdrClamper;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/BrightnessRangeController;->mModeChangeCallback:Ljava/lang/Runnable;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    .line 11
    .line 12
    iget-object p1, p6, Lcom/android/server/display/feature/DisplayManagerFlags;->mHdrClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    .line 19
    .line 20
    iget-object p1, p6, Lcom/android/server/display/feature/DisplayManagerFlags;->mNbmControllerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessRangeController;->mUseNbmController:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p3, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    .line 31
    .line 32
    iput-object p1, p4, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    .line 33
    .line 34
    invoke-virtual {p4}, Lcom/android/server/display/NormalBrightnessModeController;->recalculateMaxBrightness()Z

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0, p8, p7, p3}, Lcom/android/server/display/BrightnessRangeController;->updateHdrClamper(Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeController;->mUseNbmController:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mModeChangeCallback:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public final getCurrentBrightnessMax()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeController;->mUseNbmController:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    .line 26
    .line 27
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final getHdrBrightnessValue()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getHdrTransitionRate()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    .line 17
    .line 18
    :cond_1
    return v1
.end method

.method public final onAmbientLuxChange(F)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/BrightnessRangeController;F)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda3;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/BrightnessRangeController;F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/BrightnessRangeController;->applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 19
    .line 20
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    .line 25
    .line 26
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/display/brightness/clamper/HdrClamper;->recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final onBrightnessChanged(IFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(IFF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setAutoBrightnessEnabled(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/BrightnessRangeController;I)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda6;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/BrightnessRangeController;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/BrightnessRangeController;->applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    .line 25
    .line 26
    if-eq v0, p1, :cond_1

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 31
    .line 32
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/brightness/clamper/HdrClamper;->recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final updateHdrClamper(Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p3}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/high16 v0, -0x40800000    # -1.0f

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 15
    .line 16
    :goto_0
    iget-object p3, p3, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 17
    .line 18
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 19
    .line 20
    iget p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 25
    .line 26
    mul-int/2addr v1, p1

    .line 27
    int-to-float p1, v1

    .line 28
    mul-float/2addr p1, v0

    .line 29
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    .line 30
    .line 31
    iput p1, v0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 34
    .line 35
    if-eq p2, p1, :cond_2

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 47
    .line 48
    :cond_1
    if-eqz p2, :cond_2

    .line 49
    .line 50
    iget p1, v0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    cmpl-float p1, p1, v1

    .line 54
    .line 55
    if-ltz p1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControlHdrLayerInfoListener;->register(Landroid/os/IBinder;)V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 61
    .line 62
    :cond_2
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    .line 63
    .line 64
    iget-boolean p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    .line 65
    .line 66
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/display/brightness/clamper/HdrClamper;->recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method
