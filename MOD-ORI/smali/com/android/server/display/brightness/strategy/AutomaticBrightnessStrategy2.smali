.class public Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


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

.field public mGameAutoBrightnessLocked:Z

.field public mIsAutoBrightnessEnabled:Z

.field public mIsShortTermModelActive:Z

.field public mPendingAutoBrightnessAdjustment:F

.field public mShouldResetShortTermModel:Z

.field public mTemporaryAutoBrightnessAdjustment:F

.field public mUseAutoBrightness:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    iput p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mDisplayId:I

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 p2, -0x2

    .line 26
    const-string/jumbo v0, "screen_auto_brightness_adj"

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget p2, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    .line 42
    .line 43
    const/high16 p2, -0x40800000    # -1.0f

    .line 44
    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-static {p1, p2, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :goto_0
    iput v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    .line 52
    .line 53
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 54
    .line 55
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    .line 56
    .line 57
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public accommodateUserBrightnessChanges(ZFIILandroid/hardware/display/BrightnessConfiguration;IZI)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->processPendingAutoBrightnessAdjustments()V

    .line 3
    .line 4
    .line 5
    iget v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    .line 18
    .line 19
    :goto_0
    move v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_1
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    .line 26
    .line 27
    iget-object v2, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-boolean v8, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    .line 32
    .line 33
    iget-boolean v11, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    .line 34
    .line 35
    move/from16 v3, p6

    .line 36
    .line 37
    move-object/from16 v4, p5

    .line 38
    .line 39
    move/from16 v5, p2

    .line 40
    .line 41
    move v6, p1

    .line 42
    move/from16 v9, p3

    .line 43
    .line 44
    move/from16 v10, p4

    .line 45
    .line 46
    move/from16 v12, p7

    .line 47
    .line 48
    move/from16 v13, p8

    .line 49
    .line 50
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ILandroid/hardware/display/BrightnessConfiguration;FZFZIIZZI)V

    .line 51
    .line 52
    .line 53
    iput-boolean v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    .line 54
    .line 55
    iget-object v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->hasUserDataPoints()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iput-boolean v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public adjustAutomaticBrightnessStateIfValid(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x2

    .line 10
    :goto_0
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    .line 31
    .line 32
    cmpl-float v0, v0, p1

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->putAutoBrightnessAdjustmentSetting(F)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 42
    .line 43
    :goto_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "AutomaticBrightnessStrategy:"

    .line 2
    .line 3
    const-string v1, "  mDisplayId="

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mDisplayId:I

    .line 10
    .line 11
    const-string v2, "  mAutoBrightnessAdjustment="

    .line 12
    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    .line 18
    .line 19
    const-string v2, "  mPendingAutoBrightnessAdjustment="

    .line 20
    .line 21
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    .line 26
    .line 27
    const-string v2, "  mTemporaryAutoBrightnessAdjustment="

    .line 28
    .line 29
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    .line 34
    .line 35
    const-string v2, "  mShouldResetShortTermModel="

    .line 36
    .line 37
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    .line 42
    .line 43
    const-string v2, "  mAppliedAutoBrightness="

    .line 44
    .line 45
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    .line 50
    .line 51
    const-string v2, "  mAutoBrightnessAdjustmentChanged="

    .line 52
    .line 53
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    .line 58
    .line 59
    const-string v2, "  mAppliedTemporaryAutoBrightnessAdjustment="

    .line 60
    .line 61
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    .line 66
    .line 67
    const-string v2, "  mUseAutoBrightness="

    .line 68
    .line 69
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    .line 74
    .line 75
    const-string v2, "  mWasShortTermModelActive="

    .line 76
    .line 77
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    .line 82
    .line 83
    const-string v2, "  mAutoBrightnessAdjustmentReasonsFlags="

    .line 84
    .line 85
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 90
    .line 91
    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    .line 2
    .line 3
    return p0
.end method

.method public getAutoBrightnessAdjustmentChanged()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getAutoBrightnessAdjustmentReasonsFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 2
    .line 3
    return p0
.end method

.method public final getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->adjustAutomaticBrightnessStateIfValid(F)V

    .line 13
    .line 14
    .line 15
    return p1
.end method

.method public getPendingAutoBrightnessAdjustment()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    .line 2
    .line 3
    return p0
.end method

.method public getTemporaryAutoBrightnessAdjustment()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    .line 2
    .line 3
    return p0
.end method

.method public hasAppliedAutoBrightness()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    .line 2
    .line 3
    return p0
.end method

.method public isAutoBrightnessDisabledDueToDisplayOff()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessDisabledDueToDisplayOff:Z

    .line 2
    .line 3
    return p0
.end method

.method public isAutoBrightnessEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public isGameAutoBrightnessLocked()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mGameAutoBrightnessLocked:Z

    .line 2
    .line 3
    return p0
.end method

.method public isShortTermModelActive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    .line 2
    .line 3
    return p0
.end method

.method public isTemporaryAutoBrightnessAdjustmentApplied()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    .line 2
    .line 3
    return p0
.end method

.method public processPendingAutoBrightnessAdjustments()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    .line 16
    .line 17
    cmpl-float v0, v0, v1

    .line 18
    .line 19
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    .line 27
    .line 28
    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    .line 29
    .line 30
    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    .line 34
    .line 35
    return-void
.end method

.method public putAutoBrightnessAdjustmentSetting(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mDisplayId:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string/jumbo v0, "screen_auto_brightness_adj"

    .line 14
    .line 15
    .line 16
    const/4 v1, -0x2

    .line 17
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setAutoBrightnessApplied(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAutoBrightnessState(IZIIFZZZI)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move v4, p1

    .line 3
    move v1, p3

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    move v5, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v5, v2

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    const/4 v7, 0x2

    .line 22
    if-eqz v6, :cond_2

    .line 23
    .line 24
    if-eq v4, v7, :cond_1

    .line 25
    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    :cond_1
    const/4 v6, 0x6

    .line 29
    if-eq v1, v6, :cond_2

    .line 30
    .line 31
    iget-object v6, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 32
    .line 33
    if-eqz v6, :cond_2

    .line 34
    .line 35
    iget-boolean v6, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mGameAutoBrightnessLocked:Z

    .line 36
    .line 37
    if-nez v6, :cond_2

    .line 38
    .line 39
    if-nez p7, :cond_2

    .line 40
    .line 41
    const/16 v6, 0xa

    .line 42
    .line 43
    if-eq v1, v6, :cond_2

    .line 44
    .line 45
    move v1, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v1, v2

    .line 48
    :goto_1
    iput-boolean v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    if-eq v4, v7, :cond_3

    .line 57
    .line 58
    if-nez v5, :cond_3

    .line 59
    .line 60
    move v2, v3

    .line 61
    :cond_3
    iput-boolean v2, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessDisabledDueToDisplayOff:Z

    .line 62
    .line 63
    iget-boolean v1, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    move v6, v3

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    if-eqz v2, :cond_5

    .line 70
    .line 71
    const/4 v1, 0x3

    .line 72
    move v6, v1

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    move v6, v7

    .line 75
    :goto_2
    iget-object v5, v0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 76
    .line 77
    move-object v0, p0

    .line 78
    move v1, p6

    .line 79
    move v2, p5

    .line 80
    move v3, p4

    .line 81
    move v4, p1

    .line 82
    move/from16 v7, p8

    .line 83
    .line 84
    move/from16 v8, p9

    .line 85
    .line 86
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->accommodateUserBrightnessChanges(ZFIILandroid/hardware/display/BrightnessConfiguration;IZI)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    .line 10
    .line 11
    .line 12
    :cond_1
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 13
    .line 14
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setShouldResetShortTermModel(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShouldResetShortTermModel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    .line 2
    .line 3
    return-void
.end method

.method public setUseAutoBrightness(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    .line 2
    .line 3
    return-void
.end method

.method public shouldResetShortTermModel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    .line 2
    .line 3
    return p0
.end method

.method public shouldUseAutoBrightness()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    .line 2
    .line 3
    return p0
.end method

.method public updateGameAutoBrightnessLock()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x2

    .line 8
    const-string/jumbo v2, "game_autobrightness_lock"

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mGameAutoBrightnessLocked:Z

    .line 20
    .line 21
    return-void
.end method

.method public updatePendingAutoBrightnessAdjustments()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x2

    .line 8
    const-string/jumbo v2, "screen_auto_brightness_adj"

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget v1, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    .line 26
    .line 27
    const/high16 v1, -0x40800000    # -1.0f

    .line 28
    .line 29
    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :goto_0
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    .line 36
    .line 37
    return-void
.end method
