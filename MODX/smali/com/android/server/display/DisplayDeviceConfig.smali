.class public final Lcom/android/server/display/DisplayDeviceConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final BRIGHTNESS_DEFAULT:F = 0.5f

.field public static final DEBUG:Z

.field public static final DEFAULT_BRIGHTNESS_THRESHOLDS:[F

.field static final HDR_PERCENT_OF_SCREEN_REQUIRED_DEFAULT:F = 0.5f


# instance fields
.field public mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field public mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field public mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/SecHysteresisLevels;

.field public mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/SecHysteresisLevels;

.field public mAmbientHorizonLong:I

.field public mAmbientHorizonShort:I

.field public mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

.field public mAutoBrightnessAvailable:Z

.field public mAutoBrightnessBrighteningLightDebounce:J

.field public mAutoBrightnessBrighteningLightDebounceIdle:J

.field public mAutoBrightnessDarkeningLightDebounce:J

.field public mAutoBrightnessDarkeningLightDebounceIdle:J

.field public mBacklight:[F

.field public mBacklightMaximum:F

.field public mBacklightMinimum:F

.field public mBacklightToBrightnessSpline:Landroid/util/Spline;

.field public mBacklightToNitsSpline:Landroid/util/Spline;

.field public mBrightness:[F

.field public mBrightnessCapForWearBedtimeMode:F

.field public mBrightnessDefault:F

.field public mBrightnessRampDecreaseMaxIdleMillis:J

.field public mBrightnessRampDecreaseMaxMillis:J

.field public mBrightnessRampFastDecrease:F

.field public mBrightnessRampFastIncrease:F

.field public mBrightnessRampIncreaseMaxIdleMillis:J

.field public mBrightnessRampIncreaseMaxMillis:J

.field public mBrightnessRampSlowDecrease:F

.field public mBrightnessRampSlowDecreaseIdle:F

.field public mBrightnessRampSlowIncrease:F

.field public mBrightnessRampSlowIncreaseIdle:F

.field public mBrightnessToBacklightSpline:Landroid/util/Spline;

.field public final mContext:Landroid/content/Context;

.field public mDdcAutoBrightnessAvailable:Z

.field public mDefaultHighBlockingZoneRefreshRate:I

.field public mDefaultLowBlockingZoneRefreshRate:I

.field public mDensityMapping:Lcom/android/server/display/DensityMapping;

.field public mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

.field public mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

.field public mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

.field public mHighAmbientBrightnessThresholds:[F

.field public mHighBlockingZoneThermalMapId:Ljava/lang/String;

.field public mHighDisplayBrightnessThresholds:[F

.field public mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

.field public mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

.field public mInterpolationType:I

.field public mIsCoverDisplay:Z

.field public mIsFirstDisplay:Z

.field public mIsHighBrightnessModeEnabled:Z

.field public mIsSimpleMappingStrategy:Z

.field public mLoadedFrom:Ljava/lang/String;

.field public mLowAmbientBrightnessThresholds:[F

.field public mLowBlockingZoneThermalMapId:Ljava/lang/String;

.field public mLowDisplayBrightnessThresholds:[F

.field public final mLuxThrottlingData:Ljava/util/Map;

.field public mName:Ljava/lang/String;

.field public mNits:[F

.field public mNitsToBacklightSpline:Landroid/util/Spline;

.field public mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

.field public final mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

.field public mProximitySensor:Lcom/android/server/display/config/SensorData;

.field public mQuirks:Ljava/util/List;

.field public mRawBacklight:[F

.field public mRawNits:[F

.field public mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

.field public final mRefreshRateLimitations:Ljava/util/List;

.field public final mRefreshRateThrottlingMap:Ljava/util/Map;

.field public final mRefreshRateZoneProfiles:Ljava/util/Map;

.field public mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field public mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field public mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

.field public mScreenOffBrightnessSensorValueToLux:[I

.field public mSdrToHdrSpline:Landroid/util/Spline;

.field public mTempSensor:Lcom/android/server/display/config/SensorData;

.field public final mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

.field public mUseSurfaceControlBrightness:Z

.field public mVrrSupportEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DisplayDeviceConfig"

    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/DisplayDeviceConfig;->DEBUG:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [F

    .line 12
    sput-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    .line 12
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 14
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 16
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 18
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 20
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 22
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 24
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 26
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 28
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 30
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 32
    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 36
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 38
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 40
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 42
    const/16 v0, 0x9c4

    .line 44
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 46
    const/16 v0, 0x258

    .line 48
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    .line 50
    sget-object v0, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_THRESHOLD_LEVELS:[F

    .line 52
    sget-object v9, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

    .line 54
    sget-object v10, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

    .line 56
    const v2, 0x1070157

    .line 59
    const/4 v8, 0x1

    .line 60
    const/4 v1, 0x0

    .line 61
    const v3, 0x1070152

    .line 64
    const v4, 0x1070156

    .line 67
    move-object v5, v0

    .line 68
    move-object v6, v9

    .line 69
    move-object v7, v10

    .line 70
    invoke-static/range {v1 .. v8}, Lcom/android/server/display/config/HysteresisLevels;->createHysteresisLevels(Lcom/android/server/display/config/Thresholds;III[F[F[FZ)Lcom/android/server/display/config/HysteresisLevels;

    .line 73
    move-result-object v1

    .line 74
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 76
    const v2, 0x1070157

    .line 79
    const/4 v8, 0x1

    .line 80
    const/4 v1, 0x0

    .line 81
    const v3, 0x1070152

    .line 84
    const v4, 0x1070156

    .line 87
    move-object v5, v0

    .line 88
    move-object v6, v9

    .line 89
    move-object v7, v10

    .line 90
    invoke-static/range {v1 .. v8}, Lcom/android/server/display/config/HysteresisLevels;->createHysteresisLevels(Lcom/android/server/display/config/Thresholds;III[F[F[FZ)Lcom/android/server/display/config/HysteresisLevels;

    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 96
    sget-object v0, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    .line 98
    sget-object v9, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    .line 100
    sget-object v10, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    .line 102
    const v2, 0x107008f

    .line 105
    const/4 v8, 0x0

    .line 106
    const/4 v1, 0x0

    .line 107
    const v3, 0x107008d

    .line 110
    const v4, 0x107008e

    .line 113
    move-object v5, v0

    .line 114
    move-object v6, v9

    .line 115
    move-object v7, v10

    .line 116
    invoke-static/range {v1 .. v8}, Lcom/android/server/display/config/HysteresisLevels;->createHysteresisLevels(Lcom/android/server/display/config/Thresholds;III[F[F[FZ)Lcom/android/server/display/config/HysteresisLevels;

    .line 119
    move-result-object v1

    .line 120
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 122
    const v2, 0x107008f

    .line 125
    const/4 v8, 0x0

    .line 126
    const/4 v1, 0x0

    .line 127
    const v3, 0x107008d

    .line 130
    const v4, 0x107008e

    .line 133
    move-object v5, v0

    .line 134
    move-object v6, v9

    .line 135
    move-object v7, v10

    .line 136
    invoke-static/range {v1 .. v8}, Lcom/android/server/display/config/HysteresisLevels;->createHysteresisLevels(Lcom/android/server/display/config/Thresholds;III[F[F[FZ)Lcom/android/server/display/config/HysteresisLevels;

    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 142
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/SecHysteresisLevels;

    .line 145
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/SecHysteresisLevels;

    .line 147
    const/4 v1, 0x0

    .line 148
    iput-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    .line 150
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    .line 154
    const-wide/16 v2, -0x1

    .line 156
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 158
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 160
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    .line 162
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    .line 164
    iput-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    .line 166
    const/4 v2, 0x1

    .line 167
    iput-boolean v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 169
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    .line 171
    const/16 v1, 0x3c

    .line 173
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    .line 175
    new-instance v1, Ljava/util/HashMap;

    .line 177
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 180
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 182
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    .line 184
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 186
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 188
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 190
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 192
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    .line 194
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    .line 198
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    .line 205
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    .line 212
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 215
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    .line 219
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    .line 226
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    .line 231
    sget-object v0, Lcom/android/server/display/config/RefreshRateData;->DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;

    .line 233
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 235
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 237
    iput-object p2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 239
    return-void
.end method

.method public static convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string v2, "Unexpected Thermal Status: "

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    const-string v1, "DisplayDeviceConfig"

    .line 28
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return v0

    .line 32
    :pswitch_0
    const/4 p0, 0x6

    .line 33
    return p0

    .line 34
    :pswitch_1
    const/4 p0, 0x5

    .line 35
    return p0

    .line 36
    :pswitch_2
    const/4 p0, 0x4

    .line 37
    return p0

    .line 38
    :pswitch_3
    const/4 p0, 0x3

    .line 39
    return p0

    .line 40
    :pswitch_4
    const/4 p0, 0x2

    .line 41
    return p0

    .line 42
    :pswitch_5
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :pswitch_6
    return v0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 6
    const-string p0, "Static values"

    .line 8
    iput-object p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 10
    const/4 p0, 0x0

    .line 11
    iput p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 13
    const/high16 p0, 0x3f800000    # 1.0f

    .line 15
    iput p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 17
    const/high16 p1, 0x3f000000    # 0.5f

    .line 19
    iput p1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 21
    iput p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 23
    iput p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 25
    iput p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 27
    iput p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 29
    iput p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 31
    iput p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 33
    const-wide/16 p0, 0x0

    .line 35
    iput-wide p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 37
    iput-wide p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 39
    iput-wide p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 41
    iput-wide p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 43
    const/4 p0, 0x0

    .line 44
    iput-object p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 46
    iput-object p0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 48
    const/4 p1, 0x2

    .line 49
    new-array p1, p1, [F

    .line 51
    fill-array-data p1, :array_0

    .line 54
    invoke-static {p1, p1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 57
    move-result-object v1

    .line 58
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 60
    invoke-static {p1, p1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 63
    move-result-object p1

    .line 64
    iput-object p1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 66
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    .line 69
    iget-object p1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object p1

    .line 75
    new-instance v1, Lcom/android/server/display/config/SensorData;

    .line 77
    const v2, 0x1040345

    .line 80
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    const-string v2, ""

    .line 86
    invoke-direct {v1, p1, v2}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 91
    new-instance p1, Lcom/android/server/display/config/SensorData;

    .line 93
    invoke-direct {p1}, Lcom/android/server/display/config/SensorData;-><init>()V

    .line 96
    iput-object p1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 98
    new-instance p1, Lcom/android/server/display/config/SensorData;

    .line 100
    const-string v1, "SKIN"

    .line 102
    invoke-direct {p1, v1, p0}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iput-object p1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 107
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    .line 110
    return-object v0

    .line 111
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [F

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    const/high16 v3, -0x40800000    # -1.0f

    .line 12
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 15
    move-result v3

    .line 16
    aput v3, v1, v2

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    return-object v1
.end method


# virtual methods
.method public final constrainNitsAndBacklightArrays()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 6
    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 8
    cmpl-float v2, v2, v3

    .line 10
    const/4 v4, 0x1

    .line 11
    if-gtz v2, :cond_7

    .line 13
    array-length v2, v0

    .line 14
    sub-int/2addr v2, v4

    .line 15
    aget v2, v0, v2

    .line 17
    iget v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 19
    cmpg-float v2, v2, v5

    .line 21
    if-ltz v2, :cond_7

    .line 23
    cmpl-float v2, v3, v5

    .line 25
    if-gtz v2, :cond_7

    .line 27
    array-length v2, v0

    .line 28
    new-array v2, v2, [F

    .line 30
    array-length v0, v0

    .line 31
    new-array v0, v0, [F

    .line 33
    move v3, v1

    .line 34
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 36
    array-length v6, v5

    .line 37
    sub-int/2addr v6, v4

    .line 38
    if-ge v3, v6, :cond_1

    .line 40
    add-int/lit8 v6, v3, 0x1

    .line 42
    aget v5, v5, v6

    .line 44
    iget v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 46
    cmpl-float v5, v5, v7

    .line 48
    if-lez v5, :cond_0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    move v3, v6

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v3, v1

    .line 54
    :goto_1
    move v6, v1

    .line 55
    move v7, v6

    .line 56
    move v5, v3

    .line 57
    :goto_2
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 59
    array-length v9, v8

    .line 60
    if-ge v5, v9, :cond_6

    .line 62
    if-nez v6, :cond_6

    .line 64
    sub-int v7, v5, v3

    .line 66
    aget v6, v8, v5

    .line 68
    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 70
    cmpl-float v10, v6, v9

    .line 72
    if-gez v10, :cond_3

    .line 74
    array-length v8, v8

    .line 75
    sub-int/2addr v8, v4

    .line 76
    if-lt v5, v8, :cond_2

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    move v8, v1

    .line 80
    goto :goto_4

    .line 81
    :cond_3
    :goto_3
    move v8, v4

    .line 82
    :goto_4
    if-nez v7, :cond_4

    .line 84
    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 86
    invoke-static {v6, v9}, Landroid/util/MathUtils;->max(FF)F

    .line 89
    move-result v6

    .line 90
    iget-object v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 92
    aget v10, v9, v5

    .line 94
    add-int/lit8 v11, v5, 0x1

    .line 96
    aget v9, v9, v11

    .line 98
    iget-object v12, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 100
    aget v13, v12, v5

    .line 102
    aget v11, v12, v11

    .line 104
    invoke-static {v10, v9, v13, v11, v6}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 107
    move-result v9

    .line 108
    goto :goto_5

    .line 109
    :cond_4
    if-eqz v8, :cond_5

    .line 111
    invoke-static {v6, v9}, Landroid/util/MathUtils;->min(FF)F

    .line 114
    move-result v6

    .line 115
    add-int/lit8 v9, v5, -0x1

    .line 117
    iget-object v10, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 119
    aget v11, v10, v9

    .line 121
    aget v10, v10, v5

    .line 123
    iget-object v12, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 125
    aget v9, v12, v9

    .line 127
    aget v12, v12, v5

    .line 129
    invoke-static {v11, v10, v9, v12, v6}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 132
    move-result v9

    .line 133
    goto :goto_5

    .line 134
    :cond_5
    iget-object v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 136
    aget v9, v9, v5

    .line 138
    :goto_5
    aput v6, v0, v7

    .line 140
    aput v9, v2, v7

    .line 142
    add-int/lit8 v5, v5, 0x1

    .line 144
    move v6, v8

    .line 145
    goto :goto_2

    .line 146
    :cond_6
    add-int/2addr v7, v4

    .line 147
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 150
    move-result-object v0

    .line 151
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 153
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 156
    move-result-object v0

    .line 157
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 159
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    .line 162
    return-void

    .line 163
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    const-string v3, "Min or max values are invalid; raw min="

    .line 169
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 174
    aget v1, v3, v1

    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "; raw max="

    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 186
    array-length v3, v1

    .line 187
    sub-int/2addr v3, v4

    .line 188
    aget v1, v1, v3

    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "; backlight min="

    .line 195
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "; backlight max="

    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 210
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p0

    .line 217
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 220
    throw v0
.end method

.method public final createBacklightConversionSplines()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 12
    array-length v3, v2

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ge v1, v3, :cond_0

    .line 16
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 18
    aget v5, v3, v0

    .line 20
    array-length v6, v3

    .line 21
    sub-int/2addr v6, v4

    .line 22
    aget v4, v3, v6

    .line 24
    iget v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 26
    iget v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 28
    aget v3, v3, v1

    .line 30
    invoke-static {v5, v4, v6, v7, v3}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 33
    move-result v3

    .line 34
    aput v3, v2, v1

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    .line 41
    if-ne v0, v4, :cond_1

    .line 43
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 45
    invoke-static {v2, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 52
    invoke-static {v2, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 55
    move-result-object v0

    .line 56
    :goto_1
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 58
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    .line 60
    if-ne v0, v4, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 64
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 66
    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    .line 69
    move-result-object v0

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 73
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 75
    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 78
    move-result-object v0

    .line 79
    :goto_2
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 81
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    .line 83
    if-ne v0, v4, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 87
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 89
    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    .line 92
    move-result-object v0

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 96
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 98
    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 101
    move-result-object v0

    .line 102
    :goto_3
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 104
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    .line 106
    if-ne v0, v4, :cond_4

    .line 108
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 110
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 112
    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    .line 115
    move-result-object v0

    .line 116
    goto :goto_4

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 119
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 121
    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 124
    move-result-object v0

    .line 125
    :goto_4
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 127
    return-void
.end method

.method public final getAutoBrightnessBrighteningLevels(II)[F
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 3
    if-nez p0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "_"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {p2}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessPresetToString(I)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    check-cast v0, Ljava/util/HashMap;

    .line 39
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p2

    .line 43
    check-cast p2, [F

    .line 45
    if-eqz p2, :cond_1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-object p1, Lcom/android/server/display/config/AutoBrightnessSettingName;->normal:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 67
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    check-cast p0, Ljava/util/HashMap;

    .line 80
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 84
    move-object p2, p0

    .line 85
    check-cast p2, [F

    .line 87
    :goto_0
    return-object p2
.end method

.method public final getAutoBrightnessBrighteningLevelsLux(II)[F
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 3
    if-nez p0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "_"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {p2}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessPresetToString(I)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    check-cast v0, Ljava/util/HashMap;

    .line 39
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p2

    .line 43
    check-cast p2, [F

    .line 45
    if-eqz p2, :cond_1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-object p1, Lcom/android/server/display/config/AutoBrightnessSettingName;->normal:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 67
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    check-cast p0, Ljava/util/HashMap;

    .line 80
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 84
    move-object p2, p0

    .line 85
    check-cast p2, [F

    .line 87
    :goto_0
    return-object p2
.end method

.method public getBacklight()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklight:[F

    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 10
    return-object p0
.end method

.method public final getBacklightFromNits(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNitsToBacklight:Landroid/util/Spline;

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getBrightnessFromBacklight(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToBrightness:Landroid/util/Spline;

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getHdrBrightnessFromSdr(F)F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrSpline:Landroid/util/Spline;

    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightnessToBacklight:Landroid/util/Spline;

    .line 14
    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 21
    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 24
    move-result v0

    .line 25
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    .line 28
    move-result v2

    .line 29
    cmpl-float v3, v2, v1

    .line 31
    if-nez v3, :cond_2

    .line 33
    return v1

    .line 34
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrSpline:Landroid/util/Spline;

    .line 36
    invoke-virtual {v3, v2}, Landroid/util/Spline;->interpolate(F)F

    .line 39
    move-result v3

    .line 40
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 42
    if-eqz v4, :cond_3

    .line 44
    iget-object v4, v4, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNitsToBacklight:Landroid/util/Spline;

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 49
    :goto_1
    if-nez v4, :cond_4

    .line 51
    return v1

    .line 52
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    .line 55
    move-result v1

    .line 56
    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 58
    iget v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 60
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    .line 63
    move-result v1

    .line 64
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 67
    move-result v1

    .line 68
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    .line 71
    move-result p0

    .line 72
    sget-boolean v4, Lcom/android/server/display/DisplayDeviceConfig;->DEBUG:Z

    .line 74
    if-eqz v4, :cond_5

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v5, "getHdrBrightnessFromSdr: sdr brightness "

    .line 81
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    const-string p1, " backlight "

    .line 89
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 95
    const-string p1, " nits "

    .line 97
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 103
    const-string p1, " hdrNits "

    .line 105
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 111
    const-string p1, " hdrBacklight "

    .line 113
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 119
    const-string p1, " hdrBrightness "

    .line 121
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    const-string v0, "DisplayDeviceConfig"

    .line 133
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_5
    return p0
.end method

.method public final getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 7
    if-nez p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    .line 17
    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    .line 19
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    .line 21
    iput-wide v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    .line 23
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    .line 25
    iput-wide v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    .line 27
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    .line 29
    iput-wide v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    .line 31
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 33
    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 35
    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    .line 37
    iput-boolean v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    .line 39
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 41
    iput p0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 43
    return-object v0

    .line 44
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public final getNitsFromBacklight(F)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToNits:Landroid/util/Spline;

    .line 9
    if-nez v0, :cond_0

    .line 11
    return v1

    .line 12
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 14
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 17
    move-result p1

    .line 18
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 20
    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToNits:Landroid/util/Spline;

    .line 22
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 29
    if-nez v0, :cond_3

    .line 31
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    .line 33
    if-nez p0, :cond_2

    .line 35
    const-string p0, "DisplayDeviceConfig"

    .line 37
    const-string/jumbo p1, "requesting nits when no mapping exists."

    .line 40
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2
    return v1

    .line 44
    :cond_3
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 46
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 49
    move-result p1

    .line 50
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 52
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method public getRefreshRangeProfiles()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method public initFromFile(Ljava/io/File;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 14
    move-result v1

    .line 15
    const-string v3, "DisplayDeviceConfig"

    .line 17
    if-nez v1, :cond_1

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    const-string v0, "Display configuration is not a file: "

    .line 23
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    const-string p1, ", skipping"

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v2

    .line 42
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 44
    new-instance v4, Ljava/io/FileInputStream;

    .line 46
    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 49
    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    invoke-static {v1}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    .line 55
    move-result-object v4

    .line 56
    if-eqz v4, :cond_14

    .line 58
    iget-object v5, v4, Lcom/android/server/display/config/DisplayConfiguration;->name:Ljava/lang/String;

    .line 60
    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 65
    iget-object v5, v4, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    .line 67
    if-eqz v5, :cond_2

    .line 69
    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    .line 72
    move-result v5

    .line 73
    iput v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 82
    iget-object v5, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 84
    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_3

    .line 90
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    move-result-object v5

    .line 96
    const v6, 0x1110198

    .line 99
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_3

    .line 105
    invoke-static {v4}, Lcom/android/server/display/config/EvenDimmerBrightnessData;->loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 108
    move-result-object v5

    .line 109
    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    goto/16 :goto_d

    .line 115
    :cond_3
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 118
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalThrottlingConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 121
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->loadPowerThrottlingConfigData(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 124
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 127
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->loadLuxThrottling(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 130
    iget-object v5, v4, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    .line 132
    if-eqz v5, :cond_5

    .line 134
    new-instance v6, Ljava/util/ArrayList;

    .line 136
    iget-object v7, v5, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    .line 138
    if-nez v7, :cond_4

    .line 140
    new-instance v7, Ljava/util/ArrayList;

    .line 142
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iput-object v7, v5, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    .line 147
    :cond_4
    iget-object v5, v5, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    .line 149
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    iput-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    .line 154
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 157
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    move-result-object v5

    .line 163
    iget-object v6, v4, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    .line 165
    if-eqz v6, :cond_6

    .line 167
    invoke-static {v6}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    .line 170
    move-result-object v5

    .line 171
    goto :goto_2

    .line 172
    :cond_6
    new-instance v6, Lcom/android/server/display/config/SensorData;

    .line 174
    const v7, 0x1040345

    .line 177
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 180
    move-result-object v5

    .line 181
    const-string v7, ""

    .line 183
    invoke-direct {v6, v5, v7}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    move-object v5, v6

    .line 187
    :goto_2
    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 189
    iget-object v5, v4, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

    .line 191
    if-eqz v5, :cond_7

    .line 193
    invoke-static {v5}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    .line 196
    move-result-object v5

    .line 197
    goto :goto_3

    .line 198
    :cond_7
    new-instance v5, Lcom/android/server/display/config/SensorData;

    .line 200
    invoke-direct {v5}, Lcom/android/server/display/config/SensorData;-><init>()V

    .line 203
    :goto_3
    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    .line 205
    invoke-static {v0, v4}, Lcom/android/server/display/config/SensorData;->loadProxSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    .line 208
    move-result-object v5

    .line 209
    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 211
    iget-object v5, v4, Lcom/android/server/display/config/DisplayConfiguration;->tempSensor:Lcom/android/server/display/config/SensorDetails;

    .line 213
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSensorBasedBrightnessThrottling:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 215
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 218
    move-result v0

    .line 219
    const-string v6, "SKIN"

    .line 221
    const/4 v7, 0x0

    .line 222
    if-eqz v0, :cond_b

    .line 224
    if-nez v5, :cond_8

    .line 226
    goto :goto_6

    .line 227
    :cond_8
    iget-object v0, v5, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    .line 229
    iget-object v5, v5, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    .line 231
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    move-result v8

    .line 235
    if-nez v8, :cond_a

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 240
    move-result v8

    .line 241
    if-eqz v8, :cond_9

    .line 243
    goto :goto_4

    .line 244
    :cond_9
    move-object v6, v5

    .line 245
    goto :goto_5

    .line 246
    :cond_a
    :goto_4
    move-object v0, v7

    .line 247
    :goto_5
    new-instance v5, Lcom/android/server/display/config/SensorData;

    .line 249
    invoke-direct {v5, v6, v0}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    goto :goto_7

    .line 253
    :cond_b
    :goto_6
    new-instance v5, Lcom/android/server/display/config/SensorData;

    .line 255
    invoke-direct {v5, v6, v7}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_7
    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 260
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 265
    move-result-object v0

    .line 266
    invoke-static {v4, v0}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    .line 269
    move-result-object v0

    .line 270
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 272
    iget-object v0, v4, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    .line 274
    if-eqz v0, :cond_c

    .line 276
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 279
    move-result v0

    .line 280
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 282
    :cond_c
    iget-object v0, v4, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    .line 284
    if-eqz v0, :cond_d

    .line 286
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 289
    move-result v0

    .line 290
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    .line 292
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds()V

    .line 295
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessConfigValues(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 298
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 301
    iget-object v0, v4, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

    .line 303
    if-nez v0, :cond_e

    .line 305
    goto :goto_9

    .line 306
    :cond_e
    iget-object v5, v0, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    .line 308
    if-nez v5, :cond_f

    .line 310
    new-instance v5, Ljava/util/ArrayList;

    .line 312
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 315
    iput-object v5, v0, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    .line 317
    :cond_f
    iget-object v0, v0, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    .line 319
    check-cast v0, Ljava/util/ArrayList;

    .line 321
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 324
    move-result v5

    .line 325
    new-array v5, v5, [I

    .line 327
    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    .line 329
    move v5, v2

    .line 330
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 333
    move-result v6

    .line 334
    if-ge v5, v6, :cond_10

    .line 336
    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    .line 338
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    move-result-object v8

    .line 342
    check-cast v8, Ljava/math/BigInteger;

    .line 344
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    .line 347
    move-result v8

    .line 348
    aput v8, v6, v5

    .line 350
    add-int/lit8 v5, v5, 0x1

    .line 352
    goto :goto_8

    .line 353
    :cond_10
    :goto_9
    iget-object v0, v4, Lcom/android/server/display/config/DisplayConfiguration;->usiVersion:Lcom/android/server/display/config/UsiVersion;

    .line 355
    if-eqz v0, :cond_11

    .line 357
    new-instance v7, Landroid/hardware/input/HostUsiVersion;

    .line 359
    iget-object v5, v0, Lcom/android/server/display/config/UsiVersion;->majorVersion:Ljava/math/BigInteger;

    .line 361
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    .line 364
    move-result v5

    .line 365
    iget-object v0, v0, Lcom/android/server/display/config/UsiVersion;->minorVersion:Ljava/math/BigInteger;

    .line 367
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 370
    move-result v0

    .line 371
    invoke-direct {v7, v5, v0}, Landroid/hardware/input/HostUsiVersion;-><init>(II)V

    .line 374
    :cond_11
    iput-object v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    .line 376
    invoke-static {v4}, Lcom/android/server/display/config/HdrBrightnessData;->loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/HdrBrightnessData;

    .line 379
    move-result-object v0

    .line 380
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 382
    iget-object v0, v4, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessCapForWearBedtimeMode:Ljava/math/BigDecimal;

    .line 384
    if-eqz v0, :cond_12

    .line 386
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    .line 389
    move-result v0

    .line 390
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    .line 392
    goto :goto_a

    .line 393
    :cond_12
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 395
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 398
    move-result-object v0

    .line 399
    const v5, 0x10e0133

    .line 402
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 405
    move-result v0

    .line 406
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 409
    move-result v0

    .line 410
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    .line 412
    :goto_a
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 415
    iget-object v0, v4, Lcom/android/server/display/config/DisplayConfiguration;->supportsVrr:Ljava/lang/Boolean;

    .line 417
    if-nez v0, :cond_13

    .line 419
    goto :goto_b

    .line 420
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 423
    move-result v2

    .line 424
    :goto_b
    iput-boolean v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    .line 426
    goto :goto_c

    .line 427
    :cond_14
    const-string v0, "DisplayDeviceConfig file is null"

    .line 429
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :goto_c
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 435
    goto :goto_10

    .line 436
    :catch_0
    move-exception v0

    .line 437
    goto :goto_f

    .line 438
    :goto_d
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 441
    goto :goto_e

    .line 442
    :catchall_1
    move-exception v1

    .line 443
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 446
    :goto_e
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 447
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 449
    const-string v2, "Encountered an error while reading/parsing display config file: "

    .line 451
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    move-result-object v1

    .line 461
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    :goto_10
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 467
    move-result-object p1

    .line 468
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 470
    const/4 p0, 0x1

    .line 471
    return p0
.end method

.method public final loadAutoBrightnessAvailableFromConfigXml()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsCoverDisplay:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 11
    const v1, 0x1110127

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v0

    .line 27
    const v1, 0x1110042

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 33
    move-result v0

    .line 34
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    .line 36
    :goto_0
    return-void
.end method

.method public final loadAutoBrightnessConfigValues(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/android/server/display/config/DisplayConfiguration;->autoBrightness:Lcom/android/server/display/config/AutoBrightness;

    .line 3
    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p1, Lcom/android/server/display/config/AutoBrightness;->brighteningLightDebounceMillis:Ljava/math/BigInteger;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 13
    move-result v0

    .line 14
    int-to-long v0, v0

    .line 15
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 24
    const v1, 0x10e0036

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 30
    move-result v0

    .line 31
    int-to-long v0, v0

    .line 32
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 34
    :goto_1
    if-eqz p1, :cond_3

    .line 36
    iget-object v0, p1, Lcom/android/server/display/config/AutoBrightness;->darkeningLightDebounceMillis:Ljava/math/BigInteger;

    .line 38
    if-nez v0, :cond_2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 44
    move-result v0

    .line 45
    int-to-long v0, v0

    .line 46
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object v0

    .line 55
    const v1, 0x10e0037

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 61
    move-result v0

    .line 62
    int-to-long v0, v0

    .line 63
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 65
    :goto_3
    if-eqz p1, :cond_5

    .line 67
    iget-object v0, p1, Lcom/android/server/display/config/AutoBrightness;->brighteningLightDebounceIdleMillis:Ljava/math/BigInteger;

    .line 69
    if-nez v0, :cond_4

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 75
    move-result v0

    .line 76
    int-to-long v0, v0

    .line 77
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    .line 79
    goto :goto_5

    .line 80
    :cond_5
    :goto_4
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 82
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    .line 84
    :goto_5
    if-eqz p1, :cond_7

    .line 86
    iget-object v0, p1, Lcom/android/server/display/config/AutoBrightness;->darkeningLightDebounceIdleMillis:Ljava/math/BigInteger;

    .line 88
    if-nez v0, :cond_6

    .line 90
    goto :goto_6

    .line 91
    :cond_6
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 94
    move-result v0

    .line 95
    int-to-long v0, v0

    .line 96
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    .line 98
    goto :goto_7

    .line 99
    :cond_7
    :goto_6
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 101
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    .line 103
    :goto_7
    new-instance v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 105
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 107
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 109
    if-eqz v2, :cond_8

    .line 111
    iget-object v2, v2, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToBrightness:Landroid/util/Spline;

    .line 113
    goto :goto_8

    .line 114
    :cond_8
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 116
    :goto_8
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 118
    invoke-direct {v0, v1, v3, p1, v2}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V

    .line 121
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 123
    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 126
    const/4 v1, 0x0

    .line 127
    if-eqz p1, :cond_a

    .line 129
    iget-object p1, p1, Lcom/android/server/display/config/AutoBrightness;->enabled:Ljava/lang/Boolean;

    .line 131
    if-nez p1, :cond_9

    .line 133
    move p1, v1

    .line 134
    goto :goto_9

    .line 135
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    move-result p1

    .line 139
    :goto_9
    iput-boolean p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 141
    :cond_a
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    move-result-object p1

    .line 147
    const v2, 0x1110042

    .line 150
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_b

    .line 156
    iget-boolean p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 158
    if-eqz p1, :cond_b

    .line 160
    goto :goto_a

    .line 161
    :cond_b
    move v0, v1

    .line 162
    :goto_a
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    .line 164
    return-void
.end method

.method public final loadBrightnessChangeThresholds()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 10
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 12
    invoke-static {v0}, Lcom/android/server/display/config/SecHysteresisLevels;->loadAmbientBrightnessConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SecHysteresisLevels;

    .line 15
    move-result-object v2

    .line 16
    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 18
    invoke-static {v0}, Lcom/android/server/display/config/SecHysteresisLevels;->loadAmbientBrightnessConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SecHysteresisLevels;

    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 24
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    .line 26
    if-eqz v2, :cond_2

    .line 28
    const v2, 0x1070072

    .line 31
    const v3, 0x1070071

    .line 34
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 43
    move-result-object v5

    .line 44
    const v6, 0x1070075

    .line 47
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 50
    move-result-object v6

    .line 51
    const v7, 0x1070076

    .line 54
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 57
    move-result-object v7

    .line 58
    new-instance v8, Lcom/android/server/display/config/SecHysteresisLevels;

    .line 60
    invoke-direct {v8, v4, v5, v6, v7}, Lcom/android/server/display/config/SecHysteresisLevels;-><init>([I[I[I[I)V

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-object v8, v1

    .line 65
    :goto_0
    iput-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/SecHysteresisLevels;

    .line 67
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 76
    move-result-object v2

    .line 77
    const v3, 0x1070077

    .line 80
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 83
    move-result-object v3

    .line 84
    const v4, 0x1070078

    .line 87
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 90
    move-result-object v0

    .line 91
    new-instance v4, Lcom/android/server/display/config/SecHysteresisLevels;

    .line 93
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/server/display/config/SecHysteresisLevels;-><init>([I[I[I[I)V

    .line 96
    move-object v1, v4

    .line 97
    :cond_1
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/SecHysteresisLevels;

    .line 99
    :cond_2
    return-void
.end method

.method public final loadBrightnessConstraintsFromConfigXml()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x105010f

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 13
    move-result v0

    .line 14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 18
    iget-boolean v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsCoverDisplay:Z

    .line 20
    if-nez v2, :cond_0

    .line 22
    const v2, 0x10e0137

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const v2, 0x10e005d

    .line 29
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 32
    move-result v1

    .line 33
    const/16 v2, 0xff

    .line 35
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    const/high16 v2, 0x437f0000    # 255.0f

    .line 42
    div-float/2addr v1, v2

    .line 43
    const/high16 v2, -0x40000000    # -2.0f

    .line 45
    cmpl-float v3, v0, v2

    .line 47
    if-eqz v3, :cond_2

    .line 49
    cmpl-float v2, v1, v2

    .line 51
    if-nez v2, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 56
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v0

    .line 65
    const v2, 0x10e013c

    .line 68
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 75
    move-result v0

    .line 76
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 78
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 80
    :goto_2
    return-void
.end method

.method public final loadBrightnessDefaultFromConfigXml()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x105010d

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 13
    move-result v0

    .line 14
    const/high16 v1, -0x40000000    # -2.0f

    .line 16
    cmpl-float v1, v0, v1

    .line 18
    if-nez v1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v0

    .line 26
    const v1, 0x10e013a

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 42
    :goto_0
    return-void
.end method

.method public final loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 8

    .line 1
    iget-object p1, p1, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    .line 3
    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 11
    if-nez v0, :cond_1

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object v0, p1, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 20
    :cond_1
    iget-object v0, p1, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v1

    .line 28
    new-array v2, v1, [F

    .line 30
    new-array v1, v1, [F

    .line 32
    iget-object p1, p1, Lcom/android/server/display/config/NitsMap;->interpolation:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    const-string v5, "DisplayDeviceConfig"

    .line 41
    if-eqz v3, :cond_2

    .line 43
    :goto_0
    move p1, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const-string/jumbo v3, "linear"

    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 54
    const/4 p1, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    const-string v6, "Unexpected Interpolation Type: "

    .line 60
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {v5, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto :goto_0

    .line 74
    :goto_1
    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p1

    .line 80
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_6

    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/android/server/display/config/Point;

    .line 92
    iget-object v3, v0, Lcom/android/server/display/config/Point;->nits:Ljava/math/BigDecimal;

    .line 94
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    .line 97
    move-result v3

    .line 98
    aput v3, v2, v4

    .line 100
    iget-object v0, v0, Lcom/android/server/display/config/Point;->value:Ljava/math/BigDecimal;

    .line 102
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    .line 105
    move-result v0

    .line 106
    aput v0, v1, v4

    .line 108
    if-lez v4, :cond_5

    .line 110
    aget v3, v2, v4

    .line 112
    add-int/lit8 v6, v4, -0x1

    .line 114
    aget v7, v2, v6

    .line 116
    cmpg-float v3, v3, v7

    .line 118
    const-string v7, " < "

    .line 120
    if-gez v3, :cond_4

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo p1, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Nits: "

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    aget p1, v2, v4

    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    aget p1, v2, v6

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 151
    :cond_4
    aget v3, v1, v6

    .line 153
    cmpg-float v0, v0, v3

    .line 155
    if-gez v0, :cond_5

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo p1, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Value: "

    .line 162
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    aget p1, v1, v4

    .line 167
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    aget p1, v1, v6

    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p0

    .line 182
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 186
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 188
    goto :goto_2

    .line 189
    :cond_6
    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 191
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 193
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    .line 196
    return-void
.end method

.method public final loadBrightnessMapFromConfigXml()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v1

    .line 8
    const v2, 0x1070154

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 18
    move-result-object v2

    .line 19
    const v3, 0x1070153

    .line 22
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 25
    move-result-object v1

    .line 26
    array-length v3, v1

    .line 27
    new-array v4, v3, [F

    .line 29
    const/4 v5, 0x0

    .line 30
    move v6, v5

    .line 31
    :goto_0
    array-length v7, v1

    .line 32
    if-ge v6, v7, :cond_0

    .line 34
    aget v7, v1, v6

    .line 36
    invoke-static {v7}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 39
    move-result v7

    .line 40
    aput v7, v4, v6

    .line 42
    add-int/2addr v6, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    if-eqz v3, :cond_4

    .line 46
    array-length v3, v2

    .line 47
    if-nez v3, :cond_1

    .line 49
    goto/16 :goto_1

    .line 51
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    const-string v6, "backlight min="

    .line 55
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    aget v6, v1, v5

    .line 60
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v6, " backlight max="

    .line 65
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    array-length v6, v1

    .line 69
    sub-int/2addr v6, v0

    .line 70
    aget v1, v1, v6

    .line 72
    const-string v6, "DisplayDeviceConfig"

    .line 74
    invoke-static {v3, v1, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 77
    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 79
    iput-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 81
    aget v1, v4, v5

    .line 83
    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 85
    invoke-static {v1, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 88
    move-result v1

    .line 89
    const-string v2, " "

    .line 91
    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 95
    aget v1, v1, v5

    .line 97
    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 99
    cmpl-float v1, v1, v3

    .line 101
    if-eqz v1, :cond_2

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    const-string v3, "adjust backlight min boundary : "

    .line 107
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 112
    aget v3, v3, v5

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 122
    invoke-static {v1, v3, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 127
    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 129
    aput v3, v1, v5

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 133
    array-length v3, v1

    .line 134
    sub-int/2addr v3, v0

    .line 135
    aget v1, v1, v3

    .line 137
    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 139
    invoke-static {v1, v3}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 147
    array-length v3, v1

    .line 148
    sub-int/2addr v3, v0

    .line 149
    aget v1, v1, v3

    .line 151
    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 153
    cmpl-float v1, v1, v3

    .line 155
    if-eqz v1, :cond_3

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    const-string v3, "adjust backlight max boundary : "

    .line 161
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 166
    array-length v4, v3

    .line 167
    sub-int/2addr v4, v0

    .line 168
    aget v3, v3, v4

    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 178
    invoke-static {v1, v2, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 183
    array-length v2, v1

    .line 184
    sub-int/2addr v2, v0

    .line 185
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 187
    aput v0, v1, v2

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    .line 192
    return-void

    .line 193
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 194
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 196
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 198
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 200
    const/4 v2, 0x2

    .line 201
    new-array v2, v2, [F

    .line 203
    const/4 v3, 0x0

    .line 204
    aput v3, v2, v5

    .line 206
    aput v1, v2, v0

    .line 208
    invoke-static {v2, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 211
    move-result-object v1

    .line 212
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 214
    invoke-static {v2, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 217
    move-result-object v1

    .line 218
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 220
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    .line 222
    return-void
.end method

.method public final loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    .line 3
    iget-object v1, p1, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    .line 5
    iget-object v2, p1, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    .line 7
    iget-object v3, p1, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    .line 9
    const-string v4, "DisplayDeviceConfig"

    .line 11
    if-eqz v0, :cond_0

    .line 13
    if-eqz v1, :cond_0

    .line 15
    if-eqz v2, :cond_0

    .line 17
    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 25
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 31
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 37
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    if-nez v0, :cond_1

    .line 46
    if-nez v1, :cond_1

    .line 48
    if-nez v2, :cond_1

    .line 50
    if-eqz v3, :cond_2

    .line 52
    :cond_1
    const-string v0, "Per display brightness ramp values ignored because not all values are present in display device config"

    .line 54
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 60
    :goto_0
    iget-object v0, p1, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    .line 62
    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 67
    move-result v0

    .line 68
    int-to-long v0, v0

    .line 69
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 71
    :cond_3
    iget-object v0, p1, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    .line 73
    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 78
    move-result v0

    .line 79
    int-to-long v0, v0

    .line 80
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 82
    :cond_4
    iget-object v0, p1, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecreaseIdle:Ljava/math/BigDecimal;

    .line 84
    iget-object v1, p1, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncreaseIdle:Ljava/math/BigDecimal;

    .line 86
    if-eqz v0, :cond_5

    .line 88
    if-eqz v1, :cond_5

    .line 90
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    .line 93
    move-result v0

    .line 94
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 96
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    .line 99
    move-result v0

    .line 100
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    if-nez v0, :cond_6

    .line 105
    if-eqz v1, :cond_7

    .line 107
    :cond_6
    const-string v0, "Per display idle brightness ramp values ignored because not all values are present in display device config"

    .line 109
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_7
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 114
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 116
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 118
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 120
    :goto_1
    iget-object v0, p1, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxIdleMillis:Ljava/math/BigInteger;

    .line 122
    if-eqz v0, :cond_8

    .line 124
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 127
    move-result v0

    .line 128
    int-to-long v0, v0

    .line 129
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 131
    goto :goto_2

    .line 132
    :cond_8
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 134
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 136
    :goto_2
    iget-object p1, p1, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxIdleMillis:Ljava/math/BigInteger;

    .line 138
    if-eqz p1, :cond_9

    .line 140
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 143
    move-result p1

    .line 144
    int-to-long v0, p1

    .line 145
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 147
    goto :goto_3

    .line 148
    :cond_9
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 150
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 152
    :goto_3
    return-void
.end method

.method public final loadBrightnessRampsFromConfigXml()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x10e004e

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 20
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v0

    .line 26
    const v1, 0x10e004f

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 39
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 41
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 43
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 45
    return-void
.end method

.method public final loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 6

    .line 1
    iget-object p1, p1, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    .line 3
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/android/server/display/config/DensityMapping;->density:Ljava/util/List;

    .line 8
    if-nez v0, :cond_1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v0, p1, Lcom/android/server/display/config/DensityMapping;->density:Ljava/util/List;

    .line 17
    :cond_1
    iget-object p1, p1, Lcom/android/server/display/config/DensityMapping;->density:Ljava/util/List;

    .line 19
    check-cast p1, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v0

    .line 25
    new-array v0, v0, [Lcom/android/server/display/DensityMapping$Entry;

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    move-result v2

    .line 32
    if-ge v1, v2, :cond_2

    .line 34
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/display/config/Density;

    .line 40
    new-instance v3, Lcom/android/server/display/DensityMapping$Entry;

    .line 42
    iget-object v4, v2, Lcom/android/server/display/config/Density;->width:Ljava/math/BigInteger;

    .line 44
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    .line 47
    move-result v4

    .line 48
    iget-object v5, v2, Lcom/android/server/display/config/Density;->height:Ljava/math/BigInteger;

    .line 50
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    .line 53
    move-result v5

    .line 54
    iget-object v2, v2, Lcom/android/server/display/config/Density;->density:Ljava/math/BigInteger;

    .line 56
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    .line 59
    move-result v2

    .line 60
    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/display/DensityMapping$Entry;-><init>(III)V

    .line 63
    aput-object v3, v0, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    new-instance p1, Lcom/android/server/display/DensityMapping;

    .line 70
    invoke-direct {p1, v0}, Lcom/android/server/display/DensityMapping;-><init>([Lcom/android/server/display/DensityMapping$Entry;)V

    .line 73
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    .line 75
    return-void
.end method

.method public final loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 7

    .line 1
    iget-object p1, p1, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    iget-object v0, p1, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    move-result v0

    .line 16
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    .line 18
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 25
    iget-object v2, p1, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    .line 27
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    .line 30
    move-result v2

    .line 31
    iput v2, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    .line 33
    iget-object v0, p1, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    .line 35
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    .line 38
    move-result v0

    .line 39
    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 41
    cmpl-float v2, v0, v2

    .line 43
    if-gez v2, :cond_6

    .line 45
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    .line 50
    move-result v0

    .line 51
    iput v0, v2, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 53
    iget-object v0, p1, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    .line 55
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 57
    iget-object v3, v0, Lcom/android/server/display/config/HbmTiming;->timeWindowSecs_all:Ljava/math/BigInteger;

    .line 59
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    .line 62
    move-result-wide v3

    .line 63
    const-wide/16 v5, 0x3e8

    .line 65
    mul-long/2addr v3, v5

    .line 66
    iput-wide v3, v2, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    .line 68
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 70
    iget-object v3, v0, Lcom/android/server/display/config/HbmTiming;->timeMaxSecs_all:Ljava/math/BigInteger;

    .line 72
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    .line 75
    move-result-wide v3

    .line 76
    mul-long/2addr v3, v5

    .line 77
    iput-wide v3, v2, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    .line 79
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 81
    iget-object v0, v0, Lcom/android/server/display/config/HbmTiming;->timeMinSecs_all:Ljava/math/BigInteger;

    .line 83
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    .line 86
    move-result-wide v3

    .line 87
    mul-long/2addr v3, v5

    .line 88
    iput-wide v3, v2, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    .line 90
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 92
    iget-object v2, p1, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    .line 94
    if-nez v2, :cond_1

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    move-result v1

    .line 101
    :goto_1
    iput-boolean v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    .line 103
    iget-object v0, p1, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    .line 105
    if-eqz v0, :cond_2

    .line 107
    iget-object v1, v0, Lcom/android/server/display/config/RefreshRateRange;->minimum:Ljava/math/BigInteger;

    .line 109
    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    .line 112
    move-result v1

    .line 113
    iget-object v0, v0, Lcom/android/server/display/config/RefreshRateRange;->maximum:Ljava/math/BigInteger;

    .line 115
    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    .line 118
    move-result v0

    .line 119
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    .line 121
    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    .line 123
    const/4 v4, 0x1

    .line 124
    invoke-direct {v3, v4, v1, v0}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;-><init>(IFF)V

    .line 127
    check-cast v2, Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_2
    iget-object p1, p1, Lcom/android/server/display/config/HighBrightnessMode;->minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

    .line 134
    const/high16 v0, 0x3f000000    # 0.5f

    .line 136
    if-eqz p1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 140
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    .line 143
    move-result p1

    .line 144
    iput p1, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 146
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 148
    iget p1, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 150
    const/high16 v1, 0x3f800000    # 1.0f

    .line 152
    cmpl-float v1, p1, v1

    .line 154
    if-gtz v1, :cond_3

    .line 156
    const/4 v1, 0x0

    .line 157
    cmpg-float p1, p1, v1

    .line 159
    if-gez p1, :cond_5

    .line 161
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "Invalid minimum HDR percent of screen: "

    .line 165
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 170
    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 172
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    const-string v1, "DisplayDeviceConfig"

    .line 185
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 190
    iput v0, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 192
    goto :goto_2

    .line 193
    :cond_4
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 195
    iput v0, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 197
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadSdrHdrMapFromConfigXml()Landroid/util/Spline;

    .line 200
    move-result-object p1

    .line 201
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrSpline:Landroid/util/Spline;

    .line 203
    goto :goto_3

    .line 204
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    const-string v1, "HBM transition point invalid. "

    .line 210
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 215
    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, " is not less than "

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object p0

    .line 234
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 237
    throw p1

    .line 238
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeDataFromConfigXml()V

    .line 241
    :goto_3
    return-void
.end method

.method public final loadHighBrightnessModeDataFromConfigXml()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    cmpl-float v0, v0, v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-lez v0, :cond_0

    .line 10
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    .line 15
    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v0

    .line 23
    const v3, 0x10e0038

    .line 26
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    new-instance v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 33
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    .line 38
    iput v1, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 40
    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    .line 44
    iput-wide v0, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    .line 46
    iput-wide v0, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    .line 48
    iput-boolean v2, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    .line 50
    const/high16 v0, 0x3f000000    # 0.5f

    .line 52
    iput v0, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 54
    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 56
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadSdrHdrMapFromConfigXml()Landroid/util/Spline;

    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrSpline:Landroid/util/Spline;

    .line 62
    :cond_1
    return-void
.end method

.method public final loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIdleScreenRefreshRateTimeout:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_5

    .line 11
    if-eqz p1, :cond_5

    .line 13
    iget-object v0, p1, Lcom/android/server/display/config/DisplayConfiguration;->idleScreenRefreshRateTimeout:Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    .line 15
    if-eqz v0, :cond_5

    .line 17
    iget-object v0, v0, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->luxThresholds:Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    .line 19
    if-eqz v0, :cond_3

    .line 21
    iget-object v1, v0, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->point:Ljava/util/List;

    .line 23
    if-nez v1, :cond_0

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v1, v0, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->point:Ljava/util/List;

    .line 32
    :cond_0
    iget-object v0, v0, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->point:Ljava/util/List;

    .line 34
    check-cast v0, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, -0x1

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_3

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;

    .line 53
    iget-object v3, v2, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->lux:Ljava/math/BigInteger;

    .line 55
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    .line 58
    move-result v3

    .line 59
    if-ge v1, v3, :cond_2

    .line 61
    iget-object v1, v2, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->timeout:Ljava/math/BigInteger;

    .line 63
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    .line 66
    move-result v1

    .line 67
    if-ltz v1, :cond_1

    .line 69
    move v1, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 73
    const-string p1, "The timeout value cannot be negative in idle screen refresh rate timeout config"

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p0

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 81
    const-string p1, "Lux values should be in ascending order in the idle screen refresh rate timeout config"

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0

    .line 87
    :cond_3
    iget-object p1, p1, Lcom/android/server/display/config/DisplayConfiguration;->idleScreenRefreshRateTimeout:Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    .line 89
    iget-object p1, p1, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->luxThresholds:Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    .line 91
    iget-object v0, p1, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->point:Ljava/util/List;

    .line 93
    if-nez v0, :cond_4

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    .line 97
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iput-object v0, p1, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->point:Ljava/util/List;

    .line 102
    :cond_4
    iget-object p1, p1, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->point:Ljava/util/List;

    .line 104
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    .line 106
    :cond_5
    return-void
.end method

.method public final loadLuxThrottling(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/android/server/display/config/DisplayConfiguration;->luxThrottling:Lcom/android/server/display/config/LuxThrottling;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object p1, p1, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p1, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    .line 11
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    :goto_0
    iget-object v1, v0, Lcom/android/server/display/config/LuxThrottling;->brightnessLimitMap:Ljava/util/List;

    .line 20
    if-nez v1, :cond_1

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iput-object v1, v0, Lcom/android/server/display/config/LuxThrottling;->brightnessLimitMap:Ljava/util/List;

    .line 29
    :cond_1
    iget-object v0, v0, Lcom/android/server/display/config/LuxThrottling;->brightnessLimitMap:Ljava/util/List;

    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v0

    .line 37
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_a

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/display/config/BrightnessLimitMap;

    .line 49
    iget-object v2, v1, Lcom/android/server/display/config/BrightnessLimitMap;->type:Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_4

    .line 57
    const/4 v4, 0x1

    .line 58
    if-eq v3, v4, :cond_3

    .line 60
    const/4 v3, 0x0

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    sget-object v3, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->ADAPTIVE:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    sget-object v3, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->DEFAULT:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    .line 67
    :goto_2
    const-string v4, "DisplayDeviceConfig"

    .line 69
    if-nez v3, :cond_5

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    const-string v3, "Invalid NBM config: unsupported map type="

    .line 75
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    .line 91
    check-cast v5, Ljava/util/HashMap;

    .line 93
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_6

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    const-string v2, "Invalid NBM config: duplicate map type="

    .line 103
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    goto :goto_1

    .line 117
    :cond_6
    new-instance v5, Ljava/util/HashMap;

    .line 119
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 122
    iget-object v1, v1, Lcom/android/server/display/config/BrightnessLimitMap;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 124
    invoke-virtual {v1}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    move-result-object v1

    .line 132
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_9

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 144
    iget-object v7, v6, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->first:Ljava/math/BigDecimal;

    .line 146
    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    .line 149
    move-result v7

    .line 150
    iget-object v6, v6, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->second:Ljava/math/BigDecimal;

    .line 152
    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    .line 155
    move-result v6

    .line 156
    cmpl-float v8, v6, p1

    .line 158
    const-string v9, "; lux="

    .line 160
    if-lez v8, :cond_7

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    .line 164
    const-string v10, "Invalid NBM config: maxBrightness is greater than hbm.transitionPoint. type="

    .line 166
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 178
    const-string v7, "; maxBrightness="

    .line 180
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v6

    .line 190
    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    goto :goto_3

    .line 194
    :cond_7
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 201
    move-result v8

    .line 202
    if-eqz v8, :cond_8

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    .line 206
    const-string v8, "Invalid NBM config: duplicate lux key. type="

    .line 208
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v6

    .line 224
    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    goto :goto_3

    .line 228
    :cond_8
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 231
    move-result-object v7

    .line 232
    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    .line 235
    move-result v6

    .line 236
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    goto :goto_3

    .line 244
    :cond_9
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_2

    .line 250
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    .line 252
    check-cast v1, Ljava/util/HashMap;

    .line 254
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    goto/16 :goto_1

    .line 259
    :cond_a
    return-void
.end method

.method public final loadPowerThrottlingConfigData(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 7

    .line 1
    iget-object p1, p1, Lcom/android/server/display/config/DisplayConfiguration;->powerThrottlingConfig:Lcom/android/server/display/config/PowerThrottlingConfig;

    .line 3
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    .line 8
    if-nez v0, :cond_1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v0, p1, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    .line 17
    :cond_1
    iget-object v0, p1, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    .line 19
    if-eqz v0, :cond_9

    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 29
    goto/16 :goto_2

    .line 31
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_8

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/android/server/display/config/PowerThrottlingMap;

    .line 47
    iget-object v2, v1, Lcom/android/server/display/config/PowerThrottlingMap;->powerThrottlingPoint:Ljava/util/List;

    .line 49
    if-nez v2, :cond_3

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iput-object v2, v1, Lcom/android/server/display/config/PowerThrottlingMap;->powerThrottlingPoint:Ljava/util/List;

    .line 58
    :cond_3
    iget-object v2, v1, Lcom/android/server/display/config/PowerThrottlingMap;->powerThrottlingPoint:Ljava/util/List;

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    .line 62
    check-cast v2, Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result v4

    .line 68
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v2

    .line 75
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_5

    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lcom/android/server/display/config/PowerThrottlingPoint;

    .line 87
    iget-object v5, v4, Lcom/android/server/display/config/PowerThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    .line 89
    if-nez v5, :cond_4

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 95
    move-result v6

    .line 96
    packed-switch v6, :pswitch_data_0

    .line 99
    goto :goto_0

    .line 100
    :pswitch_0
    new-instance v6, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 102
    invoke-static {v5}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    .line 105
    move-result v5

    .line 106
    iget-object v4, v4, Lcom/android/server/display/config/PowerThrottlingPoint;->powerQuotaMilliWatts:Ljava/math/BigDecimal;

    .line 108
    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    .line 111
    move-result v4

    .line 112
    invoke-direct {v6, v4, v5}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;-><init>(FI)V

    .line 115
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    goto :goto_1

    .line 119
    :cond_5
    iget-object v1, v1, Lcom/android/server/display/config/PowerThrottlingMap;->id:Ljava/lang/String;

    .line 121
    if-nez v1, :cond_6

    .line 123
    const-string/jumbo v1, "default"

    .line 126
    :cond_6
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 128
    check-cast v2, Ljava/util/HashMap;

    .line 130
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_7

    .line 136
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 138
    invoke-static {v3}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 141
    move-result-object v3

    .line 142
    check-cast v2, Ljava/util/HashMap;

    .line 144
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    goto :goto_0

    .line 148
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    .line 150
    const-string p1, "Power throttling data with ID "

    .line 152
    const-string v0, " already exists"

    .line 154
    invoke-static {p1, v1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 158
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 161
    throw p0

    .line 162
    :cond_8
    iget-object v0, p1, Lcom/android/server/display/config/PowerThrottlingConfig;->brightnessLowestCapAllowed:Ljava/math/BigDecimal;

    .line 164
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    .line 167
    move-result v0

    .line 168
    iget-object p1, p1, Lcom/android/server/display/config/PowerThrottlingConfig;->pollingWindowMillis:Ljava/math/BigInteger;

    .line 170
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 173
    move-result p1

    .line 174
    new-instance v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    .line 176
    invoke-direct {v1, v0, p1}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;-><init>(FI)V

    .line 179
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    .line 181
    return-void

    .line 182
    :cond_9
    :goto_2
    const-string p0, "DisplayDeviceConfig"

    .line 184
    const-string p1, "No power throttling map found"

    .line 186
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    move-object p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    .line 8
    :goto_0
    if-nez p1, :cond_1

    .line 10
    move-object v1, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, p1, Lcom/android/server/display/config/RefreshRateConfigs;->lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    .line 14
    :goto_1
    if-nez p1, :cond_2

    .line 16
    goto :goto_2

    .line 17
    :cond_2
    iget-object v0, p1, Lcom/android/server/display/config/RefreshRateConfigs;->higherBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    .line 19
    :goto_2
    if-eqz v1, :cond_3

    .line 21
    iget-object v2, v1, Lcom/android/server/display/config/BlockingZoneConfig;->refreshRateThermalThrottlingId:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    .line 25
    :cond_3
    if-nez v1, :cond_4

    .line 27
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v2

    .line 33
    const v3, 0x10e007f

    .line 36
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 39
    move-result v2

    .line 40
    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    .line 42
    goto :goto_3

    .line 43
    :cond_4
    iget-object v2, v1, Lcom/android/server/display/config/BlockingZoneConfig;->defaultRefreshRate:Ljava/math/BigInteger;

    .line 45
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    .line 48
    move-result v2

    .line 49
    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    .line 51
    :goto_3
    const/4 v2, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    if-nez v1, :cond_6

    .line 55
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v1

    .line 61
    const v4, 0x10700ac

    .line 64
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 67
    move-result-object v1

    .line 68
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v4

    .line 74
    const v5, 0x1070090

    .line 77
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 80
    move-result-object v4

    .line 81
    if-eqz v1, :cond_5

    .line 83
    if-eqz v4, :cond_5

    .line 85
    array-length v5, v1

    .line 86
    array-length v6, v4

    .line 87
    if-ne v5, v6, :cond_5

    .line 89
    invoke-static {v1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    .line 92
    move-result-object v1

    .line 93
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 95
    invoke-static {v4}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    .line 98
    move-result-object v1

    .line 99
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 101
    goto/16 :goto_6

    .line 103
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v0, "display low brightness threshold array and ambient brightness threshold array have different length: lowDisplayBrightnessThresholdsInt="

    .line 110
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, ", lowAmbientBrightnessThresholdsInt="

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 139
    throw p0

    .line 140
    :cond_6
    iget-object v1, v1, Lcom/android/server/display/config/BlockingZoneConfig;->blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

    .line 142
    iget-object v4, v1, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    .line 144
    if-nez v4, :cond_7

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    .line 148
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iput-object v4, v1, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    .line 153
    :cond_7
    iget-object v1, v1, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    .line 155
    check-cast v1, Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 160
    move-result v4

    .line 161
    new-array v5, v4, [F

    .line 163
    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 165
    new-array v5, v4, [F

    .line 167
    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 169
    move v5, v3

    .line 170
    :goto_4
    if-ge v5, v4, :cond_9

    .line 172
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    move-result-object v6

    .line 176
    check-cast v6, Lcom/android/server/display/config/DisplayBrightnessPoint;

    .line 178
    iget-object v6, v6, Lcom/android/server/display/config/DisplayBrightnessPoint;->nits:Ljava/math/BigDecimal;

    .line 180
    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    .line 183
    move-result v6

    .line 184
    cmpg-float v7, v6, v2

    .line 186
    if-gez v7, :cond_8

    .line 188
    iget-object v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 190
    aput v6, v7, v5

    .line 192
    goto :goto_5

    .line 193
    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    .line 196
    move-result v6

    .line 197
    iget-object v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 199
    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    .line 202
    move-result v6

    .line 203
    aput v6, v7, v5

    .line 205
    :goto_5
    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 207
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v7

    .line 211
    check-cast v7, Lcom/android/server/display/config/DisplayBrightnessPoint;

    .line 213
    iget-object v7, v7, Lcom/android/server/display/config/DisplayBrightnessPoint;->lux:Ljava/math/BigInteger;

    .line 215
    invoke-virtual {v7}, Ljava/math/BigInteger;->floatValue()F

    .line 218
    move-result v7

    .line 219
    aput v7, v6, v5

    .line 221
    add-int/lit8 v5, v5, 0x1

    .line 223
    goto :goto_4

    .line 224
    :cond_9
    :goto_6
    if-eqz v0, :cond_a

    .line 226
    iget-object v1, v0, Lcom/android/server/display/config/BlockingZoneConfig;->refreshRateThermalThrottlingId:Ljava/lang/String;

    .line 228
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    .line 230
    :cond_a
    if-nez v0, :cond_b

    .line 232
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 237
    move-result-object v1

    .line 238
    const v4, 0x10e00b4

    .line 241
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 244
    move-result v1

    .line 245
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    .line 247
    goto :goto_7

    .line 248
    :cond_b
    iget-object v1, v0, Lcom/android/server/display/config/BlockingZoneConfig;->defaultRefreshRate:Ljava/math/BigInteger;

    .line 250
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    .line 253
    move-result v1

    .line 254
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    .line 256
    :goto_7
    if-nez v0, :cond_d

    .line 258
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 260
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 263
    move-result-object v0

    .line 264
    const v1, 0x107010f

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 270
    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 273
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 276
    move-result-object v1

    .line 277
    const v2, 0x107010e

    .line 280
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 283
    move-result-object v1

    .line 284
    if-eqz v0, :cond_c

    .line 286
    if-eqz v1, :cond_c

    .line 288
    array-length v2, v0

    .line 289
    array-length v3, v1

    .line 290
    if-ne v2, v3, :cond_c

    .line 292
    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    .line 295
    move-result-object v0

    .line 296
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 298
    invoke-static {v1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    .line 301
    move-result-object v0

    .line 302
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 304
    goto/16 :goto_a

    .line 306
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    .line 310
    const-string/jumbo v2, "display high brightness threshold array and ambient brightness threshold array have different length: highDisplayBrightnessThresholdsInt="

    .line 313
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v0, ", highAmbientBrightnessThresholdsInt="

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    move-result-object p1

    .line 339
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 342
    throw p0

    .line 343
    :cond_d
    iget-object v0, v0, Lcom/android/server/display/config/BlockingZoneConfig;->blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

    .line 345
    iget-object v1, v0, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    .line 347
    if-nez v1, :cond_e

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    .line 351
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 354
    iput-object v1, v0, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    .line 356
    :cond_e
    iget-object v0, v0, Lcom/android/server/display/config/BlockingZoneThreshold;->displayBrightnessPoint:Ljava/util/List;

    .line 358
    check-cast v0, Ljava/util/ArrayList;

    .line 360
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 363
    move-result v1

    .line 364
    new-array v4, v1, [F

    .line 366
    iput-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 368
    new-array v4, v1, [F

    .line 370
    iput-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 372
    :goto_8
    if-ge v3, v1, :cond_10

    .line 374
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 377
    move-result-object v4

    .line 378
    check-cast v4, Lcom/android/server/display/config/DisplayBrightnessPoint;

    .line 380
    iget-object v4, v4, Lcom/android/server/display/config/DisplayBrightnessPoint;->nits:Ljava/math/BigDecimal;

    .line 382
    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    .line 385
    move-result v4

    .line 386
    cmpg-float v5, v4, v2

    .line 388
    if-gez v5, :cond_f

    .line 390
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 392
    aput v4, v5, v3

    .line 394
    goto :goto_9

    .line 395
    :cond_f
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    .line 398
    move-result v4

    .line 399
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 401
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    .line 404
    move-result v4

    .line 405
    aput v4, v5, v3

    .line 407
    :goto_9
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 409
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 412
    move-result-object v5

    .line 413
    check-cast v5, Lcom/android/server/display/config/DisplayBrightnessPoint;

    .line 415
    iget-object v5, v5, Lcom/android/server/display/config/DisplayBrightnessPoint;->lux:Ljava/math/BigInteger;

    .line 417
    invoke-virtual {v5}, Ljava/math/BigInteger;->floatValue()F

    .line 420
    move-result v5

    .line 421
    aput v5, v4, v3

    .line 423
    add-int/lit8 v3, v3, 0x1

    .line 425
    goto :goto_8

    .line 426
    :cond_10
    :goto_a
    if-eqz p1, :cond_13

    .line 428
    iget-object p1, p1, Lcom/android/server/display/config/RefreshRateConfigs;->refreshRateZoneProfiles:Lcom/android/server/display/config/RefreshRateZoneProfiles;

    .line 430
    if-nez p1, :cond_11

    .line 432
    goto :goto_c

    .line 433
    :cond_11
    iget-object v0, p1, Lcom/android/server/display/config/RefreshRateZoneProfiles;->refreshRateZoneProfile:Ljava/util/List;

    .line 435
    if-nez v0, :cond_12

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    .line 439
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    iput-object v0, p1, Lcom/android/server/display/config/RefreshRateZoneProfiles;->refreshRateZoneProfile:Ljava/util/List;

    .line 444
    :cond_12
    iget-object p1, p1, Lcom/android/server/display/config/RefreshRateZoneProfiles;->refreshRateZoneProfile:Ljava/util/List;

    .line 446
    check-cast p1, Ljava/util/ArrayList;

    .line 448
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 451
    move-result-object p1

    .line 452
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    move-result v0

    .line 456
    if-eqz v0, :cond_13

    .line 458
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    move-result-object v0

    .line 462
    check-cast v0, Lcom/android/server/display/config/RefreshRateZone;

    .line 464
    iget-object v1, v0, Lcom/android/server/display/config/RefreshRateZone;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    .line 466
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 468
    iget-object v0, v0, Lcom/android/server/display/config/RefreshRateZone;->id:Ljava/lang/String;

    .line 470
    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 472
    iget-object v4, v1, Lcom/android/server/display/config/RefreshRateRange;->minimum:Ljava/math/BigInteger;

    .line 474
    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    .line 477
    move-result v4

    .line 478
    iget-object v1, v1, Lcom/android/server/display/config/RefreshRateRange;->maximum:Ljava/math/BigInteger;

    .line 480
    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    .line 483
    move-result v1

    .line 484
    invoke-direct {v3, v4, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 487
    check-cast v2, Ljava/util/HashMap;

    .line 489
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    goto :goto_b

    .line 493
    :cond_13
    :goto_c
    return-void
.end method

.method public final loadSdrHdrMapFromConfigXml()Landroid/util/Spline;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x1070159

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v1

    .line 24
    const v2, 0x1070158

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 34
    move-result-object v1

    .line 35
    iget-boolean v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsCoverDisplay:Z

    .line 37
    const-string v3, "DisplayDeviceConfig"

    .line 39
    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v2

    .line 47
    const v4, 0x10700bf

    .line 50
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 57
    move-result-object v2

    .line 58
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object p0

    .line 64
    const v4, 0x10700be

    .line 67
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 74
    move-result-object p0

    .line 75
    array-length v4, v2

    .line 76
    if-eqz v4, :cond_0

    .line 78
    array-length v4, p0

    .line 79
    if-eqz v4, :cond_0

    .line 81
    const-string/jumbo v0, "loadSdrHdrMapFromConfigXml: use seperate config for cover display"

    .line 84
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 91
    check-cast v0, [F

    .line 93
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    .line 96
    move-result-object p0

    .line 97
    move-object v1, p0

    .line 98
    check-cast v1, [F

    .line 100
    :cond_0
    array-length p0, v0

    .line 101
    const/4 v2, 0x0

    .line 102
    if-nez p0, :cond_1

    .line 104
    array-length p0, v1

    .line 105
    if-nez p0, :cond_1

    .line 107
    const-string/jumbo p0, "loadSdrHdrMapFromConfigXml: not support"

    .line 110
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v2

    .line 114
    :cond_1
    array-length p0, v0

    .line 115
    array-length v4, v1

    .line 116
    const-string v5, ", "

    .line 118
    if-eq p0, v4, :cond_2

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v4, "loadSdrHdrMapFromConfigXml: wrong length: "

    .line 125
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    array-length v0, v0

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    array-length v0, v1

    .line 136
    invoke-static {p0, v0, v3}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 139
    return-object v2

    .line 140
    :cond_2
    const/4 p0, 0x0

    .line 141
    :goto_0
    array-length v4, v0

    .line 142
    if-ge p0, v4, :cond_6

    .line 144
    if-lez p0, :cond_5

    .line 146
    aget v4, v0, p0

    .line 148
    add-int/lit8 v6, p0, -0x1

    .line 150
    aget v7, v0, v6

    .line 152
    cmpg-float v7, v4, v7

    .line 154
    if-gez v7, :cond_3

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v4, "loadSdrHdrMapFromConfigXml: sdrHdrRatioMap must be non-decreasing, ignoring rest  of configuration. sdr nits: "

    .line 161
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    aget p0, v0, p0

    .line 166
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 169
    const-string p0, " < "

    .line 171
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    aget p0, v0, v6

    .line 176
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p0

    .line 183
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-object v2

    .line 187
    :cond_3
    const/4 v6, 0x0

    .line 188
    cmpg-float v4, v4, v6

    .line 190
    if-ltz v4, :cond_4

    .line 192
    aget v4, v1, p0

    .line 194
    cmpg-float v4, v4, v6

    .line 196
    if-gez v4, :cond_5

    .line 198
    :cond_4
    const-string/jumbo v4, "loadSdrHdrMapFromConfigXml: invalid value: ["

    .line 201
    const-string v6, "] "

    .line 203
    invoke-static {p0, v4, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    move-result-object v4

    .line 207
    aget v0, v0, p0

    .line 209
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    aget p0, v1, p0

    .line 217
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object p0

    .line 224
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-object v2

    .line 228
    :cond_5
    add-int/lit8 p0, p0, 0x1

    .line 230
    goto :goto_0

    .line 231
    :cond_6
    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    .line 234
    move-result-object p0

    .line 235
    return-object p0
.end method

.method public final loadThermalThrottlingConfig(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 9

    .line 1
    iget-object p1, p1, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    .line 3
    const-string v0, "DisplayDeviceConfig"

    .line 5
    if-nez p1, :cond_0

    .line 7
    const-string p0, "No thermal throttling config found"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, p1, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Ljava/util/List;

    .line 15
    if-nez v1, :cond_1

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object v1, p1, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Ljava/util/List;

    .line 24
    :cond_1
    iget-object v1, p1, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Ljava/util/List;

    .line 26
    const-string/jumbo v2, "default"

    .line 29
    if-eqz v1, :cond_8

    .line 31
    check-cast v1, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 39
    goto/16 :goto_2

    .line 41
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v1

    .line 45
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_9

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/android/server/display/config/BrightnessThrottlingMap;

    .line 57
    iget-object v4, v3, Lcom/android/server/display/config/BrightnessThrottlingMap;->brightnessThrottlingPoint:Ljava/util/List;

    .line 59
    if-nez v4, :cond_3

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    .line 63
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iput-object v4, v3, Lcom/android/server/display/config/BrightnessThrottlingMap;->brightnessThrottlingPoint:Ljava/util/List;

    .line 68
    :cond_3
    iget-object v4, v3, Lcom/android/server/display/config/BrightnessThrottlingMap;->brightnessThrottlingPoint:Ljava/util/List;

    .line 70
    new-instance v5, Ljava/util/ArrayList;

    .line 72
    check-cast v4, Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result v6

    .line 78
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v4

    .line 85
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_5

    .line 91
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Lcom/android/server/display/config/BrightnessThrottlingPoint;

    .line 97
    iget-object v7, v6, Lcom/android/server/display/config/BrightnessThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    .line 99
    if-nez v7, :cond_4

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 105
    move-result v8

    .line 106
    packed-switch v8, :pswitch_data_0

    .line 109
    goto :goto_0

    .line 110
    :pswitch_0
    new-instance v8, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    .line 112
    invoke-static {v7}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    .line 115
    move-result v7

    .line 116
    iget-object v6, v6, Lcom/android/server/display/config/BrightnessThrottlingPoint;->brightness:Ljava/math/BigDecimal;

    .line 118
    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    .line 121
    move-result v6

    .line 122
    invoke-direct {v8, v6, v7}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;-><init>(FI)V

    .line 125
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    goto :goto_1

    .line 129
    :cond_5
    iget-object v3, v3, Lcom/android/server/display/config/BrightnessThrottlingMap;->id:Ljava/lang/String;

    .line 131
    if-nez v3, :cond_6

    .line 133
    move-object v3, v2

    .line 134
    :cond_6
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 136
    check-cast v4, Ljava/util/HashMap;

    .line 138
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_7

    .line 144
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 146
    invoke-static {v5}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 149
    move-result-object v5

    .line 150
    check-cast v4, Ljava/util/HashMap;

    .line 152
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    goto :goto_0

    .line 156
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    .line 158
    const-string p1, "Brightness throttling data with ID "

    .line 160
    const-string v0, " already exists"

    .line 162
    invoke-static {p1, v3, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p0

    .line 170
    :cond_8
    :goto_2
    const-string v1, "No brightness throttling map found"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_9
    iget-object v1, p1, Lcom/android/server/display/config/ThermalThrottling;->refreshRateThrottlingMap:Ljava/util/List;

    .line 177
    if-nez v1, :cond_a

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    .line 181
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iput-object v1, p1, Lcom/android/server/display/config/ThermalThrottling;->refreshRateThrottlingMap:Ljava/util/List;

    .line 186
    :cond_a
    iget-object p1, p1, Lcom/android/server/display/config/ThermalThrottling;->refreshRateThrottlingMap:Ljava/util/List;

    .line 188
    if-eqz p1, :cond_15

    .line 190
    check-cast p1, Ljava/util/ArrayList;

    .line 192
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_b

    .line 198
    goto/16 :goto_7

    .line 200
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 203
    move-result-object p1

    .line 204
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_16

    .line 210
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Lcom/android/server/display/config/RefreshRateThrottlingMap;

    .line 216
    iget-object v3, v1, Lcom/android/server/display/config/RefreshRateThrottlingMap;->refreshRateThrottlingPoint:Ljava/util/List;

    .line 218
    if-nez v3, :cond_c

    .line 220
    new-instance v3, Ljava/util/ArrayList;

    .line 222
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 225
    iput-object v3, v1, Lcom/android/server/display/config/RefreshRateThrottlingMap;->refreshRateThrottlingPoint:Ljava/util/List;

    .line 227
    :cond_c
    iget-object v3, v1, Lcom/android/server/display/config/RefreshRateThrottlingMap;->refreshRateThrottlingPoint:Ljava/util/List;

    .line 229
    iget-object v1, v1, Lcom/android/server/display/config/RefreshRateThrottlingMap;->id:Ljava/lang/String;

    .line 231
    if-nez v1, :cond_d

    .line 233
    move-object v1, v2

    .line 234
    :cond_d
    if-eqz v3, :cond_14

    .line 236
    check-cast v3, Ljava/util/ArrayList;

    .line 238
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_e

    .line 244
    goto/16 :goto_6

    .line 246
    :cond_e
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 248
    check-cast v4, Ljava/util/HashMap;

    .line 250
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_f

    .line 256
    const-string v3, "RefreshRateThrottling: map already exists, mapId="

    .line 258
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    move-result-object v1

    .line 262
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    goto :goto_3

    .line 266
    :cond_f
    new-instance v4, Landroid/util/SparseArray;

    .line 268
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 271
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 274
    move-result-object v3

    .line 275
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_12

    .line 281
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    move-result-object v5

    .line 285
    check-cast v5, Lcom/android/server/display/config/RefreshRateThrottlingPoint;

    .line 287
    iget-object v6, v5, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    .line 289
    if-nez v6, :cond_10

    .line 291
    goto :goto_5

    .line 292
    :cond_10
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 295
    move-result v7

    .line 296
    packed-switch v7, :pswitch_data_1

    .line 299
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 301
    const-string v7, "RefreshRateThrottling: Invalid thermalStatus="

    .line 303
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v6}, Lcom/android/server/display/config/ThermalStatus;->getRawName()Ljava/lang/String;

    .line 309
    move-result-object v6

    .line 310
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v6, ",mapId="

    .line 315
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v5

    .line 325
    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    goto :goto_4

    .line 329
    :pswitch_1
    invoke-static {v6}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    .line 332
    move-result v7

    .line 333
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->contains(I)Z

    .line 336
    move-result v8

    .line 337
    if-eqz v8, :cond_11

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    .line 341
    const-string v7, "RefreshRateThrottling: thermalStatus="

    .line 343
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v6}, Lcom/android/server/display/config/ThermalStatus;->getRawName()Ljava/lang/String;

    .line 349
    move-result-object v6

    .line 350
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v6, " is already in the map, mapId="

    .line 355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    move-result-object v5

    .line 365
    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    goto :goto_4

    .line 369
    :cond_11
    new-instance v6, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 371
    iget-object v8, v5, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    .line 373
    iget-object v8, v8, Lcom/android/server/display/config/RefreshRateRange;->minimum:Ljava/math/BigInteger;

    .line 375
    invoke-virtual {v8}, Ljava/math/BigInteger;->floatValue()F

    .line 378
    move-result v8

    .line 379
    iget-object v5, v5, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    .line 381
    iget-object v5, v5, Lcom/android/server/display/config/RefreshRateRange;->maximum:Ljava/math/BigInteger;

    .line 383
    invoke-virtual {v5}, Ljava/math/BigInteger;->floatValue()F

    .line 386
    move-result v5

    .line 387
    invoke-direct {v6, v8, v5}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 390
    invoke-virtual {v4, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    goto :goto_4

    .line 394
    :cond_12
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 397
    move-result v3

    .line 398
    if-nez v3, :cond_13

    .line 400
    const-string v3, "RefreshRateThrottling: no valid throttling points found for map, mapId="

    .line 402
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    move-result-object v1

    .line 406
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    goto/16 :goto_3

    .line 411
    :cond_13
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 413
    check-cast v3, Ljava/util/HashMap;

    .line 415
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    goto/16 :goto_3

    .line 420
    :cond_14
    :goto_6
    const-string v3, "RefreshRateThrottling: points not found for mapId="

    .line 422
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    move-result-object v1

    .line 426
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    goto/16 :goto_3

    .line 431
    :cond_15
    :goto_7
    const-string p0, "RefreshRateThrottling: map not found"

    .line 433
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_16
    return-void

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 455
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "DisplayDeviceConfig{mLoadedFrom="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mBacklightMinimum="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", mBacklightMaximum="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", mBrightnessDefault="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", mQuirks="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", mIsHighBrightnessModeEnabled="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, "\nmLuxThrottlingData="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", mHbmData="

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", mSdrToHdrSpline="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrSpline:Landroid/util/Spline;

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ", mThermalBrightnessThrottlingDataMapByThrottlingId="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "\n, mPowerThrottlingDataMapByThrottlingId="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "\nmBrightnessRampFastDecrease="

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", mBrightnessRampFastIncrease="

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, ", mBrightnessRampSlowDecrease="

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ", mBrightnessRampSlowIncrease="

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ", mBrightnessRampSlowDecreaseIdle="

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", mBrightnessRampSlowIncreaseIdle="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", mBrightnessRampDecreaseMaxMillis="

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 180
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ", mBrightnessRampIncreaseMaxMillis="

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 190
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, ", mBrightnessRampDecreaseMaxIdleMillis="

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 200
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ", mBrightnessRampIncreaseMaxIdleMillis="

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 210
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, "\nmAmbientHorizonLong="

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ", mAmbientHorizonShort="

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, "\nmAmbientBrightnessHysteresis="

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, "\nmAmbientIdleHysteresis="

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, "\nmScreenBrightnessHysteresis="

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "\nmScreenBrightnessIdleHysteresis="

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, "\nmAmbientLightSensor="

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, ", mScreenOffBrightnessSensor="

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, ", mProximitySensor="

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, ", mTempSensor="

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, ", mRefreshRateLimitations= "

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    .line 320
    check-cast v1, Ljava/util/ArrayList;

    .line 322
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 325
    move-result-object v1

    .line 326
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, ", mDensityMapping= "

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    const-string v1, ", mAutoBrightnessBrighteningLightDebounce= "

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 350
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, ", mAutoBrightnessDarkeningLightDebounce= "

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 360
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 363
    const-string v1, ", mAutoBrightnessBrighteningLightDebounceIdle= "

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    .line 370
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, ", mAutoBrightnessDarkeningLightDebounceIdle= "

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    .line 380
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, ", mDisplayBrightnessMapping= "

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    const-string v1, ", mDdcAutoBrightnessAvailable= "

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, ", mAutoBrightnessAvailable= "

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 413
    const-string v1, "\nmDefaultLowBlockingZoneRefreshRate= "

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    const-string v1, ", mDefaultHighBlockingZoneRefreshRate= "

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, ", mRefreshRateData= "

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    const-string v1, ", mRefreshRateZoneProfiles= "

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    const-string v1, ", mRefreshRateThrottlingMap= "

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, ", mLowBlockingZoneThermalMapId= "

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v1, ", mHighBlockingZoneThermalMapId= "

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, "\nmLowDisplayBrightnessThresholds= "

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 490
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 493
    move-result-object v1

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, ", mLowAmbientBrightnessThresholds= "

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 504
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 507
    move-result-object v1

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v1, ", mHighDisplayBrightnessThresholds= "

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 518
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, ", mHighAmbientBrightnessThresholds= "

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 532
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string v1, "\nmScreenOffBrightnessSensorValueToLux= "

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    .line 546
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v1, "\nmUsiVersion= "

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 563
    const-string v1, "\nmHdrBrightnessData= "

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 573
    const-string v1, "\nmBrightnessCapForWearBedtimeMode= "

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 583
    const-string v1, "\nmEvenDimmerBrightnessData:"

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 590
    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {v1}, Lcom/android/server/display/config/EvenDimmerBrightnessData;->toString()Ljava/lang/String;

    .line 595
    move-result-object v1

    .line 596
    goto :goto_0

    .line 597
    :cond_0
    const-string/jumbo v1, "null"

    .line 600
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v1, "\nmVrrSupported= "

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    .line 610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 613
    const-string v1, "\n, mUseSurfaceControlBrightness="

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mUseSurfaceControlBrightness:Z

    .line 620
    const-string/jumbo v1, "}"

    .line 623
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 626
    move-result-object p0

    .line 627
    return-object p0
.end method
