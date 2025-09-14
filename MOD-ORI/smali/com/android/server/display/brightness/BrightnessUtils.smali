.class public abstract Lcom/android/server/display/brightness/BrightnessUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sScreenExtendedBrightnessRangeMaximum:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x10e0137

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    const/high16 v1, 0x437f0000    # 255.0f

    .line 14
    .line 15
    div-float/2addr v0, v1

    .line 16
    sput v0, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    .line 17
    .line 18
    return-void
.end method

.method public static clampAbsoluteBrightness(F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static constructDisplayBrightnessState(IFFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 7
    .line 8
    .line 9
    new-instance p0, Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    .line 15
    .line 16
    iput p2, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mSdrBrightness:F

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 21
    .line 22
    iput-boolean p4, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    .line 23
    .line 24
    new-instance p1, Lcom/android/server/display/DisplayBrightnessState;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public static isValidBrightnessValue(F)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float v0, p0, v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    .line 13
    .line 14
    cmpg-float p0, p0, v0

    .line 15
    .line 16
    if-gtz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method
