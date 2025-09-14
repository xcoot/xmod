.class public final synthetic Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/BrightnessRangeController;

.field public final synthetic f$1:Lcom/android/server/display/DisplayDeviceConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/BrightnessRangeController;

    .line 6
    iput-object p2, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/display/DisplayDeviceConfig;

    .line 8
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/BrightnessRangeController;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/display/DisplayDeviceConfig;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    .line 10
    iget-object v0, v0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    .line 12
    iput-object p0, v0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    .line 14
    invoke-virtual {v0}, Lcom/android/server/display/NormalBrightnessModeController;->recalculateMaxBrightness()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method
