.class public final Lcom/android/server/display/HighBrightnessModeController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final FEATURE_SUPPORT_HDR_SOLUTION:Z

.field public static final FEATURE_SUPPORT_PHOTOHDR:Z

.field static final HBM_TRANSITION_POINT_INVALID:F = Infinityf


# instance fields
.field public mAmbientLux:F

.field public mBrightness:F

.field public final mBrightnessMax:F

.field public final mBrightnessMin:F

.field public final mClock:Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public mDisplayStatsId:I

.field public mForceHbmChangeCallback:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHbmChangeCallback:Ljava/lang/Runnable;

.field public mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

.field public mHbmMode:I

.field public mHbmStatsState:I

.field public mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

.field public final mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

.field public mHeight:I

.field public mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

.field public final mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

.field public mIsAutoBrightnessEnabled:Z

.field public mIsAutoBrightnessOffByState:Z

.field public mIsBlockedByLowPowerMode:Z

.field public mIsHdrLayerPresent:Z

.field public mIsInAllowedAmbientRange:Z

.field public mIsTimeAvailable:Z

.field public final mLogLevel:I

.field public mMaxDesiredHdrSdrRatio:F

.field public final mRecalcRunnable:Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

.field public mRegisteredDisplayToken:Landroid/os/IBinder;

.field public final mSDRDimming:I

.field public final mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

.field public final mStaticVRR:Z

.field public mSupportHdrSolution:Z

.field public final mSupportPhotoHdr:Z

.field public final mSurfaceFlinger:Landroid/os/IBinder;

.field public final mThresRatio:F

.field public mThrottlingReason:I

.field public mUnthrottledBrightness:F

