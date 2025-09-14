.class public final Lcom/android/server/display/brightness/clamper/BrightnessClamperController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

.field public mBrightnessCap:F

.field public mClamperApplied:Z

.field public final mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public mClamperType:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

.field public final mClampers:Ljava/util/List;

.field public mCustomAnimationRate:F

.field public final mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

.field public final mLightSensorName:Ljava/lang/String;

.field public final mLightSensorRate:I

.field public final mLightSensorType:Ljava/lang/String;

.field public final mModifiers:Ljava/util/List;

.field public final mOnPropertiesChangedListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;

.field public mRegisteredLightSensor:Landroid/hardware/Sensor;

.field public final mResources:Landroid/content/res/Resources;

.field public final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "BrightnessClamperController"

    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->DEBUG:Z

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p2

    .line 5
    move-object/from16 v8, p3

    .line 7
    move-object/from16 v9, p4

    .line 9
    move-object/from16 v10, p5

    .line 11
    move-object/from16 v11, p6

    .line 13
    move-object/from16 v12, p7

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget v1, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    .line 20
    iput v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mBrightnessCap:F

    .line 22
    const/high16 v1, -0x40800000    # -1.0f

    .line 24
    iput v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mCustomAnimationRate:F

    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperType:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 29
    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperApplied:Z

    .line 34
    if-nez p1, :cond_0

    .line 36
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;

    .line 38
    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;-><init>()V

    .line 41
    :cond_0
    new-instance v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 43
    sget-object v13, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    .line 45
    invoke-direct {v1, v13}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    .line 48
    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 50
    iput-object v7, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object v12, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    iget-object v14, v9, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 56
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

    .line 58
    invoke-direct {v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    .line 61
    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

    .line 63
    iput-object v8, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 65
    new-instance v15, Landroid/os/HandlerExecutor;

    .line 67
    invoke-direct {v15, v7}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 70
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v6

    .line 74
    iput-object v6, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mResources:Landroid/content/res/Resources;

    .line 76
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v1

    .line 80
    const v2, 0x10e003a

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 86
    move-result v1

    .line 87
    iput v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorRate:I

    .line 89
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;

    .line 91
    invoke-direct {v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    .line 94
    new-instance v5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;

    .line 96
    invoke-direct {v5, v0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;)V

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    .line 101
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;

    .line 106
    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$Injector;

    .line 108
    invoke-direct {v2}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$Injector;-><init>()V

    .line 111
    invoke-direct {v1, v2, v7, v5, v9}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;)V

    .line 114
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, v11, Lcom/android/server/display/feature/DisplayManagerFlags;->mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 119
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_1

    .line 125
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;

    .line 127
    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$Injector;

    .line 129
    invoke-direct {v2}, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$Injector;-><init>()V

    .line 132
    invoke-direct {v1, v2, v7, v5, v9}, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;)V

    .line 135
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    iget-object v1, v11, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 140
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_2

    .line 146
    new-instance v3, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;

    .line 148
    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$Injector;

    .line 150
    invoke-direct {v2}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$Injector;-><init>()V

    .line 153
    move-object v1, v3

    .line 154
    move-object v12, v3

    .line 155
    move-object/from16 v3, p2

    .line 157
    move-object/from16 p1, v14

    .line 159
    move-object v14, v4

    .line 160
    move-object/from16 v4, p5

    .line 162
    move-object/from16 v16, v6

    .line 164
    move-object/from16 v6, p4

    .line 166
    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$Injector;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$WearBedtimeModeData;)V

    .line 169
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    goto :goto_0

    .line 173
    :cond_2
    move-object/from16 v16, v6

    .line 175
    move-object/from16 p1, v14

    .line 177
    move-object v14, v4

    .line 178
    :goto_0
    iput-object v14, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClampers:Ljava/util/List;

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    .line 182
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v2, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;

    .line 187
    invoke-direct {v2, v10}, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessLowPowerModeModifier;

    .line 195
    invoke-direct {v2}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;-><init>()V

    .line 198
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v2, v11, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 203
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_3

    .line 209
    iget-object v2, v9, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 211
    if-eqz v2, :cond_3

    .line 213
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 215
    if-eqz v3, :cond_3

    .line 217
    new-instance v3, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;

    .line 219
    invoke-direct {v3, v7, v8, v10, v2}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 222
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_3
    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    .line 227
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;

    .line 229
    invoke-direct {v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    .line 232
    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;

    .line 234
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 237
    move-result v2

    .line 238
    if-nez v2, :cond_6

    .line 240
    const-string/jumbo v2, "display_manager"

    .line 243
    invoke-interface {v13, v2, v15, v1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 246
    if-eqz p1, :cond_4

    .line 248
    move-object/from16 v1, p1

    .line 250
    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 252
    if-eqz v1, :cond_4

    .line 254
    iget-object v2, v1, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 256
    iput-object v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorType:Ljava/lang/String;

    .line 258
    iget-object v1, v1, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 260
    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorName:Ljava/lang/String;

    .line 262
    goto :goto_1

    .line 263
    :cond_4
    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorName:Ljava/lang/String;

    .line 265
    if-nez v1, :cond_5

    .line 267
    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorType:Ljava/lang/String;

    .line 269
    if-nez v1, :cond_5

    .line 271
    const v1, 0x1040345

    .line 274
    move-object/from16 v2, v16

    .line 276
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 279
    move-result-object v1

    .line 280
    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorType:Ljava/lang/String;

    .line 282
    const-string v1, ""

    .line 284
    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorName:Ljava/lang/String;

    .line 286
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorType:Ljava/lang/String;

    .line 288
    iget-object v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorName:Ljava/lang/String;

    .line 290
    const/4 v3, 0x5

    .line 291
    move-object/from16 v4, p7

    .line 293
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    .line 296
    move-result-object v1

    .line 297
    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensor:Landroid/hardware/Sensor;

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->maybeRegisterLightSensor()V

    .line 302
    :cond_6
    return-void
.end method


# virtual methods
.method public final clamp(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZILcom/android/server/display/brightness/clamper/BrightnessModifierRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mBrightnessCap:F

    .line 3
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    .line 6
    move-result p2

    .line 7
    new-instance v0, Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 9
    invoke-direct {v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 12
    iput-boolean p3, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    .line 14
    iput p2, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    .line 16
    iget p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mBrightnessCap:F

    .line 18
    iput p3, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    .line 20
    iget p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mCustomAnimationRate:F

    .line 22
    iput p3, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    .line 24
    iget-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperType:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz p3, :cond_1

    .line 30
    iget-object p3, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 32
    const/16 v3, 0x8

    .line 34
    invoke-virtual {p3, p2, v3}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 37
    iget-boolean p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperApplied:Z

    .line 39
    if-nez p2, :cond_0

    .line 41
    iput-boolean v2, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    .line 43
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperApplied:Z

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperApplied:Z

    .line 48
    :goto_0
    const/4 p2, 0x2

    .line 49
    if-eq p4, p2, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->unregisterSensorListener()V

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->maybeRegisterLightSensor()V

    .line 58
    :goto_1
    move p2, v2

    .line 59
    :goto_2
    iget-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    .line 61
    check-cast p3, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result p3

    .line 67
    if-ge p2, p3, :cond_7

    .line 69
    iget-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    .line 71
    check-cast p3, Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object p3

    .line 77
    check-cast p3, Lcom/android/server/display/brightness/clamper/BrightnessModifier;

    .line 79
    invoke-virtual {p3, p1, p5}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;)Z

    .line 82
    move-result p4

    .line 83
    if-eqz p4, :cond_5

    .line 85
    iget p4, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    .line 87
    const/4 v3, 0x0

    .line 88
    cmpl-float v3, p4, v3

    .line 90
    if-lez v3, :cond_3

    .line 92
    invoke-virtual {p3, p4, p1}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F

    .line 95
    move-result p4

    .line 96
    iput p4, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    .line 98
    iget-object p4, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 100
    invoke-virtual {p3}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->getModifier()I

    .line 103
    move-result v3

    .line 104
    iget v4, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    .line 106
    invoke-virtual {p4, v4, v3}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 109
    :cond_3
    iget-boolean p4, p3, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    .line 111
    if-nez p4, :cond_4

    .line 113
    iput-boolean v2, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    .line 115
    :cond_4
    iput-boolean v1, p3, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    .line 117
    goto :goto_3

    .line 118
    :cond_5
    iget-boolean p4, p3, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    .line 120
    if-eqz p4, :cond_6

    .line 122
    iput-boolean v2, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    .line 124
    iput-boolean v2, p3, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    .line 126
    :cond_6
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 128
    goto :goto_2

    .line 129
    :cond_7
    new-instance p0, Lcom/android/server/display/DisplayBrightnessState;

    .line 131
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    .line 134
    return-object p0
.end method

.method public final getBrightnessMaxReason()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperType:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v2, Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;->THERMAL:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 9
    if-ne v0, v2, :cond_1

    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    sget-object v2, Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;->POWER:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 15
    if-ne v0, v2, :cond_2

    .line 17
    const/4 p0, 0x2

    .line 18
    return p0

    .line 19
    :cond_2
    sget-object v2, Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;->WEAR_BEDTIME_MODE:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 21
    if-ne v0, v2, :cond_3

    .line 23
    const/4 p0, 0x3

    .line 24
    return p0

    .line 25
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    const-string v2, "BrightnessMaxReason not mapped for type="

    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperType:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    const-string v0, "BrightnessClamperController"

    .line 43
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v1
.end method

.method public final maybeRegisterLightSensor()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 13
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 22
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensor:Landroid/hardware/Sensor;

    .line 24
    if-ne v0, v1, :cond_1

    .line 26
    return-void

    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->unregisterSensorListener()V

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mResources:Landroid/content/res/Resources;

    .line 34
    const-string v1, "BrightnessClamperController"

    .line 36
    invoke-static {v0, v1}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 42
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 44
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensor:Landroid/hardware/Sensor;

    .line 46
    iget v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorRate:I

    .line 48
    mul-int/lit16 v3, v3, 0x3e8

    .line 50
    iget-object v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    .line 52
    iget-object v5, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

    .line 54
    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 57
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensor:Landroid/hardware/Sensor;

    .line 59
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 61
    sget-boolean p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->DEBUG:Z

    .line 63
    if-eqz p0, :cond_3

    .line 65
    const-string/jumbo p0, "maybeRegisterLightSensor"

    .line 68
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    return-void
.end method

.method public final unregisterSensorListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 11
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    .line 13
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 19
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 24
    sget-boolean p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->DEBUG:Z

    .line 26
    if-eqz p0, :cond_0

    .line 28
    const-string p0, "BrightnessClamperController"

    .line 30
    const-string/jumbo v0, "unregisterSensorListener"

    .line 33
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method
