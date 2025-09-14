.class public final Lcom/android/server/display/brightness/StrategyExecutionRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCurrentScreenBrightness:F

.field public final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public final mUserSetBrightnessChanged:Z


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 6
    iput p2, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    .line 8
    iput-boolean p3, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;

    .line 9
    iget-object v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 11
    iget-object v2, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    .line 21
    iget v2, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    .line 23
    cmpl-float v0, v0, v2

    .line 25
    if-nez v0, :cond_1

    .line 27
    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    .line 29
    iget-boolean p1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    .line 31
    if-ne p0, p1, :cond_1

    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 3
    iget v1, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    move-result-object v1

    .line 9
    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object p0

    .line 15
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    move-result p0

    .line 23
    return p0
.end method
