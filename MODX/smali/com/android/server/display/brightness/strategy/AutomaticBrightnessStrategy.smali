.class public final Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;
.super Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mAppliedAutoBrightness:Z

.field public mAppliedTemporaryAutoBrightnessAdjustment:Z

.field public mAutoBrightnessAdjustment:F

.field public mAutoBrightnessAdjustmentChanged:Z

.field public mAutoBrightnessAdjustmentReasonsFlags:I

.field public mAutoBrightnessDisabledDueToDisplayOff:Z

.field public mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayId:I

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mGameAutoBrightnessLocked:Z

.field public final mInjector:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;

.field public mIsAutoBrightnessEnabled:Z

.field public mIsConfigured:Z

.field public mIsShortTermModelActive:Z

.field public mIsSlowChange:Z

.field public mPendingAutoBrightnessAdjustment:F

.field public mShouldResetShortTermModel:Z

.field public mTemporaryAutoBrightnessAdjustment:F

.field public mUseAutoBrightness:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;-><init>(Landroid/content/Context;I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 7
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    .line 17
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    .line 19
    iput p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object p1

    .line 25
    const/4 p2, -0x2

    .line 26
    const-string/jumbo v0, "screen_auto_brightness_adj"

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 33
    move-result p1

    .line 34
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget p2, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    .line 43
    const/high16 p2, -0x40800000    # -1.0f

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    invoke-static {p1, p2, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 50
    move-result v1

    .line 51
    :goto_0
    iput v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    .line 53
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 55
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    .line 57
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 59
    iput-object p4, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 61
    if-nez p3, :cond_1

    .line 63
    new-instance p3, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$RealInjector;

    .line 65
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 68
    :cond_1
    iput-object p3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;

    .line 70
    return-void
.end method


# virtual methods
.method public accommodateUserBrightnessChanges(ZFIILandroid/hardware/display/BrightnessConfiguration;IZI)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->processPendingAutoBrightnessAdjustments()V

    .line 5
    iget v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 7
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 10
    move-result v1

    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 19
    :goto_0
    move v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    .line 27
    iget-object v2, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 29
    if-eqz v2, :cond_1

    .line 31
    iget-boolean v8, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    .line 33
    iget-boolean v11, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    .line 35
    move/from16 v3, p6

    .line 37
    move-object/from16 v4, p5

    .line 39
    move/from16 v5, p2

    .line 41
    move v6, p1

    .line 42
    move/from16 v9, p3

    .line 44
    move/from16 v10, p4

    .line 46
    move/from16 v12, p7

    .line 48
    move/from16 v13, p8

    .line 50
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ILandroid/hardware/display/BrightnessConfiguration;FZFZIIZZI)V

    .line 53
    iput-boolean v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    .line 55
    iget-object v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 57
    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 59
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->hasUserDataPoints()Z

    .line 62
    move-result v1

    .line 63
    iput-boolean v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    .line 65
    :cond_1
    return-void
.end method

.method public adjustAutomaticBrightnessStateIfValid(F)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x2

    .line 8
    :goto_0
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 10
    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 12
    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 16
    invoke-virtual {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    .line 19
    move-result p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 28
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    .line 30
    cmpl-float v0, v0, p1

    .line 32
    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->putAutoBrightnessAdjustmentSetting(F)V

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 41
    :goto_2
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "AutomaticBrightnessStrategy:"

    .line 3
    const-string v1, "  mDisplayId="

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    .line 11
    const-string v2, "  mAutoBrightnessAdjustment="

    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    .line 19
    const-string v2, "  mPendingAutoBrightnessAdjustment="

    .line 21
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    .line 27
    const-string v2, "  mTemporaryAutoBrightnessAdjustment="

    .line 29
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v0

    .line 33
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 35
    const-string v2, "  mShouldResetShortTermModel="

    .line 37
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v0

    .line 41
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    .line 43
    const-string v2, "  mAppliedAutoBrightness="

    .line 45
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v0

    .line 49
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    .line 51
    const-string v2, "  mAutoBrightnessAdjustmentChanged="

    .line 53
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v0

    .line 57
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    .line 59
    const-string v2, "  mAppliedTemporaryAutoBrightnessAdjustment="

    .line 61
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object v0

    .line 65
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    .line 67
    const-string v2, "  mUseAutoBrightness="

    .line 69
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v0

    .line 73
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    .line 75
    const-string v2, "  mWasShortTermModelActive="

    .line 77
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object v0

    .line 81
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    .line 83
    const-string v2, "  mAutoBrightnessAdjustmentReasonsFlags="

    .line 85
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    move-result-object v0

    .line 89
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 91
    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 94
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    .line 3
    return p0
.end method

.method public final getAutoBrightnessAdjustmentChanged()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    .line 3
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "AutomaticBrightnessStrategy"

    .line 3
    return-object p0
.end method

.method public getPendingAutoBrightnessAdjustment()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    .line 3
    return p0
.end method

.method public final getReason()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public getTemporaryAutoBrightnessAdjustment()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 3
    return p0
.end method

.method public final hasAppliedAutoBrightness()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    .line 3
    return p0
.end method

.method public final isAutoBrightnessDisabledDueToDisplayOff()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessDisabledDueToDisplayOff:Z

    .line 3
    return p0
.end method

.method public final isAutoBrightnessEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    .line 3
    return p0
.end method

.method public final isGameAutoBrightnessLocked()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mGameAutoBrightnessLocked:Z

    .line 3
    return p0
.end method

.method public final isShortTermModelActive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    .line 3
    return p0
.end method

.method public final isTemporaryAutoBrightnessAdjustmentApplied()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    .line 3
    return p0
.end method

.method public final processPendingAutoBrightnessAdjustments()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    .line 4
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    .line 6
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    .line 15
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    .line 17
    cmpl-float v0, v0, v1

    .line 19
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 21
    if-nez v0, :cond_1

    .line 23
    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    .line 25
    return-void

    .line 26
    :cond_1
    iput v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    .line 28
    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    .line 30
    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    .line 35
    return-void
.end method

.method public putAutoBrightnessAdjustmentSetting(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    .line 7
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p0

    .line 13
    const-string/jumbo v0, "screen_auto_brightness_adj"

    .line 16
    const/4 v1, -0x2

    .line 17
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 20
    :cond_0
    return-void
.end method

.method public final setAutoBrightnessApplied(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    .line 3
    return-void
.end method

.method public final setAutoBrightnessState(IZIIFZZZI)V
    .locals 11

    .line 1
    move-object v9, p0

    .line 2
    move v4, p1

    .line 3
    move v0, p3

    .line 4
    iget-object v1, v9, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 6
    iget-object v1, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 8
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 16
    iget-object v1, v9, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 18
    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 26
    iget-object v1, v9, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 28
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 34
    move v5, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v5, v3

    .line 37
    :goto_0
    invoke-virtual {v1, v5, v3}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    .line 40
    :cond_1
    const/4 v10, 0x1

    .line 41
    if-nez p2, :cond_2

    .line 43
    invoke-static/range {p9 .. p9}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 49
    :cond_2
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 55
    move v1, v10

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move v1, v3

    .line 58
    :goto_1
    iget-boolean v5, v9, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    .line 60
    if-eqz v5, :cond_5

    .line 62
    if-eq v4, v2, :cond_4

    .line 64
    if-eqz v1, :cond_5

    .line 66
    :cond_4
    const/4 v6, 0x6

    .line 67
    if-eq v0, v6, :cond_5

    .line 69
    iget-object v6, v9, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 71
    if-eqz v6, :cond_5

    .line 73
    iget-boolean v6, v9, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mGameAutoBrightnessLocked:Z

    .line 75
    if-nez v6, :cond_5

    .line 77
    if-nez p7, :cond_5

    .line 79
    const/16 v6, 0xa

    .line 81
    if-eq v0, v6, :cond_5

    .line 83
    move v0, v10

    .line 84
    goto :goto_2

    .line 85
    :cond_5
    move v0, v3

    .line 86
    :goto_2
    iput-boolean v0, v9, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    .line 88
    if-eqz v5, :cond_6

    .line 90
    if-eq v4, v2, :cond_6

    .line 92
    if-nez v1, :cond_6

    .line 94
    move v3, v10

    .line 95
    :cond_6
    iput-boolean v3, v9, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessDisabledDueToDisplayOff:Z

    .line 97
    if-eqz v0, :cond_7

    .line 99
    move v6, v10

    .line 100
    goto :goto_3

    .line 101
    :cond_7
    if-eqz v3, :cond_8

    .line 103
    const/4 v0, 0x3

    .line 104
    move v6, v0

    .line 105
    goto :goto_3

    .line 106
    :cond_8
    move v6, v2

    .line 107
    :goto_3
    iget-object v5, v9, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 109
    move-object v0, p0

    .line 110
    move/from16 v1, p6

    .line 112
    move/from16 v2, p5

    .line 114
    move v3, p4

    .line 115
    move v4, p1

    .line 116
    move/from16 v7, p8

    .line 118
    move/from16 v8, p9

    .line 120
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->accommodateUserBrightnessChanges(ZFIILandroid/hardware/display/BrightnessConfiguration;IZI)V

    .line 123
    iput-boolean v10, v9, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsConfigured:Z

    .line 125
    return-void
.end method

.method public final setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz v0, :cond_1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    .line 12
    :cond_1
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 14
    return-void
.end method

.method public final setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setShouldResetShortTermModel(Z)V

    .line 6
    return-void
.end method

.method public setShouldResetShortTermModel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    .line 3
    return-void
.end method

.method public final setTemporaryAutoBrightnessAdjustment(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 3
    return-void
.end method

.method public final setUseAutoBrightness(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    .line 3
    return-void
.end method

.method public shouldResetShortTermModel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    .line 3
    return p0
.end method

.method public final shouldUseAutoBrightness()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    .line 3
    return p0
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsConfigured:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget v2, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mTargetDisplayState:I

    .line 7
    iget-object v0, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mSelectedDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 9
    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getReason()I

    .line 12
    move-result v4

    .line 13
    iget-object v0, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 15
    iget v5, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 17
    iget v6, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mLastUserSetScreenBrightness:F

    .line 19
    iget-boolean v7, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mUserSetBrightnessChanged:Z

    .line 21
    const/4 v10, -0x1

    .line 22
    const/4 v8, 0x0

    .line 23
    iget-boolean v3, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 25
    const/4 v9, 0x0

    .line 26
    move-object v1, p0

    .line 27
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setAutoBrightnessState(IZIIFZZZI)V

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsConfigured:Z

    .line 33
    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    .line 3
    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;

    .line 8
    iget v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    .line 10
    invoke-interface {v1, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;->getBrightnessEvent(I)Lcom/android/server/display/brightness/BrightnessEvent;

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 16
    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v2, v1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    .line 21
    move-result v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 25
    :goto_0
    const/4 v3, 0x4

    .line 26
    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 29
    new-instance v3, Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 31
    invoke-direct {v3}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 34
    iput v2, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    .line 36
    iput v2, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mSdrBrightness:F

    .line 38
    iput-object v0, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 40
    const-string v0, "AutomaticBrightnessStrategy"

    .line 42
    iput-object v0, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 44
    iget-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsSlowChange:Z

    .line 46
    iput-boolean v0, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    .line 48
    iput-object v1, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 50
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 52
    iput v0, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    .line 54
    iget v0, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    .line 56
    cmpl-float v0, v2, v0

    .line 58
    const/4 v1, 0x1

    .line 59
    const/4 v2, 0x0

    .line 60
    if-eqz v0, :cond_1

    .line 62
    move v0, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v0, v2

    .line 65
    :goto_1
    iput-boolean v0, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    .line 67
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    .line 69
    if-nez p0, :cond_3

    .line 71
    iget-boolean p0, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    .line 73
    if-eqz p0, :cond_2

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move v1, v2

    .line 77
    :cond_3
    :goto_2
    iput-boolean v1, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    .line 79
    new-instance p0, Lcom/android/server/display/DisplayBrightnessState;

    .line 81
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    .line 84
    return-object p0
.end method

.method public final updateGameAutoBrightnessLock()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x2

    .line 8
    const-string/jumbo v2, "game_autobrightness_lock"

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const/4 v3, 0x1

    .line 19
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mGameAutoBrightnessLocked:Z

    .line 21
    return-void
.end method

.method public final updatePendingAutoBrightnessAdjustments()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x2

    .line 8
    const-string/jumbo v2, "screen_auto_brightness_adj"

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget v1, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    .line 27
    const/high16 v1, -0x40800000    # -1.0f

    .line 29
    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 34
    move-result v0

    .line 35
    :goto_0
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    .line 37
    return-void
.end method
