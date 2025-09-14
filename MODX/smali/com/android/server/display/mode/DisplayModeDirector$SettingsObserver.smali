.class final Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultPeakRefreshRate:F

.field public mDefaultRefreshRate:F

.field public final mDisplayListener:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;

.field public final mHandler:Landroid/os/Handler;

.field public mIsLowPower:Z

.field public mIsLowPowerMotionSmoothness:Z

.field public final mLowPowerModeMotionSmoothness:Landroid/net/Uri;

.field public final mLowPowerModeSetting:Landroid/net/Uri;

.field public final mMatchContentFrameRateSetting:Landroid/net/Uri;

.field public final mMinRefreshRateSetting:Landroid/net/Uri;

.field public final mPeakRefreshRatePhysicalLimitEnabled:Z

.field public final mPeakRefreshRateSetting:Landroid/net/Uri;

.field public final mVsyncLowPowerVoteEnabled:Z

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 3
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    const-string/jumbo p1, "peak_refresh_rate"

    .line 9
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    .line 15
    const-string/jumbo p1, "min_refresh_rate"

    .line 18
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    .line 24
    const-string/jumbo p1, "low_power"

    .line 27
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 33
    const-string/jumbo p1, "pms_settings_refresh_rate_enabled"

    .line 36
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeMotionSmoothness:Landroid/net/Uri;

    .line 42
    const-string/jumbo p1, "match_content_frame_rate"

    .line 45
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    .line 51
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    .line 54
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPowerMotionSmoothness:Z

    .line 56
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;

    .line 58
    invoke-direct {v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V

    .line 61
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDisplayListener:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;

    .line 63
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mHandler:Landroid/os/Handler;

    .line 67
    iget-object p2, p4, Lcom/android/server/display/feature/DisplayManagerFlags;->mVsyncLowPowerVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 69
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 72
    move-result p2

    .line 73
    iput-boolean p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mVsyncLowPowerVoteEnabled:Z

    .line 75
    iget-object p2, p4, Lcom/android/server/display/feature/DisplayManagerFlags;->mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 77
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 80
    move-result p2

    .line 81
    iput-boolean p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRatePhysicalLimitEnabled:Z

    .line 83
    const/4 p2, 0x0

    .line 84
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 87
    return-void
.end method


# virtual methods
.method public getDefaultPeakRefreshRate()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 3
    return p0
.end method

.method public getDefaultRefreshRate()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    .line 3
    return p0
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 3
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    .line 8
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p3

    .line 12
    if-nez p3, :cond_3

    .line 14
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    .line 16
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p3

    .line 20
    if-eqz p3, :cond_0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 25
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p3

    .line 29
    if-nez p3, :cond_2

    .line 31
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeMotionSmoothness:Landroid/net/Uri;

    .line 33
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p3

    .line 37
    if-eqz p3, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    .line 42
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_4

    .line 48
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_3

    .line 54
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 61
    :cond_4
    :goto_2
    monitor-exit p1

    .line 62
    return-void

    .line 63
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public final setDefaultPeakRefreshRate(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 3

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    if-eqz p2, :cond_0

    .line 5
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 7
    iget-object p2, p2, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 9
    iget-object p2, p2, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 11
    const-string/jumbo v1, "peak_refresh_rate_default"

    .line 14
    const-string/jumbo v2, "display_manager"

    .line 17
    invoke-interface {p2, v2, v1, v0}, Landroid/provider/DeviceConfigInterface;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 20
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    :cond_0
    move p2, v0

    .line 23
    :goto_0
    cmpl-float v0, p2, v0

    .line 25
    if-nez v0, :cond_4

    .line 27
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 29
    if-eqz p2, :cond_2

    .line 31
    if-nez p1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object p1

    .line 39
    const p2, 0x10e0126

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 45
    move-result p1

    .line 46
    :goto_1
    int-to-float p1, p1

    .line 47
    move p2, p1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 51
    iget p1, p1, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    if-nez p1, :cond_3

    .line 56
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object p1

    .line 62
    const p2, 0x10e007a

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 68
    move-result p1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 72
    iget p1, p1, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    :goto_2
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 77
    return-void
.end method

.method public final setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 7
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setDefaultPeakRefreshRate(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 10
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 12
    if-eqz p1, :cond_2

    .line 14
    if-nez v0, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p1

    .line 22
    const p2, 0x10e0127

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 28
    move-result p1

    .line 29
    :goto_1
    int-to-float p1, p1

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget p1, v0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    .line 33
    goto :goto_1

    .line 34
    :goto_2
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    .line 36
    goto :goto_5

    .line 37
    :cond_2
    if-nez v0, :cond_3

    .line 39
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p1

    .line 45
    const p2, 0x10e007c

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 51
    move-result p1

    .line 52
    :goto_3
    int-to-float p1, p1

    .line 53
    goto :goto_4

    .line 54
    :cond_3
    iget p1, v0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    .line 56
    goto :goto_3

    .line 57
    :goto_4
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    .line 59
    :goto_5
    return-void
.end method

.method public final updateLowPowerModeAllowedModesLocked()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mVsyncLowPowerVoteEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    .line 8
    const/16 v1, 0x13

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPowerMotionSmoothness:Z

    .line 15
    if-nez v0, :cond_2

    .line 17
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 19
    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 23
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 25
    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 34
    iget-object v0, v0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 39
    move-result-object v0

    .line 40
    new-instance v3, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;

    .line 42
    const/4 v4, 0x2

    .line 43
    invoke-direct {v3, v4}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 46
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 52
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 54
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 56
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 59
    move-result v0

    .line 60
    if-ge v2, v0, :cond_a

    .line 62
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 64
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 66
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig;

    .line 72
    if-nez v0, :cond_3

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 77
    iget-object v0, v0, Lcom/android/server/display/config/RefreshRateData;->lowPowerSupportedModes:Ljava/util/List;

    .line 79
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 81
    iget-object v4, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 83
    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 88
    move-result v3

    .line 89
    invoke-static {v0}, Lcom/android/server/display/mode/Vote;->forSupportedRefreshRates(Ljava/util/List;)Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v4, v3, v1, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 96
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 101
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/display/mode/VotesStorage;->mLoggingEnabled:Z

    .line 105
    if-eqz v0, :cond_5

    .line 107
    const-string v0, "VotesStorage"

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v4, "removeAllVotesForPriority(priority="

    .line 114
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {v1}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v4, ")"

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v3

    .line 133
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_5
    new-instance v0, Landroid/util/IntArray;

    .line 138
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 141
    iget-object v3, p0, Lcom/android/server/display/mode/VotesStorage;->mStorageLock:Ljava/lang/Object;

    .line 143
    monitor-enter v3

    .line 144
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 146
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 149
    move-result v4

    .line 150
    move v5, v2

    .line 151
    :goto_2
    if-ge v5, v4, :cond_7

    .line 153
    iget-object v6, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 155
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 158
    move-result-object v6

    .line 159
    check-cast v6, Landroid/util/SparseArray;

    .line 161
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 164
    move-result-object v7

    .line 165
    if-eqz v7, :cond_6

    .line 167
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 170
    iget-object v6, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 172
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 175
    move-result v6

    .line 176
    invoke-virtual {v0, v6}, Landroid/util/IntArray;->add(I)V

    .line 179
    goto :goto_3

    .line 180
    :catchall_0
    move-exception p0

    .line 181
    goto :goto_5

    .line 182
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 184
    goto :goto_2

    .line 185
    :cond_7
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-boolean v3, p0, Lcom/android/server/display/mode/VotesStorage;->mLoggingEnabled:Z

    .line 188
    if-eqz v3, :cond_8

    .line 190
    const-string v3, "VotesStorage"

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    .line 194
    const-string v5, "Removed votes with priority=19 for displays="

    .line 196
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v4

    .line 206
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_8
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 212
    move-result v3

    .line 213
    if-lez v3, :cond_a

    .line 215
    iget-object v4, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    .line 217
    if-eqz v4, :cond_9

    .line 219
    :goto_4
    if-ge v2, v3, :cond_9

    .line 221
    iget-object v4, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    .line 223
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    .line 226
    move-result v5

    .line 227
    const/4 v6, 0x0

    .line 228
    invoke-virtual {v4, v5, v1, v6}, Lcom/android/server/display/mode/VotesStatsReporter;->reportVoteChanged(IILcom/android/server/display/mode/Vote;)V

    .line 231
    add-int/lit8 v2, v2, 0x1

    .line 233
    goto :goto_4

    .line 234
    :cond_9
    iget-object p0, p0, Lcom/android/server/display/mode/VotesStorage;->mListener:Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;

    .line 236
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 238
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 241
    :cond_a
    return-void

    .line 242
    :goto_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    throw p0
.end method

.method public final updateLowPowerModeSettingLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "low_power"

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    .line 23
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object v0

    .line 29
    const-string/jumbo v3, "pms_settings_refresh_rate_enabled"

    .line 32
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 38
    move v0, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v0, v2

    .line 41
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPowerMotionSmoothness:Z

    .line 43
    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    .line 45
    if-eqz v3, :cond_2

    .line 47
    if-eqz v0, :cond_2

    .line 49
    const/4 v0, 0x0

    .line 50
    const/high16 v3, 0x42700000    # 60.0f

    .line 52
    invoke-static {v0, v3}, Lcom/android/server/display/mode/Vote;->forPolicyRate(FF)Lcom/android/server/display/mode/Vote;

    .line 55
    move-result-object v0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/4 v0, 0x0

    .line 58
    :goto_2
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 60
    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 62
    const/4 v4, -0x1

    .line 63
    const/16 v5, 0x14

    .line 65
    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 68
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 70
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 72
    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    .line 74
    if-eqz v3, :cond_3

    .line 76
    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPowerMotionSmoothness:Z

    .line 78
    if-eqz v3, :cond_3

    .line 80
    move v2, v1

    .line 81
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onLowPowerModeEnabledLocked(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeAllowedModesLocked()V

    .line 87
    return-void
.end method

.method public final updateModeSwitchingTypeSettingLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 9
    iget v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 11
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    .line 14
    move-result v2

    .line 15
    const-string/jumbo v3, "match_content_frame_rate"

    .line 18
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    move-result v0

    .line 22
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 24
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 26
    if-eq v0, v1, :cond_0

    .line 28
    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 30
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 33
    :cond_0
    return-void
.end method

.method public final updateRefreshRateSettingLocked()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateRefreshRateSettingLocked(FFFI)V
    .locals 6

    .line 21
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRatePhysicalLimitEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    cmpl-float v0, p2, v2

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 23
    invoke-static {v2, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    move-result-object v0

    .line 24
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v4, 0xa

    invoke-virtual {v3, p4, v4, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_1
    cmpl-float v0, p2, v2

    if-nez v0, :cond_2

    move-object v4, v1

    goto :goto_1

    .line 25
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 26
    new-instance v4, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    .line 27
    invoke-direct {v4, v2, v3}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    .line 28
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v5, 0xd

    invoke-virtual {v3, p4, v5, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 29
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 30
    new-instance v4, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 31
    invoke-direct {v4, p1, v5}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    const/4 v5, 0x5

    .line 32
    invoke-virtual {v3, p4, v5, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    cmpl-float v3, p3, v2

    if-nez v3, :cond_3

    goto :goto_2

    .line 33
    :cond_3
    new-instance v1, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    .line 34
    invoke-direct {v1, v2, p3}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    .line 35
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 36
    invoke-virtual {v2, v4, v5, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    .line 37
    const-string p2, "DisplayModeDirector"

    const-string p3, "Default and peak refresh rates are both 0. One of them should be set to a valid value."

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, p1

    goto :goto_3

    :cond_4
    if-nez v0, :cond_5

    move p2, p3

    goto :goto_3

    :cond_5
    if-nez v3, :cond_6

    goto :goto_3

    .line 38
    :cond_6
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :goto_3
    if-nez p4, :cond_7

    .line 39
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onRefreshRateSettingChangedLocked(FF)V

    :cond_7
    return-void
.end method

.method public final updateRefreshRateSettingLocked(I)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    const-string p0, "Cannot update refresh rate setting: no supported modes for display "

    const-string v0, "DisplayModeDirector"

    .line 6
    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mgetMaxRefreshRateLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F

    move-result v1

    .line 8
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    .line 9
    const-string/jumbo v3, "min_refresh_rate"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    .line 10
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 11
    :cond_1
    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 12
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v4

    .line 13
    const-string/jumbo v5, "peak_refresh_rate"

    invoke-static {v0, v5, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 15
    :goto_0
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFFI)V

    return-void
.end method
