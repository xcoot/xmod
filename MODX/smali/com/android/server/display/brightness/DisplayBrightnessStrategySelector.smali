.class public final Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAllowAutoBrightnessWhileDozing:Z

.field public final mAllowAutoBrightnessWhileDozingConfig:Z

.field public final mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

.field public final mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

.field public final mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

.field public final mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

.field final mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

.field public final mDisplayId:I

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

.field public final mFallbackBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

.field public final mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

.field public final mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

.field public final mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

.field public mOldBrightnessStrategyName:Ljava/lang/String;

.field public final mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

.field public final mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

.field public final mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;

    .line 6
    invoke-direct {v0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;-><init>()V

    .line 9
    iput-object p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 11
    iput p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    .line 13
    new-instance v3, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    .line 15
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    .line 20
    new-instance v2, Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    .line 22
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    .line 27
    new-instance v6, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    .line 29
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v6, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    .line 34
    new-instance v7, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 36
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 41
    iput v0, v7, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    .line 43
    iput-object v7, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 45
    new-instance v5, Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    .line 47
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v5, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    .line 52
    new-instance v4, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    .line 54
    invoke-direct {v4, p2}, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;-><init>(I)V

    .line 57
    iput-object v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    .line 59
    new-instance v1, Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    .line 61
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    .line 66
    iget-object v0, p3, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 68
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 71
    move-result v0

    .line 72
    const/4 v8, 0x0

    .line 73
    if-nez v0, :cond_0

    .line 75
    move-object v0, v8

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 79
    invoke-direct {v0, p1, p2, v8, p3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;-><init>(Landroid/content/Context;ILcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 82
    :goto_0
    iput-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 84
    iget-object v9, p3, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 86
    invoke-virtual {v9}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_1

    .line 92
    move-object v9, v8

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    new-instance v9, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 96
    invoke-direct {v9, p1, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;-><init>(Landroid/content/Context;I)V

    .line 99
    :goto_1
    iget-object p2, p3, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 101
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_2

    .line 107
    move-object v9, v0

    .line 108
    :cond_2
    iput-object v9, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 110
    iget-object p2, p3, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 112
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_3

    .line 118
    new-instance p2, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    .line 120
    invoke-direct {p2}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;-><init>()V

    .line 123
    move-object v10, p2

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    move-object v10, v8

    .line 126
    :goto_2
    iput-object v10, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    .line 128
    iget-object p2, p3, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 130
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 133
    move-result p2

    .line 134
    if-eqz p2, :cond_4

    .line 136
    new-instance p2, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    .line 138
    invoke-direct {p2, p3}, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 141
    iput-object p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    .line 143
    goto :goto_3

    .line 144
    :cond_4
    iput-object v8, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    .line 146
    :goto_3
    iget-object p2, p3, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 148
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_5

    .line 154
    new-instance p2, Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    .line 156
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 159
    move-object v11, p2

    .line 160
    goto :goto_4

    .line 161
    :cond_5
    move-object v11, v8

    .line 162
    :goto_4
    iput-object v11, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFallbackBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    .line 164
    iget-object v9, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    .line 166
    move-object v8, v0

    .line 167
    filled-new-array/range {v1 .. v11}, [Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 170
    move-result-object p2

    .line 171
    iput-object p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    move-result-object p1

    .line 177
    const p2, 0x111001d

    .line 180
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 183
    move-result p1

    .line 184
    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 186
    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 188
    const-string p1, "InvalidBrightnessStrategy"

    .line 190
    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    .line 192
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4
    const-string v0, "DisplayBrightnessStrategySelector:"

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "  mDisplayId= "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    .line 18
    const-string v2, "  mOldBrightnessStrategyName= "

    .line 20
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    .line 26
    const-string v2, "  mAllowAutoBrightnessWhileDozingConfig= "

    .line 28
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v0

    .line 32
    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 34
    const-string v2, "  mAllowAutoBrightnessWhileDozing= "

    .line 36
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v0

    .line 40
    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 54
    const-string v1, " "

    .line 56
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 61
    array-length p1, p0

    .line 62
    const/4 v1, 0x0

    .line 63
    :goto_0
    if-ge v1, p1, :cond_1

    .line 65
    aget-object v2, p0, v1

    .line 67
    if-eqz v2, :cond_0

    .line 69
    invoke-interface {v2, v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->dump(Ljava/io/PrintWriter;)V

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method public final selectStrategy(Lcom/android/server/display/brightness/StrategySelectionRequest;)Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget v2, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    .line 7
    iget-object v3, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 9
    iget-object v4, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 11
    invoke-virtual {v0, v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->setAllowAutoBrightnessWhileDozing(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    iget-object v6, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 18
    iget-object v7, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 20
    if-ne v2, v4, :cond_0

    .line 22
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    .line 24
    goto/16 :goto_3

    .line 26
    :cond_0
    iget v2, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 28
    if-ne v2, v4, :cond_1

    .line 30
    iget-boolean v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 32
    if-nez v2, :cond_1

    .line 34
    iget v2, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 36
    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 42
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    .line 44
    goto/16 :goto_3

    .line 46
    :cond_1
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    .line 48
    iget v8, v2, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    .line 50
    invoke-static {v8}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_2

    .line 56
    goto/16 :goto_3

    .line 58
    :cond_2
    iget-boolean v2, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 60
    if-eqz v2, :cond_3

    .line 62
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    .line 64
    goto/16 :goto_3

    .line 66
    :cond_3
    iget v2, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 68
    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_4

    .line 74
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    .line 76
    goto/16 :goto_3

    .line 78
    :cond_4
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 80
    iget v3, v2, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    .line 82
    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_5

    .line 88
    goto/16 :goto_3

    .line 90
    :cond_5
    iget-object v2, v7, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 92
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_a

    .line 98
    iget-boolean v10, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 100
    iget-object v2, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 102
    iget v12, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 104
    iget v13, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    .line 106
    iget-boolean v14, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    .line 108
    iget v9, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    .line 110
    const/16 v17, -0x1

    .line 112
    const/4 v15, 0x0

    .line 113
    iget-object v8, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 115
    const/4 v11, 0x0

    .line 116
    const/16 v16, 0x0

    .line 118
    invoke-virtual/range {v8 .. v17}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setAutoBrightnessState(IZIIFZZZI)V

    .line 121
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 123
    iget-boolean v3, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    .line 125
    if-eqz v3, :cond_8

    .line 127
    iget-object v3, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 129
    if-eqz v3, :cond_6

    .line 131
    const/4 v8, 0x0

    .line 132
    invoke-virtual {v3, v8}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    .line 135
    move-result v3

    .line 136
    goto :goto_0

    .line 137
    :cond_6
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 139
    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->adjustAutomaticBrightnessStateIfValid(F)V

    .line 142
    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 145
    move-result v8

    .line 146
    if-nez v8, :cond_7

    .line 148
    const/high16 v8, -0x40800000    # -1.0f

    .line 150
    cmpl-float v3, v3, v8

    .line 152
    if-nez v3, :cond_8

    .line 154
    :cond_7
    move v3, v4

    .line 155
    goto :goto_1

    .line 156
    :cond_8
    move v3, v5

    .line 157
    :goto_1
    iget-boolean v8, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    .line 159
    if-eqz v8, :cond_9

    .line 161
    iget-boolean v8, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    .line 163
    if-nez v8, :cond_9

    .line 165
    goto :goto_2

    .line 166
    :cond_9
    move v4, v5

    .line 167
    :goto_2
    iput-boolean v4, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsSlowChange:Z

    .line 169
    iput-boolean v3, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    .line 171
    if-eqz v3, :cond_a

    .line 173
    goto :goto_3

    .line 174
    :cond_a
    invoke-virtual {v6}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_b

    .line 180
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    .line 182
    if-eqz v2, :cond_b

    .line 184
    iget v3, v2, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    .line 186
    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_b

    .line 192
    goto :goto_3

    .line 193
    :cond_b
    iget-object v2, v7, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 195
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_c

    .line 201
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    .line 203
    if-eqz v2, :cond_c

    .line 205
    invoke-virtual {v6}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_c

    .line 211
    iget-object v3, v2, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 213
    if-eqz v3, :cond_c

    .line 215
    invoke-virtual {v3}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    .line 218
    move-result v3

    .line 219
    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_c

    .line 225
    goto :goto_3

    .line 226
    :cond_c
    iget-object v2, v7, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 228
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_d

    .line 234
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFallbackBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    .line 236
    goto :goto_3

    .line 237
    :cond_d
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    .line 239
    :goto_3
    iget-object v3, v7, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 241
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 244
    move-result v3

    .line 245
    if-eqz v3, :cond_f

    .line 247
    new-instance v3, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;

    .line 249
    iget-object v9, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 251
    iget-boolean v14, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 253
    invoke-virtual {v6}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 256
    move-result v15

    .line 257
    iget v12, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    .line 259
    iget-boolean v13, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    .line 261
    iget v10, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    .line 263
    move-object v8, v3

    .line 264
    move-object v11, v2

    .line 265
    invoke-direct/range {v8 .. v15}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;FZZZ)V

    .line 268
    iget-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 270
    array-length v4, v1

    .line 271
    :goto_4
    if-ge v5, v4, :cond_f

    .line 273
    aget-object v6, v1, v5

    .line 275
    if-eqz v6, :cond_e

    .line 277
    invoke-interface {v6, v3}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V

    .line 280
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 282
    goto :goto_4

    .line 283
    :cond_f
    iget-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    .line 285
    invoke-interface {v2}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    move-result v1

    .line 293
    if-nez v1, :cond_10

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    const-string v3, "Changing the DisplayBrightnessStrategy from "

    .line 299
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    iget-object v3, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    .line 304
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v3, " to "

    .line 309
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-interface {v2}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v3, " for display "

    .line 321
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget v3, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    .line 326
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v1

    .line 333
    const-string v3, "DisplayBrightnessStrategySelector"

    .line 335
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-interface {v2}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    .line 341
    move-result-object v1

    .line 342
    iput-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    .line 344
    :cond_10
    return-object v2
.end method

.method public setAllowAutoBrightnessWhileDozing(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 5
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 7
    iget-object v1, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadControlsDozeAutoBrightness:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 9
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 17
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    if-eqz p1, :cond_0

    .line 25
    iget-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 27
    invoke-interface {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->allowAutoBrightnessInDoze()Z

    .line 30
    move-result p1

    .line 31
    and-int/2addr p1, v0

    .line 32
    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 34
    :cond_0
    return-void
.end method
