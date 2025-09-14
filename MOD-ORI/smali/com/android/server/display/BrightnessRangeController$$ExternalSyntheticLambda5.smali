.class public final synthetic Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/BrightnessRangeController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessRangeController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/display/BrightnessRangeController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/display/BrightnessRangeController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;->f$1:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne p0, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v1

    .line 16
    :goto_0
    iget-boolean p0, v0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    .line 17
    .line 18
    if-eq v2, p0, :cond_1

    .line 19
    .line 20
    iput-boolean v2, v0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/display/NormalBrightnessModeController;->recalculateMaxBrightness()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :cond_1
    return v1
.end method
