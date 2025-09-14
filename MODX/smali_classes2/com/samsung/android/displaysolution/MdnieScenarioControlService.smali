.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

.field public final ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

.field public final ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

.field public final ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

.field public final ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

.field public final ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

.field public final ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

.field public final ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

.field public final ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

.field public final ANDROID_APP_LAUNCHER:[Ljava/lang/String;

.field public final AUTO_CURRENT_LIMIT_VERSION:I

.field public BRIGHTNESS_DECREASE_STEP:I

.field public final CAMERA_APP_LAUNCHER:[Ljava/lang/String;

.field public final CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field public final DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

.field public final DOU_BRIGHTNESS_STANDARD_VALUE:I

.field public final EBOOK_APP_LAUNCHER:[Ljava/lang/String;

.field public final EMAIL_APP_LAUNCHER:[Ljava/lang/String;

.field public final EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

.field public final EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

.field public final EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

.field public final EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

.field public final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

.field public FrontPackageName:Ljava/lang/String;

.field public final GALLERY_APP_LAUNCHER:[Ljava/lang/String;

.field public final GALLERY_APP_PACKAGENAME:Ljava/lang/String;

.field public final GET_SYSTEM_SERVICES_MILLIS:I

.field public final IS_CAMERA_APP_DEBOUNCE_MILLIS:I

.field public LUX_VALUE:Ljava/lang/String;

.field public final ON_PIXEL_RATIO_PATH:Ljava/lang/String;

.field public final OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

.field public final READING_LUX_PATH:Ljava/lang/String;

.field public final READING_LUX_SUB_PATH:Ljava/lang/String;

.field public final READING_SCENARIO_PATH:Ljava/lang/String;

.field public final SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field public SCENARIO_VALUE:Ljava/lang/String;

.field public SUB_LUX_VALUE:Ljava/lang/String;

.field public final SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field public final SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field public final VIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field public final eventListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;

.field public isLockScreenOn:Z

.field public final mAclDimmingFunction:Z

.field public mAclOffEnabled:Z

.field public mAclState:Z

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mAntiGlareEnable:Z

.field public mAppLaunchStateInDatabase:I

.field public mAutoBrightnessMode:Z

.field public mBrowserAppLauncher:Z

.field public final mBrowserBrightnessArray:[I

.field public mBrowserBrightnessDecreaseEnabled:Z

.field public mBrowserBrightnessDefault:I

.field public final mBrowserBrightnessStringArray:[Ljava/lang/String;

.field public mBrowserScenarioEnabled:Z

.field public mCameraScenarioEnabled:Z

.field public mColorBlindEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public mCurAclValue:I

.field public final mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

.field public mDayOfUseSupportAppState:Z

.field public mDexModeState:Z

.field public mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

.field public final mDisplayListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

.field public mEbookScenarioEnabled:Z

.field public mEmailScenarioEnabled:Z

.field public mEyeComfortScaleAppEnabled:Z

.field public final mFoldStateListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;

.field public mGalleryAppState:Z

.field public mGalleryScenarioEnabled:Z

.field public final mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

.field public mHdrEffectEnabled:Z

.field public mHighBrightnessModeEnabled:Z

.field public mHighDynamicRangeEnabled:Z

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mIsFolded:Z

.field public mKeyGuardManager:Landroid/app/KeyguardManager;

.field public mLastUserInputDuration:J

.field public mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field public mMediaResourceUsed:Z

.field public mMultiWindowOn:Z

.field public final mNaturalGammaScreenModeSupported:Z

.field public mOverheatControlSupportAppState:Z

.field public mPrevAclValue:I

.field public mPrevPropertyValue:I

.field public mPrevRenderIntentValue:I

.field public mPrevmDNIeMode:Ljava/lang/String;

.field public final mProcessObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

.field public mQuickPanelState:I

.field public mReduceBrightColorsActivatedEnabled:Z

.field public mReduceBrightColorsLevel:I

.field public mSVideoOptionScenarioEnabled:Z

.field public mSVideoScenarioEnabled:Z

.field public mScreenCurtainEnabled:Z

.field public mScreenModeSetting:I

.field public mScreenOffTomeoutAbnormal:Z

.field public mScreenStateOn:Z

.field public mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

.field public final mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field public mSettingCondition:Z

.field public final mSupportAPmDNIe:Z

.field public mUIScenarioEnabled:Z

.field public final mUseEyeComfortSolutionServiceConfig:Z

.field public final mUseMdnieScenarioControlConfig:Z

.field public mUseScaleFactorState:Z

.field public mUserActivityStatus:I

.field public mVideoEnd:Z

.field public mVideoModeCheck:Z

.field public mVideoScenarioEnabled:Z

.field public final mVisionBoosterStringArray:[Ljava/lang/String;

.field public mVividnessIndex:I

.field public mWhiteBalanceIndex:I

.field public mWorkingCondition:Z


# direct methods
.method public static -$$Nest$manti_glare_state(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "anti_glare_state SUB_LUX_VALUE : "

    .line 5
    .line 6
    const-string v1, "anti_glare_state LUX_VALUE : "

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_PATH:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_SUB_PATH:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    .line 23
    .line 24
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFolded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    const-string v4, "MdnieScenarioControlService"

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/16 v6, 0xa

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ltz v0, :cond_0

    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-le v6, v0, :cond_0

    .line 69
    .line 70
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAntiGlareEnable:Z

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception p0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-gt v6, v0, :cond_3

    .line 82
    .line 83
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAntiGlareEnable:Z

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    if-eqz v3, :cond_3

    .line 87
    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-ltz v0, :cond_2

    .line 114
    .line 115
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-le v6, v0, :cond_2

    .line 122
    .line 123
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAntiGlareEnable:Z

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-gt v6, v0, :cond_3

    .line 133
    .line 134
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAntiGlareEnable:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    :cond_3
    :goto_1
    return-void
.end method

.method public static -$$Nest$msetAclModeSettings(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAntiGlareEnable:Z

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x2

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iput v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eq v0, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-ne v0, v2, :cond_5

    .line 27
    .line 28
    :cond_1
    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 32
    .line 33
    if-ne v0, v3, :cond_3

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    if-eq v0, v1, :cond_4

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    if-ne v0, v1, :cond_5

    .line 43
    .line 44
    :cond_4
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 45
    .line 46
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string/jumbo v1, "setAclModeSettings() ACL mPrevAclValue ("

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ") - mCurrentValue ("

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ")"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "MdnieScenarioControlService"

    .line 79
    .line 80
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 84
    .line 85
    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V

    .line 88
    .line 89
    .line 90
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 91
    .line 92
    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 93
    .line 94
    :cond_6
    return-void
.end method

.method public static -$$Nest$msetSVideoMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 2
    .line 3
    .line 4
    const-string v0, " mHighDynamicRangeEnabled : "

    .line 5
    .line 6
    const-string v1, "mAclOffEnabled : "

    .line 7
    .line 8
    const-string v2, "MdnieScenarioControlService"

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz p1, :cond_8

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 28
    .line 29
    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v6, "hdr_effect_enable : "

    .line 33
    .line 34
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v6, " , app_setting_value : "

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-ne v6, v3, :cond_0

    .line 50
    .line 51
    move v6, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v6, v4

    .line 54
    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v6, " , mVideoModeCheck : "

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    .line 63
    .line 64
    invoke-static {v2, v5, v6}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 65
    .line 66
    .line 67
    const-string/jumbo v5, "setVideoMode from SVideo function"

    .line 68
    .line 69
    .line 70
    const-string v6, "VIDEO"

    .line 71
    .line 72
    const-string v7, "1"

    .line 73
    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-ne p1, v3, :cond_6

    .line 81
    .line 82
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 83
    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    .line 87
    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 91
    .line 92
    if-eqz p1, :cond_a

    .line 93
    .line 94
    const-string p2, "14"

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_a

    .line 101
    .line 102
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 103
    .line 104
    const-string p2, "VIDEO_ENHANCER"

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_a

    .line 111
    .line 112
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 113
    .line 114
    const-string p2, "VIDEO_BRIGHTNESS"

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_a

    .line 121
    .line 122
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 123
    .line 124
    if-nez p1, :cond_a

    .line 125
    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 140
    .line 141
    invoke-static {v2, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 142
    .line 143
    .line 144
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 145
    .line 146
    if-eqz p1, :cond_1

    .line 147
    .line 148
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 149
    .line 150
    if-nez p1, :cond_1

    .line 151
    .line 152
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 153
    .line 154
    .line 155
    :cond_1
    const/16 p1, 0xe

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string p2, "mDexModeState : "

    .line 163
    .line 164
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    .line 168
    .line 169
    invoke-static {v2, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 170
    .line 171
    .line 172
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    .line 173
    .line 174
    if-eqz p1, :cond_2

    .line 175
    .line 176
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 181
    .line 182
    .line 183
    :goto_1
    invoke-static {v3}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 193
    .line 194
    .line 195
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 196
    .line 197
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 198
    .line 199
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 200
    .line 201
    const-string/jumbo p0, "setVideoMode from Video function(VIDEO_ENHANCER)"

    .line 202
    .line 203
    .line 204
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    goto/16 :goto_2

    .line 208
    .line 209
    :cond_3
    if-nez p1, :cond_4

    .line 210
    .line 211
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    .line 212
    .line 213
    if-nez p1, :cond_a

    .line 214
    .line 215
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 216
    .line 217
    if-eqz p1, :cond_a

    .line 218
    .line 219
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-nez p1, :cond_a

    .line 224
    .line 225
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-nez p1, :cond_a

    .line 232
    .line 233
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 234
    .line 235
    if-nez p1, :cond_a

    .line 236
    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 243
    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 251
    .line 252
    invoke-static {v2, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 253
    .line 254
    .line 255
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 256
    .line 257
    if-eqz p1, :cond_5

    .line 258
    .line 259
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 260
    .line 261
    if-nez p1, :cond_5

    .line 262
    .line 263
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 264
    .line 265
    .line 266
    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 270
    .line 271
    .line 272
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 282
    .line 283
    .line 284
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 285
    .line 286
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 287
    .line 288
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 289
    .line 290
    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    goto/16 :goto_2

    .line 294
    .line 295
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 296
    .line 297
    if-eqz p1, :cond_a

    .line 298
    .line 299
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-nez p1, :cond_a

    .line 304
    .line 305
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-nez p1, :cond_a

    .line 312
    .line 313
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 314
    .line 315
    if-nez p1, :cond_a

    .line 316
    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 323
    .line 324
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 331
    .line 332
    invoke-static {v2, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 333
    .line 334
    .line 335
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 336
    .line 337
    if-eqz p1, :cond_7

    .line 338
    .line 339
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 340
    .line 341
    if-nez p1, :cond_7

    .line 342
    .line 343
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 344
    .line 345
    .line 346
    :cond_7
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 350
    .line 351
    .line 352
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 362
    .line 363
    .line 364
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 365
    .line 366
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 367
    .line 368
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 369
    .line 370
    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    goto :goto_2

    .line 374
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 375
    .line 376
    .line 377
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_PACKAGENAME:Ljava/lang/String;

    .line 378
    .line 379
    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    if-nez p1, :cond_a

    .line 386
    .line 387
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 388
    .line 389
    if-eqz p1, :cond_a

    .line 390
    .line 391
    const-string p2, "0"

    .line 392
    .line 393
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    if-nez p1, :cond_a

    .line 398
    .line 399
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 400
    .line 401
    const-string p2, "UI"

    .line 402
    .line 403
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-nez p1, :cond_a

    .line 408
    .line 409
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 410
    .line 411
    if-nez p1, :cond_a

    .line 412
    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 419
    .line 420
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 427
    .line 428
    invoke-static {v2, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 429
    .line 430
    .line 431
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 432
    .line 433
    if-eqz p1, :cond_9

    .line 434
    .line 435
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 436
    .line 437
    if-nez p1, :cond_9

    .line 438
    .line 439
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 440
    .line 441
    .line 442
    :cond_9
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 446
    .line 447
    .line 448
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 458
    .line 459
    .line 460
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 461
    .line 462
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 463
    .line 464
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 465
    .line 466
    const-string/jumbo p0, "setUIMode from SVideo function"

    .line 467
    .line 468
    .line 469
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    :cond_a
    :goto_2
    return-void
.end method

.method public static -$$Nest$mset_wcg_property(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNaturalGammaScreenModeSupported:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenModeSetting:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x4

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-ne v0, v2, :cond_4

    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v5, "SEC_FLOATING_FEATURE_LCD_CONFIG_VIVIDPLUS"

    .line 18
    .line 19
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ne v0, v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v6, 0x2

    .line 52
    if-ne v0, v6, :cond_2

    .line 53
    .line 54
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVividnessIndex:I

    .line 55
    .line 56
    add-int/lit16 v0, v0, 0x100

    .line 57
    .line 58
    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-ne v0, v1, :cond_3

    .line 71
    .line 72
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVividnessIndex:I

    .line 73
    .line 74
    add-int/lit16 v0, v0, 0x100

    .line 75
    .line 76
    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ne v0, v2, :cond_5

    .line 89
    .line 90
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWhiteBalanceIndex:I

    .line 91
    .line 92
    mul-int/lit8 v0, v0, 0xa

    .line 93
    .line 94
    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVividnessIndex:I

    .line 95
    .line 96
    add-int/2addr v0, v1

    .line 97
    add-int/lit16 v0, v0, 0x100

    .line 98
    .line 99
    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    if-ne v0, v1, :cond_5

    .line 104
    .line 105
    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    .line 106
    .line 107
    .line 108
    :cond_5
    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    .line 115
    .line 116
    .line 117
    :cond_6
    return-void
.end method

.method public static -$$Nest$mwriteVideoEnhancerListInDataBase2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppListRegistState(Ljava/util/List;)Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-ge v4, v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    new-instance v5, Landroid/content/ContentValues;

    .line 47
    .line 48
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v6, "packagename"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    check-cast v7, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v6, "settingstate"

    .line 64
    .line 65
    .line 66
    const/4 v7, 0x1

    .line 67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception p0

    .line 79
    goto :goto_5

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    .line 87
    const-string v1, "MSCS_APP_LIST"

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    if-nez p0, :cond_2

    .line 93
    .line 94
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    goto :goto_2

    .line 99
    :catch_1
    move-exception p0

    .line 100
    goto :goto_4

    .line 101
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 102
    .line 103
    .line 104
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-ge v3, v0, :cond_3

    .line 109
    .line 110
    const-string v0, ""

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Landroid/content/ContentValues;

    .line 117
    .line 118
    invoke-virtual {p0, v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 119
    .line 120
    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_6

    .line 135
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    :goto_6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "eng"

    .line 9
    .line 10
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I

    .line 17
    .line 18
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 19
    .line 20
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 21
    .line 22
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 23
    .line 24
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 25
    .line 26
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 27
    .line 28
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 29
    .line 30
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    .line 31
    .line 32
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 33
    .line 34
    const v3, 0x124f80

    .line 35
    .line 36
    .line 37
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    .line 38
    .line 39
    const v3, 0x1d4c0

    .line 40
    .line 41
    .line 42
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

    .line 43
    .line 44
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 45
    .line 46
    const/16 v3, 0x1f40

    .line 47
    .line 48
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    .line 52
    .line 53
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    .line 54
    .line 55
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    .line 56
    .line 57
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    .line 58
    .line 59
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 60
    .line 61
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 62
    .line 63
    const/16 v4, 0x32

    .line 64
    .line 65
    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsLevel:I

    .line 66
    .line 67
    const/4 v4, 0x4

    .line 68
    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenModeSetting:I

    .line 69
    .line 70
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVividnessIndex:I

    .line 71
    .line 72
    const/4 v4, 0x2

    .line 73
    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWhiteBalanceIndex:I

    .line 74
    .line 75
    const/4 v5, -0x1

    .line 76
    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevPropertyValue:I

    .line 77
    .line 78
    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevRenderIntentValue:I

    .line 79
    .line 80
    const-wide/16 v6, 0x0

    .line 81
    .line 82
    iput-wide v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    .line 83
    .line 84
    const-string v6, "/sys/class/mdnie/mdnie/scenario"

    .line 85
    .line 86
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    .line 87
    .line 88
    const-string v6, "/sys/class/lcd/panel/lux"

    .line 89
    .line 90
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_PATH:Ljava/lang/String;

    .line 91
    .line 92
    const-string v6, "/sys/class/lcd/panel1/lux"

    .line 93
    .line 94
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_SUB_PATH:Ljava/lang/String;

    .line 95
    .line 96
    const-string v6, "/sys/class/lcd/panel/adaptive_control"

    .line 97
    .line 98
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

    .line 99
    .line 100
    const-string v6, "/sys/class/sensors/light_sensor/copr_roix"

    .line 101
    .line 102
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ON_PIXEL_RATIO_PATH:Ljava/lang/String;

    .line 103
    .line 104
    const-string v6, "com.sec.android.gallery3d"

    .line 105
    .line 106
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_PACKAGENAME:Ljava/lang/String;

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    .line 112
    .line 113
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    .line 114
    .line 115
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevmDNIeMode:Ljava/lang/String;

    .line 118
    .line 119
    new-array v7, v2, [Ljava/lang/String;

    .line 120
    .line 121
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 122
    .line 123
    new-array v7, v2, [Ljava/lang/String;

    .line 124
    .line 125
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 126
    .line 127
    new-array v7, v2, [Ljava/lang/String;

    .line 128
    .line 129
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 130
    .line 131
    new-array v7, v2, [Ljava/lang/String;

    .line 132
    .line 133
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 134
    .line 135
    new-array v7, v2, [Ljava/lang/String;

    .line 136
    .line 137
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 138
    .line 139
    new-array v7, v2, [Ljava/lang/String;

    .line 140
    .line 141
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 142
    .line 143
    new-array v7, v2, [Ljava/lang/String;

    .line 144
    .line 145
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 146
    .line 147
    new-array v7, v2, [Ljava/lang/String;

    .line 148
    .line 149
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 150
    .line 151
    new-array v7, v2, [Ljava/lang/String;

    .line 152
    .line 153
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 154
    .line 155
    new-array v7, v2, [Ljava/lang/String;

    .line 156
    .line 157
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 158
    .line 159
    new-array v7, v2, [Ljava/lang/String;

    .line 160
    .line 161
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    .line 162
    .line 163
    new-array v7, v2, [Ljava/lang/String;

    .line 164
    .line 165
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 166
    .line 167
    new-array v7, v2, [Ljava/lang/String;

    .line 168
    .line 169
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 170
    .line 171
    new-array v7, v2, [Ljava/lang/String;

    .line 172
    .line 173
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

    .line 174
    .line 175
    new-array v7, v2, [Ljava/lang/String;

    .line 176
    .line 177
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

    .line 178
    .line 179
    new-array v7, v2, [Ljava/lang/String;

    .line 180
    .line 181
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

    .line 182
    .line 183
    new-array v7, v2, [Ljava/lang/String;

    .line 184
    .line 185
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

    .line 186
    .line 187
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 188
    .line 189
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 190
    .line 191
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSupportAPmDNIe:Z

    .line 192
    .line 193
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    .line 194
    .line 195
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    .line 196
    .line 197
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 198
    .line 199
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 200
    .line 201
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 202
    .line 203
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 204
    .line 205
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 206
    .line 207
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 208
    .line 209
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    .line 210
    .line 211
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    .line 212
    .line 213
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 214
    .line 215
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 216
    .line 217
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 218
    .line 219
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 220
    .line 221
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 222
    .line 223
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 224
    .line 225
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 226
    .line 227
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 228
    .line 229
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 230
    .line 231
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 232
    .line 233
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 234
    .line 235
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 236
    .line 237
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    .line 238
    .line 239
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    .line 240
    .line 241
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    .line 242
    .line 243
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclState:Z

    .line 244
    .line 245
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    .line 246
    .line 247
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 248
    .line 249
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 250
    .line 251
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    .line 252
    .line 253
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 254
    .line 255
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 256
    .line 257
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 258
    .line 259
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    .line 260
    .line 261
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    .line 262
    .line 263
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 264
    .line 265
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    .line 266
    .line 267
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFolded:Z

    .line 268
    .line 269
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAntiGlareEnable:Z

    .line 270
    .line 271
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsActivatedEnabled:Z

    .line 272
    .line 273
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNaturalGammaScreenModeSupported:Z

    .line 274
    .line 275
    new-instance v7, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    .line 276
    .line 277
    invoke-direct {v7, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 278
    .line 279
    .line 280
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    .line 281
    .line 282
    new-instance v7, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;

    .line 283
    .line 284
    invoke-direct {v7, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 285
    .line 286
    .line 287
    new-instance v7, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;

    .line 288
    .line 289
    invoke-direct {v7, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 290
    .line 291
    .line 292
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;

    .line 293
    .line 294
    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 295
    .line 296
    new-instance v7, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 297
    .line 298
    const-string v8, "displaysolution_setting.db"

    .line 299
    .line 300
    invoke-direct {v7, v1, v8, v6, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 301
    .line 302
    .line 303
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 304
    .line 305
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 310
    .line 311
    const-string v7, "MdnieScenarioControlServiceThread"

    .line 312
    .line 313
    invoke-static {v7}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    new-instance v8, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 318
    .line 319
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    invoke-direct {v8, v0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V

    .line 324
    .line 325
    .line 326
    iput-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 327
    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    const v9, 0x11101e1

    .line 333
    .line 334
    .line 335
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    iput-boolean v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    .line 340
    .line 341
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    const-string v9, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    .line 346
    .line 347
    invoke-virtual {v7, v9, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-lez v7, :cond_0

    .line 352
    .line 353
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 354
    .line 355
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    const-string v9, "SEC_FLOATING_FEATURE_LCD_CONFIG_HW_MDNIE"

    .line 360
    .line 361
    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    const-string v9, "DDI"

    .line 366
    .line 367
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    if-nez v7, :cond_1

    .line 372
    .line 373
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSupportAPmDNIe:Z

    .line 374
    .line 375
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    const v9, 0x1070045

    .line 380
    .line 381
    .line 382
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    const v9, 0x107007e

    .line 393
    .line 394
    .line 395
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    const v9, 0x107004a

    .line 406
    .line 407
    .line 408
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 415
    .line 416
    .line 417
    move-result-object v7

    .line 418
    const v9, 0x107006b

    .line 419
    .line 420
    .line 421
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    const v9, 0x1070049

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 439
    .line 440
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 441
    .line 442
    .line 443
    move-result-object v7

    .line 444
    const v9, 0x1070082

    .line 445
    .line 446
    .line 447
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 452
    .line 453
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 454
    .line 455
    .line 456
    move-result-object v7

    .line 457
    const v9, 0x1070083

    .line 458
    .line 459
    .line 460
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 465
    .line 466
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    const v9, 0x1070085

    .line 471
    .line 472
    .line 473
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 478
    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 480
    .line 481
    .line 482
    move-result-object v7

    .line 483
    const v9, 0x1070064

    .line 484
    .line 485
    .line 486
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v7

    .line 490
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 491
    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 493
    .line 494
    .line 495
    move-result-object v7

    .line 496
    const v9, 0x1070063

    .line 497
    .line 498
    .line 499
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 504
    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    const v9, 0x1070041

    .line 510
    .line 511
    .line 512
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v7

    .line 516
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    .line 517
    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 519
    .line 520
    .line 521
    move-result-object v7

    .line 522
    const v9, 0x1070040

    .line 523
    .line 524
    .line 525
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    const v9, 0x107004e

    .line 533
    .line 534
    .line 535
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 542
    .line 543
    .line 544
    move-result-object v7

    .line 545
    const v9, 0x107007c

    .line 546
    .line 547
    .line 548
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v7

    .line 552
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 555
    .line 556
    .line 557
    move-result-object v7

    .line 558
    const v9, 0x1070069

    .line 559
    .line 560
    .line 561
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v7

    .line 565
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 568
    .line 569
    .line 570
    move-result-object v7

    .line 571
    const v9, 0x1070066

    .line 572
    .line 573
    .line 574
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v7

    .line 578
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

    .line 579
    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 581
    .line 582
    .line 583
    move-result-object v7

    .line 584
    const v9, 0x1070067

    .line 585
    .line 586
    .line 587
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v7

    .line 591
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

    .line 592
    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 594
    .line 595
    .line 596
    move-result-object v7

    .line 597
    const v9, 0x1070068

    .line 598
    .line 599
    .line 600
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v7

    .line 604
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

    .line 605
    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 607
    .line 608
    .line 609
    move-result-object v7

    .line 610
    const v9, 0x10e0067

    .line 611
    .line 612
    .line 613
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 614
    .line 615
    .line 616
    move-result v7

    .line 617
    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 618
    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 620
    .line 621
    .line 622
    move-result-object v7

    .line 623
    const v9, 0x10e001b

    .line 624
    .line 625
    .line 626
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 627
    .line 628
    .line 629
    move-result v7

    .line 630
    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 631
    .line 632
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 633
    .line 634
    .line 635
    move-result-object v7

    .line 636
    const v9, 0x10e00b6

    .line 637
    .line 638
    .line 639
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 640
    .line 641
    .line 642
    move-result v7

    .line 643
    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 644
    .line 645
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 646
    .line 647
    .line 648
    move-result-object v7

    .line 649
    const v9, 0x10e001d

    .line 650
    .line 651
    .line 652
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 653
    .line 654
    .line 655
    move-result v7

    .line 656
    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 657
    .line 658
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 659
    .line 660
    .line 661
    move-result-object v7

    .line 662
    const v9, 0x10e001e

    .line 663
    .line 664
    .line 665
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 666
    .line 667
    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 669
    .line 670
    .line 671
    move-result-object v7

    .line 672
    const v9, 0x10e0021

    .line 673
    .line 674
    .line 675
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 676
    .line 677
    .line 678
    move-result v7

    .line 679
    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 680
    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 682
    .line 683
    .line 684
    move-result-object v7

    .line 685
    const v9, 0x10e0022

    .line 686
    .line 687
    .line 688
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 689
    .line 690
    .line 691
    move-result v7

    .line 692
    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 693
    .line 694
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 695
    .line 696
    .line 697
    move-result-object v7

    .line 698
    const v9, 0x10e0024

    .line 699
    .line 700
    .line 701
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 702
    .line 703
    .line 704
    move-result v7

    .line 705
    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    .line 706
    .line 707
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 708
    .line 709
    .line 710
    move-result-object v7

    .line 711
    const v9, 0x10e0025

    .line 712
    .line 713
    .line 714
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 715
    .line 716
    .line 717
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 718
    .line 719
    .line 720
    move-result-object v7

    .line 721
    const v9, 0x10e0149

    .line 722
    .line 723
    .line 724
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 725
    .line 726
    .line 727
    move-result v7

    .line 728
    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 729
    .line 730
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 731
    .line 732
    .line 733
    move-result-object v7

    .line 734
    const v9, 0x10e0023

    .line 735
    .line 736
    .line 737
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 738
    .line 739
    .line 740
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 741
    .line 742
    .line 743
    move-result-object v7

    .line 744
    const v9, 0x10e00bb

    .line 745
    .line 746
    .line 747
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 748
    .line 749
    .line 750
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 751
    .line 752
    .line 753
    move-result-object v7

    .line 754
    const v9, 0x10e00ba

    .line 755
    .line 756
    .line 757
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 758
    .line 759
    .line 760
    move-result v7

    .line 761
    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 762
    .line 763
    const/16 v7, 0x15

    .line 764
    .line 765
    invoke-virtual {v8, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 769
    .line 770
    .line 771
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    const v7, 0x10700ad

    .line 776
    .line 777
    .line 778
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessStringArray:[Ljava/lang/String;

    .line 783
    .line 784
    new-array v1, v4, [I

    .line 785
    .line 786
    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    .line 787
    .line 788
    move v1, v2

    .line 789
    :goto_0
    iget-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessStringArray:[Ljava/lang/String;

    .line 790
    .line 791
    array-length v8, v7

    .line 792
    if-ge v1, v8, :cond_2

    .line 793
    .line 794
    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    .line 795
    .line 796
    aget-object v7, v7, v1

    .line 797
    .line 798
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 799
    .line 800
    .line 801
    move-result v7

    .line 802
    aput v7, v8, v1

    .line 803
    .line 804
    add-int/lit8 v1, v1, 0x1

    .line 805
    .line 806
    goto :goto_0

    .line 807
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 808
    .line 809
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    const v7, 0x1070052

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVisionBoosterStringArray:[Ljava/lang/String;

    .line 821
    .line 822
    new-instance v1, Ljava/io/File;

    .line 823
    .line 824
    iget-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

    .line 825
    .line 826
    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 830
    .line 831
    .line 832
    move-result v1

    .line 833
    const-string v7, "MdnieScenarioControlService"

    .line 834
    .line 835
    if-eqz v1, :cond_4

    .line 836
    .line 837
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 838
    .line 839
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    const v8, 0x1070088

    .line 844
    .line 845
    .line 846
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v1

    .line 850
    array-length v8, v1

    .line 851
    if-ne v8, v4, :cond_3

    .line 852
    .line 853
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    .line 854
    .line 855
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 856
    .line 857
    const-string v8, "mAclDimmingFunction "

    .line 858
    .line 859
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    iget-boolean v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    .line 863
    .line 864
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    const-string v8, " , array lenght : "

    .line 868
    .line 869
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    array-length v1, v1

    .line 873
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    const-string v1, " , AclVersion : "

    .line 877
    .line 878
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    iget v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 882
    .line 883
    invoke-static {v4, v1, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 884
    .line 885
    .line 886
    :cond_4
    const-string v1, "mEnvironmentAdaptiveDisplaySupported false , mGlareReductionSupported : false"

    .line 887
    .line 888
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .line 890
    .line 891
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 892
    .line 893
    .line 894
    move-result-object v1

    .line 895
    const-string v4, "SEC_FLOATING_FEATURE_LCD_CONFIG_NATURAL_MODE_TYPE"

    .line 896
    .line 897
    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 898
    .line 899
    .line 900
    move-result v1

    .line 901
    if-ne v1, v3, :cond_5

    .line 902
    .line 903
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNaturalGammaScreenModeSupported:Z

    .line 904
    .line 905
    :cond_5
    new-instance v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    .line 906
    .line 907
    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 908
    .line 909
    invoke-direct {v1, v0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Handler;)V

    .line 910
    .line 911
    .line 912
    new-instance v4, Lcom/samsung/android/app/SemMultiWindowManager;

    .line 913
    .line 914
    invoke-direct {v4}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    .line 915
    .line 916
    .line 917
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 918
    .line 919
    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 920
    .line 921
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 922
    .line 923
    .line 924
    move-result-object v4

    .line 925
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 926
    .line 927
    .line 928
    move-result-wide v8

    .line 929
    const-string v10, "low_power"

    .line 930
    .line 931
    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 932
    .line 933
    .line 934
    move-result-object v10

    .line 935
    invoke-virtual {v4, v10, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 936
    .line 937
    .line 938
    const-string/jumbo v10, "reduce_bright_colors_activated"

    .line 939
    .line 940
    .line 941
    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 942
    .line 943
    .line 944
    move-result-object v10

    .line 945
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 946
    .line 947
    .line 948
    const-string/jumbo v10, "reduce_bright_colors_level"

    .line 949
    .line 950
    .line 951
    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 952
    .line 953
    .line 954
    move-result-object v10

    .line 955
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 956
    .line 957
    .line 958
    const-string/jumbo v10, "screen_mode_setting"

    .line 959
    .line 960
    .line 961
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 962
    .line 963
    .line 964
    move-result-object v10

    .line 965
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 966
    .line 967
    .line 968
    const-string/jumbo v10, "vividness_intensity"

    .line 969
    .line 970
    .line 971
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 972
    .line 973
    .line 974
    move-result-object v10

    .line 975
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 976
    .line 977
    .line 978
    const-string/jumbo v10, "screen_brightness"

    .line 979
    .line 980
    .line 981
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 982
    .line 983
    .line 984
    move-result-object v10

    .line 985
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 986
    .line 987
    .line 988
    const-string/jumbo v10, "screen_auto_brightness_adj"

    .line 989
    .line 990
    .line 991
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 992
    .line 993
    .line 994
    move-result-object v10

    .line 995
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 996
    .line 997
    .line 998
    const-string/jumbo v10, "screen_brightness_mode"

    .line 999
    .line 1000
    .line 1001
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v10

    .line 1005
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1006
    .line 1007
    .line 1008
    const-string v10, "lcd_curtain"

    .line 1009
    .line 1010
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v10

    .line 1014
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1015
    .line 1016
    .line 1017
    const-string v10, "color_blind"

    .line 1018
    .line 1019
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v10

    .line 1023
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1024
    .line 1025
    .line 1026
    const-string/jumbo v10, "screen_off_timeout"

    .line 1027
    .line 1028
    .line 1029
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v10

    .line 1033
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1034
    .line 1035
    .line 1036
    const-string v10, "blue_light_filter"

    .line 1037
    .line 1038
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v10

    .line 1042
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1043
    .line 1044
    .line 1045
    const-string v10, "blue_light_filter_adaptive_mode"

    .line 1046
    .line 1047
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v10

    .line 1051
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1052
    .line 1053
    .line 1054
    const-string v10, "blue_light_filter_anti_glare"

    .line 1055
    .line 1056
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v10

    .line 1060
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1061
    .line 1062
    .line 1063
    const-string v10, "blue_light_filter_type"

    .line 1064
    .line 1065
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v10

    .line 1069
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1070
    .line 1071
    .line 1072
    const-string v10, "high_brightness_mode_pms_enter"

    .line 1073
    .line 1074
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v10

    .line 1078
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1079
    .line 1080
    .line 1081
    const-string/jumbo v10, "sec_display_preset_index"

    .line 1082
    .line 1083
    .line 1084
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v10

    .line 1088
    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1089
    .line 1090
    .line 1091
    const-string/jumbo v1, "registerDisplayStateListener"

    .line 1092
    .line 1093
    .line 1094
    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .line 1096
    .line 1097
    new-instance v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;

    .line 1098
    .line 1099
    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 1100
    .line 1101
    .line 1102
    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mFoldStateListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;

    .line 1103
    .line 1104
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v1

    .line 1108
    iget-object v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mFoldStateListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;

    .line 1109
    .line 1110
    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 1111
    .line 1112
    .line 1113
    new-instance v13, Landroid/content/IntentFilter;

    .line 1114
    .line 1115
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1116
    .line 1117
    .line 1118
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 1119
    .line 1120
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 1124
    .line 1125
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1126
    .line 1127
    .line 1128
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 1129
    .line 1130
    const-string v2, "android.intent.action.USER_PRESENT"

    .line 1131
    .line 1132
    const-string v4, "ACTION_MOVIE_PLAYER_STATE_IN"

    .line 1133
    .line 1134
    const-string v5, "ACTION_MOVIE_PLAYER_STATE_OUT"

    .line 1135
    .line 1136
    invoke-static {v13, v1, v2, v4, v5}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    const-string v1, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    .line 1140
    .line 1141
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    const-string v1, "com.samsung.systemui.statusbar.EXPANDED"

    .line 1145
    .line 1146
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    const-string v1, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 1150
    .line 1151
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    iget-object v10, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 1155
    .line 1156
    new-instance v11, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;

    .line 1157
    .line 1158
    invoke-direct {v11, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 1159
    .line 1160
    .line 1161
    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1162
    .line 1163
    const/16 v16, 0x2

    .line 1164
    .line 1165
    const/4 v14, 0x0

    .line 1166
    const/4 v15, 0x0

    .line 1167
    invoke-virtual/range {v10 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1168
    .line 1169
    .line 1170
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 1171
    .line 1172
    const/16 v2, 0xf

    .line 1173
    .line 1174
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1175
    .line 1176
    .line 1177
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 1178
    .line 1179
    iget v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    .line 1180
    .line 1181
    int-to-long v4, v4

    .line 1182
    add-long/2addr v8, v4

    .line 1183
    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1184
    .line 1185
    .line 1186
    const-string/jumbo v1, "sys.mdniecontrolservice.mscon"

    .line 1187
    .line 1188
    .line 1189
    const-string v2, "false"

    .line 1190
    .line 1191
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    .line 1193
    .line 1194
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    .line 1195
    .line 1196
    if-eqz v2, :cond_6

    .line 1197
    .line 1198
    const-string/jumbo v2, "true"

    .line 1199
    .line 1200
    .line 1201
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    .line 1203
    .line 1204
    :cond_6
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 1205
    .line 1206
    const-string/jumbo v0, "persist.dm.passive.ambient_brightness"

    .line 1207
    .line 1208
    .line 1209
    const-string v1, ""

    .line 1210
    .line 1211
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v2

    .line 1215
    const-string v3, "500"

    .line 1216
    .line 1217
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1218
    .line 1219
    .line 1220
    move-result v2

    .line 1221
    if-nez v2, :cond_7

    .line 1222
    .line 1223
    const-string v2, "1000"

    .line 1224
    .line 1225
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v3

    .line 1229
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result v2

    .line 1233
    if-eqz v2, :cond_8

    .line 1234
    .line 1235
    :cond_7
    const-string v2, "1000,1500"

    .line 1236
    .line 1237
    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    :cond_8
    const-string/jumbo v0, "persist.dm.passive.display_brightness"

    .line 1241
    .line 1242
    .line 1243
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v2

    .line 1247
    const-string v3, "172"

    .line 1248
    .line 1249
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1250
    .line 1251
    .line 1252
    move-result v2

    .line 1253
    if-nez v2, :cond_9

    .line 1254
    .line 1255
    const-string v2, "255"

    .line 1256
    .line 1257
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v1

    .line 1261
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v1

    .line 1265
    if-eqz v1, :cond_a

    .line 1266
    .line 1267
    :cond_9
    const-string v1, "255,85"

    .line 1268
    .line 1269
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    :cond_a
    return-void
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v4, v0, :cond_0

    .line 13
    .line 14
    aput-byte v3, v1, v4

    .line 15
    .line 16
    add-int/lit8 v4, v4, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v0, :cond_7

    .line 25
    .line 26
    const-string v0, "File Close error"

    .line 27
    .line 28
    const-string v5, "MdnieScenarioControlService"

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    .line 33
    .line 34
    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :catch_0
    move-exception p0

    .line 42
    move-object v1, v4

    .line 43
    goto :goto_4

    .line 44
    :cond_1
    move-object p0, v4

    .line 45
    :goto_1
    if-eqz p0, :cond_4

    .line 46
    .line 47
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 48
    .line 49
    .line 50
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    if-lez v2, :cond_2

    .line 52
    .line 53
    :try_start_2
    new-instance v6, Ljava/lang/String;

    .line 54
    .line 55
    add-int/lit8 v7, v2, -0x1

    .line 56
    .line 57
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    invoke-direct {v6, v1, v3, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 60
    .line 61
    .line 62
    move-object v4, v6

    .line 63
    goto :goto_3

    .line 64
    :catchall_1
    move-exception v1

    .line 65
    move-object v4, p0

    .line 66
    move-object p0, v1

    .line 67
    goto :goto_5

    .line 68
    :catch_1
    move-exception v1

    .line 69
    move v3, v2

    .line 70
    :goto_2
    move-object v9, v4

    .line 71
    move-object v4, p0

    .line 72
    move-object p0, v1

    .line 73
    move-object v1, v9

    .line 74
    goto :goto_4

    .line 75
    :cond_2
    :goto_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    .line 77
    .line 78
    goto :goto_7

    .line 79
    :catch_2
    move-exception v1

    .line 80
    goto :goto_2

    .line 81
    :goto_4
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v6, "Exception : "

    .line 87
    .line 88
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v6, " , in : "

    .line 95
    .line 96
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v6, " , value : "

    .line 103
    .line 104
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v6, " , length : "

    .line 111
    .line 112
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    .line 127
    .line 128
    if-eqz v4, :cond_6

    .line 129
    .line 130
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 131
    .line 132
    .line 133
    goto :goto_9

    .line 134
    :catch_3
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_9

    .line 138
    :goto_5
    if-eqz v4, :cond_3

    .line 139
    .line 140
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :catch_4
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_3
    :goto_6
    throw p0

    .line 148
    :cond_4
    :goto_7
    if-eqz p0, :cond_5

    .line 149
    .line 150
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 151
    .line 152
    .line 153
    goto :goto_8

    .line 154
    :catch_5
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    :cond_5
    :goto_8
    move-object v1, v4

    .line 158
    :cond_6
    :goto_9
    return-object v1

    .line 159
    :cond_7
    return-object v4
.end method


# virtual methods
.method public final browser_brightness_decrease_mode(Z)V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 6
    .line 7
    const-string v3, "MdnieScenarioControlService"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    :try_start_0
    invoke-static {v2, v4}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 19
    .line 20
    invoke-virtual {v6, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMediaResourceInfo(I)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-lez v2, :cond_0

    .line 31
    .line 32
    move v2, v5

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    move v2, v4

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    const-string v2, "failed to getMediaResourceInfo"

    .line 37
    .line 38
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    .line 48
    .line 49
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v6, -0x2

    .line 56
    const-string/jumbo v7, "screen_brightness"

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v7, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    .line 64
    .line 65
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->semGetMotionIdleTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    iput-wide v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    .line 74
    .line 75
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v6, "browser_brightness_decrease_mode(), mBrowserBrightnessDecreaseEnabled : "

    .line 78
    .line 79
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 83
    .line 84
    const-string v7, " , enabled : "

    .line 85
    .line 86
    const-string v8, " , mScreenStateOn : "

    .line 87
    .line 88
    invoke-static {v2, v6, v7, p1, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 92
    .line 93
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v6, " , mBrowserAppLauncher : "

    .line 97
    .line 98
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    .line 102
    .line 103
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v6, " , mScreenOffTomeoutAbnormal : "

    .line 107
    .line 108
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    .line 112
    .line 113
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v6, " , mUserActivityStatus : "

    .line 117
    .line 118
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    .line 122
    .line 123
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v6, " , mMediaResourceUsed : "

    .line 127
    .line 128
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    .line 132
    .line 133
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v6, ", mLastUserInputDuration : "

    .line 137
    .line 138
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-wide v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    .line 142
    .line 143
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v6, " , mBrowserBrightnessDefault : "

    .line 147
    .line 148
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    .line 152
    .line 153
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v6, " , mBrowserBrightnessArray : "

    .line 157
    .line 158
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    .line 162
    .line 163
    aget v7, v6, v4

    .line 164
    .line 165
    invoke-static {v2, v7, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 169
    .line 170
    const/16 v7, 0x11

    .line 171
    .line 172
    if-eqz p1, :cond_7

    .line 173
    .line 174
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 175
    .line 176
    if-eqz p1, :cond_7

    .line 177
    .line 178
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    .line 179
    .line 180
    if-eqz p1, :cond_7

    .line 181
    .line 182
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    .line 183
    .line 184
    if-nez p1, :cond_2

    .line 185
    .line 186
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    .line 187
    .line 188
    const/4 v8, 0x3

    .line 189
    if-ne p1, v8, :cond_7

    .line 190
    .line 191
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    .line 192
    .line 193
    const-wide/32 v8, 0x927c0

    .line 194
    .line 195
    .line 196
    if-nez p1, :cond_5

    .line 197
    .line 198
    iget-wide v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    .line 199
    .line 200
    cmp-long v10, v10, v8

    .line 201
    .line 202
    if-lez v10, :cond_5

    .line 203
    .line 204
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    .line 205
    .line 206
    aget v0, v6, v4

    .line 207
    .line 208
    if-lt p1, v0, :cond_8

    .line 209
    .line 210
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 211
    .line 212
    aget p1, v6, v5

    .line 213
    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 215
    .line 216
    .line 217
    move-result-wide v0

    .line 218
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 219
    .line 220
    if-eqz v4, :cond_8

    .line 221
    .line 222
    move v4, v5

    .line 223
    :goto_2
    add-int/lit8 v6, p1, 0x1

    .line 224
    .line 225
    if-ge v4, v6, :cond_8

    .line 226
    .line 227
    iget v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    .line 228
    .line 229
    if-ne v6, v4, :cond_4

    .line 230
    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v8, "Enabled Browser Brightness Decrease Mode "

    .line 234
    .line 235
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v8, " , MAX  : "

    .line 242
    .line 243
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 257
    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v8, "browser_brightness_on_"

    .line 261
    .line 262
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-virtual {v3, v6}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    if-ge v4, p1, :cond_3

    .line 276
    .line 277
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    .line 279
    .line 280
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

    .line 281
    .line 282
    int-to-long v8, p1

    .line 283
    add-long/2addr v0, v8

    .line 284
    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 285
    .line 286
    .line 287
    add-int/2addr v4, v5

    .line 288
    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_3
    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_5
    if-nez p1, :cond_6

    .line 298
    .line 299
    iget-wide v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    .line 300
    .line 301
    cmp-long p1, v3, v8

    .line 302
    .line 303
    if-gtz p1, :cond_8

    .line 304
    .line 305
    :cond_6
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    .line 307
    .line 308
    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    .line 309
    .line 310
    int-to-long p0, p0

    .line 311
    add-long/2addr v0, p0

    .line 312
    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_7
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 317
    .line 318
    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    .line 319
    .line 320
    const-string p1, "Disabled Browser Brightness Decrease Mode"

    .line 321
    .line 322
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    .line 327
    .line 328
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 329
    .line 330
    if-eqz p0, :cond_8

    .line 331
    .line 332
    const-string p1, "browser_brightness_off"

    .line 333
    .line 334
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_8
    :goto_3
    return-void
.end method

.method public final getAppListRegistState(Ljava/util/List;)Ljava/util/HashMap;
    .locals 11

    .line 1
    const-string/jumbo v0, "packagename IN(\'"

    .line 2
    .line 3
    .line 4
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "\',\'"

    .line 15
    .line 16
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, "\')"

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const-string/jumbo p1, "packagename"

    .line 33
    .line 34
    .line 35
    filled-new-array {p1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    const/4 p1, 0x0

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string p0, "MSCS_APP_LIST"

    .line 53
    .line 54
    invoke-virtual {v3, p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v10, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    const/4 v9, 0x0

    .line 61
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_0

    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    if-eqz p1, :cond_2

    .line 87
    .line 88
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :catch_0
    move-exception p0

    .line 93
    goto :goto_2

    .line 94
    :goto_1
    if-eqz p1, :cond_1

    .line 95
    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 97
    .line 98
    .line 99
    :cond_1
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_3
    return-object v1
.end method

.method public final getAppSettingState(Ljava/lang/String;)I
    .locals 11

    .line 1
    const-string/jumbo v0, "packagename = \'"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, "\' "

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string p1, "MSCS_APP_LIST"

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    const-string/jumbo p1, "settingstate"

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I

    .line 78
    .line 79
    return p0

    .line 80
    :goto_1
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 83
    .line 84
    .line 85
    :cond_2
    throw p0
.end method

.method public final getScenarioMode()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSupportAPmDNIe:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->getContentMode()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public final getting_autocurrentlimit_state()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getAutoCurrentLimitOffModeEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclState:Z

    .line 10
    .line 11
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclState:Z

    .line 12
    .line 13
    return p0
.end method

.method public final getting_knox_mode_enabled()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "persona"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final getting_setting_value()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "MdnieScenarioControlService"

    .line 12
    .line 13
    const-string v3, "hdr_effect"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, -0x2

    .line 20
    invoke-static {v1, v3, v5, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v4, v5

    .line 28
    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 29
    .line 30
    const-string v0, "Use Current User"

    .line 31
    .line 32
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    invoke-static {v1, v3, v5, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v0, v4, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v4, v5

    .line 44
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 45
    .line 46
    const-string v0, "Use Owner User"

    .line 47
    .line 48
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_2
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 52
    .line 53
    return p0
.end method

.method public final insertDataUsage(Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "MSCS_APP_LIST"

    .line 2
    .line 3
    const-string/jumbo v1, "packagename"

    .line 4
    .line 5
    .line 6
    invoke-static {v1, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string/jumbo v3, "settingstate"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v2, "packagename = \'"

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, "\' "

    .line 38
    .line 39
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    .line 50
    .line 51
    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v12, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v11, 0x0

    .line 62
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    .line 69
    .line 70
    .line 71
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_0
    const/4 p1, 0x0

    .line 76
    :goto_0
    if-eqz v3, :cond_1

    .line 77
    .line 78
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 79
    .line 80
    .line 81
    :cond_1
    if-nez p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 86
    .line 87
    if-nez p1, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    :goto_1
    const-string p0, ""

    .line 98
    .line 99
    invoke-virtual {p1, v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 100
    .line 101
    .line 102
    :cond_3
    return-void

    .line 103
    :goto_2
    if-eqz v3, :cond_4

    .line 104
    .line 105
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 106
    .line 107
    .line 108
    :cond_4
    throw p0
.end method

.method public final mdnie_reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 19
    .line 20
    return-void
.end method

.method public final scenario_enable_reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 19
    .line 20
    return-void
.end method

.method public final setAclModeScenario(IZ)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    if-eqz v1, :cond_5

    .line 17
    .line 18
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 19
    .line 20
    const-string v0, ")"

    .line 21
    .line 22
    const-string v1, ") - mCurrentValue ("

    .line 23
    .line 24
    const-string/jumbo v2, "setAclModeScenario() ACL mPrevAclValue ("

    .line 25
    .line 26
    .line 27
    const-string v3, "MdnieScenarioControlService"

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAntiGlareEnable:Z

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    if-ne p1, v4, :cond_2

    .line 41
    .line 42
    const/4 p1, 0x5

    .line 43
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 49
    .line 50
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 57
    .line 58
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {v3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V

    .line 74
    .line 75
    .line 76
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 77
    .line 78
    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    if-nez p2, :cond_5

    .line 82
    .line 83
    iget p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 84
    .line 85
    const/4 v5, 0x3

    .line 86
    if-lt p2, v5, :cond_4

    .line 87
    .line 88
    if-ne p1, v4, :cond_4

    .line 89
    .line 90
    move p1, v5

    .line 91
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 97
    .line 98
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 105
    .line 106
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {v3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 120
    .line 121
    invoke-virtual {p2, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V

    .line 122
    .line 123
    .line 124
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    .line 125
    .line 126
    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 127
    .line 128
    :cond_5
    :goto_1
    return-void
.end method

.method public final setBrightnessScaleFactor(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    const-string v1, "brightness_scale_off"

    .line 6
    .line 7
    const-string v2, ")"

    .line 8
    .line 9
    const-string v3, "Calling SemDisplaySolutionManager API(setMultipleScreenBrightness("

    .line 10
    .line 11
    const-string v4, "MdnieScenarioControlService"

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_0
    const/4 v5, 0x1

    .line 42
    if-ne p1, v5, :cond_1

    .line 43
    .line 44
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 45
    .line 46
    if-nez v6, :cond_1

    .line 47
    .line 48
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 49
    .line 50
    const-string p0, "brightness_scale_on_1"

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_1
    const/4 v6, 0x2

    .line 76
    if-ne p1, v6, :cond_2

    .line 77
    .line 78
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 79
    .line 80
    if-nez v6, :cond_2

    .line 81
    .line 82
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 83
    .line 84
    const-string p0, "brightness_scale_on_2"

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_2
    const/4 v6, 0x3

    .line 110
    if-ne p1, v6, :cond_3

    .line 111
    .line 112
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 113
    .line 114
    if-nez v6, :cond_3

    .line 115
    .line 116
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 117
    .line 118
    const-string p0, "brightness_scale_on_3"

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_3
    const/4 v6, 0x4

    .line 144
    if-ne p1, v6, :cond_4

    .line 145
    .line 146
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 147
    .line 148
    if-nez v6, :cond_4

    .line 149
    .line 150
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 151
    .line 152
    const-string p0, "brightness_scale_on_4"

    .line 153
    .line 154
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_4
    const/4 v6, 0x5

    .line 178
    if-ne p1, v6, :cond_5

    .line 179
    .line 180
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 181
    .line 182
    if-nez v6, :cond_5

    .line 183
    .line 184
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 185
    .line 186
    const-string p0, "brightness_scale_on_5"

    .line 187
    .line 188
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_5
    const/4 v6, 0x6

    .line 211
    if-ne p1, v6, :cond_7

    .line 212
    .line 213
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 214
    .line 215
    if-nez v6, :cond_7

    .line 216
    .line 217
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 218
    .line 219
    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 220
    .line 221
    const/16 v5, 0xff

    .line 222
    .line 223
    if-ne p0, v5, :cond_6

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance p0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_6
    const-string p0, "brightness_scale_on_6"

    .line 248
    .line 249
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    new-instance p0, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_7
    const/4 v1, 0x7

    .line 272
    if-ne p1, v1, :cond_8

    .line 273
    .line 274
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 275
    .line 276
    if-nez v1, :cond_8

    .line 277
    .line 278
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 279
    .line 280
    const-string p0, "brightness_scale_on_7"

    .line 281
    .line 282
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance p0, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    :cond_8
    :goto_0
    return-void
.end method

.method public final setCameraAppLaunch(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "DisplaySolution"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setCameraModeEnable(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final setDouAppLaunch(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "DisplaySolution"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setDouAppModeEnable(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final setMdnieScenarioMode(I)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 6
    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "Calling MdnieManager API(setContentMode("

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, "))"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "MdnieScenarioControlService"

    .line 32
    .line 33
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 37
    .line 38
    const/16 v4, 0x8

    .line 39
    .line 40
    const/16 v5, 0x11

    .line 41
    .line 42
    if-ne p1, v4, :cond_0

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    .line 46
    .line 47
    const-string p1, "Start Browser Brightness Decrease Timer"

    .line 48
    .line 49
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    .line 54
    .line 55
    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    .line 56
    .line 57
    int-to-long p0, p0

    .line 58
    add-long/2addr v0, p0

    .line 59
    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    .line 65
    .line 66
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 67
    .line 68
    if-eqz p0, :cond_1

    .line 69
    .line 70
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    .line 72
    .line 73
    const/16 p0, 0x12

    .line 74
    .line 75
    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    if-nez p0, :cond_2

    .line 83
    .line 84
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    return-void
.end method

.method public final setUIMode(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 13
    .line 14
    array-length v3, v2

    .line 15
    const/4 v4, 0x1

    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "mAclOffEnabled : "

    .line 40
    .line 41
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 45
    .line 46
    const-string v2, "MdnieScenarioControlService"

    .line 47
    .line 48
    invoke-static {v2, p1, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 49
    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 71
    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    const/4 p1, 0x7

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    const-string v1, "0"

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_5

    .line 97
    .line 98
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 99
    .line 100
    const-string v1, "UI"

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_5

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 121
    .line 122
    .line 123
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 124
    .line 125
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 126
    .line 127
    const-string/jumbo p0, "setUIMode from UI function"

    .line 128
    .line 129
    .line 130
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_5
    return-void
.end method

.method public final setVideoAppLaunch(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "DisplaySolution"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setVideoModeEnable(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final setting_is_changed()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "low_power"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    const-string v1, "lcd_curtain"

    .line 14
    .line 15
    const/4 v3, -0x2

    .line 16
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v4, 0x1

    .line 21
    if-ne v1, v4, :cond_0

    .line 22
    .line 23
    move v1, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    .line 27
    .line 28
    const-string v1, "color_blind"

    .line 29
    .line 30
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne v1, v4, :cond_1

    .line 35
    .line 36
    move v1, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v1, v2

    .line 39
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    .line 40
    .line 41
    const-string v1, "high_brightness_mode_pms_enter"

    .line 42
    .line 43
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ne v1, v4, :cond_2

    .line 48
    .line 49
    move v1, v4

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v1, v2

    .line 52
    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 53
    .line 54
    const-string/jumbo v1, "screen_brightness_mode"

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ne v1, v4, :cond_3

    .line 62
    .line 63
    move v1, v4

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move v1, v2

    .line 66
    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 67
    .line 68
    const-string/jumbo v1, "screen_off_timeout"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const v5, 0x927c0

    .line 76
    .line 77
    .line 78
    if-le v1, v5, :cond_4

    .line 79
    .line 80
    move v1, v4

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    move v1, v2

    .line 83
    :goto_4
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    .line 84
    .line 85
    const-string v1, "blue_light_filter"

    .line 86
    .line 87
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 88
    .line 89
    .line 90
    const-string v1, "blue_light_filter_adaptive_mode"

    .line 91
    .line 92
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 93
    .line 94
    .line 95
    const-string v1, "blue_light_filter_anti_glare"

    .line 96
    .line 97
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 98
    .line 99
    .line 100
    const-string v1, "blue_light_filter_type"

    .line 101
    .line 102
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 103
    .line 104
    .line 105
    const-string/jumbo v1, "reduce_bright_colors_activated"

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-ne v1, v4, :cond_5

    .line 113
    .line 114
    move v1, v4

    .line 115
    goto :goto_5

    .line 116
    :cond_5
    move v1, v2

    .line 117
    :goto_5
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsActivatedEnabled:Z

    .line 118
    .line 119
    const-string/jumbo v1, "reduce_bright_colors_level"

    .line 120
    .line 121
    .line 122
    const/16 v5, 0x32

    .line 123
    .line 124
    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsLevel:I

    .line 129
    .line 130
    const-string/jumbo v1, "screen_mode_setting"

    .line 131
    .line 132
    .line 133
    const/4 v5, 0x4

    .line 134
    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenModeSetting:I

    .line 139
    .line 140
    const-string/jumbo v1, "vividness_intensity"

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVividnessIndex:I

    .line 148
    .line 149
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string/jumbo v1, "sec_display_preset_index"

    .line 156
    .line 157
    .line 158
    const/4 v5, 0x2

    .line 159
    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWhiteBalanceIndex:I

    .line 164
    .line 165
    const-string v0, "MdnieScenarioControlService"

    .line 166
    .line 167
    const-string/jumbo v1, "settingDB update"

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    .line 174
    .line 175
    if-nez v1, :cond_6

    .line 176
    .line 177
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    .line 178
    .line 179
    if-nez v1, :cond_6

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_6
    move v4, v2

    .line 183
    :goto_6
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    .line 184
    .line 185
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 186
    .line 187
    if-eqz v1, :cond_7

    .line 188
    .line 189
    if-eqz v4, :cond_7

    .line 190
    .line 191
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    .line 192
    .line 193
    if-eqz v1, :cond_7

    .line 194
    .line 195
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    .line 196
    .line 197
    const/4 v1, -0x1

    .line 198
    invoke-virtual {p0, v1, v2, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_7

    .line 202
    :catch_0
    const-string p0, "failed to onForegroundActivitiesChanged"

    .line 203
    .line 204
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    :cond_7
    :goto_7
    return-void
.end method

.method public final wcg_property_changed(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevPropertyValue:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevRenderIntentValue:I

    .line 6
    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevPropertyValue:I

    .line 10
    .line 11
    iput p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevRenderIntentValue:I

    .line 12
    .line 13
    const-string p0, "GRAPHIC_PROPERTY("

    .line 14
    .line 15
    const-string v0, "), SurfaceFlinger_RI("

    .line 16
    .line 17
    const-string v1, ")"

    .line 18
    .line 19
    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "MdnieScenarioControlService"

    .line 24
    .line 25
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string/jumbo p0, "persist.sys.sf.native_mode"

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p0, "SurfaceFlinger"

    .line 39
    .line 40
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v1, "android.ui.ISurfaceComposer"

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    const/16 v1, 0x3ff

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    :try_start_0
    invoke-interface {p0, v1, p1, v2, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception p0

    .line 72
    :try_start_1
    const-string p2, "Failed to set display color_2"

    .line 73
    .line 74
    invoke-static {v0, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_1
    :goto_2
    return-void
.end method
