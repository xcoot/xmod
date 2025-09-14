.class public final Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public mAmbientBrighteningThreshold:F

.field public final mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

.field public final mAmbientBrightnessThresholdsIdle:Lcom/android/server/display/config/HysteresisLevels;

.field public final mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/HysteresisLevels;

.field public final mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/HysteresisLevels;

.field public mAmbientDarkeningThreshold:F

.field public final mAmbientLightHorizonLong:I

.field public final mAmbientLightHorizonShort:I

.field public final mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field public mAmbientLux:F

.field public mAmbientLuxValid:Z

.field public final mBrighteningLightDebounceConfig:J

.field public final mBrighteningLightDebounceConfigIdle:J

.field public mBrightnessAdjustmentSampleOldBrightness:F

.field public mBrightnessAdjustmentSampleOldLux:F

.field public mBrightnessAdjustmentSamplePending:Z

.field public final mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

.field public final mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

.field public mBrightnessThresoldsType:I

.field public final mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

.field public final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field public final mClock:Lcom/android/server/display/AutomaticBrightnessController$RealClock;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mCurrentLightSensorRate:I

.field public final mDarkeningLightDebounceConfig:J

.field public final mDarkeningLightDebounceConfigIdle:J

.field public mDisplayPolicy:I

.field public final mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public mDisplayState:I

.field public final mDozeScaleFactor:F

.field public mDualScreenPolicy:I

.field public mFastAmbientLux:F

.field public mForceUpdateBrightness:Z

.field public mForegroundAppCategory:I

.field public mForegroundAppPackageName:Ljava/lang/String;

.field public final mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field public final mInitialLightSensorRate:I

.field public mInjectedLuxEvent:Landroid/hardware/SensorEvent;

.field public final mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

.field public mIsBrightnessThrottled:Z

.field public final mIsCameraLightTypeSupported:Z

.field public mIsLightSensorPositionUpdated:Z

.field public mIsRearLightSensor:Z

.field public final mIsUnderDisplayLightSensor:Z

.field public mLastAmbientLuxOfFrontLightSensor:F

.field public mLastHBM:Z

.field public mLastObservedLux:F

.field public mLastObservedLuxTime:J

.field public mLastRealLuxEventDuringInjection:Landroid/hardware/SensorEvent;

.field public mLastSentAmbientLux:F

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorCct:Landroid/hardware/Sensor;

.field public mLightSensorEnableTime:J

.field public mLightSensorEnabled:Z

.field public final mLightSensorListener:Lcom/android/server/display/AutomaticBrightnessController$4;

.field public mLightSensorPositionUpdatedTime:J

.field public final mLightSensorWarmUpTimeConfig:I

.field public mLoggedAmbientLux:F

.field public mLoggingEnabled:Z

.field public mMinLuxUpdated:Z

.field public mNonInteractiveTime:J

.field public final mNormalLightSensorRate:I

.field public final mOnProximityChangedRunnable:Lcom/android/server/display/AutomaticBrightnessController$2;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPausedShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

.field public mPendingEarlyLightSensorReadyListener:Ljava/lang/Runnable;

.field public mPendingForegroundAppCategory:I

.field public mPendingForegroundAppPackageName:Ljava/lang/String;

.field public mPendingProximity:I

.field public final mPowerHistorian:Lcom/android/server/power/PowerHistorian;

.field public mPreThresholdBrightness:F

.field public mPreThresholdLux:F

.field public mProximity:I

.field public final mProximitySensor:Landroid/hardware/Sensor;

.field public mProximitySensorEnabled:Z

.field public final mProximitySensorListener:Lcom/android/server/display/AutomaticBrightnessController$4;

.field public final mProximityThreshold:F

.field public mRawScreenAutoBrightness:F

.field public mRecentLightSamples:I

.field public final mResetAmbientLuxAfterWarmUpConfig:Z

.field public mScreenAutoBrightness:F

.field public final mScreenBrightnessRangeMaximum:F

.field public final mScreenBrightnessRangeMinimum:F

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mSetScreenBrightnessByUserTime:J

.field public final mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

.field public mShouldApplyEarlyWakeUp:Z

.field public mSlowAmbientLux:F

.field public mState:I

.field public final mUseLightSensorBlockingPrevention:Z

