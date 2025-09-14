.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;

.field public final synthetic f$1:Z

.field public final synthetic f$10:Lcom/android/server/display/HighBrightnessModeMetadata;

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:Z

.field public final synthetic f$14:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/display/DisplayDevice;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lcom/android/server/display/DisplayDeviceConfig;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Landroid/os/IBinder;

.field public final synthetic f$9:Lcom/android/server/display/DisplayDeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;ZZILcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;IIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$1:Z

    .line 8
    iput-boolean p3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$2:Z

    .line 10
    iput p4, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$3:I

    .line 12
    iput-object p5, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$4:Lcom/android/server/display/DisplayDevice;

    .line 14
    iput-object p6, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$5:Ljava/lang/String;

    .line 16
    iput-object p7, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$6:Lcom/android/server/display/DisplayDeviceConfig;

    .line 18
    iput-object p8, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$7:Ljava/lang/String;

    .line 20
    iput-object p9, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$8:Landroid/os/IBinder;

    .line 22
    iput-object p10, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$9:Lcom/android/server/display/DisplayDeviceInfo;

    .line 24
    iput-object p11, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$10:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 26
    iput p12, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$11:I

    .line 28
    iput p13, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$12:I

    .line 30
    iput-boolean p14, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$13:Z

    .line 32
    iput-object p15, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$14:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 5
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$1:Z

    .line 7
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$2:Z

    .line 9
    iget v4, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$3:I

    .line 11
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$4:Lcom/android/server/display/DisplayDevice;

    .line 13
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$5:Ljava/lang/String;

    .line 15
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$6:Lcom/android/server/display/DisplayDeviceConfig;

    .line 17
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$7:Ljava/lang/String;

    .line 19
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$8:Landroid/os/IBinder;

    .line 21
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$9:Lcom/android/server/display/DisplayDeviceInfo;

    .line 23
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$10:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 25
    iget v7, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$11:I

    .line 27
    iget v8, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$12:I

    .line 29
    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$13:Z

    .line 31
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;->f$14:Ljava/lang/String;

    .line 33
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 35
    move-object/from16 p0, v0

    .line 37
    if-ne v10, v2, :cond_1

    .line 39
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 41
    if-eq v10, v3, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v2, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 48
    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 50
    const/4 v2, 0x1

    .line 51
    :goto_1
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 53
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 55
    if-eq v3, v4, :cond_4

    .line 57
    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 59
    iput v4, v10, Lcom/android/server/display/DisplayPowerProximityStateController;->mDualScreenPolicy:I

    .line 61
    if-nez v4, :cond_2

    .line 63
    const/4 v2, -0x1

    .line 64
    if-ne v3, v2, :cond_2

    .line 66
    const/4 v2, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/4 v2, 0x0

    .line 69
    :goto_2
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mPendingTransitionOffInDualCase:Z

    .line 71
    if-nez v4, :cond_3

    .line 73
    const/4 v2, 0x1

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const/4 v2, 0x0

    .line 76
    :goto_3
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    .line 78
    const/4 v2, 0x1

    .line 79
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicyChanged:Z

    .line 81
    const/4 v2, 0x1

    .line 82
    :cond_4
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 84
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 86
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 88
    if-eq v3, v5, :cond_7

    .line 90
    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 92
    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 94
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 97
    move-result v2

    .line 98
    iput v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 100
    iput-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 102
    iput-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 104
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 106
    if-eqz v2, :cond_5

    .line 108
    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 110
    if-eqz v2, :cond_5

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    new-instance v2, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;

    .line 117
    invoke-direct {v2, v0, v13}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 120
    new-instance v3, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;

    .line 122
    move-object v7, v3

    .line 123
    move-object v8, v0

    .line 124
    move-object v5, v10

    .line 125
    move-object v10, v12

    .line 126
    move v4, v11

    .line 127
    move-object v11, v15

    .line 128
    move-object/from16 v16, v6

    .line 130
    move-object v6, v12

    .line 131
    move-object v12, v13

    .line 132
    invoke-direct/range {v7 .. v12}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 135
    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessRangeController;->applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V

    .line 138
    invoke-virtual {v0, v6, v15, v13}, Lcom/android/server/display/BrightnessRangeController;->updateHdrClamper(Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 141
    move/from16 v17, v4

    .line 143
    move-object/from16 v18, v14

    .line 145
    goto :goto_4

    .line 146
    :cond_5
    move-object/from16 v16, v6

    .line 148
    move-object v5, v10

    .line 149
    move v3, v11

    .line 150
    move-object v6, v12

    .line 151
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    .line 154
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 163
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 165
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 167
    invoke-virtual {v1, v2, v7}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 170
    const/4 v2, 0x0

    .line 171
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    .line 174
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    new-instance v12, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;

    .line 181
    invoke-direct {v12, v0, v2}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 184
    new-instance v11, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;

    .line 186
    move-object v7, v11

    .line 187
    move-object v8, v0

    .line 188
    move-object v10, v6

    .line 189
    move/from16 v17, v3

    .line 191
    move-object v3, v11

    .line 192
    move-object v11, v15

    .line 193
    move-object/from16 v18, v14

    .line 195
    move-object v14, v12

    .line 196
    move-object v12, v2

    .line 197
    invoke-direct/range {v7 .. v12}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 200
    invoke-virtual {v0, v14, v3}, Lcom/android/server/display/BrightnessRangeController;->applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {v0, v6, v15, v2}, Lcom/android/server/display/BrightnessRangeController;->updateHdrClamper(Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 206
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 208
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 210
    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 212
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 214
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 216
    iput-object v2, v4, Lcom/android/server/display/BrightnessThrottler;->mDdcThermalThrottlingDataMap:Ljava/util/Map;

    .line 218
    iput-object v3, v4, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 220
    iput-object v6, v4, Lcom/android/server/display/BrightnessThrottler;->mUniqueDisplayId:Ljava/lang/String;

    .line 222
    iput-object v0, v4, Lcom/android/server/display/BrightnessThrottler;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 224
    invoke-virtual {v4}, Lcom/android/server/display/BrightnessThrottler;->resetThermalThrottlingData()V

    .line 227
    :goto_4
    iput-object v13, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 229
    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerProximityStateController;->loadProximitySensor()V

    .line 232
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 234
    const/4 v2, 0x0

    .line 235
    iput v2, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 237
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 239
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    .line 241
    const/4 v3, 0x1

    .line 242
    if-eqz v0, :cond_6

    .line 244
    iput-boolean v3, v0, Lcom/android/server/display/EarlyWakeUpManager;->mIsRequestInvalidated:Z

    .line 246
    :cond_6
    move v0, v3

    .line 247
    move/from16 v2, v17

    .line 249
    move-object/from16 v6, v18

    .line 251
    goto :goto_6

    .line 252
    :cond_7
    move-object/from16 v16, v6

    .line 254
    move/from16 v17, v11

    .line 256
    move-object/from16 v18, v14

    .line 258
    const/4 v3, 0x1

    .line 259
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 261
    move-object/from16 v6, v18

    .line 263
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    move-result v5

    .line 267
    if-nez v5, :cond_8

    .line 269
    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 271
    iget-object v0, v13, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 273
    iget-object v2, v13, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 275
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 277
    iput-object v0, v4, Lcom/android/server/display/BrightnessThrottler;->mDdcThermalThrottlingDataMap:Ljava/util/Map;

    .line 279
    iput-object v6, v4, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 281
    iput-object v5, v4, Lcom/android/server/display/BrightnessThrottler;->mUniqueDisplayId:Ljava/lang/String;

    .line 283
    iput-object v2, v4, Lcom/android/server/display/BrightnessThrottler;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 285
    invoke-virtual {v4}, Lcom/android/server/display/BrightnessThrottler;->resetThermalThrottlingData()V

    .line 288
    move v0, v3

    .line 289
    :goto_5
    move/from16 v2, v17

    .line 291
    goto :goto_6

    .line 292
    :cond_8
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 294
    if-nez v3, :cond_a

    .line 296
    iget-object v0, v0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 298
    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 300
    if-ne v3, v7, :cond_9

    .line 302
    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 304
    if-eq v3, v8, :cond_a

    .line 306
    :cond_9
    iput v7, v0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 308
    iput v8, v0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 310
    :cond_a
    move v0, v2

    .line 311
    goto :goto_5

    .line 312
    :goto_6
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 314
    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 316
    move-object/from16 v4, p0

    .line 318
    move-object/from16 v3, v16

    .line 320
    invoke-direct {v2, v3, v6, v4, v13}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 323
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 325
    iget-object v3, v3, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClampers:Ljava/util/List;

    .line 327
    new-instance v4, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;

    .line 329
    const/4 v5, 0x2

    .line 330
    invoke-direct {v4, v5, v2}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 333
    check-cast v3, Ljava/util/ArrayList;

    .line 335
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 338
    if-eqz v0, :cond_b

    .line 340
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 343
    :cond_b
    return-void
.end method
