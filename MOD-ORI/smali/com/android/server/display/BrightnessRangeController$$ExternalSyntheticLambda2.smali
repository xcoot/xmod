.class public final synthetic Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


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
    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/BrightnessRangeController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;->f$1:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/BrightnessRangeController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;->f$1:F

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    .line 6
    .line 7
    iput p0, v0, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/display/NormalBrightnessModeController;->recalculateMaxBrightness()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
