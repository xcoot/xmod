.class public final Lcom/android/server/display/DisplayBrightnessState$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBrightness:F

.field public mBrightnessAdjustmentFlag:I

.field public mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public mCustomAnimationRate:F

.field public mDisplayBrightnessStrategyName:Ljava/lang/String;

.field public mIsSlowChange:Z

.field public mIsUserInitiatedChange:Z

.field public mMaxBrightness:F

.field public mMinBrightness:F

.field public mSdrBrightness:F

.field public mShouldUpdateScreenBrightnessSetting:Z

.field public mShouldUseAutoBrightness:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    .line 6
    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 11
    const/high16 v0, -0x40800000    # -1.0f

    .line 13
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    .line 18
    return-void
.end method