.field public mUseTimeAllowance:Z

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "HighBrightnessModeController"

    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    .line 9
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HW_HDR"

    .line 15
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    sput-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->FEATURE_SUPPORT_HDR_SOLUTION:Z

    .line 21
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 24
    move-result-object v0

    .line 25
    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_PHOTOHDR"

    .line 27
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 30
    move-result v0

    .line 31
    sput-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->FEATURE_SUPPORT_PHOTOHDR:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    move-object v0, p2

    .line 3
    move/from16 v2, p7

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v3, 0x0

    .line 9
    iput v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    .line 11
    const v4, 0x3f666666    # 0.9f

    .line 14
    iput v4, v1, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    .line 16
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    .line 18
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    .line 20
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mSupportPhotoHdr:Z

    .line 22
    const-string v4, "SurfaceFlinger"

    .line 24
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    move-result-object v4

    .line 28
    iput-object v4, v1, Lcom/android/server/display/HighBrightnessModeController;->mSurfaceFlinger:Landroid/os/IBinder;

    .line 30
    iput v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    .line 32
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 34
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 36
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 38
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 40
    iput v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 42
    iput v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 44
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 46
    const/high16 v5, 0x3f800000    # 1.0f

    .line 48
    iput v5, v1, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    .line 50
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    .line 52
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 54
    const/4 v5, 0x1

    .line 55
    iput v5, v1, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    .line 57
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mUseTimeAllowance:Z

    .line 59
    move-object v6, p1

    .line 60
    iput-object v6, v1, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    .line 62
    move-object/from16 v7, p13

    .line 64
    iput-object v7, v1, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    new-instance v6, Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    .line 71
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v6, v1, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    .line 76
    iput-object v0, v1, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    .line 78
    iput v2, v1, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 80
    iput v2, v1, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 82
    move/from16 v2, p8

    .line 84
    iput v2, v1, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    .line 86
    move-object/from16 v2, p11

    .line 88
    iput-object v2, v1, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    .line 90
    move-object/from16 v2, p12

    .line 92
    iput-object v2, v1, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 94
    new-instance v2, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    .line 96
    invoke-direct {v2, p0, p2}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;-><init>(Lcom/android/server/display/HighBrightnessModeController;Landroid/os/Handler;)V

    .line 99
    iput-object v2, v1, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    .line 101
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    .line 103
    invoke-direct {v0, v3, p0}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 106
    iput-object v0, v1, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    .line 108
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    .line 110
    invoke-direct {v0, p0}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    .line 113
    iput-object v0, v1, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    .line 115
    const-string/jumbo v0, "debug.hbmc.log"

    .line 118
    const-string v2, "0"

    .line 120
    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 127
    move-result v0

    .line 128
    iput v0, v1, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    .line 130
    const-string/jumbo v0, "debug.hbmc.enforce.brt_up"

    .line 133
    const-string/jumbo v2, "null"

    .line 136
    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object v6

    .line 140
    const-string/jumbo v0, "debug.hbmc.enforce.vrr"

    .line 143
    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 147
    const-string/jumbo v0, "debug.hbmc.thres"

    .line 150
    const-string v7, "0.9"

    .line 152
    invoke-static {v0, v7}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 159
    move-result v0

    .line 160
    iput v0, v1, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    .line 162
    const-string v7, "SDR Dimming OnOff: "

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 167
    move-result-object v8

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 171
    move-result-object v9

    .line 172
    const-string v10, "HighBrightnessModeController"

    .line 174
    if-eqz v8, :cond_0

    .line 176
    if-eqz v9, :cond_0

    .line 178
    if-eqz v4, :cond_0

    .line 180
    :try_start_0
    const-string v0, "android.ui.ISurfaceComposer"

    .line 182
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    const/16 v0, 0x46f

    .line 187
    :try_start_1
    invoke-interface {v4, v0, v8, v9, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 190
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    goto :goto_1

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    goto :goto_2

    .line 194
    :catch_0
    move-exception v0

    .line 195
    move-object v4, v0

    .line 196
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    goto :goto_0

    .line 200
    :catch_1
    const-string v0, "SecurityException: Need system privilege"

    .line 202
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    goto :goto_0

    .line 206
    :catch_2
    const-string/jumbo v0, "getSDRDimmingEnalbe() FAILED!"

    .line 209
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    move v0, v3

    .line 213
    :goto_1
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 218
    move-result v0

    .line 219
    iget v4, v1, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    .line 221
    if-lez v4, :cond_1

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    .line 225
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object v4

    .line 235
    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    goto :goto_3

    .line 239
    :goto_2
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 245
    throw v0

    .line 246
    :cond_0
    const/4 v0, -0x1

    .line 247
    :cond_1
    :goto_3
    if-eqz v8, :cond_2

    .line 249
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 252
    :cond_2
    if-eqz v9, :cond_3

    .line 254
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 257
    :cond_3
    iput v0, v1, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    .line 259
    sget-boolean v4, Lcom/android/server/display/HighBrightnessModeController;->FEATURE_SUPPORT_PHOTOHDR:Z

    .line 261
    iput-boolean v4, v1, Lcom/android/server/display/HighBrightnessModeController;->mSupportPhotoHdr:Z

    .line 263
    if-lez v0, :cond_4

    .line 265
    const v0, 0x3e4ccccd    # 0.2f

    .line 268
    goto :goto_4

    .line 269
    :cond_4
    iget v0, v1, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    .line 271
    :goto_4
    iput v0, v1, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    .line 273
    iget-object v0, v1, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    .line 275
    new-instance v4, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;

    .line 277
    invoke-direct {v4, p0, v6, v3}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Object;I)V

    .line 280
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    const-string v2, "ON"

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    move-result v2

    .line 296
    if-nez v2, :cond_6

    .line 298
    const-string v2, "OFF"

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_5

    .line 306
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    .line 308
    goto :goto_5

    .line 309
    :cond_5
    iput-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    .line 311
    const-string v0, "Prevent Static VRR @HDR"

    .line 313
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    goto :goto_5

    .line 317
    :cond_6
    iput-boolean v5, v1, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    .line 319
    const-string v0, "Enforce Static VRR @HDR"

    .line 321
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_5
    move-object v1, p0

    .line 325
    move v2, p3

    .line 326
    move v3, p4

    .line 327
    move-object/from16 v4, p5

    .line 329
    move-object/from16 v5, p6

    .line 331
    move-object/from16 v6, p9

    .line 333
    move-object/from16 v7, p10

    .line 335
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    .line 338
    return-void
