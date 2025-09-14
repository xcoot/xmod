.class public final Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mOffloadScreenBrightness:F


# direct methods
.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 6
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 8
    iput p1, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    .line 10
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "OffloadBrightnessStrategy:"

    .line 3
    const-string v1, "  mOffloadScreenBrightness:"

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget p0, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    .line 11
    invoke-static {v0, p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 14
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "OffloadBrightnessStrategy"

    .line 3
    return-object p0
.end method

.method public final getReason()I
    .locals 0

    .line 1
    const/16 p0, 0xb

    .line 3
    return p0
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mSelectedDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 3
    invoke-interface {p1}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "OffloadBrightnessStrategy"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    invoke-interface {p1}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string v0, "InvalidBrightnessStrategy"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 27
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 29
    iput p1, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    .line 31
    :cond_0
    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    .line 3
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 5
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 15
    iput v0, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    .line 17
    :cond_0
    new-instance p0, Lcom/android/server/display/brightness/BrightnessReason;

    .line 19
    invoke-direct {p0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    .line 22
    new-instance v0, Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 24
    invoke-direct {v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 27
    iput p1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    .line 29
    iput p1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mSdrBrightness:F

    .line 31
    iput-object p0, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 33
    const-string p0, "OffloadBrightnessStrategy"

    .line 35
    iput-object p0, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 37
    const/4 p0, 0x0

    .line 38
    iput-boolean p0, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    .line 40
    const/4 p0, 0x1

    .line 41
    iput-boolean p0, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    .line 43
    new-instance p0, Lcom/android/server/display/DisplayBrightnessState;

    .line 45
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    .line 48
    return-object p0
.end method