.field public final mWeightingIntercept:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Injector;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/util/SparseArray;IFFFIIJJJJZLcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/BrightnessThrottler;IIFFLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p11

    move-object/from16 v5, p26

    move/from16 v6, p30

    move/from16 v7, p32

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    .line 2
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    const/high16 v9, 0x43fa0000    # 500.0f

    .line 3
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 4
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggedAmbientLux:F

    .line 5
    iput-boolean v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    const/high16 v9, 0x7fc00000    # Float.NaN

    .line 6
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 7
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mRawScreenAutoBrightness:F

    .line 8
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 9
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayState:I

    const/4 v9, 0x2

    .line 10
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mState:I

    const/4 v9, -0x1

    .line 11
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    .line 12
    iput-boolean v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    const/4 v10, 0x0

    .line 13
    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    .line 14
    iput-boolean v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    .line 15
    new-instance v11, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v11, v0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 16
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    .line 17
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    .line 18
    sget-object v11, Lcom/android/server/power/PowerHistorian;->INSTANCE:Lcom/android/server/power/PowerHistorian;

    .line 19
    iput-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 20
    new-instance v11, Lcom/android/server/display/AutomaticBrightnessController$2;

    const/4 v12, 0x1

    invoke-direct {v11, v0, v12}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;I)V

    iput-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mOnProximityChangedRunnable:Lcom/android/server/display/AutomaticBrightnessController$2;

    .line 21
    new-instance v11, Lcom/android/server/display/AutomaticBrightnessController$4;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12}, Lcom/android/server/display/AutomaticBrightnessController$4;-><init>(Lcom/android/server/display/AutomaticBrightnessController;I)V

    iput-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Lcom/android/server/display/AutomaticBrightnessController$4;

    .line 22
    new-instance v11, Lcom/android/server/display/AutomaticBrightnessController$4;

    const/4 v12, 0x1

    invoke-direct {v11, v0, v12}, Lcom/android/server/display/AutomaticBrightnessController$4;-><init>(Lcom/android/server/display/AutomaticBrightnessController;I)V

    iput-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Lcom/android/server/display/AutomaticBrightnessController$4;

    move-object/from16 v11, p1

    .line 23
    iput-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

    move-object/from16 v12, p33

    .line 24
    iget-object v12, v12, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadControlsDozeAutoBrightness:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 25
    invoke-virtual {v12}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v12

    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v11, Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    invoke-direct {v11, v12}, Lcom/android/server/display/AutomaticBrightnessController$RealClock;-><init>(Z)V

    .line 28
    iput-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    .line 29
    iput-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    move-object/from16 v12, p2

    .line 30
    iput-object v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 31
    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 32
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/display/BrightnessMappingStrategy;

    iput-object v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move/from16 v12, p8

    .line 33
    iput v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    move/from16 v12, p9

    .line 34
    iput v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:F

    move/from16 v12, p7

    .line 35
    iput v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    move/from16 v12, p10

    .line 36
    iput v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 37
    iput v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    move/from16 v12, p12

    .line 38
    iput v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    .line 39
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    const-wide/16 v12, 0x3e8

    .line 40
    iput-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    const-wide/16 v12, 0x7d0

    .line 41
    iput-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    move-wide/from16 v12, p17

    .line 42
    iput-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfigIdle:J

    move-wide/from16 v12, p19

    .line 43
    iput-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfigIdle:J

    move/from16 v12, p21

    .line 44
    iput-boolean v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 45
    iput v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    move/from16 v12, p29

    .line 46
    iput v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonShort:I

    .line 47
    iput v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    move-object/from16 v12, p22

    .line 48
    iput-object v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

    move-object/from16 v12, p34

    .line 49
    iput-object v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/HysteresisLevels;

    move-object/from16 v12, p35

    .line 50
    iput-object v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/HysteresisLevels;

    move-object/from16 v12, p24

    .line 51
    iput-object v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsIdle:Lcom/android/server/display/config/HysteresisLevels;

    .line 52
    new-instance v12, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    invoke-direct {v12, v0}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    .line 53
    new-instance v12, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    invoke-direct {v12, v0}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPausedShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    .line 54
    invoke-virtual {v0, v8}, Lcom/android/server/display/AutomaticBrightnessController;->notifyHbmInfo(Z)V

    .line 55
    new-instance v8, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-object/from16 v12, p3

    invoke-direct {v8, v0, v12}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 56
    new-instance v8, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    int-to-long v12, v4

    .line 57
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-lez v4, :cond_9

    int-to-float v4, v6

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v6

    long-to-float v6, v12

    div-float/2addr v4, v6

    float-to-double v12, v4

    .line 58
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v4, v12

    iput v4, v8, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 59
    new-array v6, v4, [F

    iput-object v6, v8, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 60
    new-array v4, v4, [J

    iput-object v4, v8, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 61
    iput-object v11, v8, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

    .line 62
    iput-object v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 63
    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 64
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_2

    const v6, 0x10041

    if-eq v2, v6, :cond_1

    const v6, 0x10044

    const-string v8, "AutomaticBrightnessController"

    if-eq v2, v6, :cond_0

    .line 65
    const-string v2, "Not found pre-defined light sensor"

    invoke-static {v8, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_0
    const-string v2, "Using SEM_TYPE_CAMERA_LIGHT for ABC"

    invoke-static {v8, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    goto :goto_0

    .line 68
    :cond_1
    iput-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    goto :goto_0

    :cond_2
    const v2, 0x10033

    .line 69
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorCct:Landroid/hardware/Sensor;

    .line 70
    :cond_3
    :goto_0
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    if-eqz v2, :cond_4

    .line 71
    iput-wide v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 72
    iput-wide v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 73
    iput-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 74
    iput-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    .line 75
    :cond_4
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_TABLET:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    .line 76
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_7

    .line 77
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Palm"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 78
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Ear"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 79
    iput-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    .line 80
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityThreshold:F

    goto :goto_1

    .line 81
    :cond_5
    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    goto :goto_1

    .line 82
    :cond_6
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    if-eqz v2, :cond_7

    const v2, 0x10068

    .line 83
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_7

    .line 84
    iput-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    .line 85
    :cond_7
    :goto_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 86
    invoke-virtual/range {p26 .. p26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-direct {v1, v0}, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 88
    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 89
    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    .line 90
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 91
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    move-object/from16 v1, p27

    .line 92
    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    move-object/from16 v1, p28

    .line 93
    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 94
    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 95
    const-string v1, "DisplaySolution"

    invoke-virtual {v5, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v7, v1

    if-eqz v1, :cond_8

    .line 96
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1, v7}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessFromNits(F)F

    move-result v1

    move/from16 v2, p31

    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(FF)Z

    :cond_8
    return-void

    .line 98
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lightSensorRate must be above 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final calculateAmbientLux(JJ)F
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 8
    .line 9
    const-string v6, ")"

    .line 10
    .line 11
    const-string v7, ", "

    .line 12
    .line 13
    const-string v8, "AutomaticBrightnessController"

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    const-string/jumbo v5, "calculateAmbientLux("

    .line 18
    .line 19
    .line 20
    invoke-static {v5, v1, v2, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v8, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 38
    .line 39
    iget v9, v5, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 40
    .line 41
    if-nez v9, :cond_1

    .line 42
    .line 43
    const-string/jumbo v0, "calculateAmbientLux: No ambient light readings available"

    .line 44
    .line 45
    .line 46
    invoke-static {v8, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/high16 v0, -0x40800000    # -1.0f

    .line 50
    .line 51
    return v0

    .line 52
    :cond_1
    iget-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    .line 53
    .line 54
    if-eqz v10, :cond_2

    .line 55
    .line 56
    add-int/lit8 v9, v9, -0x1

    .line 57
    .line 58
    invoke-virtual {v5, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    return v0

    .line 63
    :cond_2
    sub-long v3, v1, v3

    .line 64
    .line 65
    const/4 v10, 0x0

    .line 66
    move v11, v10

    .line 67
    :goto_0
    add-int/lit8 v12, v9, -0x1

    .line 68
    .line 69
    if-ge v10, v12, :cond_3

    .line 70
    .line 71
    add-int/lit8 v10, v10, 0x1

    .line 72
    .line 73
    invoke-virtual {v5, v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v13

    .line 77
    cmp-long v13, v13, v3

    .line 78
    .line 79
    if-gtz v13, :cond_3

    .line 80
    .line 81
    add-int/lit8 v11, v11, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iget-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 85
    .line 86
    if-eqz v9, :cond_4

    .line 87
    .line 88
    const-string/jumbo v9, "calculateAmbientLux: selected endIndex="

    .line 89
    .line 90
    .line 91
    const-string v10, ", point=("

    .line 92
    .line 93
    invoke-static {v11, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v5, v11}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    .line 98
    .line 99
    .line 100
    move-result-wide v13

    .line 101
    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v11}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-static {v8, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_4
    const/4 v6, 0x0

    .line 125
    const-wide/16 v9, 0x64

    .line 126
    .line 127
    move-wide/from16 v19, v9

    .line 128
    .line 129
    move v9, v6

    .line 130
    move v10, v12

    .line 131
    move-wide/from16 v12, v19

    .line 132
    .line 133
    :goto_1
    if-lt v10, v11, :cond_7

    .line 134
    .line 135
    invoke-virtual {v5, v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    .line 136
    .line 137
    .line 138
    move-result-wide v14

    .line 139
    if-ne v10, v11, :cond_5

    .line 140
    .line 141
    cmp-long v16, v14, v3

    .line 142
    .line 143
    if-gez v16, :cond_5

    .line 144
    .line 145
    move-wide v14, v3

    .line 146
    :cond_5
    sub-long/2addr v14, v1

    .line 147
    long-to-float v1, v12

    .line 148
    const/high16 v2, 0x3f000000    # 0.5f

    .line 149
    .line 150
    mul-float v16, v1, v2

    .line 151
    .line 152
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    .line 153
    .line 154
    move-wide/from16 v17, v3

    .line 155
    .line 156
    int-to-float v3, v2

    .line 157
    add-float v16, v16, v3

    .line 158
    .line 159
    mul-float v16, v16, v1

    .line 160
    .line 161
    long-to-float v1, v14

    .line 162
    const/high16 v3, 0x3f000000    # 0.5f

    .line 163
    .line 164
    mul-float/2addr v3, v1

    .line 165
    int-to-float v2, v2

    .line 166
    add-float/2addr v3, v2

    .line 167
    mul-float/2addr v3, v1

    .line 168
    sub-float v1, v16, v3

    .line 169
    .line 170
    invoke-virtual {v5, v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 175
    .line 176
    if-eqz v3, :cond_6

    .line 177
    .line 178
    const-string/jumbo v3, "calculateAmbientLux: ["

    .line 179
    .line 180
    .line 181
    invoke-static {v3, v14, v15, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v4, "]: lux="

    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v4, ", weight="

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-static {v8, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    :cond_6
    add-float/2addr v6, v1

    .line 212
    mul-float/2addr v2, v1

    .line 213
    add-float/2addr v9, v2

    .line 214
    add-int/lit8 v10, v10, -0x1

    .line 215
    .line 216
    move-wide/from16 v1, p1

    .line 217
    .line 218
    move-wide v12, v14

    .line 219
    move-wide/from16 v3, v17

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_7
    iget-boolean v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 223
    .line 224
    if-eqz v0, :cond_8

    .line 225
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string/jumbo v1, "calculateAmbientLux: totalWeight="

    .line 229
    .line 230
    .line 231
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v1, ", newAmbientLux="

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    div-float v1, v9, v6

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v8, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    :cond_8
    div-float/2addr v9, v6

    .line 255
    return v9
.end method

.method public final configure(ILandroid/hardware/display/BrightnessConfiguration;FZFZIIZZI)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p7

    .line 4
    .line 5
    move/from16 v2, p1

    .line 6
    .line 7
    move/from16 v3, p11

    .line 8
    .line 9
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mState:I

    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy;

    .line 19
    .line 20
    move-object/from16 v5, p2

    .line 21
    .line 22
    invoke-virtual {v2, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 27
    .line 28
    const/high16 v6, -0x40800000    # -1.0f

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    const/4 v8, 0x3

    .line 32
    iget-object v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    if-eqz p10, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v2, v4

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v10, Lcom/android/server/power/PowerHistorian$MessageRecord;

    .line 47
    .line 48
    const-string v11, "ShortTermModel: reset data, change configuration"

    .line 49
    .line 50
    invoke-direct {v10, v11}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v8, v10}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    if-eqz p9, :cond_3

    .line 63
    .line 64
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->clearUserDataPoints()V

    .line 71
    .line 72
    .line 73
    iput v6, v9, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 74
    .line 75
    iput v5, v9, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    .line 76
    .line 77
    iput-boolean v4, v9, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    move v2, v7

    .line 84
    :goto_2
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 85
    .line 86
    iget-boolean v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    .line 87
    .line 88
    const-string v12, "AutomaticBrightnessController"

    .line 89
    .line 90
    const/4 v13, 0x2

    .line 91
    if-ne v10, v1, :cond_4

    .line 92
    .line 93
    move v1, v4

    .line 94
    goto/16 :goto_5

    .line 95
    .line 96
    :cond_4
    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 97
    .line 98
    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 99
    .line 100
    if-eqz v14, :cond_5

    .line 101
    .line 102
    new-instance v14, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v15, "Display policy transitioning from "

    .line 105
    .line 106
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v15, " to "

    .line 113
    .line 114
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    invoke-static {v12, v14}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_5
    if-eq v1, v8, :cond_8

    .line 128
    .line 129
    if-ne v1, v13, :cond_6

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    if-eq v10, v8, :cond_7

    .line 133
    .line 134
    if-ne v10, v13, :cond_8

    .line 135
    .line 136
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    if-nez v14, :cond_8

    .line 141
    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 143
    .line 144
    .line 145
    move-result-wide v9

    .line 146
    iput-wide v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNonInteractiveTime:J

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_8
    :goto_3
    if-eq v1, v8, :cond_9

    .line 150
    .line 151
    if-ne v1, v13, :cond_c

    .line 152
    .line 153
    :cond_9
    if-eq v10, v8, :cond_c

    .line 154
    .line 155
    if-ne v10, v13, :cond_a

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_a
    if-eqz v11, :cond_b

    .line 159
    .line 160
    iput-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    .line 161
    .line 162
    :cond_b
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 163
    .line 164
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-nez v1, :cond_d

    .line 175
    .line 176
    :cond_c
    :goto_4
    move v1, v7

    .line 177
    goto :goto_5

    .line 178
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 179
    .line 180
    .line 181
    move-result-wide v14

    .line 182
    iget-wide v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNonInteractiveTime:J

    .line 183
    .line 184
    sub-long/2addr v14, v5

    .line 185
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 186
    .line 187
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy;

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getShortTermModelTimeout()J

    .line 194
    .line 195
    .line 196
    move-result-wide v5

    .line 197
    cmp-long v1, v14, v5

    .line 198
    .line 199
    if-lez v1, :cond_c

    .line 200
    .line 201
    iput-boolean v4, v9, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 202
    .line 203
    const-string v1, "ShortTermModel: invalidate user data"

    .line 204
    .line 205
    invoke-static {v12, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :goto_5
    or-int/2addr v1, v2

    .line 210
    move/from16 v2, p8

    .line 211
    .line 212
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayState:I

    .line 213
    .line 214
    if-eqz p6, :cond_e

    .line 215
    .line 216
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 217
    .line 218
    move/from16 v5, p5

    .line 219
    .line 220
    invoke-virtual {v2, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->setAutoBrightnessAdjustment(F)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    or-int/2addr v1, v2

    .line 225
    :cond_e
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mState:I

    .line 226
    .line 227
    if-ne v2, v7, :cond_f

    .line 228
    .line 229
    move v2, v7

    .line 230
    goto :goto_6

    .line 231
    :cond_f
    move v2, v4

    .line 232
    :goto_6
    if-eqz p4, :cond_14

    .line 233
    .line 234
    if-eqz v2, :cond_14

    .line 235
    .line 236
    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 237
    .line 238
    if-nez v5, :cond_10

    .line 239
    .line 240
    :goto_7
    move v5, v4

    .line 241
    goto :goto_9

    .line 242
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 243
    .line 244
    .line 245
    move-result-wide v5

    .line 246
    const-wide/16 v9, 0x258

    .line 247
    .line 248
    invoke-virtual {v0, v5, v6, v9, v10}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    const/4 v6, 0x0

    .line 253
    cmpg-float v6, v6, v5

    .line 254
    .line 255
    if-gtz v6, :cond_12

    .line 256
    .line 257
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 258
    .line 259
    if-eqz v6, :cond_11

    .line 260
    .line 261
    sget v6, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 262
    .line 263
    int-to-float v6, v6

    .line 264
    cmpg-float v6, v5, v6

    .line 265
    .line 266
    if-gez v6, :cond_12

    .line 267
    .line 268
    :cond_11
    invoke-virtual {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 269
    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_12
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 273
    .line 274
    if-eqz v6, :cond_13

    .line 275
    .line 276
    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 277
    .line 278
    sget v9, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 279
    .line 280
    int-to-float v9, v9

    .line 281
    cmpl-float v6, v6, v9

    .line 282
    .line 283
    if-ltz v6, :cond_13

    .line 284
    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string/jumbo v9, "setScreenBrightnessByUser: cancel currentLux: "

    .line 288
    .line 289
    .line 290
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    invoke-static {v12, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_13
    :goto_8
    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 305
    .line 306
    move/from16 v6, p3

    .line 307
    .line 308
    invoke-virtual {v0, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(FF)Z

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    :goto_9
    or-int/2addr v1, v5

    .line 313
    :cond_14
    if-nez p4, :cond_16

    .line 314
    .line 315
    if-eqz p6, :cond_15

    .line 316
    .line 317
    goto :goto_a

    .line 318
    :cond_15
    move v5, v4

    .line 319
    goto :goto_b

    .line 320
    :cond_16
    :goto_a
    move v5, v7

    .line 321
    :goto_b
    iget-object v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 322
    .line 323
    if-eqz v5, :cond_19

    .line 324
    .line 325
    if-eqz v2, :cond_19

    .line 326
    .line 327
    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 328
    .line 329
    if-nez v5, :cond_18

    .line 330
    .line 331
    iput-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 332
    .line 333
    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 334
    .line 335
    if-eqz v5, :cond_17

    .line 336
    .line 337
    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 338
    .line 339
    goto :goto_c

    .line 340
    :cond_17
    const/high16 v5, -0x40800000    # -1.0f

    .line 341
    .line 342
    :goto_c
    iput v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 343
    .line 344
    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 345
    .line 346
    iput v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    .line 347
    .line 348
    goto :goto_d

    .line 349
    :cond_18
    invoke-virtual {v6, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    .line 351
    .line 352
    :goto_d
    const-wide/16 v9, 0x2710

    .line 353
    .line 354
    invoke-virtual {v6, v13, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 355
    .line 356
    .line 357
    :cond_19
    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    .line 358
    .line 359
    if-eq v5, v3, :cond_1a

    .line 360
    .line 361
    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    .line 362
    .line 363
    move v1, v7

    .line 364
    :cond_1a
    if-eqz v11, :cond_20

    .line 365
    .line 366
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Lcom/android/server/display/AutomaticBrightnessController$4;

    .line 367
    .line 368
    if-nez v2, :cond_1d

    .line 369
    .line 370
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    .line 371
    .line 372
    if-eqz v2, :cond_1b

    .line 373
    .line 374
    goto :goto_e

    .line 375
    :cond_1b
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 376
    .line 377
    if-eqz v2, :cond_1f

    .line 378
    .line 379
    iput-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 380
    .line 381
    iput-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    .line 382
    .line 383
    iput v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 384
    .line 385
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 386
    .line 387
    iput v4, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 388
    .line 389
    iput v4, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 390
    .line 391
    iput v4, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 392
    .line 393
    const/high16 v2, -0x40800000    # -1.0f

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->sendAmbientLux(F)V

    .line 396
    .line 397
    .line 398
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 399
    .line 400
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 401
    .line 402
    if-eqz v11, :cond_1c

    .line 403
    .line 404
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 405
    .line 406
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 407
    .line 408
    .line 409
    :cond_1c
    const-string/jumbo v2, "setLightSensorEnabledForCAB: false"

    .line 410
    .line 411
    .line 412
    invoke-static {v12, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    goto :goto_f

    .line 416
    :cond_1d
    :goto_e
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 417
    .line 418
    if-nez v2, :cond_1f

    .line 419
    .line 420
    iput-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 421
    .line 422
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 423
    .line 424
    .line 425
    move-result-wide v8

    .line 426
    iput-wide v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 427
    .line 428
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    .line 429
    .line 430
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 431
    .line 432
    if-eqz v11, :cond_1e

    .line 433
    .line 434
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 435
    .line 436
    iget-object v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 437
    .line 438
    mul-int/lit16 v2, v2, 0x3e8

    .line 439
    .line 440
    invoke-virtual {v5, v3, v8, v2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 441
    .line 442
    .line 443
    :cond_1e
    const-string/jumbo v2, "setLightSensorEnabledForCAB: true"

    .line 444
    .line 445
    .line 446
    invoke-static {v12, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    move v2, v7

    .line 450
    goto :goto_10

    .line 451
    :cond_1f
    :goto_f
    move v2, v4

    .line 452
    :goto_10
    or-int/2addr v1, v2

    .line 453
    goto :goto_13

    .line 454
    :cond_20
    if-nez v2, :cond_22

    .line 455
    .line 456
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    .line 457
    .line 458
    if-eqz v2, :cond_21

    .line 459
    .line 460
    goto :goto_11

    .line 461
    :cond_21
    move v2, v4

    .line 462
    goto :goto_12

    .line 463
    :cond_22
    :goto_11
    move v2, v7

    .line 464
    :goto_12
    invoke-virtual {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    or-int/2addr v1, v2

    .line 469
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    .line 470
    .line 471
    if-eqz v2, :cond_24

    .line 472
    .line 473
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 474
    .line 475
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Lcom/android/server/display/AutomaticBrightnessController$4;

    .line 476
    .line 477
    if-eqz v2, :cond_23

    .line 478
    .line 479
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    .line 480
    .line 481
    if-nez v2, :cond_24

    .line 482
    .line 483
    iput-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    .line 484
    .line 485
    const-string/jumbo v2, "setProximitySensorEnabled::registerListener"

    .line 486
    .line 487
    .line 488
    invoke-static {v12, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 492
    .line 493
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 494
    .line 495
    invoke-virtual {v2, v3, v5, v8, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 496
    .line 497
    .line 498
    goto :goto_13

    .line 499
    :cond_23
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    .line 500
    .line 501
    if-eqz v2, :cond_24

    .line 502
    .line 503
    iput-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    .line 504
    .line 505
    const/4 v2, -0x1

    .line 506
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    .line 507
    .line 508
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    .line 509
    .line 510
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mOnProximityChangedRunnable:Lcom/android/server/display/AutomaticBrightnessController$2;

    .line 511
    .line 512
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 513
    .line 514
    .line 515
    const-string/jumbo v2, "setProximitySensorEnabled::unregisterListener"

    .line 516
    .line 517
    .line 518
    invoke-static {v12, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 522
    .line 523
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 524
    .line 525
    .line 526
    :cond_24
    :goto_13
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessThrottled:Z

    .line 527
    .line 528
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 529
    .line 530
    iget v3, v3, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 531
    .line 532
    if-eqz v3, :cond_25

    .line 533
    .line 534
    move v5, v7

    .line 535
    goto :goto_14

    .line 536
    :cond_25
    move v5, v4

    .line 537
    :goto_14
    if-eq v2, v5, :cond_27

    .line 538
    .line 539
    if-eqz v3, :cond_26

    .line 540
    .line 541
    move v1, v7

    .line 542
    goto :goto_15

    .line 543
    :cond_26
    move v1, v4

    .line 544
    :goto_15
    iput-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessThrottled:Z

    .line 545
    .line 546
    goto :goto_16

    .line 547
    :cond_27
    move v7, v1

    .line 548
    :goto_16
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    .line 549
    .line 550
    if-eqz v1, :cond_28

    .line 551
    .line 552
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 553
    .line 554
    .line 555
    const/4 v1, 0x0

    .line 556
    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    .line 557
    .line 558
    :cond_28
    if-eqz v7, :cond_29

    .line 559
    .line 560
    invoke-virtual {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 561
    .line 562
    .line 563
    :cond_29
    return-void
.end method

.method public getAmbientLux()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 2
    .line 3
    return p0
.end method

.method public final getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v1

    .line 14
    :goto_0
    iput v3, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    .line 15
    .line 16
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    .line 17
    .line 18
    iput v3, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 19
    .line 20
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdBrightness:F

    .line 21
    .line 22
    iput v3, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 23
    .line 24
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 25
    .line 26
    iput v3, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 27
    .line 28
    iget v3, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    move v2, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v2, v4

    .line 36
    :goto_1
    or-int/2addr v2, v3

    .line 37
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayState:I

    .line 38
    .line 39
    invoke-static {v3}, Landroid/view/Display;->isDozeState(I)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eq v3, v0, :cond_2

    .line 52
    .line 53
    const/4 v4, 0x4

    .line 54
    :cond_2
    or-int/2addr v2, v4

    .line 55
    iput v2, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput v2, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 64
    .line 65
    :cond_3
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 66
    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    return v1

    .line 70
    :cond_4
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayState:I

    .line 71
    .line 72
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eq p1, v0, :cond_5

    .line 85
    .line 86
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 87
    .line 88
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 89
    .line 90
    mul-float/2addr p1, p0

    .line 91
    return p1

    .line 92
    :cond_5
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 93
    .line 94
    return p0
.end method

.method public final getRawAutomaticScreenBrightness()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRawScreenAutoBrightness:F

    .line 2
    .line 3
    return p0
.end method

.method public final handleLightSensorEvent(JF)V
    .locals 10

    .line 1
    float-to-int v0, p3

    .line 2
    const-wide/32 v1, 0x20000

    .line 3
    .line 4
    .line 5
    const-string v3, "ALS"

    .line 6
    .line 7
    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 17
    .line 18
    iget v3, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 19
    .line 20
    const-string v4, "AutomaticBrightnessController"

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 29
    .line 30
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    .line 31
    .line 32
    if-eq v5, v3, :cond_1

    .line 33
    .line 34
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v6, "adjustLightSensorRate: previousRate="

    .line 41
    .line 42
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 46
    .line 47
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v6, ", currentRate="

    .line 51
    .line 52
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_0
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 68
    .line 69
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Lcom/android/server/display/AutomaticBrightnessController$4;

    .line 70
    .line 71
    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    .line 76
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 77
    .line 78
    mul-int/lit16 v5, v5, 0x3e8

    .line 79
    .line 80
    invoke-virtual {v3, v6, v7, v5, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 81
    .line 82
    .line 83
    :cond_1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 84
    .line 85
    add-int/2addr v0, v1

    .line 86
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 87
    .line 88
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    .line 89
    .line 90
    int-to-long v5, v0

    .line 91
    sub-long v5, p1, v5

    .line 92
    .line 93
    invoke-virtual {v2, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 94
    .line 95
    .line 96
    iget v0, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 97
    .line 98
    iget v3, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 99
    .line 100
    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    if-ne v3, v5, :cond_3

    .line 104
    .line 105
    mul-int/lit8 v0, v5, 0x2

    .line 106
    .line 107
    new-array v3, v0, [F

    .line 108
    .line 109
    new-array v7, v0, [J

    .line 110
    .line 111
    iget v8, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 112
    .line 113
    sub-int/2addr v5, v8

    .line 114
    iget-object v9, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 115
    .line 116
    invoke-static {v9, v8, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    .line 118
    .line 119
    iget-object v8, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 120
    .line 121
    iget v9, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 122
    .line 123
    invoke-static {v8, v9, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    .line 125
    .line 126
    iget v8, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 127
    .line 128
    if-eqz v8, :cond_2

    .line 129
    .line 130
    iget-object v9, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 131
    .line 132
    invoke-static {v9, v6, v3, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    .line 134
    .line 135
    iget-object v8, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 136
    .line 137
    iget v9, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 138
    .line 139
    invoke-static {v8, v6, v7, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    .line 141
    .line 142
    :cond_2
    iput-object v3, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 143
    .line 144
    iput-object v7, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 145
    .line 146
    iget v3, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 147
    .line 148
    iput v0, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 149
    .line 150
    iput v6, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 151
    .line 152
    move v0, v3

    .line 153
    :cond_3
    iget-object v3, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 154
    .line 155
    aput-wide p1, v3, v0

    .line 156
    .line 157
    iget-object v3, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 158
    .line 159
    aput p3, v3, v0

    .line 160
    .line 161
    iput-wide p1, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mLastTime:J

    .line 162
    .line 163
    iput p3, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mLastLux:F

    .line 164
    .line 165
    add-int/2addr v0, v1

    .line 166
    iput v0, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 167
    .line 168
    iget v3, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 169
    .line 170
    if-ne v0, v3, :cond_4

    .line 171
    .line 172
    iput v6, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 173
    .line 174
    :cond_4
    iget v0, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 175
    .line 176
    add-int/2addr v0, v1

    .line 177
    iput v0, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 178
    .line 179
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 180
    .line 181
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 182
    .line 183
    iget-boolean p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    .line 184
    .line 185
    if-eqz p3, :cond_a

    .line 186
    .line 187
    iget-boolean p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 188
    .line 189
    const-string v0, ", mAmbientLux="

    .line 190
    .line 191
    const-wide/16 v7, 0x0

    .line 192
    .line 193
    if-nez p3, :cond_6

    .line 194
    .line 195
    invoke-virtual {p0, p1, p2, v7, v8}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    .line 196
    .line 197
    .line 198
    move-result p3

    .line 199
    invoke-virtual {p0, p3}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 200
    .line 201
    .line 202
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 203
    .line 204
    iget-boolean p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 205
    .line 206
    if-eqz p3, :cond_5

    .line 207
    .line 208
    new-instance p3, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string/jumbo v3, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    .line 211
    .line 212
    .line 213
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 223
    .line 224
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p3

    .line 231
    invoke-static {v4, p3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 235
    .line 236
    .line 237
    :cond_6
    invoke-virtual {p0, p1, p2, v7, v8}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    iget p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 242
    .line 243
    cmpl-float p2, p1, p2

    .line 244
    .line 245
    if-gez p2, :cond_7

    .line 246
    .line 247
    iget p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 248
    .line 249
    cmpg-float p2, p1, p2

    .line 250
    .line 251
    if-lez p2, :cond_7

    .line 252
    .line 253
    iget-boolean p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    .line 254
    .line 255
    if-eqz p2, :cond_b

    .line 256
    .line 257
    :cond_7
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    .line 258
    .line 259
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 260
    .line 261
    .line 262
    iget-boolean p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 263
    .line 264
    if-eqz p2, :cond_9

    .line 265
    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string/jumbo p3, "updateAmbientLux: "

    .line 269
    .line 270
    .line 271
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 275
    .line 276
    cmpl-float p1, p1, p3

    .line 277
    .line 278
    if-lez p1, :cond_8

    .line 279
    .line 280
    const-string p1, "Brightened"

    .line 281
    .line 282
    goto :goto_0

    .line 283
    :cond_8
    const-string p1, "Darkened"

    .line 284
    .line 285
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string p1, ": mBrighteningLuxThreshold="

    .line 289
    .line 290
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 294
    .line 295
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string p1, ", mAmbientLightRingBuffer="

    .line 299
    .line 300
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 310
    .line 311
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-static {v4, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 322
    .line 323
    .line 324
    goto :goto_1

    .line 325
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 326
    .line 327
    .line 328
    :cond_b
    :goto_1
    return-void
.end method

.method public final isInIdleMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final nextAmbientLightBrighteningTransition(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 14
    .line 15
    cmpg-float v2, v2, v3

    .line 16
    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfigIdle:J

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 37
    .line 38
    :goto_2
    add-long/2addr p1, v0

    .line 39
    return-wide p1
.end method

.method public final nextAmbientLightDarkeningTransition(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 14
    .line 15
    cmpl-float v2, v2, v3

    .line 16
    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfigIdle:J

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 37
    .line 38
    :goto_2
    add-long/2addr p1, v0

    .line 39
    return-wide p1
.end method

.method public final notifyHbmInfo(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "user"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/os/UserManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string/jumbo v4, "high_brightness_mode_pms_enter"

    .line 36
    .line 37
    .line 38
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 39
    .line 40
    invoke-static {v3, v4, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public final onSensorChangedInternal(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 2
    .line 3
    const-string v1, "AutomaticBrightnessController"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v3, "onSensorChanged: 1st lux : "

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 17
    .line 18
    aget v3, v3, v2

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 31
    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 44
    .line 45
    aget v5, v0, v2

    .line 46
    .line 47
    iget-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    .line 48
    .line 49
    if-eqz v6, :cond_4

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    aget v0, v0, v6

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    cmpl-float v0, v0, v7

    .line 56
    .line 57
    if-lez v0, :cond_1

    .line 58
    .line 59
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mMinLuxUpdated:Z

    .line 60
    .line 61
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 64
    .line 65
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 66
    .line 67
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 68
    .line 69
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string/jumbo v8, "onSensorChanged: min lux : "

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 80
    .line 81
    aget v8, v8, v2

    .line 82
    .line 83
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 98
    .line 99
    const/4 v0, 0x2

    .line 100
    aget p1, p1, v0

    .line 101
    .line 102
    cmpl-float p1, p1, v7

    .line 103
    .line 104
    if-lez p1, :cond_2

    .line 105
    .line 106
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    .line 107
    .line 108
    if-nez p1, :cond_2

    .line 109
    .line 110
    move v2, v6

    .line 111
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    .line 112
    .line 113
    if-eq p1, v2, :cond_4

    .line 114
    .line 115
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    .line 116
    .line 117
    iput-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorPositionUpdatedTime:J

    .line 118
    .line 119
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    .line 120
    .line 121
    if-eqz v2, :cond_3

    .line 122
    .line 123
    const-string p1, "Front -> Rear"

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    const-string p1, "Rear -> Front"

    .line 127
    .line 128
    :goto_0
    const-string/jumbo v0, "onSensorChanged: "

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    .line 139
    .line 140
    .line 141
    :cond_5
    return-void
.end method

.method public final resetShortTermModel()V
    .locals 2

    .line 1
    const-string v0, "AutomaticBrightnessController"

    .line 2
    .line 3
    const-string/jumbo v1, "resetShortTermModel"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->clearUserDataPoints()V

    .line 12
    .line 13
    .line 14
    const/high16 v0, -0x40800000    # -1.0f

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    .line 17
    .line 18
    iput v0, v1, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 19
    .line 20
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 21
    .line 22
    iput v0, v1, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, v1, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 28
    .line 29
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const-string p0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 36
    .line 37
    const-string/jumbo v1, "notifyShortTermResetValid()"

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 44
    .line 45
    const/4 v0, 0x7

    .line 46
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public final sendAmbientLux(F)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSentAmbientLux:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v1, "sendAmbientLux("

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v3, "AutomaticBrightnessController"

    .line 29
    .line 30
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSentAmbientLux:F

    .line 34
    .line 35
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PAPAYA_DQE:Z

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-string/jumbo v5, "exynos_display"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/hardware/display/ExynosDisplaySolutionManager;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    float-to-int v5, p1

    .line 54
    const/4 v6, 0x0

    .line 55
    const-string v7, "atc_user"

    .line 56
    .line 57
    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/hardware/display/ExynosDisplaySolutionManager;->setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DISPLAY_QUALITY:Z

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    const-string v5, "DisplayQuality"

    .line 67
    .line 68
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    float-to-int v5, p1

    .line 77
    invoke-virtual {v0, v5}, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->enhanceDisplayOutdoorVisibilityByLux(I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    .line 85
    .line 86
    if-ne v0, v4, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const/4 v4, 0x0

    .line 90
    :goto_0
    const-string v0, ", "

    .line 91
    .line 92
    invoke-static {v4, v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    float-to-int p1, p1

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 111
    .line 112
    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->updateAutoBrightnessLux(II)V

    .line 113
    .line 114
    .line 115
    :cond_4
    return-void
.end method

.method public final setAmbientLux(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 2
    .line 3
    const-string v1, "AutomaticBrightnessController"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "setAmbientLux("

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ")"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    cmpg-float v2, p1, v0

    .line 32
    .line 33
    if-gez v2, :cond_1

    .line 34
    .line 35
    const-string p1, "Ambient lux was negative, ignoring and setting to 0"

    .line 36
    .line 37
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move p1, v0

    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->sendAmbientLux(F)V

    .line 42
    .line 43
    .line 44
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 45
    .line 46
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    if-eq v0, v1, :cond_3

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    if-eq v0, v1, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/HysteresisLevels;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/HysteresisLevels;

    .line 61
    .line 62
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/display/config/HysteresisLevels;->getBrighteningThreshold(F)F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/android/server/display/config/HysteresisLevels;->getDarkeningThreshold(F)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 75
    .line 76
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessRangeController;->onAmbientLuxChange(F)V

    .line 79
    .line 80
    .line 81
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 86
    .line 87
    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string/jumbo v2, "notifyAmbientLuxChanged(lux=%f)"

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    .line 116
    .line 117
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    const/4 v1, 0x5

    .line 125
    const/4 v2, 0x0

    .line 126
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 127
    .line 128
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 133
    .line 134
    .line 135
    :cond_4
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    .line 136
    .line 137
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 138
    .line 139
    invoke-static {p1, p0}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->-$$Nest$mmaybeReset(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;F)Z

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final setLightSensorEnabled(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Lcom/android/server/display/AutomaticBrightnessController$4;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const-string v3, "AutomaticBrightnessController"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 14
    .line 15
    if-nez p1, :cond_3

    .line 16
    .line 17
    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    iput-wide v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 29
    .line 30
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    .line 31
    .line 32
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 33
    .line 34
    const-string/jumbo p1, "setLightSensorEnabled: true"

    .line 35
    .line 36
    .line 37
    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorCct:Landroid/hardware/Sensor;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 46
    .line 47
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 48
    .line 49
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 50
    .line 51
    mul-int/lit16 p0, p0, 0x3e8

    .line 52
    .line 53
    invoke-virtual {v3, v1, p1, p0, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 54
    .line 55
    .line 56
    const-wide/16 p0, 0x320

    .line 57
    .line 58
    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    .line 60
    .line 61
    return v4

    .line 62
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    iput-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 69
    .line 70
    xor-int/2addr p1, v4

    .line 71
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 72
    .line 73
    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 74
    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    .line 78
    .line 79
    :cond_2
    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 80
    .line 81
    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRawScreenAutoBrightness:F

    .line 82
    .line 83
    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdBrightness:F

    .line 84
    .line 85
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 88
    .line 89
    iput v5, p1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 90
    .line 91
    iput v5, p1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 92
    .line 93
    iput v5, p1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 94
    .line 95
    const/4 p1, -0x1

    .line 96
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 97
    .line 98
    const/high16 p1, -0x40800000    # -1.0f

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->sendAmbientLux(F)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    .line 108
    .line 109
    const-string/jumbo p1, "setLightSensorEnabled: false"

    .line 110
    .line 111
    .line 112
    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    iput-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    .line 116
    .line 117
    iput-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    .line 118
    .line 119
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    return v5
.end method

.method public final setScreenBrightnessByUser(FF)Z
    .locals 8

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    .line 22
    .line 23
    iput p1, v0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 24
    .line 25
    iput p2, v0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, v0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "ShortTermModel: anchor="

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "AutomaticBrightnessController"

    .line 47
    .line 48
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    iput-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSetScreenBrightnessByUserTime:J

    .line 60
    .line 61
    const-string/jumbo v0, "change BrighteningLightDebounceConfig"

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_DPUC:Z

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 74
    .line 75
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    .line 78
    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mPrevScreenBrightness:F

    .line 82
    .line 83
    float-to-int v0, v0

    .line 84
    const/high16 v3, 0x437f0000    # 255.0f

    .line 85
    .line 86
    mul-float/2addr p0, v3

    .line 87
    float-to-int p0, p0

    .line 88
    mul-float/2addr p2, v3

    .line 89
    float-to-int p2, p2

    .line 90
    iget-object v3, v2, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const-string/jumbo v4, "screen_brightness_mode"

    .line 97
    .line 98
    .line 99
    const/4 v5, -0x2

    .line 100
    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v5, v2, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    const-string v6, "activity"

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Landroid/app/ActivityManager;

    .line 118
    .line 119
    invoke-virtual {v5, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    const-string v7, ""

    .line 128
    .line 129
    if-eqz v6, :cond_2

    .line 130
    .line 131
    move-object v5, v7

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 138
    .line 139
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 140
    .line 141
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    :goto_0
    const-string v6, ","

    .line 146
    .line 147
    invoke-static {p0, v5, v6, v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 148
    .line 149
    .line 150
    iget-object p0, v2, Lcom/android/server/power/HqmDataDispatcher;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    new-instance v4, Lorg/json/JSONObject;

    .line 164
    .line 165
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v5, "LUBS_L"

    .line 169
    .line 170
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    :try_start_0
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    :goto_1
    const-string v0, "LUBS_B"

    .line 183
    .line 184
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    :try_start_1
    invoke-virtual {v4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :catch_1
    move-exception p2

    .line 193
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 194
    .line 195
    .line 196
    :goto_2
    const-string p2, "LUBS_M"

    .line 197
    .line 198
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    :try_start_2
    invoke-virtual {v4, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :catch_2
    move-exception p2

    .line 207
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 208
    .line 209
    .line 210
    :goto_3
    const-string p2, "LUBS_P"

    .line 211
    .line 212
    :try_start_3
    invoke-virtual {v4, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :catch_3
    move-exception p0

    .line 217
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 218
    .line 219
    .line 220
    :goto_4
    iget-object p0, v2, Lcom/android/server/power/HqmDataDispatcher;->mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    .line 221
    .line 222
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    const-string v0, "\\{"

    .line 230
    .line 231
    invoke-virtual {p2, v0, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    const-string v0, "\\}"

    .line 236
    .line 237
    invoke-virtual {p2, v0, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    .line 247
    iget-object p2, p0, Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;->this$0:Lcom/android/server/power/HqmDataDispatcher;

    .line 248
    .line 249
    iget-object p2, p2, Lcom/android/server/power/HqmDataDispatcher;->mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

    .line 250
    .line 251
    check-cast p2, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda0;

    .line 252
    .line 253
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 257
    .line 258
    .line 259
    move-result-wide v1

    .line 260
    const/16 p2, 0x2710

    .line 261
    .line 262
    int-to-long v3, p2

    .line 263
    add-long/2addr v1, v3

    .line 264
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 265
    .line 266
    .line 267
    :cond_3
    return p1

    .line 268
    :cond_4
    :goto_5
    return v1
.end method

.method public final switchMode(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, p1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Switching to mode "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "AutomaticBrightnessController"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    if-eq p1, v0, :cond_3

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ne v2, v0, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/android/server/display/BrightnessMappingStrategy;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 79
    .line 80
    const/4 v3, 0x7

    .line 81
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    .line 83
    .line 84
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/android/server/display/BrightnessMappingStrategy;->getShortTermModelTimeout()J

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    add-long/2addr v6, v4

    .line 100
    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 101
    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string/jumbo v3, "mPreviousShortTermModel: "

    .line 106
    .line 107
    .line 108
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPausedShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 124
    .line 125
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lcom/android/server/display/BrightnessMappingStrategy;

    .line 130
    .line 131
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 132
    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 136
    .line 137
    invoke-static {v3, p1}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->-$$Nest$mmaybeReset(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;F)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_4

    .line 142
    .line 143
    iget p1, v3, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 144
    .line 145
    iget v1, v3, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    .line 146
    .line 147
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(FF)Z

    .line 148
    .line 149
    .line 150
    :cond_4
    const/4 p1, 0x0

    .line 151
    iput p1, v3, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 152
    .line 153
    iput p1, v3, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    .line 154
    .line 155
    iput-boolean v0, v3, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 156
    .line 157
    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 158
    .line 159
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 160
    .line 161
    const/4 p1, 0x6

    .line 162
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_6
    const/4 p1, 0x0

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 168
    .line 169
    .line 170
    :goto_2
    return-void
.end method

.method public final updateAmbientLux(J)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 6
    .line 7
    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 8
    .line 9
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 10
    .line 11
    const-string v6, ", mAmbientLux="

    .line 12
    .line 13
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonShort:I

    .line 14
    .line 15
    const-string v8, "AutomaticBrightnessController"

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    .line 21
    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    :cond_0
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 25
    .line 26
    int-to-long v10, v3

    .line 27
    iget-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 28
    .line 29
    add-long/2addr v10, v12

    .line 30
    cmp-long v3, v1, v10

    .line 31
    .line 32
    if-gez v3, :cond_2

    .line 33
    .line 34
    iget-boolean v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string/jumbo v0, "updateAmbientLux: Sensor not ready yet: time="

    .line 39
    .line 40
    .line 41
    const-string v3, ", timeWhenSensorWarmedUp="

    .line 42
    .line 43
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v8, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v5, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    int-to-long v10, v7

    .line 62
    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 67
    .line 68
    .line 69
    const/16 v3, 0x8

    .line 70
    .line 71
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    .line 73
    .line 74
    iput-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 75
    .line 76
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 77
    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string/jumbo v10, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 95
    .line 96
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v8, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {v0, v9}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mMinLuxUpdated:Z

    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    const-wide/16 v11, 0x9c4

    .line 113
    .line 114
    const/4 v13, 0x2

    .line 115
    if-eqz v3, :cond_7

    .line 116
    .line 117
    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mMinLuxUpdated:Z

    .line 118
    .line 119
    iget-wide v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSetScreenBrightnessByUserTime:J

    .line 120
    .line 121
    add-long/2addr v14, v11

    .line 122
    cmp-long v3, v1, v14

    .line 123
    .line 124
    if-ltz v3, :cond_6

    .line 125
    .line 126
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 127
    .line 128
    if-ne v3, v13, :cond_5

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    move v3, v9

    .line 132
    goto :goto_1

    .line 133
    :cond_6
    :goto_0
    const-string/jumbo v0, "updateAmbientLux: min lux is ignored"

    .line 134
    .line 135
    .line 136
    invoke-static {v8, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_7
    move v3, v10

    .line 141
    :goto_1
    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    .line 142
    .line 143
    const v15, 0x10068

    .line 144
    .line 145
    .line 146
    if-eqz v14, :cond_8

    .line 147
    .line 148
    iget-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 149
    .line 150
    invoke-virtual {v10}, Landroid/hardware/Sensor;->getType()I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-ne v10, v15, :cond_8

    .line 155
    .line 156
    iget-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    .line 157
    .line 158
    if-eqz v10, :cond_8

    .line 159
    .line 160
    move/from16 v16, v14

    .line 161
    .line 162
    iget-wide v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorPositionUpdatedTime:J

    .line 163
    .line 164
    const-wide/16 v17, 0x12c

    .line 165
    .line 166
    add-long v13, v13, v17

    .line 167
    .line 168
    cmp-long v17, v1, v13

    .line 169
    .line 170
    if-gez v17, :cond_9

    .line 171
    .line 172
    invoke-virtual {v5, v9, v13, v14}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_8
    move/from16 v16, v14

    .line 177
    .line 178
    :cond_9
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    .line 179
    .line 180
    .line 181
    move-result-wide v13

    .line 182
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    .line 183
    .line 184
    .line 185
    move-result-wide v17

    .line 186
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    .line 187
    .line 188
    int-to-long v9, v10

    .line 189
    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSlowAmbientLux:F

    .line 194
    .line 195
    int-to-long v9, v7

    .line 196
    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    iput v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 201
    .line 202
    iget-wide v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSetScreenBrightnessByUserTime:J

    .line 203
    .line 204
    add-long/2addr v9, v11

    .line 205
    cmp-long v7, v1, v9

    .line 206
    .line 207
    if-gez v7, :cond_a

    .line 208
    .line 209
    const/4 v7, 0x1

    .line 210
    goto :goto_2

    .line 211
    :cond_a
    const/4 v7, 0x0

    .line 212
    :goto_2
    if-eqz v16, :cond_17

    .line 213
    .line 214
    iget-object v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 215
    .line 216
    invoke-virtual {v9}, Landroid/hardware/Sensor;->getType()I

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-ne v9, v15, :cond_16

    .line 221
    .line 222
    iget-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    .line 223
    .line 224
    if-eqz v9, :cond_14

    .line 225
    .line 226
    const-wide/16 v9, 0x0

    .line 227
    .line 228
    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    .line 229
    .line 230
    .line 231
    move-result v11

    .line 232
    iput v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSlowAmbientLux:F

    .line 233
    .line 234
    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 239
    .line 240
    iget-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    .line 241
    .line 242
    if-eqz v9, :cond_c

    .line 243
    .line 244
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 245
    .line 246
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxOfFrontLightSensor:F

    .line 247
    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string v10, "Last front lux: "

    .line 251
    .line 252
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxOfFrontLightSensor:F

    .line 256
    .line 257
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v10, ", Current rear lux: "

    .line 261
    .line 262
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 266
    .line 267
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxOfFrontLightSensor:F

    .line 278
    .line 279
    const/high16 v10, 0x3f800000    # 1.0f

    .line 280
    .line 281
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 286
    .line 287
    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    .line 288
    .line 289
    .line 290
    move-result v10

    .line 291
    div-float/2addr v9, v10

    .line 292
    const/high16 v10, 0x40a00000    # 5.0f

    .line 293
    .line 294
    cmpg-float v9, v9, v10

    .line 295
    .line 296
    if-gtz v9, :cond_b

    .line 297
    .line 298
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 299
    .line 300
    const/high16 v10, 0x42480000    # 50.0f

    .line 301
    .line 302
    cmpl-float v9, v9, v10

    .line 303
    .line 304
    if-ltz v9, :cond_b

    .line 305
    .line 306
    const/4 v9, 0x1

    .line 307
    goto :goto_3

    .line 308
    :cond_b
    const/4 v9, 0x2

    .line 309
    goto :goto_3

    .line 310
    :cond_c
    const/4 v9, 0x0

    .line 311
    :goto_3
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    .line 312
    .line 313
    if-eq v10, v9, :cond_13

    .line 314
    .line 315
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    .line 316
    .line 317
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 318
    .line 319
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 320
    .line 321
    cmpg-float v10, v9, v10

    .line 322
    .line 323
    if-gtz v10, :cond_d

    .line 324
    .line 325
    iget-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    .line 326
    .line 327
    if-eqz v10, :cond_e

    .line 328
    .line 329
    :cond_d
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 330
    .line 331
    cmpl-float v9, v9, v10

    .line 332
    .line 333
    if-ltz v9, :cond_f

    .line 334
    .line 335
    :cond_e
    const/4 v3, 0x1

    .line 336
    :cond_f
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 337
    .line 338
    invoke-virtual {v0, v9}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 339
    .line 340
    .line 341
    new-instance v9, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string/jumbo v10, "updateAmbientLux("

    .line 344
    .line 345
    .line 346
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    .line 350
    .line 351
    if-eqz v10, :cond_10

    .line 352
    .line 353
    const-string v10, "Rear"

    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_10
    const-string v10, "Front"

    .line 357
    .line 358
    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v10, ", "

    .line 362
    .line 363
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    .line 367
    .line 368
    const/4 v11, 0x1

    .line 369
    if-eq v10, v11, :cond_12

    .line 370
    .line 371
    const/4 v11, 0x2

    .line 372
    if-eq v10, v11, :cond_11

    .line 373
    .line 374
    const-string v10, "DEFAULT"

    .line 375
    .line 376
    goto :goto_5

    .line 377
    :cond_11
    const-string v10, "TOUCH_LOW"

    .line 378
    .line 379
    goto :goto_5

    .line 380
    :cond_12
    const-string v10, "TOUCH_HIGH"

    .line 381
    .line 382
    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v10, "): "

    .line 386
    .line 387
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 391
    .line 392
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 393
    .line 394
    .line 395
    move-result-object v10

    .line 396
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v10

    .line 400
    const-string v11, "%6.0f"

    .line 401
    .line 402
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v10

    .line 406
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v10, " < "

    .line 410
    .line 411
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 415
    .line 416
    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 417
    .line 418
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 419
    .line 420
    .line 421
    move-result-object v15

    .line 422
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v15

    .line 426
    move/from16 v16, v3

    .line 427
    .line 428
    const-string v3, "%8.1f"

    .line 429
    .line 430
    invoke-static {v12, v3, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 441
    .line 442
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    new-instance v9, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    const-string v10, "[api] "

    .line 464
    .line 465
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    invoke-static {v8, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    move/from16 v3, v16

    .line 479
    .line 480
    :cond_13
    const/4 v9, 0x0

    .line 481
    iput-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    .line 482
    .line 483
    goto :goto_6

    .line 484
    :cond_14
    const/4 v9, 0x0

    .line 485
    :goto_6
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    .line 486
    .line 487
    const/4 v11, 0x1

    .line 488
    if-ne v10, v11, :cond_15

    .line 489
    .line 490
    iget-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    .line 491
    .line 492
    if-nez v10, :cond_15

    .line 493
    .line 494
    move v10, v11

    .line 495
    goto :goto_8

    .line 496
    :cond_15
    :goto_7
    move v10, v9

    .line 497
    goto :goto_8

    .line 498
    :cond_16
    const/4 v9, 0x0

    .line 499
    const/4 v11, 0x1

    .line 500
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    .line 501
    .line 502
    if-ne v10, v11, :cond_15

    .line 503
    .line 504
    const/4 v10, 0x1

    .line 505
    goto :goto_8

    .line 506
    :cond_17
    const/4 v9, 0x0

    .line 507
    goto :goto_7

    .line 508
    :goto_8
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSlowAmbientLux:F

    .line 509
    .line 510
    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 511
    .line 512
    cmpl-float v12, v9, v11

    .line 513
    .line 514
    if-ltz v12, :cond_18

    .line 515
    .line 516
    iget v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 517
    .line 518
    cmpl-float v11, v12, v11

    .line 519
    .line 520
    if-ltz v11, :cond_18

    .line 521
    .line 522
    cmp-long v11, v13, v1

    .line 523
    .line 524
    if-gtz v11, :cond_18

    .line 525
    .line 526
    if-eqz v7, :cond_1a

    .line 527
    .line 528
    :cond_18
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 529
    .line 530
    cmpg-float v9, v9, v7

    .line 531
    .line 532
    if-gtz v9, :cond_19

    .line 533
    .line 534
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 535
    .line 536
    cmpg-float v7, v9, v7

    .line 537
    .line 538
    if-gtz v7, :cond_19

    .line 539
    .line 540
    cmp-long v7, v17, v1

    .line 541
    .line 542
    if-gtz v7, :cond_19

    .line 543
    .line 544
    if-eqz v10, :cond_1a

    .line 545
    .line 546
    :cond_19
    if-eqz v3, :cond_1d

    .line 547
    .line 548
    :cond_1a
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 549
    .line 550
    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    .line 551
    .line 552
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 553
    .line 554
    invoke-virtual {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 555
    .line 556
    .line 557
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 558
    .line 559
    if-eqz v3, :cond_1c

    .line 560
    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    const-string/jumbo v7, "updateAmbientLux: "

    .line 564
    .line 565
    .line 566
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 570
    .line 571
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 572
    .line 573
    cmpl-float v7, v7, v9

    .line 574
    .line 575
    if-lez v7, :cond_1b

    .line 576
    .line 577
    const-string v7, "Brightened"

    .line 578
    .line 579
    goto :goto_9

    .line 580
    :cond_1b
    const-string v7, "Darkened"

    .line 581
    .line 582
    :goto_9
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v7, ": mAmbientBrighteningThreshold="

    .line 586
    .line 587
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 591
    .line 592
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    const-string v7, ", mAmbientDarkeningThreshold="

    .line 596
    .line 597
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 601
    .line 602
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    const-string v7, ", mAmbientLightRingBuffer="

    .line 606
    .line 607
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 617
    .line 618
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v3

    .line 625
    invoke-static {v8, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .line 627
    .line 628
    :cond_1c
    const/4 v3, 0x1

    .line 629
    invoke-virtual {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 630
    .line 631
    .line 632
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    .line 633
    .line 634
    .line 635
    move-result-wide v13

    .line 636
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    .line 637
    .line 638
    .line 639
    move-result-wide v17

    .line 640
    :cond_1d
    move-wide/from16 v3, v17

    .line 641
    .line 642
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 643
    .line 644
    .line 645
    move-result-wide v3

    .line 646
    cmp-long v6, v3, v1

    .line 647
    .line 648
    if-lez v6, :cond_1e

    .line 649
    .line 650
    goto :goto_a

    .line 651
    :cond_1e
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    .line 652
    .line 653
    int-to-long v3, v3

    .line 654
    add-long/2addr v3, v1

    .line 655
    :goto_a
    iget-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 656
    .line 657
    if-eqz v1, :cond_1f

    .line 658
    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    .line 660
    .line 661
    const-string/jumbo v2, "updateAmbientLux: Scheduling ambient lux update for "

    .line 662
    .line 663
    .line 664
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    invoke-static {v8, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .line 683
    .line 684
    :cond_1f
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    .line 685
    .line 686
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$RealClock;->getSensorEventScaleTime()J

    .line 687
    .line 688
    .line 689
    move-result-wide v0

    .line 690
    sub-long/2addr v3, v0

    .line 691
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 692
    .line 693
    .line 694
    move-result-wide v0

    .line 695
    add-long/2addr v0, v3

    .line 696
    const/4 v2, 0x1

    .line 697
    invoke-virtual {v5, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 698
    .line 699
    .line 700
    return-void
.end method

.method public final updateAutoBrightness(Z)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 10
    .line 11
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 14
    .line 15
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 16
    .line 17
    invoke-virtual {v3, v5, v4, v6}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(Ljava/lang/String;FI)F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRawScreenAutoBrightness:F

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 24
    .line 25
    iget-object v5, v4, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 26
    .line 27
    iget v5, v5, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-static {v3, v5, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 46
    .line 47
    iget-object v7, v4, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 48
    .line 49
    iget v7, v7, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {v6, v7, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-static {v6, v4}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 60
    .line 61
    .line 62
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 63
    .line 64
    cmpl-float v4, v4, v5

    .line 65
    .line 66
    const-string v6, "AutomaticBrightnessController"

    .line 67
    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 71
    .line 72
    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggedAmbientLux:F

    .line 73
    .line 74
    cmpl-float v4, v4, v7

    .line 75
    .line 76
    if-eqz v4, :cond_5

    .line 77
    .line 78
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string/jumbo v7, "updateAutoBrightness : "

    .line 81
    .line 82
    .line 83
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    const-string v8, "%3d"

    .line 99
    .line 100
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v7, "("

    .line 108
    .line 109
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 113
    .line 114
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const-string v8, "%.2f"

    .line 123
    .line 124
    invoke-static {v7, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v3, ") "

    .line 132
    .line 133
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 137
    .line 138
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    const-string v8, "%6.0f"

    .line 147
    .line 148
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v3, " < "

    .line 156
    .line 157
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 161
    .line 162
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    const-string v10, "%8.1f"

    .line 171
    .line 172
    invoke-static {v7, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 183
    .line 184
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v3, " (adj:"

    .line 200
    .line 201
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 205
    .line 206
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    const-string v8, "%+.1f"

    .line 219
    .line 220
    invoke-static {v7, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v3, ")"

    .line 228
    .line 229
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 233
    .line 234
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-eqz v3, :cond_2

    .line 239
    .line 240
    const-string v3, " (1st)"

    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_2
    const-string v3, ""

    .line 244
    .line 245
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string v7, "[api] "

    .line 255
    .line 256
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-static {v6, v4}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 270
    .line 271
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    new-instance v7, Lcom/android/server/power/PowerHistorian$MessageRecord;

    .line 275
    .line 276
    invoke-direct {v7, v3}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v2, v7}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 280
    .line 281
    .line 282
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 283
    .line 284
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggedAmbientLux:F

    .line 285
    .line 286
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 287
    .line 288
    if-eqz v4, :cond_5

    .line 289
    .line 290
    sget v4, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 291
    .line 292
    int-to-float v4, v4

    .line 293
    cmpl-float v3, v3, v4

    .line 294
    .line 295
    if-ltz v3, :cond_3

    .line 296
    .line 297
    move v3, v1

    .line 298
    goto :goto_1

    .line 299
    :cond_3
    move v3, v0

    .line 300
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    .line 301
    .line 302
    if-eq v4, v3, :cond_5

    .line 303
    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v7, "HBM is "

    .line 307
    .line 308
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    if-eqz v3, :cond_4

    .line 312
    .line 313
    const-string v7, "Enabled"

    .line 314
    .line 315
    goto :goto_2

    .line 316
    :cond_4
    const-string v7, "Disabled"

    .line 317
    .line 318
    :goto_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string v7, ". mScreenAutoBrightness = "

    .line 322
    .line 323
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-static {v6, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    .line 341
    .line 342
    invoke-virtual {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->notifyHbmInfo(Z)V

    .line 343
    .line 344
    .line 345
    :cond_5
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 346
    .line 347
    invoke-static {v3, v5}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    if-nez v3, :cond_8

    .line 352
    .line 353
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 354
    .line 355
    if-eqz v3, :cond_6

    .line 356
    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string/jumbo v4, "updateAutoBrightness: mScreenAutoBrightness="

    .line 360
    .line 361
    .line 362
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 366
    .line 367
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v4, ", newScreenAutoBrightness="

    .line 371
    .line 372
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    :cond_6
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 386
    .line 387
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    .line 388
    .line 389
    if-eqz v3, :cond_7

    .line 390
    .line 391
    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    int-to-float v3, v3

    .line 396
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 397
    .line 398
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 399
    .line 400
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 401
    .line 402
    const/4 v7, 0x4

    .line 403
    new-array v7, v7, [F

    .line 404
    .line 405
    aput v3, v7, v0

    .line 406
    .line 407
    aput v4, v7, v1

    .line 408
    .line 409
    const/4 v0, 0x2

    .line 410
    aput v5, v7, v0

    .line 411
    .line 412
    aput v6, v7, v2

    .line 413
    .line 414
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 415
    .line 416
    invoke-virtual {v0, v7}, Landroid/hardware/SensorManager;->setBrightnessHysteresisParameter([F)V

    .line 417
    .line 418
    .line 419
    :cond_7
    if-eqz p1, :cond_8

    .line 420
    .line 421
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 422
    .line 423
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 424
    .line 425
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 426
    .line 427
    .line 428
    :cond_8
    return-void
.end method
