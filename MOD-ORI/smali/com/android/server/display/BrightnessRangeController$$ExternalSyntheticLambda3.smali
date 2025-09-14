.class public final synthetic Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/BrightnessRangeController;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessRangeController;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/BrightnessRangeController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda3;->f$1:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/BrightnessRangeController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda3;->f$1:F

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 6
    .line 7
    iput p0, v0, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 21
    .line 22
    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    .line 23
    .line 24
    cmpl-float p0, p0, v1

    .line 25
    .line 26
    if-ltz p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    :goto_0
    iget-boolean v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 32
    .line 33
    if-eq p0, v1, :cond_2

    .line 34
    .line 35
    iput-boolean p0, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_1
    return-void
.end method