.end method


# virtual methods
.method public final calculateRemainingTime(J)J
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 12
    iget-wide v3, v0, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    .line 14
    cmp-long v0, v3, v1

    .line 16
    const-string v5, "HighBrightnessModeController"

    .line 18
    if-lez v0, :cond_2

    .line 20
    cmp-long v0, v3, p1

    .line 22
    if-lez v0, :cond_1

    .line 24
    const-string v0, "Start time set to the future. curr: "

    .line 26
    const-string v6, ", start: "

    .line 28
    invoke-static {v0, p1, p2, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 44
    iput-wide p1, v0, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    .line 46
    move-wide v3, p1

    .line 47
    :cond_1
    sub-long v3, p1, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-wide v3, v1

    .line 51
    :goto_0
    sget-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    .line 53
    if-eqz v0, :cond_3

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    .line 57
    const-string v7, "Time already used after current session: "

    .line 59
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v6

    .line 69
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_3
    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 74
    iget-wide v6, v6, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    .line 76
    sub-long/2addr p1, v6

    .line 77
    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 79
    iget-object v6, v6, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    .line 81
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v6

    .line 85
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_5

    .line 91
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object v7

    .line 95
    check-cast v7, Lcom/android/server/display/HbmEvent;

    .line 97
    iget-wide v8, v7, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    .line 99
    cmp-long v8, v8, p1

    .line 101
    if-gez v8, :cond_4

    .line 103
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    iget-wide v8, v7, Lcom/android/server/display/HbmEvent;->mStartTimeMillis:J

    .line 109
    invoke-static {v8, v9, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 112
    move-result-wide v8

    .line 113
    iget-wide v10, v7, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    .line 115
    sub-long/2addr v10, v8

    .line 116
    add-long/2addr v3, v10

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    if-eqz v0, :cond_6

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    const-string p2, "Time already used after all sessions: "

    .line 124
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_6
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 139
    iget-wide p0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    .line 141
    sub-long/2addr p0, v3

    .line 142
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 145
    move-result-wide p0

    .line 146
    return-wide p0
.end method

.method public final deviceSupportsHbm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final getCurrentBrightnessMax()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 16
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    .line 21
    return p0
.end method

.method public final getHdrBrightnessValue()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 7
    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;->getHdrBrightnessFromSdr(FF)F

    .line 12
    move-result v0

    .line 13
    const/high16 v1, -0x40800000    # -1.0f

    .line 15
    cmpl-float v1, v0, v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    return v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    .line 23
    move-result v0

    .line 24
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    .line 26
    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 28
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 30
    invoke-static {p0, v0, p0, v1, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public getHdrListener()Lcom/android/server/display/HighBrightnessModeController$HdrListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    .line 3
    return-object p0
.end method

.method public final isHbmCurrentlyAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 15
    if-nez p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public isThermalThrottlingActive()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    .line 3
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 5
    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 7
    cmpl-float v0, v0, v1

    .line 9
    if-lez v0, :cond_0

    .line 11
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 13
    cmpg-float v0, v0, v1

    .line 15
    if-gtz v0, :cond_0

    .line 17
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 19
    const/4 v0, 0x1

    .line 20
    if-ne p0, v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public final onBrightnessChanged(IFF)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 10
    iput p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    .line 12
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 14
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 16
    iget-wide v0, p1, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    .line 18
    const-wide/16 v2, -0x1

    .line 20
    cmp-long p1, v0, v2

    .line 22
    const/4 p3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz p1, :cond_1

    .line 26
    move p1, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move p1, p3

    .line 29
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 31
    iget v5, v5, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 33
    cmpl-float p2, p2, v5

    .line 35
    if-lez p2, :cond_2

    .line 37
    iget-boolean p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 39
    if-nez p2, :cond_2

    .line 41
    move p3, v4

    .line 42
    :cond_2
    if-eq p1, p3, :cond_4

    .line 44
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 52
    move-result-wide p1

    .line 53
    if-eqz p3, :cond_3

    .line 55
    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 57
    iput-wide p1, p3, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    new-instance p3, Lcom/android/server/display/HbmEvent;

    .line 62
    invoke-direct {p3, v0, v1, p1, p2}, Lcom/android/server/display/HbmEvent;-><init>(JJ)V

    .line 65
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 67
    iget-object p1, p1, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    .line 69
    invoke-virtual {p1, p3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 74
    iput-wide v2, p1, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    .line 76
    sget-boolean p1, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    .line 78
    if-eqz p1, :cond_4

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    const-string p2, "New HBM event: "

    .line 84
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 89
    iget-object p2, p2, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    .line 91
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    const-string p2, "HighBrightnessModeController"

    .line 104
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 110
    return-void
.end method

.method public final recalculateTimeAllowance()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-boolean v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mUseTimeAllowance:Z

    .line 5
    if-eqz v1, :cond_8

    .line 7
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    .line 19
    move-result-wide v3

    .line 20
    iget-object v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 22
    iget-wide v6, v5, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    .line 24
    cmp-long v6, v3, v6

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x1

    .line 28
    if-ltz v6, :cond_0

    .line 30
    move v6, v8

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v6, v7

    .line 33
    :goto_0
    if-nez v6, :cond_1

    .line 35
    const-wide/16 v9, 0x0

    .line 37
    cmp-long v9, v3, v9

    .line 39
    if-lez v9, :cond_1

    .line 41
    iget v9, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 43
    iget v10, v5, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 45
    cmpl-float v9, v9, v10

    .line 47
    if-lez v9, :cond_1

    .line 49
    move v9, v8

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v9, v7

    .line 52
    :goto_1
    if-nez v6, :cond_2

    .line 54
    if-eqz v9, :cond_3

    .line 56
    :cond_2
    move v7, v8

    .line 57
    :cond_3
    iput-boolean v7, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 59
    iget-object v8, v0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 61
    iget-object v8, v8, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    .line 63
    iget v10, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 65
    iget v5, v5, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 67
    cmpl-float v5, v10, v5

    .line 69
    if-lez v5, :cond_4

    .line 71
    add-long v12, v1, v3

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    if-nez v7, :cond_5

    .line 76
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    .line 79
    move-result v5

    .line 80
    if-lez v5, :cond_5

    .line 82
    iget-object v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 84
    iget-wide v12, v5, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    .line 86
    sub-long v12, v1, v12

    .line 88
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lcom/android/server/display/HbmEvent;

    .line 94
    iget-wide v14, v5, Lcom/android/server/display/HbmEvent;->mStartTimeMillis:J

    .line 96
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 99
    move-result-wide v14

    .line 100
    iget-object v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 102
    iget-wide v10, v5, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    .line 104
    add-long/2addr v14, v10

    .line 105
    sub-long/2addr v14, v12

    .line 106
    add-long/2addr v14, v1

    .line 107
    sub-long v12, v14, v3

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    const-wide/16 v12, -0x1

    .line 112
    :goto_2
    sget-boolean v5, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    .line 114
    if-eqz v5, :cond_7

    .line 116
    const-string v5, "HBM recalculated.  IsAllowedWithoutRestrictions: "

    .line 118
    const-string v7, ", isOnlyAllowedToStayOn: "

    .line 120
    const-string v10, ", remainingAllowedTime: "

    .line 122
    invoke-static {v5, v6, v7, v9, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    const-string v3, ", isLuxHigh: "

    .line 131
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 136
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    const-string v3, ", isHBMCurrentlyAllowed: "

    .line 141
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    .line 147
    move-result v3

    .line 148
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    const-string v3, ", isHdrLayerPresent: "

    .line 153
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 158
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    const-string v3, ", mMaxDesiredHdrSdrRatio: "

    .line 163
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    .line 168
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 171
    const-string v3, ", isAutoBrightnessEnabled: "

    .line 173
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 178
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    const-string v3, ", mIsTimeAvailable: "

    .line 183
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 188
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    const-string v3, ", mIsInAllowedAmbientRange: "

    .line 193
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 198
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    const-string v3, ", mIsBlockedByLowPowerMode: "

    .line 203
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 208
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    const-string v3, ", mBrightness: "

    .line 213
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 218
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 221
    const-string v3, ", mUnthrottledBrightness: "

    .line 223
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    .line 228
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 231
    const-string v3, ", mThrottlingReason: "

    .line 233
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 238
    invoke-static {v3}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v3, ", RunningStartTimeMillis: "

    .line 247
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 252
    iget-wide v3, v3, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    .line 254
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 257
    const-string v3, ", nextTimeout: "

    .line 259
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-wide/16 v3, -0x1

    .line 264
    cmp-long v6, v12, v3

    .line 266
    if-eqz v6, :cond_6

    .line 268
    sub-long v3, v12, v1

    .line 270
    goto :goto_3

    .line 271
    :cond_6
    const-wide/16 v3, -0x1

    .line 273
    :goto_3
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, ", events: "

    .line 278
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v1

    .line 288
    const-string v2, "HighBrightnessModeController"

    .line 290
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_7
    const-wide/16 v1, -0x1

    .line 295
    cmp-long v1, v12, v1

    .line 297
    if-eqz v1, :cond_8

    .line 299
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    .line 301
    iget-object v2, v0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    .line 303
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    const-wide/16 v3, 0x1

    .line 308
    add-long/2addr v12, v3

    .line 309
    invoke-virtual {v1, v2, v12, v13}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 312
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    .line 315
    return-void
.end method

.method public final resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 3
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 5
    iput-object p5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 7
    iput-object p6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    .line 9
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mDisplayStatsId:I

    .line 15
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 17
    const/4 p2, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 20
    iget-object p4, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    .line 22
    invoke-virtual {p4, p1}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    .line 25
    iput-boolean p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    .line 29
    iget-object p4, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 31
    iput-boolean p2, p4, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 33
    iget-boolean p5, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    .line 35
    if-eqz p5, :cond_1

    .line 37
    iget-object p4, p4, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    move-result-object p4

    .line 43
    invoke-virtual {p4, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 46
    iput-boolean p2, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 51
    move-result p4

    .line 52
    if-eqz p4, :cond_6

    .line 54
    iget-object p4, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 56
    if-ne p4, p3, :cond_2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-eqz p4, :cond_3

    .line 61
    iget-object p5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    .line 63
    invoke-virtual {p5, p4}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    .line 66
    iput-boolean p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 68
    :cond_3
    iput-object p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 70
    if-eqz p3, :cond_4

    .line 72
    iget-object p4, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    .line 74
    invoke-virtual {p4, p3}, Landroid/view/SurfaceControlHdrLayerInfoListener;->register(Landroid/os/IBinder;)V

    .line 77
    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 79
    iget-wide p4, p3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    .line 81
    const-wide/16 v0, 0x0

    .line 83
    cmp-long p4, p4, v0

    .line 85
    const/4 p5, 0x1

    .line 86
    if-nez p4, :cond_5

    .line 88
    iget-wide v2, p3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    .line 90
    cmp-long p4, v2, v0

    .line 92
    if-nez p4, :cond_5

    .line 94
    iget-wide p3, p3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    .line 96
    cmp-long p3, p3, v0

    .line 98
    if-nez p3, :cond_5

    .line 100
    iput-boolean p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mUseTimeAllowance:Z

    .line 102
    iput-boolean p5, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    iput-boolean p5, p0, Lcom/android/server/display/HighBrightnessModeController;->mUseTimeAllowance:Z

    .line 107
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 110
    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 112
    iget-boolean p3, p3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    .line 114
    if-nez p3, :cond_6

    .line 116
    iput-boolean p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 118
    iget-boolean p0, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    .line 120
    if-nez p0, :cond_6

    .line 122
    iget-object p0, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 124
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 129
    move-result-object p0

    .line 130
    iget-object p3, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 132
    const/4 p4, -0x1

    .line 133
    invoke-virtual {p0, p3, p2, p1, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 136
    iput-boolean p5, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    .line 138
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->updateLowPower()V

    .line 141
    :cond_6
    return-void
.end method

.method public final updateHbmMode()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 10
    :cond_0
    move v0, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 14
    if-eqz v0, :cond_2

    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    move v0, v1

    .line 25
    :goto_0
    const/4 v4, 0x3

    .line 26
    if-ne v0, v2, :cond_3

    .line 28
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    .line 31
    move-result v5

    .line 32
    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 34
    iget v6, v6, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 36
    cmpl-float v5, v5, v6

    .line 38
    if-lez v5, :cond_3

    .line 40
    move v5, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    if-ne v0, v1, :cond_4

    .line 44
    iget v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 46
    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 48
    iget v6, v6, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 50
    cmpl-float v5, v5, v6

    .line 52
    if-lez v5, :cond_4

    .line 54
    move v5, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    move v5, v1

    .line 57
    :goto_1
    iget v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    .line 59
    if-ne v5, v6, :cond_5

    .line 61
    goto/16 :goto_5

    .line 63
    :cond_5
    if-ne v6, v4, :cond_6

    .line 65
    move v6, v1

    .line 66
    goto :goto_2

    .line 67
    :cond_6
    move v6, v3

    .line 68
    :goto_2
    if-ne v5, v4, :cond_7

    .line 70
    move v7, v1

    .line 71
    goto :goto_3

    .line 72
    :cond_7
    move v7, v3

    .line 73
    :goto_3
    if-eqz v6, :cond_f

    .line 75
    if-nez v7, :cond_f

    .line 77
    iget-boolean v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 79
    if-nez v6, :cond_8

    .line 81
    iget-boolean v7, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 83
    if-eqz v7, :cond_8

    .line 85
    const/4 v1, 0x6

    .line 86
    goto :goto_4

    .line 87
    :cond_8
    if-nez v6, :cond_9

    .line 89
    const/4 v1, 0x7

    .line 90
    goto :goto_4

    .line 91
    :cond_9
    iget-boolean v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 93
    if-nez v6, :cond_a

    .line 95
    goto :goto_4

    .line 96
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 98
    if-nez v1, :cond_b

    .line 100
    move v1, v2

    .line 101
    goto :goto_4

    .line 102
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isThermalThrottlingActive()Z

    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_c

    .line 108
    move v1, v4

    .line 109
    goto :goto_4

    .line 110
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 112
    if-eqz v1, :cond_d

    .line 114
    const/4 v1, 0x4

    .line 115
    goto :goto_4

    .line 116
    :cond_d
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 118
    if-eqz v1, :cond_e

    .line 120
    const/4 v1, 0x5

    .line 121
    goto :goto_4

    .line 122
    :cond_e
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 124
    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 126
    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 128
    cmpg-float v1, v1, v2

    .line 130
    if-gtz v1, :cond_f

    .line 132
    const/16 v1, 0x9

    .line 134
    goto :goto_4

    .line 135
    :cond_f
    move v1, v3

    .line 136
    :goto_4
    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mDisplayStatsId:I

    .line 138
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    .line 140
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    const/16 v4, 0x1a0

    .line 145
    invoke-static {v4, v2, v5, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 148
    iput v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    .line 150
    :goto_5
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 152
    if-ne v1, v0, :cond_10

    .line 154
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    .line 156
    if-eqz v1, :cond_11

    .line 158
    :cond_10
    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    .line 160
    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 162
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    .line 164
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 167
    :cond_11
    return-void
.end method
