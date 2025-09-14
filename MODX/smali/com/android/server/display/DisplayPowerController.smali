.class public final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/DisplayPowerControllerInterface;


# static fields
.field public static final BRIGHTNESS_RANGE_BOUNDARIES:[F

.field public static final BRIGHTNESS_RANGE_INDEX:[I

.field public static final COLOR_FADE_DEFAULT_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public static final COLOR_FADE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final DEBUG:Z

.field public static final DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION:I

.field public static final MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I

.field public static final RATE_FROM_DOZE_TO_ON:F

.field public static final SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

.field public static sLastScreenBrightnessSettingChangedTime:J


# instance fields
.field public defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mActualDisplayState:I

.field public final mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

.field public final mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

.field public final mAnimatorListener:Lcom/android/server/display/DisplayPowerController$2;

.field public final mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

.field public mAppliedForceDimming:Z

.field public mAutoBrightnessEnabled:Z

.field public mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public final mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

.field public mAwakenFromDozingInAutoBrightness:Z

.field public mBatteryLevelCritical:Z

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field public mBootCompleted:Z

.field public mBrightnessAnimationConsumerInvoked:Z

.field public final mBrightnessAnimationEndRunnable:Lcom/android/server/display/DisplayPowerController$3;

.field public final mBrightnessBucketsInDozeConfig:Z

.field public final mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

.field public mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

.field public mBrightnessRampDecreaseMaxTimeIdleMillis:J

.field public mBrightnessRampDecreaseMaxTimeMillis:J

.field public mBrightnessRampIncreaseMaxTimeIdleMillis:J

.field public mBrightnessRampIncreaseMaxTimeMillis:J

.field public mBrightnessRampRateFastDecrease:F

.field public mBrightnessRampRateFastIncrease:F

.field public mBrightnessRampRateHdrDecrease:F

.field public mBrightnessRampRateHdrIncrease:F

.field public mBrightnessRampRateSlowDecrease:F

.field public mBrightnessRampRateSlowDecreaseIdle:F

.field public mBrightnessRampRateSlowIncrease:F

.field public mBrightnessRampRateSlowIncreaseIdle:F

.field public final mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

.field final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

.field public final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field public final mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

.field public mClampedMaxBrightness:F

.field public final mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

.field public final mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

.field public final mColorFadeEnabled:Z

.field public final mColorFadeFadesConfig:Z

.field public mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field public mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayBlanksAfterDozeConfig:Z

.field public final mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

.field public final mDisplayBrightnessFollowers:Landroid/util/SparseArray;

.field public mDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayId:I

.field public mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

.field public final mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

.field public mDisplayReadyLocked:Z

.field public final mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

.field public mDisplayStatsId:I

.field public final mDozeScaleFactor:F

.field public mDozing:Z

.field public mDualScreenPolicy:I

.field public mDualScreenPolicyChanged:Z

.field public final mEarlyWakeUpEnabled:Z

.field public final mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

.field public final mExtraDimStrength:I

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mFollowerRampSpeed:F

.field public mFollowerRampSpeedAtHbm:F

.field public mForceDimSettingEnabled:Z

.field public mForceSlowChange:Z

.field public mFreezeBrightnessMode:Z

.field public mFreezeBrightnessModeSelector:I

.field public final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field public mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

.field public mInitialAutoBrightnessUpdated:Z

.field public final mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

.field public final mIsCoverDisplay:Z

.field public mIsDisplayInternal:Z

.field public mIsEnabled:Z

.field public mIsInTransition:Z

.field public mIsOutdoorModeEnabled:Z

.field public final mIsSupportedAodMode:Z

.field public mLastAmbientLux:F

.field public mLastAutomaticScreenBrightness:F

.field public mLastBatteryLevelCriticalTime:J

.field public final mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mLastCoverClosedState:Z

.field public mLastNotifiedBrightness:F

.field public mLastOriginalTarget:F

.field public mLastScreenBrightnessSettingBeforeForceDim:F

.field public mLastStatsBrightness:F

.field public mLcdFlashModeEnabled:Z

.field public mLeadDisplayId:I

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLock:Ljava/lang/Object;

.field public final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field public final mMoreFastRampRate:F

.field public mNeedPrepareColorFade:Z

.field public mNitsRange:[F

.field public final mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

.field public final mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

.field public final mOnBrightnessModeChangeRunnable:Ljava/lang/Runnable;

.field public mPassRampAnimation:Z

.field public mPendingEarlyWakeUpRequestLocked:Z

.field public mPendingForceSlowChangeLocked:Z

.field public mPendingRequestChangedLocked:Z

.field public mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPendingScreenOff:Z

.field public mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

.field public mPendingScreenOnByAodReady:Z

.field public mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field public mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

.field public mPendingTransitionOffInDualCase:Z

.field public mPendingUpdatePowerStateLocked:Z

.field public final mPowerHistorian:Lcom/android/server/power/PowerHistorian;

.field public mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPowerState:Lcom/android/server/display/DisplayPowerState;

.field public mPrevScreenBrightness:F

.field public final mRampAnimatorListener:Lcom/android/server/display/DisplayPowerController$4;

.field public final mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

.field public mReportedScreenStateToPolicy:I

.field public mResetBrightnessConfiguration:Z

.field public final mScreenBrightnessDimConfig:F

.field public final mScreenBrightnessDozeConfig:F

.field public final mScreenBrightnessMinimumDimAmount:F

.field public final mScreenBrightnessModeSettingName:Ljava/lang/String;

.field public mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

.field public final mScreenExtendedBrightnessRangeMaximum:F

.field public mScreenOffBlockStartRealTime:J

.field public mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

.field public mScreenOnBlockByDisplayOffloadStartRealTime:J

.field public mScreenOnBlockStartRealTime:J

.field public mScreenTurningOnWasBlockedByDisplayOffload:Z

.field public mSeamlessAodReady:Z

.field public final mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field public final mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

.field public mStopped:Z

.field public final mTag:Ljava/lang/String;

.field public final mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mThermalBrightnessThrottlingDataId:Ljava/lang/String;

.field public mUniqueDisplayId:Ljava/lang/String;

.field public mUseSoftwareAutoBrightnessConfig:Z

.field public mWaitingAutoBrightnessFromDoze:Z

.field public final mWakelockController:Lcom/android/server/display/WakelockController;

.field public final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public static -$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    .line 6
    move-result v1

    .line 7
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iput v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 12
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 15
    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->updatePendingAutoBrightnessAdjustments()V

    .line 18
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 20
    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->updateGameAutoBrightnessLock()V

    .line 23
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "auto_dim_screen"

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mForceDimSettingEnabled:Z

    .line 42
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 44
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPrevScreenBrightness:F

    .line 50
    const-string v0, " sb: %.3f abAdj: %.3f sbLock: %s fd: %s"

    .line 52
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 54
    iget-object v3, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 56
    monitor-enter v3

    .line 57
    :try_start_1
    iget v1, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 59
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 66
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getPendingAutoBrightnessAdjustment()F

    .line 69
    move-result v2

    .line 70
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 76
    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isGameAutoBrightnessLocked()Z

    .line 79
    move-result v3

    .line 80
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    move-result-object v3

    .line 84
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mForceDimSettingEnabled:Z

    .line 86
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    move-result-object v4

    .line 90
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 100
    const-string v2, "[api] handleSettingsChange:"

    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 112
    return-void

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw p0

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "DisplayPowerController2"

    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 9
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

    .line 12
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 14
    const v1, 0x3eb33333    # 0.35f

    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    const v3, 0x3ee66666    # 0.45f

    .line 22
    const v4, 0x3e3851ec    # 0.18f

    .line 25
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 28
    sput-object v0, Lcom/android/server/display/DisplayPowerController;->COLOR_FADE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 30
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 32
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 35
    sput-object v0, Lcom/android/server/display/DisplayPowerController;->COLOR_FADE_DEFAULT_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 37
    const/4 v0, 0x0

    .line 38
    const/16 v1, 0x26

    .line 40
    new-array v2, v1, [F

    .line 42
    fill-array-data v2, :array_0

    .line 45
    sput-object v2, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    .line 47
    new-array v1, v1, [I

    .line 49
    fill-array-data v1, :array_1

    .line 52
    sput-object v1, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_INDEX:[I

    .line 54
    const-wide/16 v1, -0x1

    .line 56
    sput-wide v1, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    .line 58
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FULLSCREEN_AOD:Z

    .line 60
    if-eqz v1, :cond_0

    .line 62
    const v0, 0x3cf5c28f    # 0.03f

    .line 65
    :cond_0
    sput v0, Lcom/android/server/display/DisplayPowerController;->RATE_FROM_DOZE_TO_ON:F

    .line 67
    const/16 v0, 0xb4

    .line 69
    sput v0, Lcom/android/server/display/DisplayPowerController;->DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION:I

    .line 71
    const v0, 0xea60

    .line 74
    sput v0, Lcom/android/server/display/DisplayPowerController;->MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I

    .line 76
    return-void

    .line 77
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
        0x42200000    # 40.0f
        0x42480000    # 50.0f
        0x42700000    # 60.0f
        0x428c0000    # 70.0f
        0x42a00000    # 80.0f
        0x42b40000    # 90.0f
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x43960000    # 300.0f
        0x43c80000    # 400.0f
        0x43fa0000    # 500.0f
        0x44160000    # 600.0f
        0x442f0000    # 700.0f
        0x44480000    # 800.0f
        0x44610000    # 900.0f
        0x447a0000    # 1000.0f
        0x44960000    # 1200.0f
        0x44af0000    # 1400.0f
        0x44c80000    # 1600.0f
        0x44e10000    # 1800.0f
        0x44fa0000    # 2000.0f
        0x450ca000    # 2250.0f
        0x451c4000    # 2500.0f
        0x452be000    # 2750.0f
        0x453b8000    # 3000.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v15, p1

    .line 5
    move-object/from16 v14, p6

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v13, Ljava/lang/Object;

    .line 12
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 17
    const/4 v1, -0x1

    .line 18
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 20
    new-instance v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 22
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v3, Landroid/util/MutableFloat;

    .line 27
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 29
    invoke-direct {v3, v4}, Landroid/util/MutableFloat;-><init>(F)V

    .line 32
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 34
    new-instance v3, Landroid/util/MutableFloat;

    .line 36
    invoke-direct {v3, v4}, Landroid/util/MutableFloat;-><init>(F)V

    .line 39
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 41
    new-instance v3, Landroid/util/MutableFloat;

    .line 43
    invoke-direct {v3, v4}, Landroid/util/MutableFloat;-><init>(F)V

    .line 46
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 48
    new-instance v3, Landroid/util/MutableFloat;

    .line 50
    invoke-direct {v3, v4}, Landroid/util/MutableFloat;-><init>(F)V

    .line 53
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 55
    new-instance v3, Landroid/util/MutableInt;

    .line 57
    const/4 v12, 0x0

    .line 58
    invoke-direct {v3, v12}, Landroid/util/MutableInt;-><init>(I)V

    .line 61
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    .line 63
    new-instance v3, Landroid/util/MutableFloat;

    .line 65
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 67
    invoke-direct {v3, v5}, Landroid/util/MutableFloat;-><init>(F)V

    .line 70
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    .line 72
    new-instance v3, Landroid/util/MutableInt;

    .line 74
    invoke-direct {v3, v12}, Landroid/util/MutableInt;-><init>(I)V

    .line 77
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 79
    new-instance v3, Landroid/util/MutableBoolean;

    .line 81
    invoke-direct {v3, v12}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 84
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->isAnimating:Landroid/util/MutableBoolean;

    .line 86
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 88
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 90
    new-instance v2, Lcom/android/server/display/brightness/BrightnessReason;

    .line 92
    invoke-direct {v2}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    .line 95
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 97
    new-instance v2, Lcom/android/server/display/brightness/BrightnessReason;

    .line 99
    invoke-direct {v2}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    .line 102
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 104
    const/4 v2, 0x0

    .line 105
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 107
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    .line 109
    const-class v3, Lcom/android/server/display/brightness/BrightnessEvent;

    .line 111
    const/16 v5, 0x14

    .line 113
    invoke-direct {v2, v3, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 116
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 118
    new-instance v2, Landroid/util/SparseArray;

    .line 120
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 123
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    .line 125
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 127
    const-string/jumbo v2, "screen_brightness_mode"

    .line 130
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 132
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 134
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 136
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 138
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    .line 140
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 142
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 144
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    .line 146
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    .line 148
    iput v12, v0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 150
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:F

    .line 152
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mExtraDimStrength:I

    .line 154
    sget-object v1, Lcom/android/server/power/PowerHistorian;->INSTANCE:Lcom/android/server/power/PowerHistorian;

    .line 156
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 158
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mPrevScreenBrightness:F

    .line 160
    new-instance v1, Lcom/android/server/display/DisplayPowerController$2;

    .line 162
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 165
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Lcom/android/server/display/DisplayPowerController$2;

    .line 167
    new-instance v1, Lcom/android/server/display/DisplayPowerController$3;

    .line 169
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 172
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationEndRunnable:Lcom/android/server/display/DisplayPowerController$3;

    .line 174
    new-instance v1, Lcom/android/server/display/DisplayPowerController$4;

    .line 176
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 179
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/DisplayPowerController$4;

    .line 181
    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    .line 183
    const/4 v2, 0x0

    .line 184
    invoke-direct {v1, v0, v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 187
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    .line 189
    move-object/from16 v11, p12

    .line 191
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 193
    new-instance v1, Lcom/android/server/display/DisplayPowerController$Injector;

    .line 195
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController$Injector;-><init>()V

    .line 198
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    .line 200
    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 202
    const/4 v2, 0x1

    .line 203
    invoke-direct {v1, v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;-><init>(I)V

    .line 206
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 208
    iput-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 210
    iget v10, v14, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 212
    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 214
    move-object/from16 v2, p4

    .line 216
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 218
    new-instance v1, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 223
    move-result-object v3

    .line 224
    invoke-direct {v1, v0, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    .line 227
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 229
    iget-object v3, v14, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 231
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 234
    move-result-object v3

    .line 235
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 237
    iget-boolean v3, v14, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 239
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 241
    iget-boolean v3, v14, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 243
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 245
    iget-object v3, v14, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 247
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 250
    move-result-object v3

    .line 251
    iget v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 253
    const/4 v9, 0x1

    .line 254
    if-ne v3, v9, :cond_0

    .line 256
    move v3, v9

    .line 257
    goto :goto_0

    .line 258
    :cond_0
    move v3, v12

    .line 259
    :goto_0
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 261
    new-instance v8, Lcom/android/server/display/WakelockController;

    .line 263
    move-object/from16 v3, p2

    .line 265
    invoke-direct {v8, v10, v3}, Lcom/android/server/display/WakelockController;-><init>(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    .line 268
    iput-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 270
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 272
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 275
    move-result-object v6

    .line 276
    new-instance v7, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    .line 278
    const/4 v3, 0x2

    .line 279
    invoke-direct {v7, v0, v3}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 282
    new-instance v4, Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 284
    move-object v3, v4

    .line 285
    move-object v12, v4

    .line 286
    move-object v4, v8

    .line 287
    move-object/from16 v17, v8

    .line 289
    move v8, v10

    .line 290
    move-object/from16 v18, v13

    .line 292
    move v13, v9

    .line 293
    move-object/from16 v9, p4

    .line 295
    invoke-direct/range {v3 .. v9}, Lcom/android/server/display/DisplayPowerProximityStateController;-><init>(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;ILandroid/hardware/SensorManager;)V

    .line 298
    iput-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 300
    new-instance v3, Lcom/android/server/display/state/DisplayStateController;

    .line 302
    invoke-direct {v3, v12, v10}, Lcom/android/server/display/state/DisplayStateController;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;I)V

    .line 305
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 307
    const-string v3, "DisplayPowerController2["

    .line 309
    const-string v4, "]"

    .line 311
    invoke-static {v10, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    move-result-object v12

    .line 315
    iput-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 317
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 320
    move-result-object v3

    .line 321
    iget-object v3, v3, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 323
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 325
    iget-object v3, v14, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 327
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 329
    iget-object v3, v3, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 331
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 333
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 336
    move-result v3

    .line 337
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 339
    new-instance v3, Lcom/android/server/display/brightness/BrightnessEvent;

    .line 341
    invoke-direct {v3, v10}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    .line 344
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 346
    new-instance v3, Lcom/android/server/display/brightness/BrightnessEvent;

    .line 348
    invoke-direct {v3, v10}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    .line 351
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 353
    const/4 v9, 0x0

    .line 354
    if-eqz v10, :cond_2

    .line 356
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 358
    if-eqz v3, :cond_1

    .line 360
    if-ne v10, v13, :cond_1

    .line 362
    goto :goto_1

    .line 363
    :cond_1
    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 365
    goto :goto_2

    .line 366
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    .line 369
    move-result-object v3

    .line 370
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 372
    :goto_2
    new-instance v3, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 374
    invoke-direct {v3, v0, v1}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V

    .line 377
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 379
    const-class v3, Lcom/android/server/policy/WindowManagerPolicy;

    .line 381
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 384
    move-result-object v3

    .line 385
    check-cast v3, Lcom/android/server/policy/WindowManagerPolicy;

    .line 387
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 389
    const-class v3, Lcom/samsung/android/aod/AODManagerInternal;

    .line 391
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 394
    move-result-object v3

    .line 395
    check-cast v3, Lcom/samsung/android/aod/AODManagerInternal;

    .line 397
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    .line 399
    move-object/from16 v8, p5

    .line 401
    iput-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 403
    iput-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 405
    move-object/from16 v3, p9

    .line 407
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 409
    if-nez v10, :cond_3

    .line 411
    move-object/from16 v3, p14

    .line 413
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

    .line 415
    :cond_3
    const-class v3, Landroid/os/PowerManager;

    .line 417
    invoke-virtual {v15, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 420
    move-result-object v3

    .line 421
    check-cast v3, Landroid/os/PowerManager;

    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 426
    move-result-object v7

    .line 427
    const/4 v4, 0x4

    .line 428
    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    .line 431
    move-result v4

    .line 432
    invoke-static {v4}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    .line 435
    move-result v4

    .line 436
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 444
    move-result-object v4

    .line 445
    const v5, 0x1130007

    .line 448
    invoke-virtual {v4, v5, v13, v13}, Landroid/content/res/Resources;->getFraction(III)F

    .line 451
    move-result v4

    .line 452
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    .line 454
    new-instance v6, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    .line 456
    const/4 v4, 0x3

    .line 457
    invoke-direct {v6, v0, v4}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 460
    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    .line 463
    move-result v3

    .line 464
    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    .line 467
    move-result v3

    .line 468
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 470
    const v4, 0x105010c

    .line 473
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getFloat(I)F

    .line 476
    move-result v4

    .line 477
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMinimumDimAmount:F

    .line 479
    sget v5, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    .line 481
    iput v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    .line 483
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 485
    if-eqz v4, :cond_4

    .line 487
    if-ne v10, v13, :cond_4

    .line 489
    move v4, v13

    .line 490
    goto :goto_3

    .line 491
    :cond_4
    const/4 v4, 0x0

    .line 492
    :goto_3
    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    .line 494
    if-eqz v4, :cond_5

    .line 496
    const-string/jumbo v4, "sub_screen_brightness_mode"

    .line 499
    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 501
    :cond_5
    iput v5, v0, Lcom/android/server/display/DisplayPowerController;->mMoreFastRampRate:F

    .line 503
    const v4, 0x3e99999a    # 0.3f

    .line 506
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrIncrease:F

    .line 508
    const v4, 0x3f666666    # 0.9f

    .line 511
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrDecrease:F

    .line 513
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 515
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 518
    move-result-object v4

    .line 519
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 521
    iget-object v13, v9, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 523
    if-eqz v4, :cond_6

    .line 525
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 528
    move-result-object v4

    .line 529
    move-object/from16 v19, v4

    .line 531
    goto :goto_4

    .line 532
    :cond_6
    const/16 v19, 0x0

    .line 534
    :goto_4
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 537
    move-result-object v4

    .line 538
    move-object/from16 v20, v1

    .line 540
    const-class v1, Landroid/os/PowerManager;

    .line 542
    invoke-virtual {v15, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 545
    move-result-object v1

    .line 546
    check-cast v1, Landroid/os/PowerManager;

    .line 548
    move-object/from16 v21, v12

    .line 550
    const/4 v12, 0x0

    .line 551
    invoke-virtual {v1, v12}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    .line 554
    move-result v1

    .line 555
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 558
    move-result v16

    .line 559
    iget v3, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 561
    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 563
    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;

    .line 565
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 568
    new-instance v22, Lcom/android/server/display/HighBrightnessModeController;

    .line 570
    new-instance v23, Lcom/android/server/display/HighBrightnessModeController$Injector;

    .line 572
    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    .line 575
    iget-object v9, v9, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 577
    move-object/from16 p14, v20

    .line 579
    move-object/from16 v20, v1

    .line 581
    move-object/from16 v1, v22

    .line 583
    move-object/from16 v2, v23

    .line 585
    move/from16 v23, v3

    .line 587
    move-object/from16 v3, p14

    .line 589
    move/from16 v24, v4

    .line 591
    move/from16 v4, v23

    .line 593
    move/from16 v23, v5

    .line 595
    move/from16 v5, v24

    .line 597
    move-object/from16 p9, v6

    .line 599
    move-object v6, v13

    .line 600
    move-object v13, v7

    .line 601
    move-object v7, v9

    .line 602
    move/from16 v8, v16

    .line 604
    const/4 v15, 0x0

    .line 605
    move/from16 v9, v23

    .line 607
    move/from16 p2, v10

    .line 609
    move-object/from16 v10, v19

    .line 611
    move-object/from16 v11, v20

    .line 613
    move v15, v12

    .line 614
    move-object/from16 v12, p9

    .line 616
    move-object/from16 v26, v13

    .line 618
    move-object/from16 v25, v18

    .line 620
    move-object/from16 v13, p10

    .line 622
    move-object v15, v14

    .line 623
    move-object/from16 v14, p1

    .line 625
    invoke-direct/range {v1 .. v14}, Lcom/android/server/display/HighBrightnessModeController;-><init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V

    .line 628
    iget-object v1, v15, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 630
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 633
    move-result-object v1

    .line 634
    new-instance v10, Lcom/android/server/display/BrightnessThrottler;

    .line 636
    new-instance v5, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    .line 638
    const/4 v2, 0x1

    .line 639
    invoke-direct {v5, v0, v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 642
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 644
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 647
    move-result-object v2

    .line 648
    iget-object v7, v2, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 650
    new-instance v2, Lcom/android/server/display/BrightnessThrottler$Injector;

    .line 652
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 655
    iget-object v8, v1, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 657
    iget-object v9, v1, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 659
    move-object v1, v10

    .line 660
    move-object/from16 v3, p14

    .line 662
    move-object/from16 v4, p14

    .line 664
    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/BrightnessThrottler;-><init>(Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/server/display/config/SensorData;)V

    .line 667
    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 669
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 671
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 673
    iget-object v10, v1, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 675
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 678
    move-result-object v11

    .line 679
    new-instance v1, Lcom/android/server/display/BrightnessRangeController;

    .line 681
    new-instance v7, Lcom/android/server/display/NormalBrightnessModeController;

    .line 683
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 686
    new-instance v2, Ljava/util/HashMap;

    .line 688
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 691
    iput-object v2, v7, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    .line 693
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 696
    iput v2, v7, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    .line 698
    const/4 v2, 0x0

    .line 699
    iput-boolean v2, v7, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    .line 701
    const/high16 v2, 0x3f800000    # 1.0f

    .line 703
    iput v2, v7, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    .line 705
    new-instance v8, Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 707
    new-instance v2, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;

    .line 709
    move-object/from16 v12, p9

    .line 711
    invoke-direct {v2, v12}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    .line 714
    new-instance v3, Landroid/os/Handler;

    .line 716
    invoke-virtual/range {p14 .. p14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 719
    move-result-object v4

    .line 720
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 723
    new-instance v4, Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;

    .line 725
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 728
    invoke-direct {v8, v2, v3, v4}, Lcom/android/server/display/brightness/clamper/HdrClamper;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;)V

    .line 731
    move-object v3, v1

    .line 732
    move-object/from16 v4, v22

    .line 734
    move-object v5, v12

    .line 735
    move-object/from16 v9, p12

    .line 737
    invoke-direct/range {v3 .. v11}, Lcom/android/server/display/BrightnessRangeController;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/NormalBrightnessModeController;Lcom/android/server/display/brightness/clamper/HdrClamper;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V

    .line 740
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 742
    new-instance v9, Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 744
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 747
    move-result-object v1

    .line 748
    iget v4, v1, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 750
    new-instance v6, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    .line 752
    const/4 v1, 0x4

    .line 753
    invoke-direct {v6, v0, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 756
    new-instance v7, Landroid/os/HandlerExecutor;

    .line 758
    move-object/from16 v10, p14

    .line 760
    invoke-direct {v7, v10}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 763
    move-object v1, v9

    .line 764
    move-object/from16 v2, p1

    .line 766
    move/from16 v3, p2

    .line 768
    move-object/from16 v5, p8

    .line 770
    move-object/from16 v8, p12

    .line 772
    invoke-direct/range {v1 .. v8}, Lcom/android/server/display/brightness/DisplayBrightnessController;-><init>(Landroid/content/Context;IFLcom/android/server/display/BrightnessSetting;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;Landroid/os/HandlerExecutor;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 775
    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 777
    new-instance v4, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;

    .line 779
    invoke-direct {v4, v12}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    .line 782
    new-instance v5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 784
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 786
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 788
    iget-object v3, v15, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 790
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 792
    invoke-direct {v5, v1, v2, v3, v6}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 795
    new-instance v11, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 797
    const/4 v2, 0x0

    .line 798
    move-object v1, v11

    .line 799
    move-object v3, v10

    .line 800
    move-object/from16 v6, p1

    .line 802
    move-object/from16 v7, p12

    .line 804
    move-object/from16 v8, p4

    .line 806
    invoke-direct/range {v1 .. v8}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;)V

    .line 809
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 811
    invoke-virtual {v9}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    .line 814
    move-result v1

    .line 815
    const/4 v2, 0x0

    .line 816
    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    .line 819
    iget-object v1, v9, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 821
    iget-object v1, v1, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 823
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 825
    move-object/from16 v3, v26

    .line 827
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 830
    move-object/from16 v4, p3

    .line 832
    move-object v5, v2

    .line 833
    move-object/from16 v2, p1

    .line 835
    invoke-virtual {v0, v2, v4}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 838
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 840
    if-eqz v4, :cond_7

    .line 842
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 844
    if-eqz v4, :cond_7

    .line 846
    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 848
    new-instance v5, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 850
    invoke-direct {v5, v2, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessMappingStrategy;)V

    .line 853
    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 855
    goto :goto_5

    .line 856
    :cond_7
    move-object/from16 v4, p7

    .line 858
    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 860
    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 862
    :goto_5
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 865
    move-result v4

    .line 866
    const/4 v5, 0x1

    .line 867
    xor-int/2addr v4, v5

    .line 868
    if-eqz v4, :cond_8

    .line 870
    const v4, 0x1110146

    .line 873
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 876
    move-result v4

    .line 877
    if-nez v4, :cond_8

    .line 879
    move v12, v5

    .line 880
    goto :goto_6

    .line 881
    :cond_8
    const/4 v12, 0x0

    .line 882
    :goto_6
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 884
    const v4, 0x1110034

    .line 887
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 890
    move-result v4

    .line 891
    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 893
    const v4, 0x1110144

    .line 896
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 899
    move-result v4

    .line 900
    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 902
    const v4, 0x1110145

    .line 905
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 908
    move-result v3

    .line 909
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 911
    move/from16 v3, p11

    .line 913
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    .line 915
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 917
    if-eqz v3, :cond_9

    .line 919
    new-instance v3, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    .line 921
    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 924
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    .line 926
    new-instance v3, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    .line 928
    const/4 v4, 0x5

    .line 929
    invoke-direct {v3, v0, v4}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 932
    invoke-virtual {v10, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 935
    :cond_9
    move-object/from16 v3, p13

    .line 937
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessModeChangeRunnable:Ljava/lang/Runnable;

    .line 939
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 941
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpEnabled:Z

    .line 943
    if-eqz v3, :cond_a

    .line 945
    new-instance v3, Lcom/android/server/display/DisplayPowerController$4;

    .line 947
    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 950
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 952
    new-instance v6, Lcom/android/server/display/EarlyWakeUpManager;

    .line 954
    move-object/from16 p6, v6

    .line 956
    move-object/from16 p7, v21

    .line 958
    move/from16 p8, p2

    .line 960
    move-object/from16 p9, v3

    .line 962
    move-object/from16 p10, p5

    .line 964
    move-object/from16 p11, v4

    .line 966
    move-object/from16 p12, v17

    .line 968
    invoke-direct/range {p6 .. p12}, Lcom/android/server/display/EarlyWakeUpManager;-><init>(Ljava/lang/String;ILcom/android/server/display/DisplayPowerController$4;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/AutomaticBrightnessController;Lcom/android/server/display/WakelockController;)V

    .line 971
    iput-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    .line 973
    :cond_a
    move/from16 v3, p2

    .line 975
    if-nez v3, :cond_b

    .line 977
    new-instance v4, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 979
    move-object/from16 v6, v25

    .line 981
    invoke-direct {v4, v2, v6, v10}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V

    .line 984
    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 986
    new-instance v6, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;

    .line 988
    invoke-direct {v6, v4, v10}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;-><init>(Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V

    .line 991
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 994
    move-result-object v7

    .line 995
    new-instance v8, Landroid/content/IntentFilter;

    .line 997
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1000
    const-string v9, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 1002
    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v9, "package"

    .line 1008
    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1011
    new-instance v9, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;

    .line 1013
    invoke-direct {v9, v4, v7, v6, v8}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;Landroid/content/ContentResolver;Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;Landroid/content/IntentFilter;)V

    .line 1016
    invoke-virtual {v10, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1019
    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->handleSettingsChangedLocked()V

    .line 1022
    :cond_b
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    .line 1024
    if-eqz v4, :cond_c

    .line 1026
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 1028
    if-eqz v4, :cond_c

    .line 1030
    move v12, v5

    .line 1031
    goto :goto_7

    .line 1032
    :cond_c
    const/4 v12, 0x0

    .line 1033
    :goto_7
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    .line 1035
    if-eqz v12, :cond_d

    .line 1037
    new-instance v4, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    .line 1039
    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 1042
    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    .line 1044
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1047
    move-result-object v2

    .line 1048
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 1050
    const/4 v6, -0x2

    .line 1051
    const/4 v7, 0x0

    .line 1052
    invoke-static {v2, v4, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 1055
    move-result v2

    .line 1056
    if-ne v2, v5, :cond_e

    .line 1058
    move v12, v5

    .line 1059
    goto :goto_8

    .line 1060
    :cond_e
    move v12, v7

    .line 1061
    :goto_8
    invoke-virtual {v1, v12}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setUseAutoBrightness(Z)V

    .line 1064
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1066
    const-string v2, "Create new DPC instance, mDisplayId="

    .line 1068
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1074
    const-string v2, " AutomaticBrightnessController="

    .line 1076
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1081
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1084
    const-string v2, " defaultModeBrightnessMapper="

    .line 1086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 1091
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1094
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1097
    move-result-object v0

    .line 1098
    move-object/from16 v1, v21

    .line 1100
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void
.end method

.method public static getDynamicRampRate(FFFFII)F
    .locals 2

    .line 1
    int-to-double v0, p4

    .line 2
    div-float/2addr p1, p0

    .line 3
    div-float/2addr p2, p3

    .line 4
    mul-float/2addr p2, p1

    .line 5
    float-to-double p0, p2

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    .line 9
    move-result-wide p0

    .line 10
    div-double/2addr v0, p0

    .line 11
    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 16
    mul-double/2addr v0, p0

    .line 17
    int-to-double p0, p5

    .line 18
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    .line 21
    move-result-wide p0

    .line 22
    const-wide/16 p2, 0x0

    .line 24
    cmpl-double p2, p0, p2

    .line 26
    if-lez p2, :cond_0

    .line 28
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 30
    div-double/2addr p2, p0

    .line 31
    double-to-float p0, p2

    .line 32
    const/high16 p1, 0x447a0000    # 1000.0f

    .line 34
    mul-float/2addr p0, p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 38
    :goto_0
    return p0
.end method

.method public static logDisplayPolicyChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/metrics/LogMaker;

    .line 3
    const/16 v1, 0x6a0

    .line 5
    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 8
    const/4 v1, 0x6

    .line 9
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 12
    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 15
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final addBrightnessWeights(FFFF)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 3
    if-eqz p0, :cond_1

    .line 5
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "addBrightnessWeightDirectly: l:"

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, " b:"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, " d:"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, " c:"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p4

    .line 45
    invoke-static {v0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 50
    invoke-virtual {p4, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    .line 53
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 55
    invoke-virtual {p4}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessSpline()Landroid/util/Spline;

    .line 58
    move-result-object v4

    .line 59
    iput-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    .line 61
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget p4, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    .line 66
    if-nez p4, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    .line 70
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    .line 78
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 80
    invoke-virtual {v0, p4, v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(ILjava/util/Map;)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 83
    move-result-object v0

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    move v1, p1

    .line 88
    move v2, p2

    .line 89
    move v3, p3

    .line 90
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->log(FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_1

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    .line 97
    goto :goto_2

    .line 98
    :goto_1
    monitor-exit p0

    .line 99
    throw p1

    .line 100
    :cond_1
    :goto_2
    return-void
.end method

.method public final animateScreenBrightness(FFFZF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget v0, v0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    const-string v3, "Animating brightness: target="

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    cmpl-float v3, p1, p2

    .line 26
    const-string v4, ""

    .line 28
    if-eqz v3, :cond_1

    .line 30
    invoke-static {p2}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    const-string v5, ", sdrTarget="

    .line 36
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v3, v4

    .line 42
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 48
    move-result-object v3

    .line 49
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    const-string v5, ", rate=%.3f"

    .line 55
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    if-eq v0, v1, :cond_2

    .line 64
    const-string v3, ", DR="

    .line 66
    invoke-static {v0, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move-object v0, v4

    .line 72
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {p5}, Ljava/lang/Float;->isNaN(F)Z

    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_3

    .line 81
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    move-result-object v0

    .line 85
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    const-string v3, ", rateAtHbm=%.3f"

    .line 91
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 95
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v0, ", reason="

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 105
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->changesToString()Ljava/lang/String;

    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v2

    .line 116
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 118
    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 123
    iget v4, v0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 125
    iget v5, v2, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 127
    const/4 v6, 0x0

    .line 128
    const/4 v7, 0x6

    .line 129
    if-eq v4, v5, :cond_5

    .line 131
    if-eq v4, v7, :cond_4

    .line 133
    if-ne v5, v7, :cond_5

    .line 135
    :cond_4
    move v4, v1

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    move v4, v6

    .line 138
    :goto_3
    if-eqz v4, :cond_6

    .line 140
    goto :goto_4

    .line 141
    :cond_6
    iget v4, v0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 143
    iget v5, v2, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 145
    if-eq v4, v5, :cond_7

    .line 147
    const/16 v4, 0x70

    .line 149
    invoke-virtual {v0, v4}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    .line 152
    move-result v5

    .line 153
    invoke-virtual {v2, v4}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    .line 156
    move-result v2

    .line 157
    if-eq v5, v2, :cond_7

    .line 159
    :goto_4
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->changesToString()Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    new-instance v4, Lcom/android/server/power/PowerHistorian$MessageRecord;

    .line 170
    invoke-direct {v4, v0}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x2

    .line 174
    invoke-virtual {v2, v0, v4}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 177
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 179
    iget-object v2, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 181
    invoke-virtual {v2, p1, p3, p5, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTarget(FFFZ)Z

    .line 184
    move-result v2

    .line 185
    iget-object v4, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    .line 187
    invoke-virtual {v4, p2, p3, p5, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTarget(FFFZ)Z

    .line 190
    move-result p2

    .line 191
    or-int/2addr p2, v2

    .line 192
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 195
    move-result p3

    .line 196
    iget-boolean p4, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    .line 198
    if-eq p3, p4, :cond_a

    .line 200
    const/4 p5, 0x0

    .line 201
    iget-object v2, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAnimationCallback:Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    .line 203
    if-eqz p3, :cond_8

    .line 205
    iput-boolean v1, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    .line 207
    iget-object p3, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 209
    invoke-virtual {p3, v1, v2, p5}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 212
    goto :goto_5

    .line 213
    :cond_8
    if-eqz p4, :cond_a

    .line 215
    iget-object p3, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/DisplayPowerController$4;

    .line 217
    if-eqz p3, :cond_9

    .line 219
    invoke-virtual {p3}, Lcom/android/server/display/DisplayPowerController$4;->onAnimationEnd()V

    .line 222
    :cond_9
    iget-object p3, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 224
    invoke-virtual {p3, v1, v2, p5}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 227
    iput-boolean v6, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    .line 229
    :cond_a
    :goto_5
    if-eqz p2, :cond_c

    .line 231
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 233
    if-eqz p2, :cond_b

    .line 235
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

    .line 237
    if-eqz p2, :cond_b

    .line 239
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 241
    invoke-virtual {p2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 244
    move-result p2

    .line 245
    if-eqz p2, :cond_b

    .line 247
    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationConsumerInvoked:Z

    .line 249
    if-nez p2, :cond_b

    .line 251
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 253
    invoke-virtual {p2, v7}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 256
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationConsumerInvoked:Z

    .line 258
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

    .line 260
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 262
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 265
    :cond_b
    float-to-int p2, p1

    .line 266
    const-wide/32 p3, 0x20000

    .line 269
    const-string p5, "TargetScreenBrightness"

    .line 271
    invoke-static {p3, p4, p5, p2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 274
    const-string/jumbo p2, "debug.tracing.screen_brightness"

    .line 277
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 280
    move-result-object p3

    .line 281
    :try_start_0
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_6

    .line 285
    :catch_0
    move-exception p2

    .line 286
    const-string p4, "Failed to set a system property: key=debug.tracing.screen_brightness value="

    .line 288
    const-string p5, " "

    .line 290
    invoke-static {p4, p3, p5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    move-result-object p3

    .line 294
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 297
    move-result-object p2

    .line 298
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object p2

    .line 305
    invoke-static {v3, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    .line 311
    :cond_c
    return-void
.end method

.method public final animateScreenStateChange(IIZ)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "animateScreenStateChange: target="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", mIsEnabled="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 31
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x2

    .line 35
    const/4 v2, 0x0

    .line 36
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 38
    if-eqz v3, :cond_3

    .line 40
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 42
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isStarted()Z

    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_0

    .line 48
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 50
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isStarted()Z

    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_3

    .line 56
    :cond_0
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    .line 58
    if-eqz v4, :cond_1

    .line 60
    return-void

    .line 61
    :cond_1
    if-eq p1, v0, :cond_2

    .line 63
    return-void

    .line 64
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 66
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isStarted()Z

    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_3

    .line 74
    const-string v4, "animateScreenStateChange: mColorFadeOffAnimator.cancel()"

    .line 76
    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 81
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 84
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 86
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 88
    const/4 v6, 0x1

    .line 89
    if-eqz v4, :cond_7

    .line 91
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 93
    iget v4, v4, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 95
    invoke-static {v4}, Landroid/view/Display;->isDozeState(I)Z

    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_7

    .line 101
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_7

    .line 107
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 109
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 111
    if-eqz v5, :cond_4

    .line 113
    move v8, v0

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    move v8, v2

    .line 116
    :goto_0
    invoke-virtual {v4, v7, v8}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 119
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 121
    if-eqz v4, :cond_5

    .line 123
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->end()V

    .line 126
    :cond_5
    if-eq p1, v6, :cond_6

    .line 128
    move v4, v6

    .line 129
    goto :goto_1

    .line 130
    :cond_6
    move v4, v2

    .line 131
    :goto_1
    invoke-virtual {p0, v6, p2, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 134
    :cond_7
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 136
    if-eqz v4, :cond_8

    .line 138
    if-eq p1, v6, :cond_8

    .line 140
    invoke-virtual {p0, v6, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 143
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 145
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 147
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 149
    if-eqz v4, :cond_8

    .line 151
    invoke-virtual {v4}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 154
    :cond_8
    const/high16 v4, 0x3f800000    # 1.0f

    .line 156
    const/4 v7, 0x0

    .line 157
    const/4 v8, 0x4

    .line 158
    const/4 v9, 0x3

    .line 159
    if-ne p1, v0, :cond_f

    .line 161
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    .line 163
    if-eqz p1, :cond_9

    .line 165
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_DISABLE_CLOCK_TRANSITION:Z

    .line 167
    if-eqz p1, :cond_9

    .line 169
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 171
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 173
    if-ne p1, v8, :cond_9

    .line 175
    invoke-virtual {p0, v9, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 178
    :cond_9
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    .line 180
    if-eqz p1, :cond_b

    .line 182
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 184
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    .line 186
    const/16 p3, 0xc

    .line 188
    if-ne p1, p3, :cond_b

    .line 190
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 192
    iget p3, p1, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 194
    cmpl-float p3, p3, v7

    .line 196
    if-nez p3, :cond_a

    .line 198
    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {p1, p3, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_a

    .line 206
    const-string/jumbo p1, "draw ColorFade due to unfolding"

    .line 209
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 214
    invoke-virtual {p1, v7}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 217
    :cond_a
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    .line 219
    :cond_b
    invoke-virtual {p0, v0, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 222
    move-result p1

    .line 223
    if-nez p1, :cond_c

    .line 225
    return-void

    .line 226
    :cond_c
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 228
    if-eqz p1, :cond_e

    .line 230
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 232
    invoke-virtual {p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_e

    .line 238
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 240
    iget-boolean p1, p1, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 242
    if-nez p1, :cond_e

    .line 244
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 246
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 248
    if-ne p1, v0, :cond_e

    .line 250
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 252
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 254
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_e

    .line 260
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 262
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 264
    if-nez p1, :cond_e

    .line 266
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    .line 268
    if-eqz p1, :cond_d

    .line 270
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 272
    if-ne p1, v6, :cond_e

    .line 274
    :cond_d
    const-string p0, "animateScreenStateChange is returned because lux is not yet valid!"

    .line 276
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 280
    :cond_e
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 282
    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 285
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 287
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 290
    goto/16 :goto_4

    .line 292
    :cond_f
    if-ne p1, v9, :cond_12

    .line 294
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 296
    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 299
    move-result p1

    .line 300
    if-eqz p1, :cond_10

    .line 302
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 304
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 306
    if-ne p1, v0, :cond_10

    .line 308
    return-void

    .line 309
    :cond_10
    invoke-virtual {p0, v9, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 312
    move-result p1

    .line 313
    if-nez p1, :cond_11

    .line 315
    return-void

    .line 316
    :cond_11
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 318
    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 321
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 323
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 326
    goto/16 :goto_4

    .line 328
    :cond_12
    if-ne p1, v8, :cond_16

    .line 330
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 332
    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_13

    .line 338
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 340
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 342
    if-eq p1, v8, :cond_13

    .line 344
    return-void

    .line 345
    :cond_13
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 347
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 349
    if-eq p1, v8, :cond_15

    .line 351
    invoke-virtual {p0, v9, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 354
    move-result p1

    .line 355
    if-nez p1, :cond_14

    .line 357
    return-void

    .line 358
    :cond_14
    invoke-virtual {p0, v8, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 361
    :cond_15
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 363
    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 366
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 368
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 371
    goto/16 :goto_4

    .line 373
    :cond_16
    const/4 v1, 0x6

    .line 374
    if-ne p1, v1, :cond_1a

    .line 376
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 378
    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 381
    move-result p1

    .line 382
    if-eqz p1, :cond_17

    .line 384
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 386
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 388
    if-eq p1, v1, :cond_17

    .line 390
    return-void

    .line 391
    :cond_17
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 393
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 395
    if-eq p1, v1, :cond_19

    .line 397
    invoke-virtual {p0, v0, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 400
    move-result p1

    .line 401
    if-nez p1, :cond_18

    .line 403
    return-void

    .line 404
    :cond_18
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 407
    :cond_19
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 409
    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 412
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 414
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 417
    goto :goto_4

    .line 418
    :cond_1a
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 420
    if-nez v3, :cond_1b

    .line 422
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 424
    invoke-virtual {p1, v7}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 427
    :cond_1b
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 429
    iget v1, p1, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 431
    cmpl-float v1, v1, v7

    .line 433
    if-nez v1, :cond_1c

    .line 435
    invoke-virtual {p0, v6, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 438
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 440
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 442
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 444
    if-eqz p0, :cond_21

    .line 446
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 449
    goto :goto_4

    .line 450
    :cond_1c
    if-nez v5, :cond_1e

    .line 452
    sget-boolean p2, Lcom/android/server/display/DisplayPowerController;->SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

    .line 454
    if-eqz p2, :cond_1d

    .line 456
    move p2, v9

    .line 457
    goto :goto_2

    .line 458
    :cond_1d
    move p2, v6

    .line 459
    goto :goto_2

    .line 460
    :cond_1e
    move p2, v0

    .line 461
    :goto_2
    if-eqz p3, :cond_20

    .line 463
    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 465
    invoke-virtual {p1, p3, p2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 468
    move-result p1

    .line 469
    if-eqz p1, :cond_20

    .line 471
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 473
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 475
    if-eq p1, v6, :cond_20

    .line 477
    if-ne p2, v9, :cond_1f

    .line 479
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 481
    sget-object p2, Lcom/android/server/display/DisplayPowerController;->COLOR_FADE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 483
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 486
    goto :goto_3

    .line 487
    :cond_1f
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 489
    sget-object p2, Lcom/android/server/display/DisplayPowerController;->COLOR_FADE_DEFAULT_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 491
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 494
    :goto_3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 496
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 499
    goto :goto_4

    .line 500
    :cond_20
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 502
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 504
    invoke-virtual {p1, p2, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 507
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 509
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    .line 512
    :cond_21
    :goto_4
    return-void
.end method

.method public final clampScreenBrightness(F)F
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 10
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 12
    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 14
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    .line 17
    move-result p0

    .line 18
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final clampScreenBrightnessForFinal(F)F
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 10
    iget-object v0, v0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 12
    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 14
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    .line 16
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final clearAdaptiveBrightnessLongtermModelBuilder()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 3
    if-eqz p0, :cond_2

    .line 5
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 7
    const-string/jumbo v1, "clearBrightnessEvents()"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 18
    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 21
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 23
    const-string/jumbo v2, "brightness_events_sec.xml"

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 47
    const-string v1, "adaptive_brightness_stats_sec.xml"

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    .line 65
    :cond_1
    monitor-exit v0

    .line 66
    goto :goto_2

    .line 67
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0

    .line 69
    :cond_2
    :goto_2
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "  mCachedBrightnessInfo.brightnessMaxReason ="

    .line 7
    const-string v3, "  mCachedBrightnessInfo.hbmTransitionPoint="

    .line 9
    const-string v4, "  mCachedBrightnessInfo.hbmMode="

    .line 11
    const-string v5, "  mCachedBrightnessInfo.brightnessMax="

    .line 13
    const-string v6, "  mCachedBrightnessInfo.brightnessMin="

    .line 15
    const-string v7, "  mCachedBrightnessInfo.adjustedBrightness="

    .line 17
    const-string v8, "  mCachedBrightnessInfo.brightness="

    .line 19
    const-string v9, "  mPendingUpdatePowerStateLocked="

    .line 21
    const-string v10, "  mPendingRequestChangedLocked="

    .line 23
    const-string v11, "  mPendingRequestLocked="

    .line 25
    const-string v12, "  mDisplayReadyLocked="

    .line 27
    const-string v13, "  mDisplayBrightnessFollowers="

    .line 29
    const-string v14, "  mLightSensor="

    .line 31
    const-string v15, "  mLeadDisplayId="

    .line 33
    move-object/from16 v16, v2

    .line 35
    const-string v2, "  mDisplayId="

    .line 37
    move-object/from16 v17, v3

    .line 39
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 41
    monitor-enter v3

    .line 42
    move-object/from16 v18, v4

    .line 44
    :try_start_0
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 46
    move-object/from16 v19, v5

    .line 48
    const-string/jumbo v5, "dump"

    .line 51
    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 57
    const-string v4, "Display Power Controller:"

    .line 59
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 69
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 103
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    .line 120
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 133
    const-string v2, "Display Power Controller Locked State:"

    .line 135
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 145
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 162
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 179
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 210
    const-string v2, "Display Power Controller Configuration:"

    .line 212
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 217
    const-string v3, "  mScreenBrightnessDozeConfig="

    .line 219
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 224
    const-string v4, "  mScreenBrightnessDimConfig="

    .line 226
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    move-result-object v2

    .line 230
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 232
    const-string v4, "  mUseSoftwareAutoBrightnessConfig="

    .line 234
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    move-result-object v2

    .line 238
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const-string v2, "  mSkipScreenOnBrightnessRamp=false"

    .line 252
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 257
    const-string v3, "  mColorFadeFadesConfig="

    .line 259
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 264
    const-string v4, "  mColorFadeEnabled="

    .line 266
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    move-result-object v2

    .line 270
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 272
    const-string v4, "  mIsDisplayInternal="

    .line 274
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    move-result-object v2

    .line 278
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 280
    invoke-static {v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 283
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 285
    monitor-enter v2

    .line 286
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 288
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 293
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 295
    iget v4, v4, Landroid/util/MutableFloat;->value:F

    .line 297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    .line 309
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 314
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 316
    iget v4, v4, Landroid/util/MutableFloat;->value:F

    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    .line 330
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 335
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 337
    iget v4, v4, Landroid/util/MutableFloat;->value:F

    .line 339
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    .line 351
    move-object/from16 v4, v19

    .line 353
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 358
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 360
    iget v4, v4, Landroid/util/MutableFloat;->value:F

    .line 362
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object v3

    .line 369
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    .line 374
    move-object/from16 v4, v18

    .line 376
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 381
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    .line 383
    iget v4, v4, Landroid/util/MutableInt;->value:I

    .line 385
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    .line 397
    move-object/from16 v4, v17

    .line 399
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 404
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    .line 406
    iget v4, v4, Landroid/util/MutableFloat;->value:F

    .line 408
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    .line 420
    move-object/from16 v4, v16

    .line 422
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 427
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 429
    iget v4, v4, Landroid/util/MutableInt;->value:I

    .line 431
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    move-result-object v3

    .line 438
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    .line 444
    const-string v3, "  mDisplayBlanksAfterDozeConfig="

    .line 446
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 451
    const-string v4, "  mBrightnessBucketsInDozeConfig="

    .line 453
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    move-result-object v2

    .line 457
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 459
    const-string v4, "  mDozeScaleFactor="

    .line 461
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    move-result-object v2

    .line 465
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    move-result-object v2

    .line 474
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    const-string v2, "  --SEC_PMS"

    .line 479
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    .line 484
    const-string v3, "  AUTO_BRIGHTNESS_TYPE="

    .line 486
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    sget v3, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    .line 491
    const-string v4, "  USE_SEC_LONG_TERM_MODEL="

    .line 493
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    move-result-object v2

    .line 497
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 499
    const-string v4, "  USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL="

    .line 501
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    move-result-object v2

    .line 505
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

    .line 507
    const-string v4, "  extraDim mExtraDimStrength= "

    .line 509
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    move-result-object v2

    .line 513
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mExtraDimStrength:I

    .line 515
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    const-string v2, "  extraDim mExtraDimIsActive= false"

    .line 527
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    .line 532
    const-string v3, "  mForceDimSettingEnabled= "

    .line 534
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mForceDimSettingEnabled:Z

    .line 539
    invoke-static {v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 542
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 544
    new-instance v3, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    .line 546
    const/4 v4, 0x0

    .line 547
    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/lang/Object;I)V

    .line 550
    const-wide/16 v0, 0x32

    .line 552
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 555
    return-void

    .line 556
    :catchall_0
    move-exception v0

    .line 557
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 558
    throw v0

    .line 559
    :catchall_1
    move-exception v0

    .line 560
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 561
    throw v0
.end method

.method public final getAmbientBrightnessInfo(F)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-virtual {v1, v0, p1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(Ljava/lang/String;FI)F

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

    .line 19
    invoke-virtual {v2, p1}, Lcom/android/server/display/config/HysteresisLevels;->getDarkeningThreshold(F)F

    .line 22
    move-result v3

    .line 23
    invoke-virtual {v2, p1}, Lcom/android/server/display/config/HysteresisLevels;->getBrighteningThreshold(F)F

    .line 26
    move-result v2

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v5, "getAmbientBrightnessInfo : "

    .line 32
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    const-string v5, "%6d"

    .line 45
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "("

    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 59
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    move-result-object v0

    .line 63
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    const-string v5, "%.2f"

    .line 69
    invoke-static {v1, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, ") "

    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    move-result-object v0

    .line 85
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    const-string v3, "%6.0f"

    .line 91
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v0, " < "

    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 106
    move-result-object p1

    .line 107
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 110
    move-result-object p1

    .line 111
    const-string v5, "%8.1f"

    .line 113
    invoke-static {v1, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 126
    move-result-object p1

    .line 127
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 130
    move-result-object p1

    .line 131
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string p1, " (adj:"

    .line 140
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 145
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    .line 148
    move-result p0

    .line 149
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 152
    move-result-object p0

    .line 153
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 156
    move-result-object p0

    .line 157
    const-string p1, "%+.1f"

    .line 159
    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string p0, ")"

    .line 168
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p0

    .line 175
    return-object p0

    .line 176
    :cond_0
    return-object v0
.end method

.method public final getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 7
    const-string/jumbo v1, "getAmbientBrightnessStats: not supported"

    .line 10
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p0, :cond_1

    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 21
    if-eqz p0, :cond_3

    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    .line 26
    iget-object v2, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v3

    .line 32
    check-cast v2, Ljava/util/HashMap;

    .line 34
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    iget-object v1, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p1

    .line 48
    check-cast v1, Ljava/util/HashMap;

    .line 50
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/util/Collection;

    .line 56
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_2
    monitor-exit p0

    .line 60
    if-eqz v0, :cond_3

    .line 62
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 64
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    .line 70
    throw p1

    .line 71
    :cond_3
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    .line 74
    move-result-object p0

    .line 75
    :goto_0
    return-object p0
.end method

.method public final getBrightnessDynamicRampRatePair(FF)Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 4
    const v2, 0x3b83126f    # 0.004f

    .line 7
    if-gtz v1, :cond_0

    .line 9
    move p1, v2

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 12
    iget-object v1, v1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 14
    iget v1, v1, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 16
    cmpg-float v3, v1, v0

    .line 18
    if-gtz v3, :cond_1

    .line 20
    move v1, v2

    .line 21
    :cond_1
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    .line 23
    cmpg-float v3, p2, v0

    .line 25
    const v4, 0x3f666666    # 0.9f

    .line 28
    if-gtz v3, :cond_2

    .line 30
    move p2, v4

    .line 31
    :cond_2
    cmpg-float v0, v2, v0

    .line 33
    if-gtz v0, :cond_3

    .line 35
    move v2, v4

    .line 36
    :cond_3
    const-string/jumbo v0, "sys.display.transition.weight"

    .line 39
    sget v3, Lcom/android/server/display/DisplayPowerController;->DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION:I

    .line 41
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 44
    move-result v7

    .line 45
    const-string/jumbo v0, "sys.display.transition.weight.hbm"

    .line 48
    const/16 v3, 0xf

    .line 50
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 53
    move-result v0

    .line 54
    cmpg-float v3, p1, v1

    .line 56
    const/high16 v9, 0x7fc00000    # Float.NaN

    .line 58
    if-gez v3, :cond_5

    .line 60
    sget v8, Lcom/android/server/display/DisplayPowerController;->MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I

    .line 62
    move v3, p1

    .line 63
    move v4, v1

    .line 64
    move v5, v2

    .line 65
    move v6, p2

    .line 66
    invoke-static/range {v3 .. v8}, Lcom/android/server/display/DisplayPowerController;->getDynamicRampRate(FFFFII)F

    .line 69
    move-result v10

    .line 70
    const/high16 v3, 0x3f800000    # 1.0f

    .line 72
    cmpl-float v3, v1, v3

    .line 74
    if-lez v3, :cond_4

    .line 76
    const/16 v8, 0x7530

    .line 78
    move v3, p1

    .line 79
    move v4, v1

    .line 80
    move v5, v2

    .line 81
    move v6, p2

    .line 82
    move v7, v0

    .line 83
    invoke-static/range {v3 .. v8}, Lcom/android/server/display/DisplayPowerController;->getDynamicRampRate(FFFFII)F

    .line 86
    move-result v9

    .line 87
    :cond_4
    move p1, v9

    .line 88
    move v9, v10

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    move p1, v9

    .line 91
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 93
    if-eqz p0, :cond_6

    .line 95
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    .line 97
    int-to-float p0, p0

    .line 98
    mul-float/2addr v9, p0

    .line 99
    mul-float/2addr p1, p0

    .line 100
    :cond_6
    new-instance p0, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v9, p0, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;->brightnessRampRateDynamic:F

    .line 107
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;->brightnessRampRateDynamicAtHbm:F

    .line 109
    return-object p0
.end method

.method public final getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 7
    const-string/jumbo v1, "getBrightnessEvents: not supported"

    .line 10
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 15
    if-nez p0, :cond_1

    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 24
    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 33
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p0, :cond_2

    .line 41
    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    filled-new-array {p1}, [I

    .line 49
    move-result-object p0

    .line 50
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    .line 52
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 55
    move v3, v0

    .line 56
    :goto_1
    array-length v4, p0

    .line 57
    const/4 v5, 0x1

    .line 58
    if-ge v3, v4, :cond_5

    .line 60
    aget v4, p0, v3

    .line 62
    if-eqz p2, :cond_4

    .line 64
    if-eq v4, p1, :cond_3

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v5, v0

    .line 68
    :cond_4
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v4

    .line 72
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    .line 84
    array-length p1, v1

    .line 85
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    :goto_3
    array-length p1, v1

    .line 89
    if-ge v0, p1, :cond_8

    .line 91
    aget-object p1, v1, v0

    .line 93
    iget p1, p1, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/lang/Boolean;

    .line 105
    if-eqz p1, :cond_7

    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_6

    .line 113
    aget-object p1, v1, v0

    .line 115
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    goto :goto_4

    .line 119
    :cond_6
    new-instance p1, Landroid/hardware/display/BrightnessChangeEvent;

    .line 121
    aget-object p2, v1, v0

    .line 123
    invoke-direct {p1, p2, v5}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V

    .line 126
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 131
    goto :goto_3

    .line 132
    :cond_8
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    .line 134
    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 137
    return-object p1

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw p0
.end method

.method public final getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v10, Landroid/hardware/display/BrightnessInfo;

    .line 6
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 8
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 10
    iget v2, v1, Landroid/util/MutableFloat;->value:F

    .line 12
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 14
    iget v3, v1, Landroid/util/MutableFloat;->value:F

    .line 16
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 18
    iget v4, v1, Landroid/util/MutableFloat;->value:F

    .line 20
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 22
    iget v5, v1, Landroid/util/MutableFloat;->value:F

    .line 24
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    .line 26
    iget v6, v1, Landroid/util/MutableInt;->value:I

    .line 28
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    .line 30
    iget v7, v1, Landroid/util/MutableFloat;->value:F

    .line 32
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 34
    iget v8, v1, Landroid/util/MutableInt;->value:I

    .line 36
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->isAnimating:Landroid/util/MutableBoolean;

    .line 38
    iget-boolean v9, p0, Landroid/util/MutableBoolean;->value:Z

    .line 40
    move-object v1, v10

    .line 41
    invoke-direct/range {v1 .. v9}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFIZ)V

    .line 44
    monitor-exit v0

    .line 45
    return-object v10

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final getFinalBrightness(FI)F
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 6
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 8
    const/4 v2, 0x0

    .line 9
    cmpl-float v3, v1, v2

    .line 11
    const/high16 v4, 0x3f800000    # 1.0f

    .line 13
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 15
    if-ltz v3, :cond_0

    .line 17
    cmpl-float v3, v1, v4

    .line 19
    if-eqz v3, :cond_0

    .line 21
    mul-float/2addr p1, v1

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    .line 25
    move-result p1

    .line 26
    const/16 v1, 0x10

    .line 28
    invoke-virtual {v5, p1, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 33
    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    .line 35
    const/16 v3, 0x100

    .line 37
    if-eqz v1, :cond_1

    .line 39
    cmpl-float v1, p1, v4

    .line 41
    if-lez v1, :cond_1

    .line 43
    invoke-virtual {v5, v4, v3}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 46
    move p1, v4

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 49
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    .line 51
    cmpl-float v6, v1, v2

    .line 53
    const/16 v7, 0x20

    .line 55
    if-ltz v6, :cond_2

    .line 57
    cmpg-float v6, p1, v1

    .line 59
    if-gez v6, :cond_2

    .line 61
    invoke-virtual {v5, v1, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 64
    move p1, v1

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 67
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    .line 69
    cmpl-float v6, v1, v2

    .line 71
    if-ltz v6, :cond_3

    .line 73
    cmpl-float v6, p1, v1

    .line 75
    if-lez v6, :cond_3

    .line 77
    invoke-virtual {v5, v1, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 80
    move p1, v1

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 83
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    .line 85
    const/4 v6, -0x1

    .line 86
    if-eq v1, v6, :cond_4

    .line 88
    int-to-float v1, v1

    .line 89
    cmpl-float v6, p1, v1

    .line 91
    if-lez v6, :cond_4

    .line 93
    const/16 p1, 0x80

    .line 95
    invoke-virtual {v5, v1, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 98
    move p1, v1

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 101
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_6

    .line 107
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 109
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    .line 111
    cmpl-float v6, v1, v2

    .line 113
    const/16 v7, 0x40

    .line 115
    if-ltz v6, :cond_5

    .line 117
    cmpl-float v6, p1, v1

    .line 119
    if-lez v6, :cond_5

    .line 121
    invoke-virtual {v5, v1, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 124
    move p1, v1

    .line 125
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 127
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    .line 129
    cmpl-float v6, v1, v2

    .line 131
    if-ltz v6, :cond_6

    .line 133
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 135
    if-nez v6, :cond_6

    .line 137
    cmpg-float v6, p1, v1

    .line 139
    if-gez v6, :cond_6

    .line 141
    invoke-virtual {v5, v1, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 144
    move p1, v1

    .line 145
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessMode:Z

    .line 147
    const/4 v6, 0x1

    .line 148
    if-eqz v1, :cond_9

    .line 150
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessModeSelector:I

    .line 152
    const/high16 v7, 0x10000

    .line 154
    if-eq v1, v6, :cond_8

    .line 156
    const/4 v8, 0x2

    .line 157
    if-eq v1, v8, :cond_7

    .line 159
    goto :goto_0

    .line 160
    :cond_7
    cmpg-float v1, p1, v4

    .line 162
    if-gtz v1, :cond_9

    .line 164
    invoke-static {v3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 167
    move-result p1

    .line 168
    invoke-virtual {v5, p1, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 171
    goto :goto_0

    .line 172
    :cond_8
    cmpl-float v1, p1, v4

    .line 174
    if-lez v1, :cond_9

    .line 176
    invoke-virtual {v5, v4, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 179
    move p1, v4

    .line 180
    :cond_9
    :goto_0
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 182
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_a

    .line 188
    invoke-static {p2}, Landroid/view/Display;->isDozeState(I)Z

    .line 191
    move-result p2

    .line 192
    if-eqz p2, :cond_a

    .line 194
    const p2, 0x3ec28f5c    # 0.38f

    .line 197
    cmpl-float v1, p1, p2

    .line 199
    if-lez v1, :cond_a

    .line 201
    const/16 p1, 0x800

    .line 203
    invoke-virtual {v5, p2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 206
    move p1, p2

    .line 207
    :cond_a
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 209
    iget-boolean p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 211
    if-eqz p2, :cond_b

    .line 213
    const/16 p1, 0x400

    .line 215
    invoke-virtual {v5, v2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 218
    goto :goto_1

    .line 219
    :cond_b
    move v2, p1

    .line 220
    :goto_1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 222
    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 224
    if-nez p2, :cond_c

    .line 226
    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    .line 228
    if-eqz p2, :cond_d

    .line 230
    :cond_c
    iget p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 232
    const/4 v1, 0x3

    .line 233
    if-ne p2, v1, :cond_d

    .line 235
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    .line 237
    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    .line 240
    move-result v2

    .line 241
    const/16 p1, 0x200

    .line 243
    invoke-virtual {v5, v2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 246
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 248
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 250
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    .line 252
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 254
    if-eqz p1, :cond_e

    .line 256
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 258
    goto :goto_2

    .line 259
    :cond_d
    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 261
    if-eqz p2, :cond_e

    .line 263
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 265
    if-eqz p1, :cond_e

    .line 267
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 269
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 271
    if-eqz p1, :cond_e

    .line 273
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 275
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 277
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 279
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenCurtainEnabled:Z

    .line 281
    if-eqz p1, :cond_f

    .line 283
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 285
    const/16 p1, 0x31

    .line 287
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 290
    move-result p1

    .line 291
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    .line 294
    move-result p1

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    .line 298
    move-result v2

    .line 299
    const p1, 0x8000

    .line 302
    invoke-virtual {v5, v2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 305
    :cond_f
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastCoverClosedState:Z

    .line 307
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 309
    iget-boolean p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 311
    if-eq p1, p2, :cond_10

    .line 313
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mLastCoverClosedState:Z

    .line 315
    if-nez p2, :cond_10

    .line 317
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 319
    :cond_10
    return v2
.end method

.method public final handleBrightnessModeChange()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x2

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 17
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne v0, v4, :cond_0

    .line 24
    move v2, v4

    .line 25
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setUseAutoBrightness(Z)V

    .line 28
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 31
    move-result v0

    .line 32
    if-eq v3, v0, :cond_2

    .line 34
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 42
    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v2, Lcom/android/server/power/PowerHistorian$MessageRecord;

    .line 51
    const-string v3, "ShortTermModel: reset data, manual"

    .line 53
    invoke-direct {v2, v3}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v3, 0x3

    .line 57
    invoke-virtual {v0, v3, v2}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 60
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 62
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 73
    move-result-wide v2

    .line 74
    sput-wide v2, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    .line 76
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    .line 78
    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 82
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessModeChangeRunnable:Ljava/lang/Runnable;

    .line 84
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    const-string v2, "[api] handleBrightnessModeChange: shouldUseAutoBrightness= "

    .line 91
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 107
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public final initialize(I)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    new-instance v2, Lcom/android/server/display/ColorFade;

    .line 8
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 10
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 16
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 18
    invoke-direct {v2, v4, v3}, Lcom/android/server/display/ColorFade;-><init>(ILandroid/hardware/display/DisplayManagerInternal;)V

    .line 21
    :goto_0
    move-object v5, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v2, Lcom/android/server/display/DisplayPowerState;

    .line 32
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 35
    move-result-object v8

    .line 36
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 38
    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 40
    move-object v3, v2

    .line 41
    move v7, p1

    .line 42
    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;IILjava/util/concurrent/Executor;)V

    .line 45
    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 47
    const/4 p1, 0x0

    .line 48
    if-eqz v1, :cond_1

    .line 50
    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Lcom/android/server/display/DisplayPowerState$1;

    .line 52
    new-array v3, v0, [F

    .line 54
    fill-array-data v3, :array_0

    .line 57
    invoke-static {v2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 60
    move-result-object v2

    .line 61
    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 63
    const-wide/16 v3, 0xa0

    .line 65
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 68
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 70
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Lcom/android/server/display/DisplayPowerController$2;

    .line 72
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 77
    new-array v0, v0, [F

    .line 79
    fill-array-data v0, :array_1

    .line 82
    invoke-static {v2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 88
    const-wide/16 v1, 0x140

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 93
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 95
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 100
    sget-object v1, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

    .line 102
    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

    .line 104
    new-instance v3, Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 106
    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;-><init>(Ljava/lang/Object;Lcom/android/server/display/DisplayPowerState$1;Lcom/android/server/display/DisplayPowerState$1;)V

    .line 109
    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 111
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 113
    const/4 v1, 0x1

    .line 114
    const/4 v2, 0x0

    .line 115
    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_2

    .line 123
    move v0, v1

    .line 124
    goto :goto_2

    .line 125
    :cond_2
    move v0, v2

    .line 126
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 131
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/DisplayPowerController$4;

    .line 133
    iput-object v3, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/DisplayPowerController$4;

    .line 135
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 137
    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    .line 142
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 144
    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    .line 149
    sget-object v0, Lcom/android/server/power/HqmDataDispatcher$HqmDataDispatcherHolder;->INSTANCE:Lcom/android/server/power/HqmDataDispatcher;

    .line 151
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    .line 153
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 155
    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 157
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 159
    invoke-virtual {v1, v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    .line 162
    move-result v0

    .line 163
    cmpl-float p1, v0, p1

    .line 165
    if-ltz p1, :cond_5

    .line 167
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 169
    const-string v3, "Start"

    .line 171
    if-eqz p1, :cond_3

    .line 173
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 175
    if-eqz p1, :cond_5

    .line 177
    const-string v4, "AdaptiveBrightnessLongtermModelBuilder"

    .line 179
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 185
    move-result-object v0

    .line 186
    iget-object p1, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 188
    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 195
    goto :goto_3

    .line 196
    :cond_3
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    sget-boolean v4, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 203
    if-eqz v4, :cond_4

    .line 205
    const-string v4, "BrightnessTracker"

    .line 207
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 213
    move-result v3

    .line 214
    iput v3, p1, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 216
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 219
    move-result-object v0

    .line 220
    iget-object p1, p1, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 222
    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 229
    :cond_5
    :goto_3
    new-instance p1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;

    .line 231
    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 234
    iput-object p1, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 236
    iget-object v0, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 238
    iget-object v1, v0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 240
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_6

    .line 246
    const-string v1, "BrightnessSetting"

    .line 248
    const-string v3, "Duplicate Listener added"

    .line 250
    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_6
    iget-object v0, v0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 255
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 263
    move-result-object p1

    .line 264
    const-string/jumbo v0, "screen_auto_brightness_adj"

    .line 267
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 270
    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 273
    const/4 v3, -0x1

    .line 274
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 277
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 282
    move-result-object p1

    .line 283
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 285
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 292
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 294
    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 296
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 299
    move-result p1

    .line 300
    if-eqz p1, :cond_7

    .line 302
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 307
    move-result-object p1

    .line 308
    const-string/jumbo v0, "screen_brightness_for_als"

    .line 311
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 314
    move-result-object v0

    .line 315
    const/4 v4, -0x2

    .line 316
    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 319
    :cond_7
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 321
    if-eqz p1, :cond_8

    .line 323
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 328
    move-result-object p1

    .line 329
    const-string/jumbo v0, "game_autobrightness_lock"

    .line 332
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 339
    :cond_8
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 344
    move-result-object p1

    .line 345
    const-string v0, "auto_dim_screen"

    .line 347
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 354
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    .line 357
    return-void

    .line 358
    nop

    .line 359
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 367
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final loadBrightnessRampRates()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 3
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 5
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    .line 7
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 9
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    .line 11
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 13
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    .line 15
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 17
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    .line 19
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 21
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    .line 23
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 25
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    .line 27
    iget-wide v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 29
    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    .line 31
    iget-wide v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 33
    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    .line 35
    iget-wide v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 37
    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    .line 39
    iget-wide v0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 41
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    .line 43
    return-void
.end method

.method public final loadNitsRange(Landroid/content/res/Resources;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget-object v2, v1, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNits:[F

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 14
    :goto_0
    if-eqz v2, :cond_2

    .line 16
    if-eqz v1, :cond_1

    .line 18
    iget-object p1, v1, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNits:[F

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object p1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 23
    :goto_1
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 28
    const-string v1, "Screen brightness nits configuration is unavailable; falling back"

    .line 30
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const v0, 0x1070154

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    .line 46
    :goto_2
    return-void
.end method

.method public final logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;F)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 7
    iget v2, v2, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 9
    iget v3, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 11
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 13
    cmpl-float v4, p2, v4

    .line 15
    const/4 v6, 0x1

    .line 16
    if-nez v4, :cond_0

    .line 18
    move/from16 v21, v6

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v21, 0x0

    .line 23
    :goto_0
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 25
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 27
    invoke-virtual {v7, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    .line 30
    move-result v9

    .line 31
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 33
    and-int/lit8 v8, v4, 0x20

    .line 35
    const/high16 v10, -0x40800000    # -1.0f

    .line 37
    if-eqz v8, :cond_1

    .line 39
    iget v8, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 41
    move v13, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v13, v10

    .line 44
    :goto_1
    and-int/2addr v4, v6

    .line 45
    if-eqz v4, :cond_2

    .line 47
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    .line 49
    :goto_2
    move v14, v4

    .line 50
    goto :goto_3

    .line 51
    :cond_2
    const/4 v4, -0x1

    .line 52
    goto :goto_2

    .line 53
    :goto_3
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 55
    if-nez v4, :cond_3

    .line 57
    move v15, v10

    .line 58
    goto :goto_4

    .line 59
    :cond_3
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 61
    invoke-virtual {v7, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    .line 64
    move-result v4

    .line 65
    move v15, v4

    .line 66
    :goto_4
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 68
    const/high16 v8, 0x3f800000    # 1.0f

    .line 70
    cmpl-float v8, v4, v8

    .line 72
    if-nez v8, :cond_4

    .line 74
    move/from16 v16, v10

    .line 76
    goto :goto_5

    .line 77
    :cond_4
    invoke-virtual {v7, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    .line 80
    move-result v4

    .line 81
    move/from16 v16, v4

    .line 83
    :goto_5
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 85
    if-eqz v4, :cond_11

    .line 87
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    .line 89
    invoke-virtual {v7, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    .line 92
    move-result v8

    .line 93
    iget v10, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    .line 95
    iget-object v11, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 97
    iget-boolean v12, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    .line 99
    iget-boolean v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    .line 101
    iget-object v7, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 103
    iget v7, v7, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 105
    packed-switch v7, :pswitch_data_0

    .line 108
    const/16 v19, 0x0

    .line 110
    goto :goto_7

    .line 111
    :pswitch_0
    const/16 v7, 0xa

    .line 113
    :goto_6
    move/from16 v19, v7

    .line 115
    goto :goto_7

    .line 116
    :pswitch_1
    const/16 v7, 0x9

    .line 118
    goto :goto_6

    .line 119
    :pswitch_2
    const/16 v7, 0x8

    .line 121
    goto :goto_6

    .line 122
    :pswitch_3
    const/4 v7, 0x7

    .line 123
    goto :goto_6

    .line 124
    :pswitch_4
    const/4 v7, 0x6

    .line 125
    goto :goto_6

    .line 126
    :pswitch_5
    const/4 v7, 0x5

    .line 127
    goto :goto_6

    .line 128
    :pswitch_6
    const/4 v7, 0x4

    .line 129
    goto :goto_6

    .line 130
    :pswitch_7
    const/4 v7, 0x3

    .line 131
    goto :goto_6

    .line 132
    :pswitch_8
    const/16 v19, 0x2

    .line 134
    goto :goto_7

    .line 135
    :pswitch_9
    move/from16 v19, v6

    .line 137
    :goto_7
    const/4 v7, 0x0

    .line 138
    :goto_8
    sget-object v5, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    .line 140
    array-length v6, v5

    .line 141
    if-ge v7, v6, :cond_6

    .line 143
    aget v5, v5, v7

    .line 145
    cmpg-float v5, v9, v5

    .line 147
    if-gez v5, :cond_5

    .line 149
    sget-object v5, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_INDEX:[I

    .line 151
    aget v5, v5, v7

    .line 153
    :goto_9
    move/from16 v20, v5

    .line 155
    goto :goto_a

    .line 156
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 158
    const/4 v6, 0x1

    .line 159
    goto :goto_8

    .line 160
    :cond_6
    const/16 v5, 0x26

    .line 162
    goto :goto_9

    .line 163
    :goto_a
    iget v5, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 165
    const/4 v6, 0x1

    .line 166
    if-ne v5, v6, :cond_7

    .line 168
    const/4 v6, 0x2

    .line 169
    const/16 v22, 0x1

    .line 171
    goto :goto_b

    .line 172
    :cond_7
    const/4 v6, 0x2

    .line 173
    const/16 v22, 0x0

    .line 175
    :goto_b
    if-ne v5, v6, :cond_8

    .line 177
    const/16 v23, 0x1

    .line 179
    goto :goto_c

    .line 180
    :cond_8
    const/16 v23, 0x0

    .line 182
    :goto_c
    and-int/lit8 v5, v2, 0x2

    .line 184
    if-lez v5, :cond_9

    .line 186
    const/16 v24, 0x1

    .line 188
    goto :goto_d

    .line 189
    :cond_9
    const/16 v24, 0x0

    .line 191
    :goto_d
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 193
    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->getBrightnessMaxReason()I

    .line 196
    move-result v25

    .line 197
    const/4 v0, 0x1

    .line 198
    and-int/2addr v2, v0

    .line 199
    if-lez v2, :cond_a

    .line 201
    move/from16 v26, v0

    .line 203
    goto :goto_e

    .line 204
    :cond_a
    const/16 v26, 0x0

    .line 206
    :goto_e
    iget v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 208
    and-int/2addr v2, v0

    .line 209
    if-eqz v2, :cond_b

    .line 211
    const/16 v27, 0x1

    .line 213
    goto :goto_f

    .line 214
    :cond_b
    const/16 v27, 0x0

    .line 216
    :goto_f
    and-int/lit8 v0, v3, 0x2

    .line 218
    if-lez v0, :cond_c

    .line 220
    const/16 v28, 0x1

    .line 222
    goto :goto_10

    .line 223
    :cond_c
    const/16 v28, 0x0

    .line 225
    :goto_10
    and-int/lit8 v0, v3, 0x4

    .line 227
    if-lez v0, :cond_d

    .line 229
    const/16 v29, 0x1

    .line 231
    goto :goto_11

    .line 232
    :cond_d
    const/16 v29, 0x0

    .line 234
    :goto_11
    and-int/lit8 v0, v3, 0x8

    .line 236
    if-lez v0, :cond_e

    .line 238
    const/16 v30, 0x1

    .line 240
    goto :goto_12

    .line 241
    :cond_e
    const/16 v30, 0x0

    .line 243
    :goto_12
    iget v0, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 245
    const/4 v1, 0x1

    .line 246
    if-ne v0, v1, :cond_f

    .line 248
    move/from16 v31, v1

    .line 250
    goto :goto_13

    .line 251
    :cond_f
    const/16 v31, 0x0

    .line 253
    :goto_13
    and-int/lit8 v0, v3, 0x20

    .line 255
    if-lez v0, :cond_10

    .line 257
    move/from16 v32, v1

    .line 259
    goto :goto_14

    .line 260
    :cond_10
    const/16 v32, 0x0

    .line 262
    :goto_14
    const/16 v7, 0x1ee

    .line 264
    const/16 v18, 0x1

    .line 266
    move/from16 v17, v4

    .line 268
    invoke-static/range {v7 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->write(IFFFLjava/lang/String;ZFIFFZIIIZZZZIZZZZZZZ)V

    .line 271
    :cond_11
    return-void

    .line 272
    nop

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final noteScreenBrightness(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 3
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 5
    if-eqz v0, :cond_2

    .line 7
    :try_start_0
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 9
    if-eqz v2, :cond_0

    .line 11
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 14
    move-result v2

    .line 15
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 17
    invoke-interface {v0, v2, v1, v3}, Lcom/android/internal/app/IBatteryStats;->noteDualScreenBrightness(III)V

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 23
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessIntRangeUserPerceptionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 25
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToIntSetting(Landroid/content/Context;F)I

    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 41
    move-result v0

    .line 42
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 44
    invoke-interface {v2, v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 49
    if-eqz v0, :cond_4

    .line 51
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    .line 53
    if-eqz v0, :cond_4

    .line 55
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    .line 57
    if-eqz v2, :cond_3

    .line 59
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 61
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsFirstDisplay:Z

    .line 63
    xor-int/lit8 v1, p0, 0x1

    .line 65
    :cond_3
    invoke-virtual {v0, p1, v1}, Lcom/android/server/power/HqmDataDispatcher;->noteScreenBrightness(FI)V

    .line 68
    :cond_4
    return-void
.end method

.method public final noteScreenState(II)V
    .locals 9

    .line 1
    const-string/jumbo v0, "noteDualScreenState: State="

    .line 4
    const/16 v1, 0x24d

    .line 6
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 8
    invoke-static {v1, p1, v2, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 11
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 13
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz p2, :cond_3

    .line 18
    :try_start_0
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 20
    if-eqz v3, :cond_2

    .line 22
    sget-boolean p2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 24
    if-eqz p2, :cond_1

    .line 26
    if-nez v1, :cond_0

    .line 28
    iget p2, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 30
    if-eq p2, v2, :cond_3

    .line 32
    :cond_0
    if-ne v1, v2, :cond_1

    .line 34
    iget p2, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 36
    if-nez p2, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, ", dualScreenPolicy="

    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {p2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 72
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 74
    invoke-interface {p2, p1, v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteDualScreenState(III)V

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    :cond_3
    :goto_0
    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 83
    if-eqz p2, :cond_b

    .line 85
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    .line 87
    if-eqz p2, :cond_b

    .line 89
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    .line 91
    if-eqz v0, :cond_4

    .line 93
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 95
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsFirstDisplay:Z

    .line 97
    xor-int/lit8 v1, p0, 0x1

    .line 99
    :cond_4
    if-nez v1, :cond_5

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 104
    if-eqz p0, :cond_b

    .line 106
    if-ne v1, v2, :cond_b

    .line 108
    :goto_1
    invoke-virtual {p2, v1}, Lcom/android/server/power/HqmDataDispatcher;->getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 111
    move-result-object p0

    .line 112
    iget v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    .line 114
    const/4 v4, 0x0

    .line 115
    const/4 v5, 0x2

    .line 116
    if-ne v3, v5, :cond_6

    .line 118
    move v3, v2

    .line 119
    goto :goto_2

    .line 120
    :cond_6
    move v3, v4

    .line 121
    :goto_2
    if-ne p1, v5, :cond_7

    .line 123
    goto :goto_3

    .line 124
    :cond_7
    move v2, v4

    .line 125
    :goto_3
    iget-object v6, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 127
    if-nez v3, :cond_8

    .line 129
    if-eqz v2, :cond_8

    .line 131
    iget-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    .line 133
    const-wide/16 v7, 0x1

    .line 135
    add-long/2addr v2, v7

    .line 136
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    .line 138
    invoke-virtual {v6}, Lcom/android/server/power/HqmDataDispatcher$Timer;->start()V

    .line 141
    goto :goto_4

    .line 142
    :cond_8
    if-eqz v3, :cond_a

    .line 144
    if-nez v2, :cond_a

    .line 146
    iget-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    .line 148
    long-to-float v2, v2

    .line 149
    invoke-virtual {v6}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    .line 152
    move-result v3

    .line 153
    add-float/2addr v3, v2

    .line 154
    float-to-long v2, v3

    .line 155
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    .line 157
    iget v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 159
    const/4 v3, -0x1

    .line 160
    if-eq v2, v3, :cond_9

    .line 162
    iget-object v6, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    .line 164
    aget-wide v7, v6, v2

    .line 166
    long-to-float v7, v7

    .line 167
    iget-object v8, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 169
    aget-object v8, v8, v2

    .line 171
    invoke-virtual {v8}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    .line 174
    move-result v8

    .line 175
    add-float/2addr v8, v7

    .line 176
    float-to-long v7, v8

    .line 177
    aput-wide v7, v6, v2

    .line 179
    iput v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 181
    :cond_9
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    .line 183
    if-eqz v2, :cond_a

    .line 185
    iget-boolean v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 187
    if-eqz v2, :cond_a

    .line 189
    iget-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 191
    long-to-float v2, v2

    .line 192
    iget-object v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 194
    invoke-virtual {v3}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    .line 197
    move-result v3

    .line 198
    add-float/2addr v3, v2

    .line 199
    float-to-long v2, v3

    .line 200
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 202
    iput-boolean v4, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 204
    :cond_a
    :goto_4
    iput p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    .line 206
    if-eqz v0, :cond_b

    .line 208
    if-ne p1, v5, :cond_b

    .line 210
    iget p0, p2, Lcom/android/server/power/HqmDataDispatcher;->mGlobalBrightness:F

    .line 212
    invoke-virtual {p2, p0, v1}, Lcom/android/server/power/HqmDataDispatcher;->noteScreenBrightness(FI)V

    .line 215
    :cond_b
    return-void
.end method

.method public final notifyBrightnessTrackerChanged(FZZZZZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 6
    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    .line 9
    move-result v4

    .line 10
    if-nez p5, :cond_10

    .line 12
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 14
    if-eqz v2, :cond_10

    .line 16
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_10

    .line 22
    if-eqz p4, :cond_10

    .line 24
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 26
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 28
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 30
    if-eqz v2, :cond_0

    .line 32
    if-nez v12, :cond_1

    .line 34
    goto/16 :goto_6

    .line 36
    :cond_0
    if-eqz v3, :cond_10

    .line 38
    :cond_1
    if-eqz p6, :cond_10

    .line 40
    const/4 v2, 0x0

    .line 41
    cmpg-float v5, v4, v2

    .line 43
    if-gez v5, :cond_2

    .line 45
    goto/16 :goto_6

    .line 47
    :cond_2
    const/4 v13, 0x0

    .line 48
    if-eqz p2, :cond_3

    .line 50
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    if-eqz v5, :cond_4

    .line 54
    iget-boolean v5, v5, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 56
    if-eqz v5, :cond_4

    .line 58
    :cond_3
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-boolean v6, v5, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 62
    if-eqz v6, :cond_5

    .line 64
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 66
    if-eqz v6, :cond_5

    .line 68
    iget v5, v5, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 70
    sget v6, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 72
    int-to-float v6, v6

    .line 73
    cmpl-float v5, v5, v6

    .line 75
    if-ltz v5, :cond_5

    .line 77
    :cond_4
    move v14, v13

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    move/from16 v14, p2

    .line 81
    :goto_0
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:F

    .line 83
    invoke-static {v5, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_10

    .line 89
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 91
    iget v6, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 93
    cmpl-float v2, v6, v2

    .line 95
    const/high16 v7, 0x3f800000    # 1.0f

    .line 97
    if-ltz v2, :cond_6

    .line 99
    cmpl-float v2, v6, v7

    .line 101
    if-eqz v2, :cond_6

    .line 103
    goto/16 :goto_6

    .line 105
    :cond_6
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:F

    .line 107
    iget-boolean v1, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 109
    if-eqz v1, :cond_7

    .line 111
    iget v1, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 113
    move v5, v1

    .line 114
    goto :goto_1

    .line 115
    :cond_7
    move v5, v7

    .line 116
    :goto_1
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 118
    const/4 v2, 0x1

    .line 119
    const-string/jumbo v6, "notifyBrightnessChanged(brightness=%f, userInitiated=%b)"

    .line 122
    if-eqz v1, :cond_9

    .line 124
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 126
    iget-object v3, v1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 128
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_8

    .line 134
    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 136
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_8

    .line 142
    move v7, v2

    .line 143
    goto :goto_2

    .line 144
    :cond_8
    move v7, v13

    .line 145
    :goto_2
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 147
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 149
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 151
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessSpline()Landroid/util/Spline;

    .line 154
    move-result-object v11

    .line 155
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 161
    move-result-object v0

    .line 162
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 165
    move-result-object v1

    .line 166
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 169
    move-result-object v0

    .line 170
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    move-result-object v0

    .line 174
    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    .line 176
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;

    .line 181
    iget-object v1, v12, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 189
    move-result-wide v8

    .line 190
    move-object v3, v0

    .line 191
    move/from16 v6, p3

    .line 193
    invoke-direct/range {v3 .. v11}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;-><init>(FFZZJLjava/lang/String;Landroid/util/Spline;)V

    .line 196
    iget-object v1, v12, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 198
    invoke-virtual {v1, v2, v14, v13, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    goto/16 :goto_6

    .line 207
    :cond_9
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 209
    iget-object v7, v1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 211
    invoke-virtual {v7}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    .line 214
    move-result v7

    .line 215
    if-nez v7, :cond_a

    .line 217
    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 219
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_a

    .line 225
    move v7, v2

    .line 226
    goto :goto_3

    .line 227
    :cond_a
    move v7, v13

    .line 228
    :goto_3
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 230
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 232
    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 234
    iget v8, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 236
    new-array v11, v8, [F

    .line 238
    if-nez v8, :cond_b

    .line 240
    goto :goto_4

    .line 241
    :cond_b
    iget v9, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 243
    iget v12, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 245
    if-ge v9, v12, :cond_c

    .line 247
    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 249
    invoke-static {v1, v9, v11, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    goto :goto_4

    .line 253
    :cond_c
    iget-object v8, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 255
    iget v12, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 257
    sub-int/2addr v12, v9

    .line 258
    invoke-static {v8, v9, v11, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget-object v8, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 263
    iget v9, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 265
    iget v12, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 267
    sub-int/2addr v9, v12

    .line 268
    iget v1, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 270
    invoke-static {v8, v13, v11, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    :goto_4
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 275
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 277
    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 279
    new-array v12, v1, [J

    .line 281
    if-nez v1, :cond_d

    .line 283
    goto :goto_5

    .line 284
    :cond_d
    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 286
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 288
    if-ge v8, v9, :cond_e

    .line 290
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 292
    invoke-static {v0, v8, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    goto :goto_5

    .line 296
    :cond_e
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 298
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 300
    sub-int/2addr v9, v8

    .line 301
    invoke-static {v1, v8, v12, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 306
    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 308
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 310
    sub-int/2addr v8, v9

    .line 311
    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 313
    invoke-static {v1, v13, v12, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    :goto_5
    sget-boolean v0, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 318
    if-eqz v0, :cond_f

    .line 320
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 326
    move-result-object v0

    .line 327
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 330
    move-result-object v1

    .line 331
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 334
    move-result-object v0

    .line 335
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 338
    move-result-object v0

    .line 339
    const-string v1, "BrightnessTracker"

    .line 341
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_f
    iget-object v0, v3, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 346
    new-instance v1, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    .line 348
    iget-object v3, v3, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 350
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 356
    move-result-wide v8

    .line 357
    move-object v3, v1

    .line 358
    move/from16 v6, p3

    .line 360
    invoke-direct/range {v3 .. v12}, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;-><init>(FFZZJLjava/lang/String;[F[J)V

    .line 363
    invoke-virtual {v0, v2, v14, v13, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 370
    :cond_10
    :goto_6
    return-void
.end method

.method public final onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;II)V
    .locals 18

    .line 1
    move-object/from16 v15, p0

    .line 3
    move/from16 v0, p2

    .line 5
    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 7
    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 9
    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 11
    if-nez v5, :cond_0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "Display Device is null in DisplayPowerController2 for display: "

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget v0, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    sget v1, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 31
    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 40
    move-result-object v7

    .line 41
    iget-object v9, v5, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 43
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 46
    move-result-object v10

    .line 47
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 50
    move-result-object v1

    .line 51
    iget v12, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 53
    iget v13, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 55
    iget-boolean v2, v0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 57
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 59
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 61
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 66
    move-result-object v1

    .line 67
    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 69
    const/4 v4, 0x1

    .line 70
    if-ne v1, v4, :cond_1

    .line 72
    move v14, v4

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    .line 75
    move v14, v1

    .line 76
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 79
    move-result-object v1

    .line 80
    iget-object v8, v1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 82
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 84
    new-instance v6, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    .line 86
    iget-object v4, v5, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 88
    move-object v0, v6

    .line 89
    move-object/from16 v1, p0

    .line 91
    move-object/from16 v16, v4

    .line 93
    move/from16 v4, p3

    .line 95
    move-object/from16 v17, v6

    .line 97
    move-object/from16 v6, v16

    .line 99
    move-object/from16 v16, v11

    .line 101
    move-object/from16 v11, p1

    .line 103
    move-object/from16 v15, v16

    .line 105
    invoke-direct/range {v0 .. v15}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayPowerController;ZZILcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;IIZLjava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    .line 110
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 118
    move-result-wide v1

    .line 119
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 121
    move-object/from16 v3, v17

    .line 123
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 126
    return-void
.end method

.method public final postBrightnessChangeRunnable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 13
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_0
    return-void
.end method

.method public final putAutoBrightnessTransitionTime(FFF)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 4
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 6
    if-lez v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 10
    iget-object v1, v1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 12
    iget v1, v1, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 14
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    move-result v3

    .line 18
    xor-int/lit8 v3, v3, 0x1

    .line 20
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 25
    if-eqz v3, :cond_2

    .line 27
    const/high16 v3, 0x3f800000    # 1.0f

    .line 29
    cmpl-float v6, v1, v3

    .line 31
    if-lez v6, :cond_0

    .line 33
    cmpg-float v6, p3, v3

    .line 35
    if-gtz v6, :cond_0

    .line 37
    sub-float v0, v1, v3

    .line 39
    sub-float p3, v3, p3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    cmpg-float v3, v3, p3

    .line 44
    if-gez v3, :cond_1

    .line 46
    cmpg-float v3, p3, v1

    .line 48
    if-gez v3, :cond_1

    .line 50
    sub-float/2addr v1, p3

    .line 51
    move p3, v0

    .line 52
    move v0, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v6, "getTransitionTimeWithHbm: rateAtHbm: "

    .line 59
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    const-string v6, " currentBrightness: "

    .line 67
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 73
    const-string v6, " targetBrightness: "

    .line 75
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sub-float/2addr v1, p3

    .line 89
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 92
    move-result p3

    .line 93
    :goto_0
    float-to-double v0, v0

    .line 94
    float-to-double v6, p2

    .line 95
    div-double/2addr v0, v6

    .line 96
    mul-double/2addr v0, v4

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 100
    move-result-wide v0

    .line 101
    long-to-int p2, v0

    .line 102
    float-to-double v0, p3

    .line 103
    float-to-double v6, p1

    .line 104
    div-double/2addr v0, v6

    .line 105
    mul-double/2addr v0, v4

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 109
    move-result-wide v0

    .line 110
    long-to-int p1, v0

    .line 111
    add-int/2addr p2, p1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    sub-float/2addr v1, p3

    .line 114
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 117
    move-result p2

    .line 118
    float-to-double p2, p2

    .line 119
    float-to-double v0, p1

    .line 120
    div-double/2addr p2, v0

    .line 121
    mul-double/2addr p2, v4

    .line 122
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    .line 125
    move-result-wide p1

    .line 126
    long-to-int p2, p1

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    const/4 p2, 0x0

    .line 129
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo p3, "putAutoBrightnessTransitionTime: transitionTime="

    .line 134
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 152
    move-result-object p0

    .line 153
    const-string p1, "auto_brightness_transition_time"

    .line 155
    const/4 p3, -0x2

    .line 156
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 159
    return-void
.end method

.method public final reportStats(F)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 13
    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    .line 15
    if-nez v1, :cond_1

    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    iget v1, v1, Landroid/util/MutableFloat;->value:F

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    cmpl-float v0, p1, v1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    if-lez v0, :cond_2

    .line 30
    move v0, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, v2

    .line 33
    :goto_0
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 35
    cmpl-float v1, v4, v1

    .line 37
    if-lez v1, :cond_3

    .line 39
    move v2, v3

    .line 40
    :cond_3
    if-nez v0, :cond_4

    .line 42
    if-eqz v2, :cond_6

    .line 44
    :cond_4
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 46
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 48
    const/16 v3, 0xb

    .line 50
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    if-eq v0, v2, :cond_5

    .line 55
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 57
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 59
    monitor-enter v1

    .line 60
    const/16 p0, 0x1a1

    .line 62
    :try_start_1
    invoke-static {p0, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIF)V

    .line 65
    monitor-exit v1

    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    throw p0

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 72
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 75
    move-result-object v0

    .line 76
    iput v3, v0, Landroid/os/Message;->what:I

    .line 78
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 81
    move-result p1

    .line 82
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 84
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 86
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 88
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 90
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 98
    move-result-wide v1

    .line 99
    const-wide/16 v3, 0x1f4

    .line 101
    add-long/2addr v1, v3

    .line 102
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 105
    :cond_6
    :goto_1
    return-void

    .line 106
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    throw p0
.end method

.method public final requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "requestPowerState: "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, ", waitForNegativeProximity="

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 38
    const/4 v2, 0x1

    .line 39
    if-eqz v1, :cond_1

    .line 41
    monitor-exit v0

    .line 42
    return v2

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_4

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 47
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    .line 49
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const/4 v4, 0x0

    .line 51
    if-eqz p2, :cond_2

    .line 53
    :try_start_1
    iget-boolean p2, v1, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    .line 55
    if-nez p2, :cond_2

    .line 57
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    .line 59
    monitor-exit v3

    .line 60
    move p2, v2

    .line 61
    goto :goto_0

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    goto :goto_3

    .line 64
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    move p2, v4

    .line 66
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 68
    if-nez v1, :cond_3

    .line 70
    new-instance p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 72
    invoke-direct {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 75
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 77
    :goto_1
    move p2, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_4

    .line 85
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 87
    invoke-virtual {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    :goto_2
    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    .line 93
    if-eqz v1, :cond_5

    .line 95
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 97
    if-nez v1, :cond_5

    .line 99
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 101
    move p2, v2

    .line 102
    :cond_5
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    .line 104
    if-eqz p1, :cond_6

    .line 106
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 108
    if-nez p1, :cond_6

    .line 110
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 112
    move p2, v2

    .line 113
    :cond_6
    if-eqz p2, :cond_7

    .line 115
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 117
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 119
    if-nez p1, :cond_7

    .line 121
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 126
    :cond_7
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 128
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    return p0

    .line 130
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    :try_start_4
    throw p0

    .line 132
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    throw p0
.end method

.method public final restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 15
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 17
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;

    .line 19
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Z)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_0
    :goto_0
    return-void
.end method

.method public final saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z
    .locals 11

    .line 1
    const-string/jumbo v0, "saveBrightnessInfo: brt:"

    .line 4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 6
    monitor-enter v1

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    if-eqz p3, :cond_0

    .line 11
    :try_start_0
    iget v3, p3, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v2

    .line 15
    :goto_0
    if-eqz p3, :cond_1

    .line 17
    iget v2, p3, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 19
    :cond_1
    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 21
    iget-object p3, p3, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 23
    iget p3, p3, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 25
    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    .line 28
    move-result p3

    .line 29
    invoke-static {v2, p3}, Ljava/lang/Math;->max(FF)F

    .line 32
    move-result p3

    .line 33
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 35
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    .line 38
    move-result v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 45
    iget-object v3, v3, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 47
    invoke-static {v3, p1}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    .line 50
    move-result v3

    .line 51
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 53
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 55
    invoke-static {v4, p2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    .line 58
    move-result v4

    .line 59
    or-int/2addr v3, v4

    .line 60
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 62
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 64
    invoke-static {v4, p3}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    .line 67
    move-result v4

    .line 68
    or-int/2addr v3, v4

    .line 69
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 71
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 73
    invoke-static {v4, v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    .line 76
    move-result v4

    .line 77
    or-int/2addr v3, v4

    .line 78
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 80
    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    .line 82
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 84
    iget-object v6, v6, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 86
    iget v7, v6, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 88
    iget v8, v5, Landroid/util/MutableInt;->value:I

    .line 90
    const/4 v9, 0x0

    .line 91
    const/4 v10, 0x1

    .line 92
    if-eq v8, v7, :cond_2

    .line 94
    iput v7, v5, Landroid/util/MutableInt;->value:I

    .line 96
    move v5, v10

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    move v5, v9

    .line 99
    :goto_1
    or-int/2addr v3, v5

    .line 100
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    .line 102
    invoke-virtual {v6}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 105
    move-result v5

    .line 106
    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 108
    if-eqz v5, :cond_3

    .line 110
    iget-object v5, v6, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 112
    iget v5, v5, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move v5, v7

    .line 116
    :goto_2
    invoke-static {v4, v5}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    .line 119
    move-result v4

    .line 120
    or-int/2addr v3, v4

    .line 121
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 123
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 125
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 127
    invoke-virtual {v5}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->getBrightnessMaxReason()I

    .line 130
    move-result v5

    .line 131
    iget v6, v4, Landroid/util/MutableInt;->value:I

    .line 133
    if-eq v6, v5, :cond_4

    .line 135
    iput v5, v4, Landroid/util/MutableInt;->value:I

    .line 137
    move v4, v10

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    move v4, v9

    .line 140
    :goto_3
    or-int/2addr v3, v4

    .line 141
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 143
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->isAnimating:Landroid/util/MutableBoolean;

    .line 145
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 147
    if-eqz v5, :cond_5

    .line 149
    invoke-virtual {v5}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_5

    .line 155
    move v5, v10

    .line 156
    goto :goto_4

    .line 157
    :catchall_0
    move-exception p0

    .line 158
    goto/16 :goto_6

    .line 160
    :cond_5
    move v5, v9

    .line 161
    :goto_4
    iget-boolean v6, v4, Landroid/util/MutableBoolean;->value:Z

    .line 163
    if-eq v6, v5, :cond_6

    .line 165
    iput-boolean v5, v4, Landroid/util/MutableBoolean;->value:Z

    .line 167
    move v4, v10

    .line 168
    goto :goto_5

    .line 169
    :cond_6
    move v4, v9

    .line 170
    :goto_5
    or-int/2addr v3, v4

    .line 171
    if-eqz v3, :cond_9

    .line 173
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 183
    const-string p1, " adjBrt:"

    .line 185
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 191
    const-string p1, " min:"

    .line 193
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 199
    const-string p1, " max:"

    .line 201
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 207
    const-string p1, " hbm:"

    .line 209
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 214
    iget-object p1, p1, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 216
    iget p1, p1, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 218
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const-string p1, " tp:"

    .line 223
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 228
    iget-object p1, p1, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 230
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 233
    move-result p2

    .line 234
    if-eqz p2, :cond_7

    .line 236
    iget-object p1, p1, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 238
    iget v7, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 240
    :cond_7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 243
    const-string p1, " throttler:"

    .line 245
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 250
    iget p1, p1, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 252
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    const-string p1, " isAnimating:"

    .line 257
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 262
    if-eqz p0, :cond_8

    .line 264
    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 267
    move-result p0

    .line 268
    if-eqz p0, :cond_8

    .line 270
    move v9, v10

    .line 271
    :cond_8
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object p0

    .line 278
    invoke-static {v4, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_9
    monitor-exit v1

    .line 282
    return v3

    .line 283
    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    throw p0
.end method

.method public final sendOnStateChangedWithWakelock()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v0, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;I)V

    .line 19
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    :cond_0
    return-void
.end method

.method public final sendUpdatePowerState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final sendUpdatePowerStateLocked()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 12
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 17
    move-result-object v0

    .line 18
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 30
    :cond_0
    return-void
.end method

.method public final setAnimatorRampSpeeds(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 8
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements1:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 10
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 20
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    .line 22
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    .line 24
    iget-object p0, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 26
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    .line 29
    iget-object p0, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    .line 31
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 37
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    .line 39
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    .line 41
    iget-object p0, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 43
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    .line 46
    iget-object p0, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    .line 48
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    .line 51
    :goto_0
    return-void
.end method

.method public final setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setBrightnessConfiguration: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " shouldResetShortTermModel: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, " ("

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const/4 v1, 0x5

    .line 26
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ")"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 44
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-nez p1, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 54
    const/4 v1, 0x4

    .line 55
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 62
    return-void
.end method

.method public final setBrightnessToFollow(FFFZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 3
    invoke-virtual {v0, p3}, Lcom/android/server/display/BrightnessRangeController;->onAmbientLuxChange(F)V

    .line 6
    const/high16 p3, -0x40800000    # -1.0f

    .line 8
    cmpl-float p3, p2, p3

    .line 10
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 12
    if-nez p3, :cond_0

    .line 14
    invoke-virtual {v0, p4, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(ZF)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessFromNits(F)F

    .line 21
    move-result p2

    .line 22
    invoke-static {p2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 25
    move-result p3

    .line 26
    if-eqz p3, :cond_1

    .line 28
    invoke-virtual {v0, p4, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(ZF)V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0, p4, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(ZF)V

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 38
    return-void
.end method

.method public final setFreezeBrightnessMode(Z)I
    .locals 4

    .line 1
    const-string/jumbo v0, "setFreezeBrightnessMode: "

    .line 4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessMode:Z

    .line 9
    if-eq v2, p1, :cond_1

    .line 11
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessMode:Z

    .line 30
    if-eqz p1, :cond_1

    .line 32
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 34
    iget-object p1, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 36
    iget p1, p1, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    cmpg-float p1, p1, v0

    .line 42
    if-gtz p1, :cond_0

    .line 44
    const/4 p1, 0x1

    .line 45
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessModeSelector:I

    .line 47
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 49
    const-string v0, "NON_HBM_FREEZE_MODE"

    .line 51
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 p1, 0x2

    .line 58
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessModeSelector:I

    .line 60
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 62
    const-string v0, "HBM_FREEZE_MODE"

    .line 64
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessMode:Z

    .line 69
    if-eqz p1, :cond_2

    .line 71
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessModeSelector:I

    .line 73
    monitor-exit v1

    .line 74
    return p0

    .line 75
    :cond_2
    monitor-exit v1

    .line 76
    const/4 p0, 0x0

    .line 77
    return p0

    .line 78
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final setRampSpeedToFollower(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mFollowerRampSpeed:F

    .line 3
    iput p2, p0, Lcom/android/server/display/DisplayPowerController;->mFollowerRampSpeedAtHbm:F

    .line 5
    return-void
.end method

.method public final setReportedScreenState(I)V
    .locals 3

    .line 1
    const-wide/32 v0, 0x20000

    .line 4
    const-string v2, "ReportedScreenStateToPolicy"

    .line 6
    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 9
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p1, v0, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 17
    :cond_0
    return-void
.end method

.method public final setScreenState(IIZ)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    if-ne v2, v4, :cond_0

    .line 9
    move v5, v4

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v5, v3

    .line 12
    :goto_0
    const/4 v0, 0x2

    .line 13
    if-ne v2, v0, :cond_1

    .line 15
    move v6, v4

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v6, v3

    .line 18
    :goto_1
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 20
    iget v7, v7, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 22
    if-eq v7, v2, :cond_2

    .line 24
    move v7, v4

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v7, v3

    .line 27
    :goto_2
    const-wide/32 v8, 0x20000

    .line 30
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 32
    if-eqz v6, :cond_5

    .line 34
    if-eqz v7, :cond_5

    .line 36
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 38
    if-nez v11, :cond_5

    .line 40
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 42
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    .line 44
    if-nez v11, :cond_6

    .line 46
    if-nez v6, :cond_3

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 51
    const-string v11, "Screen on blocked by displayoffload"

    .line 53
    invoke-static {v8, v9, v11, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 59
    move-result-wide v12

    .line 60
    iput-wide v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    .line 62
    new-instance v12, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    .line 64
    const/4 v13, 0x1

    .line 65
    invoke-direct {v12, v1, v6, v13}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/lang/Object;I)V

    .line 68
    iput-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    .line 70
    invoke-interface {v6, v12}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->blockScreenOn(Ljava/lang/Runnable;)Z

    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_4

    .line 76
    const/4 v6, 0x0

    .line 77
    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 82
    move-result-wide v12

    .line 83
    iget-wide v14, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    .line 85
    sub-long/2addr v12, v14

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    .line 88
    const-string v14, "Tried blocking screen on for offloading but failed. So, end trace after "

    .line 90
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    const-string v12, " ms."

    .line 98
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 105
    invoke-static {v10, v6}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {v8, v9, v11, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    const-string v6, "Blocking screen on for offloading."

    .line 114
    invoke-static {v10, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    goto :goto_3

    .line 118
    :cond_5
    if-nez v6, :cond_6

    .line 120
    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 122
    if-eqz v6, :cond_6

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    .line 127
    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 129
    :cond_6
    :goto_3
    iget v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 131
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 133
    const/4 v12, 0x3

    .line 134
    const/4 v13, -0x1

    .line 135
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 137
    if-nez v7, :cond_7

    .line 139
    iget v15, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 141
    if-ne v15, v13, :cond_14

    .line 143
    :cond_7
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 145
    iget v15, v15, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 147
    if-eq v15, v12, :cond_9

    .line 149
    const/4 v8, 0x4

    .line 150
    if-ne v15, v8, :cond_8

    .line 152
    goto :goto_4

    .line 153
    :cond_8
    move v8, v3

    .line 154
    goto :goto_5

    .line 155
    :cond_9
    :goto_4
    move v8, v4

    .line 156
    :goto_5
    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    .line 158
    if-eqz v9, :cond_c

    .line 160
    if-eqz v8, :cond_b

    .line 162
    if-ne v2, v0, :cond_b

    .line 164
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    .line 166
    if-nez v8, :cond_b

    .line 168
    const-string/jumbo v0, "setScreenState(): mSeamlessAodReady : false AOD"

    .line 171
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 176
    if-nez v0, :cond_a

    .line 178
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    .line 180
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    .line 182
    invoke-virtual {v0, v2}, Lcom/samsung/android/aod/AODManagerInternal;->screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V

    .line 185
    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 187
    :cond_a
    return v3

    .line 188
    :cond_b
    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    .line 190
    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 192
    :cond_c
    if-eqz v5, :cond_10

    .line 194
    iget-boolean v8, v11, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 196
    if-nez v8, :cond_10

    .line 198
    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 200
    if-eq v8, v0, :cond_e

    .line 202
    if-ne v8, v13, :cond_d

    .line 204
    goto :goto_6

    .line 205
    :cond_d
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 207
    if-eqz v0, :cond_10

    .line 209
    return v3

    .line 210
    :cond_e
    :goto_6
    invoke-virtual {v1, v12}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 213
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 215
    if-nez v0, :cond_f

    .line 217
    const-string v0, "Screen off blocked"

    .line 219
    const-wide/32 v8, 0x20000

    .line 222
    invoke-static {v8, v9, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 225
    new-instance v0, Lcom/android/server/display/DisplayPowerController$4;

    .line 227
    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 230
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 235
    move-result-wide v8

    .line 236
    iput-wide v8, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 238
    const-string v0, "Blocking screen off"

    .line 240
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_f
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurningOff()"

    .line 246
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 251
    move-object v8, v14

    .line 252
    check-cast v8, Lcom/android/server/policy/PhoneWindowManager;

    .line 254
    invoke-virtual {v8, v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 260
    :cond_10
    if-nez p3, :cond_14

    .line 262
    if-eqz v7, :cond_14

    .line 264
    if-eqz v6, :cond_11

    .line 266
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    .line 268
    if-nez v0, :cond_11

    .line 270
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    .line 272
    if-eqz v0, :cond_14

    .line 274
    :cond_11
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 276
    if-nez v0, :cond_14

    .line 278
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    .line 280
    if-nez v0, :cond_14

    .line 282
    const-string v0, "ScreenState"

    .line 284
    const-wide/32 v7, 0x20000

    .line 287
    invoke-static {v7, v8, v0, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 290
    const-string/jumbo v0, "debug.tracing.screen_state"

    .line 293
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 296
    move-result-object v7

    .line 297
    :try_start_0
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_7

    .line 301
    :catch_0
    move-exception v0

    .line 302
    move-object v8, v0

    .line 303
    const-string v0, "Failed to set a system property: key=debug.tracing.screen_state value="

    .line 305
    const-string v9, " "

    .line 307
    invoke-static {v0, v7, v9}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 314
    move-result-object v7

    .line 315
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    move-result-object v0

    .line 322
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_7
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 327
    iget v7, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 329
    if-eq v7, v2, :cond_13

    .line 331
    sget-boolean v7, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 333
    if-eqz v7, :cond_12

    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    .line 337
    const-string/jumbo v8, "setScreenState: state="

    .line 340
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-static/range {p1 .. p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 346
    move-result-object v8

    .line 347
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v8, "; reason="

    .line 352
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-static/range {p2 .. p2}, Landroid/view/Display;->stateReasonToString(I)Ljava/lang/String;

    .line 358
    move-result-object v8

    .line 359
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    move-result-object v7

    .line 366
    const-string v8, "DisplayPowerState"

    .line 368
    invoke-static {v8, v7}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_12
    iput v2, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 373
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 375
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 378
    :cond_13
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    .line 381
    :cond_14
    if-eqz v5, :cond_15

    .line 383
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 385
    if-eqz v0, :cond_15

    .line 387
    iget-boolean v0, v11, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 389
    if-nez v0, :cond_15

    .line 391
    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 397
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurnedOff()"

    .line 400
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 405
    move-object v2, v14

    .line 406
    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    .line 408
    invoke-virtual {v2, v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff(IZ)V

    .line 411
    goto :goto_8

    .line 412
    :cond_15
    if-nez v5, :cond_16

    .line 414
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 416
    if-ne v0, v12, :cond_16

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 421
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurnedOff()(transitional)"

    .line 424
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 429
    move-object v2, v14

    .line 430
    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    .line 432
    invoke-virtual {v2, v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff(IZ)V

    .line 435
    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 438
    :cond_16
    :goto_8
    if-nez v5, :cond_1a

    .line 440
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 442
    if-eqz v0, :cond_17

    .line 444
    if-ne v0, v13, :cond_1a

    .line 446
    :cond_17
    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 449
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 451
    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 453
    const/4 v2, 0x0

    .line 454
    cmpl-float v0, v0, v2

    .line 456
    if-nez v0, :cond_18

    .line 458
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 460
    if-nez v0, :cond_19

    .line 462
    const-string v0, "Screen on blocked"

    .line 464
    const-wide/32 v7, 0x20000

    .line 467
    invoke-static {v7, v8, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 470
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 472
    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 475
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 480
    move-result-wide v7

    .line 481
    iput-wide v7, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 483
    const-string v0, "Blocking screen on until initial contents have been drawn."

    .line 485
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 490
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 496
    move-result-wide v7

    .line 497
    iput-wide v7, v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 499
    goto :goto_9

    .line 500
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 503
    :cond_19
    :goto_9
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurningOn() +"

    .line 506
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 511
    check-cast v14, Lcom/android/server/policy/PhoneWindowManager;

    .line 513
    invoke-virtual {v14, v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(ILcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    .line 516
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurningOn() -"

    .line 519
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_1a
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 524
    if-nez v0, :cond_1b

    .line 526
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    .line 528
    if-nez v0, :cond_1b

    .line 530
    move v3, v4

    .line 531
    :cond_1b
    return v3
.end method

.method public final setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 7
    iget-boolean v2, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    .line 9
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 11
    if-nez v2, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v7, Landroid/util/SparseArray;

    .line 16
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 19
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 21
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const/4 v14, 0x0

    .line 27
    invoke-static {v1, v2, v14}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;I)Lcom/android/server/display/BrightnessMappingStrategy;

    .line 30
    move-result-object v2

    .line 31
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 33
    invoke-virtual {v7, v14, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v2

    .line 40
    const v3, 0x1110176

    .line 43
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x1

    .line 48
    if-eqz v2, :cond_1

    .line 50
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 52
    invoke-static {v1, v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;I)Lcom/android/server/display/BrightnessMappingStrategy;

    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v7, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 61
    :cond_1
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 63
    const/4 v4, 0x2

    .line 64
    invoke-static {v1, v2, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;I)Lcom/android/server/display/BrightnessMappingStrategy;

    .line 67
    move-result-object v2

    .line 68
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 70
    iget-object v5, v15, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 72
    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_2

    .line 78
    if-eqz v2, :cond_2

    .line 80
    invoke-virtual {v7, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    :cond_2
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 85
    if-eqz v2, :cond_3

    .line 87
    iget-object v2, v2, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 94
    iget-object v4, v2, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 96
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    iget-object v2, v2, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-virtual {v2, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    .line 105
    move-result v2

    .line 106
    move/from16 v33, v2

    .line 108
    move/from16 v32, v4

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    const/high16 v2, -0x40800000    # -1.0f

    .line 113
    move/from16 v32, v2

    .line 115
    move/from16 v33, v32

    .line 117
    :goto_0
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 119
    if-eqz v2, :cond_e

    .line 121
    instance-of v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    .line 123
    if-eqz v2, :cond_4

    .line 125
    sput-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    sput-boolean v14, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 130
    :goto_1
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 132
    iget-object v12, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 134
    iget-object v8, v2, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 136
    iget-object v6, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 138
    iget-object v5, v2, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 140
    iget-object v4, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/SecHysteresisLevels;

    .line 142
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/SecHysteresisLevels;

    .line 144
    iget-wide v9, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 146
    move-wide/from16 v16, v9

    .line 148
    iget-wide v9, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 150
    move-wide/from16 v18, v9

    .line 152
    iget-wide v9, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    .line 154
    move-wide/from16 v20, v9

    .line 156
    iget-wide v9, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 161
    move-result-object v2

    .line 162
    const v11, 0x111003c

    .line 165
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 168
    move-result v22

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    move-result-object v2

    .line 173
    const v11, 0x10e00cc

    .line 176
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 179
    move-result v23

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 183
    move-result-object v1

    .line 184
    const v2, 0x10e003a

    .line 187
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 190
    move-result v2

    .line 191
    const/16 v1, 0x32

    .line 193
    if-le v1, v2, :cond_5

    .line 195
    const-string v1, "Expected config_autoBrightnessInitialLightSensorRate (50) to be less than or equal to config_autoBrightnessLightSensorRate ("

    .line 197
    const-string v11, ")."

    .line 199
    invoke-static {v2, v1, v11}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    move-result-object v1

    .line 203
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 205
    invoke-static {v11, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_5
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 210
    if-eqz v1, :cond_6

    .line 212
    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    .line 214
    if-eqz v11, :cond_7

    .line 216
    :cond_6
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 218
    const v13, 0x10041

    .line 221
    invoke-virtual {v11, v13}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 224
    move-result-object v11

    .line 225
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 227
    :cond_7
    if-nez v1, :cond_8

    .line 229
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 231
    if-nez v11, :cond_8

    .line 233
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 235
    const v13, 0x10044

    .line 238
    invoke-virtual {v11, v13}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 241
    move-result-object v11

    .line 242
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 244
    :cond_8
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 246
    if-eqz v11, :cond_9

    .line 248
    if-nez v1, :cond_9

    .line 250
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 252
    iget-object v11, v11, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 254
    const/4 v13, 0x5

    .line 255
    invoke-virtual {v11, v13, v14, v14, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 262
    :cond_9
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 264
    if-eqz v1, :cond_a

    .line 266
    invoke-virtual {v1, v14}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    .line 269
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 272
    move-result-object v24

    .line 273
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 275
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 277
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 279
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 281
    move-object/from16 v26, v13

    .line 283
    iget v13, v14, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    .line 285
    iget v14, v14, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 287
    move/from16 v27, v13

    .line 289
    new-instance v13, Lcom/android/server/display/AutomaticBrightnessController;

    .line 291
    new-instance v30, Lcom/android/server/display/AutomaticBrightnessController$Injector;

    .line 293
    invoke-direct/range {v30 .. v30}, Ljava/lang/Object;-><init>()V

    .line 296
    move-object/from16 v31, v1

    .line 298
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    .line 300
    move-object/from16 v35, v11

    .line 302
    move v11, v1

    .line 303
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 305
    move-object/from16 v28, v1

    .line 307
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 309
    move-object/from16 v29, v1

    .line 311
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 313
    move-object/from16 v34, v1

    .line 315
    const/4 v1, 0x0

    .line 316
    move-wide/from16 v36, v9

    .line 318
    move v9, v1

    .line 319
    const/high16 v10, 0x3f800000    # 1.0f

    .line 321
    const/16 v1, 0x32

    .line 323
    move-object/from16 p1, v13

    .line 325
    move/from16 v38, v27

    .line 327
    move v13, v1

    .line 328
    move-object/from16 v27, v31

    .line 330
    move-object/from16 v1, p1

    .line 332
    move/from16 v31, v2

    .line 334
    move-object/from16 v2, v30

    .line 336
    move-object/from16 v39, v3

    .line 338
    move-object/from16 v3, p0

    .line 340
    move-object/from16 v40, v4

    .line 342
    move-object/from16 v4, v24

    .line 344
    move-object/from16 v30, v5

    .line 346
    move-object/from16 v5, v27

    .line 348
    move-object/from16 v27, v6

    .line 350
    move-object/from16 v6, v26

    .line 352
    move-object/from16 v24, v8

    .line 354
    move/from16 v8, v23

    .line 356
    move-object/from16 v23, v12

    .line 358
    move/from16 v12, v31

    .line 360
    move/from16 v31, v14

    .line 362
    move-object/from16 v41, v15

    .line 364
    move-wide/from16 v14, v16

    .line 366
    move-wide/from16 v16, v18

    .line 368
    move-wide/from16 v18, v20

    .line 370
    move-wide/from16 v20, v36

    .line 372
    move-object/from16 v25, v27

    .line 374
    move-object/from16 v26, v30

    .line 376
    move-object/from16 v27, v35

    .line 378
    move/from16 v30, v38

    .line 380
    move-object/from16 v35, v40

    .line 382
    move-object/from16 v36, v39

    .line 384
    invoke-direct/range {v1 .. v36}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Injector;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/util/SparseArray;IFFFIIJJJJZLcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/BrightnessThrottler;IIFFLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;)V

    .line 387
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 389
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 391
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 393
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 395
    iget-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 397
    iget v8, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 399
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 401
    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 404
    iget-object v1, v2, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 406
    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v2, v2, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 409
    iget-object v2, v2, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    .line 411
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    if-eqz v2, :cond_b

    .line 414
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 416
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->setupAutoBrightnessFallbackSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V

    .line 419
    :cond_b
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    .line 421
    const-class v2, Lcom/android/server/display/brightness/BrightnessEvent;

    .line 423
    const/16 v3, 0x64

    .line 425
    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 428
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 430
    move-object/from16 v1, v41

    .line 432
    iget-object v1, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 434
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_f

    .line 440
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 442
    const/4 v2, 0x0

    .line 443
    const/4 v3, 0x0

    .line 444
    if-eqz v1, :cond_c

    .line 446
    invoke-virtual {v1, v3}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 449
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 451
    :cond_c
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 453
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 455
    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    .line 457
    if-nez v4, :cond_d

    .line 459
    :goto_2
    move-object v5, v2

    .line 460
    goto :goto_3

    .line 461
    :cond_d
    iget-object v2, v4, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 463
    iget-object v4, v4, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 465
    invoke-static {v1, v2, v4, v3}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    .line 468
    move-result-object v2

    .line 469
    goto :goto_2

    .line 470
    :goto_3
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 472
    iget-object v8, v1, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    .line 474
    if-eqz v5, :cond_f

    .line 476
    if-eqz v8, :cond_f

    .line 478
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 480
    new-instance v7, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 482
    const/4 v1, 0x0

    .line 483
    invoke-direct {v7, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;-><init>(I)V

    .line 486
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 488
    new-instance v1, Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 490
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 492
    move-object v3, v1

    .line 493
    invoke-direct/range {v3 .. v9}, Lcom/android/server/display/ScreenOffBrightnessSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;[ILcom/android/server/display/BrightnessMappingStrategy;)V

    .line 496
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 498
    goto :goto_4

    .line 499
    :catchall_0
    move-exception v0

    .line 500
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    throw v0

    .line 502
    :cond_e
    move v3, v14

    .line 503
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 505
    :cond_f
    :goto_4
    return-void
.end method

.method public final shouldEnableHdrRampRateCase()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 5
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 7
    iget v2, v0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 9
    if-eq v1, v2, :cond_0

    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    .line 15
    move-result p0

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    .line 19
    move-result v0

    .line 20
    if-eq p0, v0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method public final shouldEnableMoreFastRampRateCase()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 12
    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_3

    .line 18
    :cond_0
    iget v0, v0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 20
    const/4 v2, 0x4

    .line 21
    if-ne v0, v2, :cond_1

    .line 23
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 25
    iget v3, v3, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 27
    if-ne v3, v2, :cond_3

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 31
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 33
    if-eq v0, p0, :cond_2

    .line 35
    const/4 v2, 0x6

    .line 36
    if-eq v0, v2, :cond_3

    .line 38
    if-ne p0, v2, :cond_2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :cond_3
    :goto_0
    return v1
.end method

.method public final unblockScreenOff()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 14
    sub-long/2addr v0, v2

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string v3, "Unblocked screen off after "

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, " ms"

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 36
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string p0, "Screen off blocked"

    .line 41
    const/4 v0, 0x0

    .line 42
    const-wide/32 v1, 0x20000

    .line 45
    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 48
    :cond_0
    return-void
.end method

.method public final unblockScreenOn()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 14
    sub-long/2addr v0, v2

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string v3, "Unblocked screen on after "

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, " ms"

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 36
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-wide/32 v0, 0x20000

    .line 42
    const-string p0, "Screen on blocked"

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v0, v1, p0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 48
    sget-object p0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 56
    move-result-wide v0

    .line 57
    const/4 v3, 0x1

    .line 58
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    .line 60
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 62
    const-wide/16 v5, 0x0

    .line 64
    cmp-long v3, v3, v5

    .line 66
    if-nez v3, :cond_0

    .line 68
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    .line 70
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 72
    :cond_0
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 74
    sub-long/2addr v0, v3

    .line 75
    long-to-int v0, v0

    .line 76
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    .line 78
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    .line 80
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupEnd(Z)V

    .line 85
    :cond_1
    return-void
.end method

.method public final unblockScreenOnByDisplayOffload()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    .line 15
    sub-long/2addr v0, v2

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    const-string v3, "Unblocked screen on for offloading after "

    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    const-string v0, " ms"

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 37
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 p0, 0x0

    .line 41
    const-wide/32 v0, 0x20000

    .line 44
    const-string v2, "Screen on blocked by displayoffload"

    .line 46
    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 49
    return-void
.end method

.method public final updatePowerState()V
    .locals 3

    .line 1
    const-string v0, "DisplayPowerController#updatePowerState"

    .line 3
    const-wide/32 v1, 0x20000

    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerStateInternal()V

    .line 12
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 15
    return-void
.end method

.method public final updatePowerStateInternal()V
    .locals 41

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 2
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->reset()V

    .line 3
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-eqz v2, :cond_0

    .line 5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_5c

    :cond_0
    const/4 v8, 0x0

    .line 6
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 7
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v2, :cond_1

    .line 8
    monitor-exit v1

    return-void

    .line 9
    :cond_1
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v9, 0x1

    const/4 v4, 0x3

    if-nez v3, :cond_2

    .line 10
    new-instance v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v2, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 11
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    .line 12
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 13
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 14
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 15
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 16
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    move v10, v4

    move v3, v9

    goto :goto_0

    .line 17
    :cond_2
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v5, :cond_3

    .line 18
    iget v5, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 19
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 20
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    .line 21
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 22
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 23
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 24
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 25
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 26
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    move v10, v5

    move v3, v8

    goto :goto_0

    .line 27
    :cond_3
    iget v5, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move v10, v5

    move v2, v8

    move v3, v2

    .line 28
    :goto_0
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    xor-int/2addr v5, v9

    .line 29
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v7

    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    iget-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 32
    invoke-virtual {v1, v6, v11, v12}, Lcom/android/server/display/state/DisplayStateController;->updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)Landroid/util/Pair;

    move-result-object v1

    .line 33
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v3, :cond_6

    .line 34
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    if-nez v3, :cond_5

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v8

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v6

    .line 35
    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->initialize(I)V

    .line 36
    :cond_6
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isOffloadDozeOverrideHoldsWakelockEnabled()Z

    move-result v3

    const/4 v11, 0x5

    if-eqz v3, :cond_8

    .line 37
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 38
    iget v3, v3, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v3, v6, :cond_8

    .line 39
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 40
    :try_start_1
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 41
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 42
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_7

    .line 43
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {v3, v11}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    :cond_7
    move v12, v9

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 44
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_8
    move v12, v5

    .line 45
    :goto_3
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpEnabled:Z

    if-eqz v3, :cond_9

    .line 46
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    if-eqz v3, :cond_9

    .line 47
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 48
    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v13

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 49
    invoke-virtual {v14}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximityPositive()Z

    move-result v14

    .line 50
    invoke-virtual {v3, v5, v2, v13, v14}, Lcom/android/server/display/EarlyWakeUpManager;->update(IZZZ)V

    .line 51
    :cond_9
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicyChanged:Z

    if-eqz v2, :cond_b

    .line 52
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v2, :cond_a

    .line 53
    invoke-virtual {v0, v6, v8}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    .line 54
    :cond_a
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicyChanged:Z

    .line 55
    sget-object v2, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->setSkip()V

    .line 56
    :cond_b
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingTransitionOffInDualCase:Z

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    if-eqz v2, :cond_c

    .line 57
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    invoke-virtual {v2}, Lcom/android/server/display/state/DisplayStateController;->setPerformScreenOffTransition()V

    .line 58
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingTransitionOffInDualCase:Z

    .line 59
    :cond_c
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 60
    iget v2, v2, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 61
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 63
    invoke-virtual {v3}, Lcom/android/server/display/state/DisplayStateController;->shouldPerformScreenOffTransition()Z

    move-result v3

    .line 64
    invoke-virtual {v0, v6, v1, v3}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IIZ)V

    .line 65
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 66
    iget v6, v1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 67
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    const/4 v5, 0x7

    if-eqz v1, :cond_f

    .line 68
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v1, :cond_e

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->clearAdaptiveBrightnessLongtermModelBuilder()V

    .line 70
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayPowerController;->restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V

    .line 71
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v1, :cond_d

    .line 72
    const-string v3, "AdaptiveBrightnessLongtermModelBuilder"

    const-string/jumbo v13, "notifyShortTermResetValid()"

    invoke-static {v3, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 75
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 76
    :cond_e
    :goto_4
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    .line 77
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    goto :goto_5

    :cond_f
    move v1, v8

    .line 78
    :goto_5
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 79
    invoke-virtual {v3, v13, v6, v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v3

    .line 80
    iget v13, v3, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 81
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 82
    iget-object v15, v3, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 83
    invoke-virtual {v14, v15}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 84
    iget-boolean v15, v3, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    const/4 v14, 0x4

    if-eq v6, v4, :cond_11

    if-ne v6, v14, :cond_10

    goto :goto_6

    :cond_10
    move/from16 v16, v8

    goto :goto_7

    :cond_11
    :goto_6
    move/from16 v16, v9

    .line 85
    :goto_7
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v14, v9, :cond_12

    move/from16 v18, v9

    goto :goto_8

    :cond_12
    move/from16 v18, v8

    :goto_8
    if-ne v10, v9, :cond_13

    if-ne v14, v4, :cond_13

    .line 86
    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    move-result v14

    if-nez v14, :cond_14

    .line 87
    :cond_13
    invoke-static {v2}, Landroid/view/Display;->isDozeState(I)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-static {v6}, Landroid/view/Display;->isOnState(I)Z

    move-result v14

    if-eqz v14, :cond_15

    :cond_14
    move/from16 v23, v9

    goto :goto_9

    :cond_15
    move/from16 v23, v8

    .line 88
    :goto_9
    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    const/16 v11, 0xe

    if-eqz v14, :cond_17

    .line 89
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_17

    if-nez v16, :cond_16

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-nez v14, :cond_16

    if-eqz v18, :cond_17

    :cond_16
    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 90
    invoke-static {v14}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    move-result v14

    if-nez v14, :cond_17

    .line 91
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 92
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v14, v13, v11}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    :cond_17
    move/from16 v24, v13

    move/from16 v25, v24

    .line 93
    iget v14, v3, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 94
    iget v13, v3, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    .line 95
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 96
    invoke-virtual {v5}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getIsUserSetScreenBrightnessUpdated()Z

    move-result v26

    .line 97
    iget-object v5, v3, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    if-eqz v5, :cond_18

    .line 98
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v11, v5}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 99
    :cond_18
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 100
    invoke-virtual {v5}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozing()Z

    move-result v5

    .line 101
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v11}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v11

    if-nez v11, :cond_1b

    .line 102
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v11, :cond_1b

    .line 103
    iget-boolean v8, v3, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    if-eqz v8, :cond_1a

    .line 104
    iget-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    if-eqz v8, :cond_1a

    if-eq v6, v9, :cond_19

    if-ne v6, v4, :cond_1a

    if-nez v5, :cond_1a

    :cond_19
    iget v8, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    const/4 v4, -0x1

    if-ne v8, v4, :cond_1a

    move v4, v9

    goto :goto_a

    :cond_1a
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v11, v4}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 105
    :cond_1b
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 106
    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isShortTermModelActive()Z

    move-result v8

    .line 107
    iget-boolean v4, v3, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 108
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v11}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v11

    move/from16 v16, v4

    if-nez v11, :cond_20

    .line 109
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v11}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v11

    if-eqz v11, :cond_1d

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v11, :cond_1d

    .line 110
    invoke-virtual {v11}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v11

    if-nez v11, :cond_1d

    .line 111
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    move-result v16

    if-eqz v16, :cond_1c

    const/4 v4, 0x2

    :goto_b
    const/4 v9, 0x0

    goto :goto_c

    :cond_1c
    const/4 v4, 0x0

    goto :goto_b

    :goto_c
    invoke-virtual {v11, v4, v9}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    .line 112
    :cond_1d
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 113
    invoke-virtual {v9}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v16

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 114
    invoke-virtual {v11}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getLastUserSetScreenBrightness()F

    move-result v18

    .line 115
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    move/from16 v29, v12

    .line 116
    iget v12, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    move/from16 v30, v13

    move-object v13, v4

    move/from16 v31, v14

    const/4 v4, 0x4

    move v14, v6

    move/from16 v32, v15

    move v15, v5

    move/from16 v17, v9

    move/from16 v19, v26

    move/from16 v20, v11

    move/from16 v21, v1

    move/from16 v22, v12

    .line 117
    invoke-virtual/range {v13 .. v22}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessState(IZIIFZZZI)V

    .line 118
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 119
    invoke-virtual {v5}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentChanged()Z

    move-result v5

    if-nez v5, :cond_1e

    if-eqz v26, :cond_1f

    :cond_1e
    const/4 v5, 0x1

    goto :goto_d

    :cond_1f
    const/4 v5, 0x0

    :goto_d
    move v9, v5

    goto :goto_e

    :cond_20
    move/from16 v29, v12

    move/from16 v30, v13

    move/from16 v31, v14

    move/from16 v32, v15

    const/4 v4, 0x4

    move/from16 v9, v16

    .line 120
    :goto_e
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 121
    invoke-virtual {v11}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v11

    if-eq v5, v11, :cond_23

    .line 122
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v5}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    .line 123
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v5}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v5

    if-eqz v5, :cond_23

    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-nez v5, :cond_21

    const/4 v5, 0x1

    if-ne v10, v5, :cond_23

    :cond_21
    const/4 v5, 0x0

    .line 124
    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    .line 125
    invoke-static {v2}, Landroid/view/Display;->isDozeState(I)Z

    move-result v5

    if-nez v5, :cond_22

    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    const/4 v2, 0x1

    .line 126
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    .line 127
    :cond_23
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 128
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v2

    if-nez v2, :cond_26

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpEnabled:Z

    if-eqz v2, :cond_24

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    .line 129
    invoke-virtual {v2}, Lcom/android/server/display/EarlyWakeUpManager;->isEarlyLightSensorEnabled()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_f

    .line 130
    :cond_24
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessDisabledDueToDisplayOff()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x3

    goto :goto_10

    :cond_25
    const/4 v2, 0x2

    goto :goto_10

    :cond_26
    :goto_f
    const/4 v2, 0x1

    .line 131
    :goto_10
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v5, v2}, Lcom/android/server/display/BrightnessRangeController;->setAutoBrightnessEnabled(I)V

    .line 132
    iget-boolean v2, v3, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 133
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v5}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v5

    .line 134
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v11}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v11

    if-eqz v11, :cond_27

    .line 135
    iget-object v11, v3, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 136
    invoke-virtual {v11}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v11

    if-ne v11, v4, :cond_27

    .line 137
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v11, :cond_27

    const/4 v12, 0x0

    .line 138
    invoke-virtual {v11, v12}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 139
    :cond_27
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v11}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v19, 0x7fc00000    # Float.NaN

    if-nez v11, :cond_33

    .line 140
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_29

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 141
    invoke-virtual {v11}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v11

    const/16 v13, 0xb

    if-ne v11, v13, :cond_28

    goto :goto_11

    .line 142
    :cond_28
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    goto/16 :goto_18

    .line 143
    :cond_29
    :goto_11
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v11}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v11

    if-eqz v11, :cond_33

    .line 144
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v11, v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result v11

    .line 145
    invoke-static {v11}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v13

    if-nez v13, :cond_2c

    cmpl-float v13, v11, v12

    if-nez v13, :cond_2a

    goto :goto_13

    .line 146
    :cond_2a
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    .line 147
    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 148
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v14, 0xe

    invoke-virtual {v13, v11, v14}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 149
    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v13, :cond_2b

    const/4 v13, 0x1

    .line 150
    iput-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mAwakenFromDozingInAutoBrightness:Z

    :cond_2b
    move v13, v11

    move/from16 v25, v13

    move/from16 v4, v19

    move v12, v4

    :goto_12
    move/from16 v11, v30

    move/from16 v15, v32

    goto/16 :goto_19

    .line 151
    :cond_2c
    :goto_13
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 152
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getRawAutomaticScreenBrightness()F

    move-result v25

    .line 153
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v2

    .line 154
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    cmpl-float v13, v11, v13

    if-eqz v13, :cond_2d

    .line 155
    iput v11, v0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    const/4 v13, 0x1

    goto :goto_14

    :cond_2d
    const/4 v13, 0x0

    .line 156
    :goto_14
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v14}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    move-result v14

    if-eqz v14, :cond_2e

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 157
    invoke-virtual {v14}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentChanged()Z

    move-result v14

    if-nez v14, :cond_2e

    if-eqz v13, :cond_2e

    const/4 v13, 0x1

    goto :goto_15

    :cond_2e
    const/4 v13, 0x0

    :goto_15
    if-eqz v13, :cond_30

    .line 158
    sget-boolean v14, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-nez v14, :cond_2f

    sget-boolean v14, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

    if-eqz v14, :cond_30

    .line 159
    :cond_2f
    invoke-virtual {v0, v11, v2}, Lcom/android/server/display/DisplayPowerController;->getBrightnessDynamicRampRatePair(FF)Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;

    move-result-object v14

    .line 160
    iget v15, v14, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;->brightnessRampRateDynamic:F

    .line 161
    iget v14, v14, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;->brightnessRampRateDynamicAtHbm:F

    goto :goto_16

    :cond_30
    move/from16 v14, v19

    move v15, v14

    .line 162
    :goto_16
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 163
    invoke-virtual {v12}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentReasonsFlags()I

    move-result v12

    .line 164
    invoke-static {v11}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v16

    cmpl-float v16, v5, v16

    if-eqz v16, :cond_31

    const/16 v16, 0x1

    goto :goto_17

    :cond_31
    const/16 v16, 0x0

    .line 165
    :goto_17
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move/from16 v17, v12

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    .line 166
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    const/4 v2, 0x0

    .line 167
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAwakenFromDozingInAutoBrightness:Z

    .line 168
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v12, 0x4

    invoke-virtual {v4, v11, v12}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 169
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v4, :cond_32

    .line 170
    invoke-virtual {v4, v2}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 171
    :cond_32
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 172
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move/from16 v18, v11

    const/16 v11, 0x11

    invoke-virtual {v12, v11, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 173
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v13

    move v11, v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v4, v13, v14}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move v4, v11

    move v12, v15

    move/from16 v11, v17

    move/from16 v13, v18

    move v15, v2

    move/from16 v2, v16

    goto :goto_19

    :cond_33
    :goto_18
    move/from16 v4, v19

    move v12, v4

    move/from16 v13, v24

    goto/16 :goto_12

    .line 174
    :goto_19
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_34

    .line 175
    invoke-virtual {v0, v13}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    move-result v13

    .line 176
    :cond_34
    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    move-result v14

    if-eqz v14, :cond_38

    .line 177
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_35

    .line 178
    iget-object v14, v3, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    move/from16 v16, v2

    .line 179
    const-string v2, "FallbackBrightnessStrategy"

    .line 180
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    goto :goto_1a

    :cond_35
    move/from16 v16, v2

    :goto_1a
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 181
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-eqz v2, :cond_37

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_36

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 182
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v2

    if-nez v2, :cond_37

    .line 183
    :cond_36
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v2

    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    mul-float/2addr v2, v13

    .line 184
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v13

    .line 185
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v17, v2

    const/16 v2, 0xc

    invoke-virtual {v14, v13, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 186
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 187
    iget v14, v2, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    const/16 v18, 0x4

    or-int/lit8 v14, v14, 0x4

    .line 188
    iput v14, v2, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    move/from16 v25, v17

    .line 189
    :cond_37
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 190
    invoke-virtual {v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozingConfig()Z

    move-result v2

    if-nez v2, :cond_39

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 191
    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    move-result v2

    if-nez v2, :cond_39

    .line 192
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 193
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v13

    .line 194
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v17, v2

    const/4 v2, 0x3

    invoke-virtual {v14, v13, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    move/from16 v25, v17

    goto :goto_1b

    :cond_38
    move/from16 v16, v2

    .line 195
    :cond_39
    :goto_1b
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 196
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v2, :cond_3c

    .line 197
    invoke-virtual {v2}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    move-result v13

    .line 198
    invoke-static {v13}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 199
    invoke-virtual {v0, v13}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v2

    .line 200
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v14

    cmpl-float v14, v14, v2

    move-object/from16 v22, v3

    if-eqz v14, :cond_3a

    const/4 v14, 0x1

    goto :goto_1c

    :cond_3a
    const/4 v14, 0x0

    .line 201
    :goto_1c
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v24, v4

    const/16 v4, 0x9

    invoke-virtual {v3, v2, v4}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    move/from16 v25, v13

    move/from16 v16, v14

    move v13, v2

    goto :goto_1d

    :cond_3b
    move-object/from16 v22, v3

    move/from16 v24, v4

    move/from16 v25, v13

    goto :goto_1d

    :cond_3c
    move-object/from16 v22, v3

    move/from16 v24, v4

    .line 202
    :goto_1d
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/16 v3, 0x2000

    if-eqz v2, :cond_3e

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 203
    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v13

    cmpl-float v2, v13, v5

    if-eqz v2, :cond_3d

    const/16 v16, 0x1

    .line 204
    :cond_3d
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v4, 0x1

    invoke-virtual {v2, v13, v4}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 205
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v2, :cond_3f

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 206
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 207
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 208
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2, v13, v3}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    goto :goto_1e

    :cond_3e
    move/from16 v5, v25

    .line 209
    :cond_3f
    :goto_1e
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    if-eq v2, v4, :cond_41

    if-eqz v4, :cond_40

    .line 210
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastBatteryLevelCriticalTime:J

    .line 211
    :cond_40
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    .line 212
    :cond_41
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_4a

    const/4 v2, 0x1

    if-eq v6, v2, :cond_4a

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4a

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    if-eqz v2, :cond_42

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    if-eqz v2, :cond_4a

    :cond_42
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 213
    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_4a

    .line 214
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    if-eqz v2, :cond_44

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceDimSettingEnabled:Z

    if-eqz v2, :cond_44

    .line 215
    iget-wide v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastBatteryLevelCriticalTime:J

    sget-wide v17, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    cmp-long v2, v2, v17

    if-lez v2, :cond_44

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    if-nez v2, :cond_44

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 216
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_44

    .line 217
    iget-boolean v2, v2, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v2, :cond_44

    :cond_43
    const/4 v2, 0x1

    goto :goto_1f

    :cond_44
    const/4 v2, 0x0

    :goto_1f
    if-eqz v2, :cond_46

    .line 218
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-nez v3, :cond_46

    const/4 v3, 0x1

    .line 219
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 220
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget v2, v2, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_45

    .line 221
    iput v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    goto :goto_20

    .line 222
    :cond_45
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 223
    invoke-virtual {v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v2

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    :goto_20
    if-nez v23, :cond_48

    .line 224
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    if-nez v2, :cond_48

    :goto_21
    const/4 v2, 0x1

    goto :goto_22

    :cond_46
    if-nez v2, :cond_48

    .line 225
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v2, :cond_48

    const/4 v2, 0x0

    .line 226
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 227
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v2

    if-nez v2, :cond_47

    .line 228
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 229
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v3, 0x2000

    invoke-virtual {v2, v13, v3}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    const/16 v16, 0x1

    :cond_47
    if-nez v23, :cond_48

    .line 230
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    if-nez v2, :cond_48

    goto :goto_21

    :cond_48
    const/4 v2, 0x0

    .line 231
    :goto_22
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v3, :cond_49

    cmpl-float v3, v13, v4

    if-lez v3, :cond_49

    .line 232
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMinimumDimAmount:F

    sub-float/2addr v13, v3

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 233
    invoke-static {v13, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 234
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 235
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v14, 0x1000

    invoke-virtual {v3, v13, v14}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move/from16 v25, v2

    move v3, v13

    const/4 v2, 0x1

    goto :goto_23

    :cond_49
    move/from16 v25, v2

    move v3, v13

    move/from16 v2, v16

    goto :goto_23

    :cond_4a
    move v3, v13

    move/from16 v2, v16

    const/16 v25, 0x0

    .line 236
    :goto_23
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v13, :cond_4b

    move v13, v4

    goto :goto_24

    .line 237
    :cond_4b
    invoke-virtual {v13}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v13

    :goto_24
    const/4 v14, 0x0

    .line 238
    :goto_25
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v14, v4, :cond_4c

    .line 239
    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayPowerControllerInterface;

    move/from16 v30, v10

    .line 240
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 241
    invoke-virtual {v10, v5}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToNits(F)F

    move-result v10

    .line 242
    check-cast v4, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v4, v5, v10, v13, v15}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v30

    goto :goto_25

    :cond_4c
    move/from16 v30, v10

    .line 243
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_4d

    .line 244
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 245
    :cond_4d
    new-instance v4, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;

    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mAwakenFromDozingInAutoBrightness:Z

    invoke-direct {v4, v6, v5}, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;-><init>(IZ)V

    .line 246
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v32, v15

    move v15, v3

    move/from16 v16, v32

    move/from16 v17, v6

    move-object/from16 v18, v4

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->clamp(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZILcom/android/server/display/brightness/clamper/BrightnessModifierRequest;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v10

    .line 247
    iget v4, v10, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 248
    iget-boolean v5, v10, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 249
    iget v13, v10, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    move/from16 v14, v31

    .line 250
    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 251
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 252
    iget-object v15, v10, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 253
    iget v15, v15, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    move/from16 v16, v5

    .line 254
    iget v5, v10, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 255
    invoke-virtual {v14, v5, v15}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 256
    iget v5, v10, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 257
    iput v5, v0, Lcom/android/server/display/DisplayPowerController;->mClampedMaxBrightness:F

    .line 258
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 259
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    :cond_4e
    if-eqz v2, :cond_4f

    .line 260
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4f

    .line 261
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 262
    iget v5, v10, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 263
    iget v14, v10, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 264
    invoke-static {v3, v5, v14}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 265
    invoke-virtual {v14}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v14

    .line 266
    iget v15, v10, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 267
    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 268
    invoke-virtual {v2, v5, v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateScreenBrightnessSetting(FF)Z

    move-result v2

    move v14, v2

    goto :goto_26

    :cond_4f
    const/4 v14, 0x0

    .line 269
    :goto_26
    invoke-virtual {v0, v4, v6}, Lcom/android/server/display/DisplayPowerController;->getFinalBrightness(FI)F

    move-result v15

    .line 270
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v2, :cond_50

    .line 271
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v4, "ForceSlowChange is requested, set slowChange as true"

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    .line 272
    :cond_50
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 273
    invoke-virtual {v4}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->getBrightnessMaxReason()I

    move-result v4

    .line 274
    invoke-virtual {v2, v4, v15, v3}, Lcom/android/server/display/BrightnessRangeController;->onBrightnessChanged(IFF)V

    .line 275
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 276
    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v2

    const/4 v5, 0x7

    if-eq v2, v5, :cond_52

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 277
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    move-result v2

    if-eqz v2, :cond_51

    goto :goto_27

    :cond_51
    const/16 v17, 0x0

    goto :goto_28

    :cond_52
    :goto_27
    const/16 v17, 0x1

    .line 278
    :goto_28
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v2, :cond_87

    .line 279
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 280
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->shouldSkipRampBecauseOfProximityChangeToNegative()Z

    move-result v2

    .line 281
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 282
    invoke-virtual {v5}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v5

    if-eqz v5, :cond_54

    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    if-eqz v5, :cond_53

    if-eqz v1, :cond_54

    :cond_53
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    if-nez v1, :cond_54

    const/4 v1, 0x1

    goto :goto_29

    :cond_54
    const/4 v1, 0x0

    .line 283
    :goto_29
    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    move-result v5

    if-eqz v5, :cond_55

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v5, v5, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    const/16 v4, 0xe

    if-ne v5, v4, :cond_55

    const/4 v4, 0x1

    goto :goto_2a

    :cond_55
    const/4 v4, 0x0

    .line 284
    :goto_2a
    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    move-result v5

    .line 285
    sget-boolean v27, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_BRIGHTNESS_ANIM:Z

    if-nez v27, :cond_56

    if-eqz v5, :cond_56

    const/16 v27, 0x1

    goto :goto_2b

    :cond_56
    const/16 v27, 0x0

    .line 286
    :goto_2b
    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    move-result v31

    if-eqz v31, :cond_57

    move/from16 v31, v3

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v3, :cond_58

    move/from16 v32, v6

    const/4 v3, 0x1

    goto :goto_2c

    :cond_57
    move/from16 v31, v3

    :cond_58
    move/from16 v32, v6

    const/4 v3, 0x0

    .line 287
    :goto_2c
    iget-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v6, :cond_59

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 288
    iget v6, v6, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v33

    if-nez v6, :cond_59

    move/from16 v33, v11

    const/4 v6, 0x1

    goto :goto_2d

    :cond_59
    move/from16 v33, v11

    const/4 v6, 0x0

    .line 289
    :goto_2d
    invoke-virtual {v0, v15}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    move-result v11

    move-object/from16 v34, v10

    .line 290
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 291
    iget-object v10, v10, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 292
    iget v10, v10, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    move/from16 v35, v14

    const/4 v14, 0x2

    if-ne v10, v14, :cond_61

    .line 293
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 294
    iget v10, v10, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/2addr v10, v14

    if-eqz v10, :cond_5a

    const/4 v10, 0x1

    goto :goto_2e

    :cond_5a
    const/4 v10, 0x0

    .line 295
    :goto_2e
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v14}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v14

    if-eqz v14, :cond_5c

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v14, :cond_5b

    .line 296
    iget-boolean v14, v14, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v14, :cond_5b

    goto :goto_2f

    :cond_5b
    const/4 v14, 0x0

    goto :goto_30

    :cond_5c
    :goto_2f
    const/4 v14, 0x1

    :goto_30
    if-nez v10, :cond_5f

    if-eqz v14, :cond_5f

    move/from16 v36, v8

    .line 297
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v8

    if-eqz v8, :cond_60

    .line 298
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v8}, Lcom/android/server/display/BrightnessRangeController;->getHdrBrightnessValue()F

    move-result v8

    .line 299
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 300
    invoke-virtual {v10}, Lcom/android/server/display/BrightnessRangeController;->getHdrTransitionRate()F

    move-result v10

    .line 301
    invoke-static {v13, v10}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 302
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v14, 0x4

    invoke-virtual {v10, v8, v14}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 303
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hdrMaxBrightness:F

    cmpl-float v14, v8, v10

    if-ltz v14, :cond_5d

    .line 304
    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 305
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/high16 v14, 0x20000

    invoke-virtual {v10, v8, v14}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 306
    :cond_5d
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    cmpl-float v14, v8, v10

    if-ltz v14, :cond_5e

    .line 307
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v14, 0x20

    invoke-virtual {v8, v10, v14}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move/from16 v38, v9

    move v8, v10

    :goto_31
    move/from16 v39, v15

    goto :goto_33

    :cond_5e
    move/from16 v38, v9

    goto :goto_31

    :cond_5f
    move/from16 v36, v8

    .line 308
    :cond_60
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    move/from16 v37, v13

    const-string/jumbo v13, "pending hdr: low power="

    move/from16 v38, v9

    const-string v9, ", brightness ready="

    move/from16 v39, v15

    const-string v15, ", isBrightOrDim="

    .line 309
    invoke-static {v13, v10, v9, v14, v15}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 310
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 311
    invoke-virtual {v10}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 312
    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_61
    move/from16 v36, v8

    move/from16 v38, v9

    move/from16 v37, v13

    move/from16 v39, v15

    :goto_32
    move v8, v11

    move/from16 v13, v37

    .line 313
    :goto_33
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v14, 0x6

    const/4 v15, 0x1

    if-ne v10, v15, :cond_63

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v9, :cond_62

    const/4 v10, 0x4

    if-eq v9, v10, :cond_62

    if-ne v9, v14, :cond_63

    :cond_62
    const/16 v16, 0x0

    const/high16 v20, -0x40800000    # -1.0f

    goto :goto_34

    :cond_63
    move/from16 v20, v13

    .line 314
    :goto_34
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 315
    iget v10, v9, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 316
    iget v9, v9, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->shouldEnableMoreFastRampRateCase()Z

    move-result v13

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->shouldEnableHdrRampRateCase()Z

    move-result v15

    .line 319
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 320
    invoke-virtual {v14}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v14

    move-object/from16 v37, v7

    const/16 v7, 0xa

    if-ne v14, v7, :cond_64

    const/4 v7, 0x1

    goto :goto_35

    :cond_64
    const/4 v7, 0x0

    .line 321
    :goto_35
    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    if-nez v14, :cond_66

    if-eqz v23, :cond_65

    goto :goto_36

    :cond_65
    move/from16 v23, v15

    const/4 v14, 0x0

    goto :goto_37

    :cond_66
    :goto_36
    move/from16 v23, v15

    const/4 v14, 0x1

    .line 322
    :goto_37
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 323
    iget-object v15, v15, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 324
    iget v15, v15, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 325
    invoke-static {v15}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v15

    .line 326
    invoke-static {v8}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v40

    sub-int v15, v15, v40

    .line 327
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move/from16 v40, v14

    const/4 v14, 0x1

    if-gt v15, v14, :cond_67

    .line 328
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 329
    invoke-virtual {v14}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v14

    if-nez v14, :cond_67

    const/4 v14, 0x1

    goto :goto_38

    :cond_67
    const/4 v14, 0x0

    .line 330
    :goto_38
    invoke-static {v8}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v15

    if-eqz v15, :cond_68

    cmpl-float v10, v8, v10

    if-nez v10, :cond_69

    cmpl-float v15, v11, v9

    if-eqz v15, :cond_68

    goto :goto_39

    :cond_68
    move-object/from16 v9, v22

    move/from16 v14, v31

    move/from16 v12, v32

    const/4 v10, 0x2

    const/4 v11, 0x7

    const/4 v15, 0x0

    const/16 v18, 0x20

    goto/16 :goto_46

    :cond_69
    :goto_39
    if-nez v2, :cond_6d

    if-nez v3, :cond_6d

    if-eqz v6, :cond_6d

    if-eqz v17, :cond_6a

    .line 331
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v2, :cond_6d

    :cond_6a
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    if-nez v2, :cond_6d

    if-nez v1, :cond_6d

    if-nez v4, :cond_6d

    if-nez v27, :cond_6d

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 332
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6b

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 333
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->isStartBrightnessChanged(Lcom/android/server/display/brightness/BrightnessReason;)Z

    move-result v1

    if-eqz v1, :cond_6b

    if-nez v13, :cond_6b

    goto :goto_3a

    :cond_6b
    if-nez v25, :cond_6d

    if-eqz v14, :cond_6c

    goto :goto_3a

    :cond_6c
    const/4 v1, 0x0

    goto :goto_3b

    :cond_6d
    :goto_3a
    const/4 v1, 0x1

    .line 334
    :goto_3b
    invoke-static {v11, v9}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v2

    .line 335
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isFastHdrTransitionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_6e

    if-nez v1, :cond_6e

    if-eqz v2, :cond_6e

    const/16 v16, 0x0

    :cond_6e
    if-eqz v1, :cond_6f

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v2, v8

    move-object/from16 v9, v22

    move/from16 v14, v31

    move v3, v11

    const/4 v7, 0x2

    const/4 v15, 0x0

    const/16 v18, 0x20

    move v4, v15

    const/4 v10, 0x7

    move/from16 v11, v32

    move v6, v15

    .line 336
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZF)V

    move v12, v11

    move v13, v15

    move v11, v10

    move v10, v7

    goto/16 :goto_47

    :cond_6f
    move-object/from16 v9, v22

    move/from16 v14, v31

    move/from16 v6, v32

    const/4 v3, 0x2

    const/4 v4, 0x7

    const/4 v15, 0x0

    const/16 v18, 0x20

    cmpl-float v1, v20, v15

    if-lez v1, :cond_70

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move v2, v8

    move v7, v3

    move v3, v11

    move v10, v4

    move/from16 v4, v20

    move v11, v6

    move/from16 v6, v20

    .line 337
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZF)V

    move v12, v11

    move v11, v10

    move v10, v7

    goto/16 :goto_46

    :cond_70
    if-lez v10, :cond_71

    const/4 v1, 0x1

    goto :goto_3c

    :cond_71
    const/4 v1, 0x0

    .line 338
    :goto_3c
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_72

    .line 339
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v2

    if-eqz v2, :cond_72

    const/4 v2, 0x1

    goto :goto_3d

    :cond_72
    const/4 v2, 0x0

    :goto_3d
    if-eqz v1, :cond_74

    if-eqz v16, :cond_74

    if-eqz v2, :cond_73

    .line 340
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    goto :goto_3e

    .line 341
    :cond_73
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    :goto_3e
    move/from16 v24, v19

    goto :goto_40

    :cond_74
    if-eqz v1, :cond_75

    if-nez v16, :cond_75

    .line 342
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    goto :goto_3e

    :cond_75
    if-nez v1, :cond_78

    if-eqz v16, :cond_78

    if-eqz v2, :cond_76

    .line 343
    iget v12, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    goto :goto_3f

    :cond_76
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_77

    goto :goto_3f

    .line 344
    :cond_77
    iget v12, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    :goto_3f
    move v2, v12

    goto :goto_40

    .line 345
    :cond_78
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    goto :goto_3e

    :goto_40
    if-eqz v7, :cond_79

    .line 346
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mFollowerRampSpeed:F

    .line 347
    iget v7, v0, Lcom/android/server/display/DisplayPowerController;->mFollowerRampSpeedAtHbm:F

    move/from16 v24, v7

    :cond_79
    if-eqz v13, :cond_7a

    .line 348
    iget v7, v0, Lcom/android/server/display/DisplayPowerController;->mMoreFastRampRate:F

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_41

    :cond_7a
    move/from16 v19, v24

    :goto_41
    if-eqz v5, :cond_7b

    const v2, 0x3eb33333    # 0.35f

    :cond_7b
    if-eqz v40, :cond_7d

    if-eqz v1, :cond_7c

    move v2, v15

    goto :goto_42

    .line 349
    :cond_7c
    sget v2, Lcom/android/server/display/DisplayPowerController;->RATE_FROM_DOZE_TO_ON:F

    :cond_7d
    :goto_42
    if-eqz v23, :cond_7f

    if-eqz v1, :cond_7e

    .line 350
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrIncrease:F

    :goto_43
    move v7, v1

    goto :goto_44

    .line 351
    :cond_7e
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrDecrease:F

    goto :goto_43

    :cond_7f
    move v7, v2

    .line 352
    :goto_44
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->getTarget()F

    move-result v1

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_80

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v2, v8

    move v10, v3

    move v3, v11

    move v11, v4

    move v4, v7

    move v12, v6

    move/from16 v6, v19

    .line 353
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZF)V

    goto :goto_45

    :cond_80
    move v10, v3

    move v11, v4

    move v12, v6

    :goto_45
    move v15, v7

    :goto_46
    move/from16 v13, v19

    :goto_47
    const/4 v1, 0x0

    .line 354
    :goto_48
    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_81

    move-object/from16 v2, v37

    .line 355
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 356
    check-cast v3, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v3, v15, v13}, Lcom/android/server/display/DisplayPowerController;->setRampSpeedToFollower(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 357
    :cond_81
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_82

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v1, :cond_82

    const/4 v1, 0x0

    .line 358
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 359
    :cond_82
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 360
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v5

    .line 361
    iget-boolean v7, v9, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    move-object/from16 v1, p0

    move/from16 v2, v39

    move/from16 v3, v38

    move/from16 v4, v36

    move/from16 v6, v17

    .line 362
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessTrackerChanged(FZZZZZ)V

    .line 363
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    move-result v1

    if-nez v1, :cond_83

    if-eqz v25, :cond_84

    :cond_83
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    if-nez v1, :cond_84

    const/4 v1, 0x1

    .line 364
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    .line 365
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    if-eqz v1, :cond_84

    const/4 v1, 0x0

    .line 366
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    :cond_84
    if-eqz v35, :cond_86

    if-nez v38, :cond_86

    .line 367
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v1, :cond_85

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    if-eqz v1, :cond_86

    .line 368
    :cond_85
    invoke-virtual {v0, v15, v13, v8}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessTransitionTime(FFF)V

    .line 369
    :cond_86
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v1

    move-object/from16 v2, v34

    .line 370
    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    move-result v1

    goto :goto_49

    :cond_87
    move v14, v3

    move v12, v6

    move/from16 v36, v8

    move-object v2, v10

    move/from16 v33, v11

    move/from16 v39, v15

    move-object/from16 v9, v22

    const/4 v10, 0x2

    const/16 v18, 0x20

    move v11, v5

    .line 371
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v1

    .line 372
    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    move-result v1

    :goto_49
    if-eqz v1, :cond_88

    if-nez v17, :cond_88

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 374
    :cond_88
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    if-eqz v33, :cond_8a

    :cond_89
    move/from16 v3, v39

    goto :goto_4b

    .line 375
    :cond_8a
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8b

    if-eqz v26, :cond_8b

    .line 376
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Brightness ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v3, v39

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "] manual adjustment."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4a
    move/from16 v5, v33

    goto :goto_4c

    :cond_8b
    move/from16 v3, v39

    goto :goto_4a

    .line 377
    :goto_4b
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Brightness ["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "] reason changing to: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v5, v33

    .line 378
    invoke-virtual {v4, v5}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\', previous reason: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 381
    :goto_4c
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/android/server/display/brightness/BrightnessEvent;->setTime(J)V

    .line 382
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->setBrightness(F)V

    .line 383
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPhysicalDisplayId(Ljava/lang/String;)V

    .line 384
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v12}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayState(I)V

    .line 385
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayPolicy(I)V

    .line 386
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setReason(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 387
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMax(F)V

    .line 388
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 389
    iget-object v2, v2, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 390
    iget v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 391
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMode(I)V

    .line 392
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 393
    iget v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 394
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v3, :cond_8c

    goto :goto_4d

    :cond_8c
    const/16 v18, 0x0

    :goto_4d
    or-int v2, v2, v18

    .line 395
    iput v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 396
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->setRbcStrength()V

    .line 397
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPowerFactor(F)V

    .line 398
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    move/from16 v2, v36

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setWasShortTermModelActive(Z)V

    .line 399
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 400
    iget-object v2, v9, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 401
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayBrightnessStrategyName(Ljava/lang/String;)V

    .line 402
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 403
    iget-boolean v2, v9, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 404
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setAutomaticBrightnessEnabled(Z)V

    .line 405
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 406
    iget-object v1, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 407
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    if-ne v1, v11, :cond_8d

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 408
    iget-object v1, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 409
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    if-ne v1, v11, :cond_8d

    const/4 v1, 0x1

    goto :goto_4e

    :cond_8d
    const/4 v1, 0x0

    .line 410
    :goto_4e
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 411
    iget v3, v2, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    const/16 v28, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8e

    move/from16 v3, v28

    goto :goto_4f

    :cond_8e
    const/4 v3, 0x0

    .line 412
    :goto_4f
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 413
    iget v6, v4, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8f

    const/4 v6, 0x1

    goto :goto_50

    :cond_8f
    const/4 v6, 0x0

    :goto_50
    if-eq v3, v6, :cond_90

    const/4 v3, 0x1

    goto :goto_51

    :cond_90
    const/4 v3, 0x0

    .line 414
    :goto_51
    invoke-virtual {v4, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->equalsMainData(Lcom/android/server/display/brightness/BrightnessEvent;)Z

    move-result v2

    if-nez v2, :cond_91

    if-eqz v1, :cond_92

    :cond_91
    if-eqz v5, :cond_97

    .line 415
    :cond_92
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 416
    iget v2, v2, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 417
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setInitialBrightness(F)V

    .line 418
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 419
    new-instance v1, Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 420
    invoke-virtual {v1, v5}, Lcom/android/server/display/brightness/BrightnessEvent;->setAdjustmentFlags(I)V

    .line 421
    iget v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    if-eqz v26, :cond_93

    const/16 v9, 0x8

    goto :goto_52

    :cond_93
    const/4 v9, 0x0

    :goto_52
    or-int/2addr v2, v9

    .line 422
    iput v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 423
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v26, :cond_94

    .line 424
    iget-object v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 425
    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v2

    if-eq v2, v11, :cond_95

    .line 426
    :cond_94
    invoke-virtual {v0, v1, v14}, Lcom/android/server/display/DisplayPowerController;->logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;F)V

    .line 427
    :cond_95
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    if-eqz v2, :cond_96

    .line 428
    invoke-virtual {v2, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_96
    if-eqz v3, :cond_98

    .line 429
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    goto :goto_53

    :cond_97
    const/4 v9, 0x0

    .line 430
    :cond_98
    :goto_53
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v1, :cond_9a

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    if-nez v1, :cond_9a

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v1, :cond_99

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 431
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_9a

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 432
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_9a

    :cond_99
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    .line 433
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_9a

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-nez v1, :cond_9a

    const/4 v1, 0x1

    goto :goto_54

    :cond_9a
    move v1, v9

    :goto_54
    if-eqz v1, :cond_9b

    .line 434
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 435
    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_9b

    const/4 v2, 0x1

    goto :goto_55

    :cond_9b
    move v2, v9

    :goto_55
    if-eqz v1, :cond_9c

    const/4 v3, 0x1

    if-eq v12, v3, :cond_9c

    .line 436
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v4, v3, :cond_9c

    .line 437
    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 438
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    check-cast v3, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn(I)V

    :cond_9c
    if-nez v2, :cond_9d

    .line 439
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 440
    :cond_9d
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 441
    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v3

    if-eqz v3, :cond_9f

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_9e

    .line 442
    iget-boolean v3, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v3, :cond_9e

    goto :goto_56

    :cond_9e
    move v3, v9

    goto :goto_57

    :cond_9f
    :goto_56
    const/4 v3, 0x1

    :goto_57
    if-eqz v1, :cond_a2

    if-eqz v29, :cond_a2

    if-eqz v3, :cond_a2

    .line 443
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    :try_start_3
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_a0

    const/4 v3, 0x1

    .line 445
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 446
    sget-boolean v4, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_a1

    .line 447
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v5, "Display ready!"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :catchall_2
    move-exception v0

    goto :goto_59

    :cond_a0
    const/4 v3, 0x1

    .line 448
    :cond_a1
    :goto_58
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_5a

    .line 450
    :goto_59
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_a2
    const/4 v3, 0x1

    :goto_5a
    if-eqz v2, :cond_a3

    .line 451
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v2, 0x5

    .line 452
    invoke-virtual {v1, v2}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    :cond_a3
    if-eq v12, v10, :cond_a4

    move v8, v3

    goto :goto_5b

    :cond_a4
    move v8, v9

    .line 453
    :goto_5b
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 454
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v5, v30

    if-eq v5, v0, :cond_a5

    .line 455
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    :cond_a5
    return-void

    .line 456
    :goto_5c
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method
