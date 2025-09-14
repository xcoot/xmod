.class public final Lcom/android/server/display/mode/DisplayModeDirector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAlwaysRespectAppRequest:Z

.field public final mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

.field public mAppSupportedModesByDisplay:Landroid/util/SparseArray;

.field public mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

.field public final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public final mContext:Landroid/content/Context;

.field public mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public mDefaultModeByDisplay:Landroid/util/SparseArray;

.field public mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

.field public final mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

.field public mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

.field public final mDisplayDeviceConfigProvider:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

.field public final mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

.field public final mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public final mIsDisplayResolutionRangeVotingEnabled:Z

.field public final mIsDisplaysRefreshRatesSynchronizationEnabled:Z

.field public final mIsExternalDisplayLimitModeEnabled:Z

.field public final mIsUserPreferredModeVoteEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public mLoggingEnabled:Z

.field public mModeSwitchingType:I

.field public final mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

.field public final mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

.field public final mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

.field public final mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

.field public mSupportedModesByDisplay:Landroid/util/SparseArray;

.field public final mSupportsFrameRateOverride:Z

.field public final mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

.field public final mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

.field public final mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public static -$$Nest$mgetMaxRefreshRateLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [Landroid/view/Display$Mode;

    .line 9
    array-length p1, p0

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p1, :cond_1

    .line 14
    aget-object v2, p0, v1

    .line 16
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 19
    move-result v3

    .line 20
    cmpl-float v3, v3, v0

    .line 22
    if-lez v3, :cond_0

    .line 24
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 27
    move-result v0

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    move-object/from16 v8, p2

    .line 7
    move-object/from16 v9, p3

    .line 9
    new-instance v10, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 11
    invoke-direct {v10, v7}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v11, Ljava/lang/Object;

    .line 19
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v11, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 29
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 31
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 33
    if-eqz v0, :cond_0

    .line 35
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 37
    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    :goto_0
    iput v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 44
    iget-object v0, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 46
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 49
    move-result v0

    .line 50
    iput-boolean v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 52
    iget-object v0, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 54
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 57
    move-result v0

    .line 58
    iput-boolean v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    .line 60
    iget-object v0, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 62
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 65
    move-result v0

    .line 66
    iput-boolean v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mIsExternalDisplayLimitModeEnabled:Z

    .line 68
    iget-object v0, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 70
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 73
    move-result v0

    .line 74
    iput-boolean v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplaysRefreshRatesSynchronizationEnabled:Z

    .line 76
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBackUpSmoothDisplayAndForcePeakRefreshRateEnabled()Z

    .line 79
    iput-object v9, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 81
    move-object/from16 v0, p4

    .line 83
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    .line 85
    iput-object v7, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, v6, v1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/os/Looper;)V

    .line 96
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 98
    iput-object v10, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 100
    iget-object v0, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefreshRateVotingTelemetry:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 102
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 105
    move-result v0

    .line 106
    new-instance v13, Lcom/android/server/display/mode/VotesStatsReporter;

    .line 108
    const-string/jumbo v14, "ro.surface_flinger.enable_frame_rate_override"

    .line 111
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/sysprop/SurfaceFlingerProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 122
    move-result-object v1

    .line 123
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 125
    invoke-virtual {v1, v15}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/lang/Boolean;

    .line 131
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 134
    move-result v1

    .line 135
    invoke-direct {v13, v1, v0}, Lcom/android/server/display/mode/VotesStatsReporter;-><init>(ZZ)V

    .line 138
    iput-object v13, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    .line 142
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 145
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    .line 149
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 152
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 154
    new-instance v0, Landroid/util/SparseArray;

    .line 156
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 159
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 161
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    .line 163
    invoke-direct {v0, v6, v9}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 166
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    .line 168
    new-instance v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 170
    sget-object v1, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    .line 172
    invoke-direct {v0, v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    .line 175
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 177
    new-instance v5, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 179
    invoke-direct {v5, v6}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    .line 182
    iput-object v5, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 184
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 186
    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 189
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 191
    new-instance v4, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 193
    move-object v0, v4

    .line 194
    move-object/from16 v1, p0

    .line 196
    move-object/from16 v2, p1

    .line 198
    move-object/from16 v3, p2

    .line 200
    move-object v12, v4

    .line 201
    move-object v4, v10

    .line 202
    move-object/from16 v16, v5

    .line 204
    move-object/from16 v5, p3

    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 209
    iput-object v12, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 211
    const/4 v12, 0x0

    .line 212
    iput-object v12, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 214
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 216
    invoke-direct {v0, v6}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    .line 219
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 221
    new-instance v5, Lcom/android/server/display/mode/VotesStorage;

    .line 223
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;

    .line 225
    invoke-direct {v0, v6}, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    .line 228
    invoke-direct {v5, v0, v13}, Lcom/android/server/display/mode/VotesStorage;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;Lcom/android/server/display/mode/VotesStatsReporter;)V

    .line 231
    iput-object v5, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 233
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    .line 235
    invoke-direct {v0, v6, v7, v8, v5}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/mode/VotesStorage;)V

    .line 238
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    .line 240
    new-instance v0, Lcom/android/server/display/mode/ProximitySensorObserver;

    .line 242
    invoke-direct {v0, v5, v10}, Lcom/android/server/display/mode/ProximitySensorObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V

    .line 245
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    .line 247
    new-instance v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 249
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 252
    move-result-object v1

    .line 253
    invoke-direct {v0, v10, v5, v1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;)V

    .line 256
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 258
    new-instance v13, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 260
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 263
    move-result-object v4

    .line 264
    move-object v0, v13

    .line 265
    move-object/from16 v1, p0

    .line 267
    move-object v2, v10

    .line 268
    move-object v3, v5

    .line 269
    move-object v10, v5

    .line 270
    move-object/from16 v5, v16

    .line 272
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    .line 275
    iput-object v13, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 277
    iget-object v0, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mRestrictDisplayModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 279
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_1

    .line 285
    new-instance v0, Lcom/android/server/display/mode/SystemRequestObserver;

    .line 287
    invoke-direct {v0, v10}, Lcom/android/server/display/mode/SystemRequestObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;)V

    .line 290
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    .line 292
    :goto_1
    const/4 v0, 0x0

    .line 293
    goto :goto_2

    .line 294
    :cond_1
    iput-object v12, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    .line 296
    goto :goto_1

    .line 297
    :goto_2
    iput-boolean v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 299
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/sysprop/SurfaceFlingerProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 306
    move-result-object v0

    .line 307
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0, v15}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Ljava/lang/Boolean;

    .line 317
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 320
    move-result v0

    .line 321
    iput-boolean v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    .line 323
    new-instance v0, Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 325
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 330
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 333
    iput-object v1, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

    .line 335
    iput-object v12, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    .line 337
    new-instance v1, Lcom/android/server/display/mode/RefreshRateModeManager$1;

    .line 339
    invoke-direct {v1, v0}, Lcom/android/server/display/mode/RefreshRateModeManager$1;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    .line 342
    iput-object v1, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayStateListener:Lcom/android/server/display/mode/RefreshRateModeManager$1;

    .line 344
    iput-object v7, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mContext:Landroid/content/Context;

    .line 346
    iput-object v8, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mHandler:Landroid/os/Handler;

    .line 348
    iput-object v11, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    .line 350
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 352
    if-eqz v1, :cond_2

    .line 354
    new-instance v2, Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 356
    invoke-direct {v2, v11}, Lcom/android/server/display/mode/RefreshRateTokenController;-><init>(Ljava/lang/Object;)V

    .line 359
    goto :goto_3

    .line 360
    :cond_2
    move-object v2, v12

    .line 361
    :goto_3
    sput-object v6, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 363
    sput-object v7, Lcom/android/server/display/mode/RefreshRateController;->mContext:Landroid/content/Context;

    .line 365
    sput-object v8, Lcom/android/server/display/mode/RefreshRateController;->mHandler:Landroid/os/Handler;

    .line 367
    sput-object v10, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 369
    if-eqz v1, :cond_3

    .line 371
    sput-object v2, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 373
    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 375
    if-eqz v1, :cond_4

    .line 377
    new-instance v1, Lcom/samsung/android/core/SystemHistory;

    .line 379
    const/16 v2, 0x19

    .line 381
    const-string v3, "RefreshRateModeManager"

    .line 383
    invoke-direct {v1, v2, v3}, Lcom/samsung/android/core/SystemHistory;-><init>(ILjava/lang/String;)V

    .line 386
    sput-object v1, Lcom/android/server/display/mode/RefreshRateController;->mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

    .line 388
    :cond_4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    .line 390
    if-eqz v1, :cond_5

    .line 392
    new-instance v1, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    .line 394
    invoke-direct {v1, v0, v7, v8}, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;)V

    .line 397
    iput-object v1, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    .line 399
    :cond_5
    invoke-static {v12}, Lcom/android/server/display/mode/RefreshRateModeManager;->addControllerByDisplayToken(Landroid/os/IBinder;)V

    .line 402
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 404
    return-void
.end method

.method public static switchingTypeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 12
    const-string v0, "Unknown SwitchingType "

    .line 14
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "SWITCHING_TYPE_RENDER_FRAME_RATE_ONLY"

    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string p0, "SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS"

    .line 24
    return-object p0

    .line 25
    :cond_2
    const-string p0, "SWITCHING_TYPE_WITHIN_GROUPS"

    .line 27
    return-object p0

    .line 28
    :cond_3
    const-string p0, "SWITCHING_TYPE_NONE"

    .line 30
    return-object p0
.end method


# virtual methods
.method public final defaultDisplayDeviceUpdated(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 6
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 12
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 14
    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateBlockingZoneThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 17
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 19
    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mreloadLightSensor(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 22
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 24
    const-string/jumbo v1, "display_manager"

    .line 27
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const/4 v3, -0x1

    .line 33
    :try_start_1
    iget-object v4, v2, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 35
    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 37
    iget-object v4, v4, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 39
    const-string/jumbo v5, "refresh_rate_in_hbm_hdr"

    .line 42
    invoke-interface {v4, v1, v5, v3}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 45
    move-result v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move v4, v3

    .line 48
    :goto_0
    if-ne v4, v3, :cond_1

    .line 50
    if-nez p1, :cond_0

    .line 52
    :try_start_2
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 54
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v2

    .line 60
    const v4, 0x10e007d

    .line 63
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 66
    move-result v2

    .line 67
    :goto_1
    move v4, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 71
    iget v2, v2, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :goto_2
    iput v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 76
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :try_start_3
    iget-object v4, v2, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 83
    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 85
    iget-object v4, v4, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 87
    const-string/jumbo v5, "refresh_rate_in_hbm_sunlight"

    .line 90
    invoke-interface {v4, v1, v5, v3}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 93
    move-result v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    goto :goto_3

    .line 95
    :catch_1
    move v1, v3

    .line 96
    :goto_3
    if-ne v1, v3, :cond_3

    .line 98
    if-nez p1, :cond_2

    .line 100
    :try_start_4
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 102
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    move-result-object p1

    .line 108
    const v1, 0x10e007e

    .line 111
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 114
    move-result p1

    .line 115
    :goto_4
    move v1, p1

    .line 116
    goto :goto_5

    .line 117
    :cond_2
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 119
    iget p1, p1, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    .line 121
    goto :goto_4

    .line 122
    :cond_3
    :goto_5
    iput v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "DisplayModeDirector"

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    const-string v1, "  mSupportedModesByDisplay:"

    .line 11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_0

    .line 24
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    move-result v3

    .line 30
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    check-cast v4, [Landroid/view/Display$Mode;

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v6, "    "

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v3, " -> "

    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto/16 :goto_6

    .line 76
    :cond_0
    const-string v2, "  mAppSupportedModesByDisplay:"

    .line 78
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    move v2, v1

    .line 82
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 84
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 87
    move-result v3

    .line 88
    if-ge v2, v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 92
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 95
    move-result v3

    .line 96
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 101
    move-result-object v4

    .line 102
    check-cast v4, [Landroid/view/Display$Mode;

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v6, "    "

    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v3, " -> "

    .line 119
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 138
    goto :goto_1

    .line 139
    :cond_1
    const-string v2, "  mDefaultModeByDisplay:"

    .line 141
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    move v2, v1

    .line 145
    :goto_2
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 147
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 150
    move-result v3

    .line 151
    if-ge v2, v3, :cond_2

    .line 153
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 155
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 158
    move-result v3

    .line 159
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 161
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Landroid/view/Display$Mode;

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    const-string v6, "    "

    .line 174
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v3, " -> "

    .line 182
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 197
    goto :goto_2

    .line 198
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    const-string v3, "  mModeSwitchingType: "

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 210
    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    const-string v3, "  mAlwaysRespectAppRequest: "

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 248
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    const-string v3, "  SettingsObserver"

    .line 253
    const-string v4, "    mDefaultRefreshRate: "

    .line 255
    invoke-static {p1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    move-result-object v3

    .line 259
    iget v4, v2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    .line 261
    const-string v5, "    mDefaultPeakRefreshRate: "

    .line 263
    invoke-static {v3, v4, p1, v5}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    move-result-object v3

    .line 267
    iget v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 269
    invoke-static {v3, v2, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 272
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    .line 274
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    const-string v3, "  AppRequestObserver"

    .line 279
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    .line 284
    const-string v4, "    mIgnorePreferredRefreshRate: "

    .line 286
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    iget-boolean v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    .line 291
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 303
    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 306
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 308
    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 311
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 313
    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 316
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 318
    if-eqz v2, :cond_3

    .line 320
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 322
    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 325
    goto :goto_3

    .line 326
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 328
    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 331
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 334
    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/VotesStorage;->dump(Ljava/io/PrintWriter;)V

    .line 337
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    .line 339
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    const-string v0, "    mIsProxActive="

    .line 344
    const-string v2, "  SensorObserver"

    .line 346
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    .line 351
    monitor-enter v2

    .line 352
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 354
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    iget-boolean v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    .line 359
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    const-string v0, "    mDozeStateByDisplay:"

    .line 371
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    :goto_4
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 376
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 379
    move-result v0

    .line 380
    if-ge v1, v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 384
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 387
    move-result v0

    .line 388
    iget-object v3, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 390
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 393
    move-result v3

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    .line 396
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    const-string v5, "      "

    .line 401
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const-string v0, " -> "

    .line 409
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    add-int/lit8 v1, v1, 0x1

    .line 424
    goto :goto_4

    .line 425
    :catchall_1
    move-exception p0

    .line 426
    goto :goto_5

    .line 427
    :cond_4
    monitor-exit v2

    .line 428
    return-void

    .line 429
    :goto_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 430
    throw p0

    .line 431
    :goto_6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    throw p0
.end method

.method public getBrightnessObserver()Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 3
    return-object p0
.end method

.method public final getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v7, p1

    .line 5
    const-string v1, "Asked about unknown display, returning empty display mode specs!(id="

    .line 7
    iget-object v8, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v8

    .line 10
    :try_start_0
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 12
    invoke-virtual {v2, v7}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    .line 15
    move-result-object v9

    .line 16
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    move-object v10, v2

    .line 23
    check-cast v10, [Landroid/view/Display$Mode;

    .line 25
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    move-object v11, v2

    .line 32
    check-cast v11, Landroid/view/Display$Mode;

    .line 34
    if-eqz v10, :cond_15

    .line 36
    if-nez v11, :cond_0

    .line 38
    goto/16 :goto_f

    .line 40
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v12, Lcom/android/server/display/mode/VoteSummary;

    .line 50
    iget-boolean v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 52
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    .line 55
    move-result v3

    .line 56
    iget-boolean v4, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 58
    iget-boolean v5, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    .line 60
    invoke-direct {v12, v2, v3, v4, v5}, Lcom/android/server/display/mode/VoteSummary;-><init>(ZZZZ)V

    .line 63
    iget-boolean v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 65
    const/4 v3, 0x7

    .line 66
    const/16 v13, 0x18

    .line 68
    if-eqz v2, :cond_1

    .line 70
    const/16 v2, 0x9

    .line 72
    move v15, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    move v2, v13

    .line 75
    const/4 v15, 0x0

    .line 76
    :goto_0
    if-gt v15, v2, :cond_4

    .line 78
    invoke-virtual {v12, v15, v2, v9}, Lcom/android/server/display/mode/VoteSummary;->applyVotes(IILandroid/util/SparseArray;)V

    .line 81
    invoke-virtual {v12, v11, v10}, Lcom/android/server/display/mode/VoteSummary;->adjustSize(Landroid/view/Display$Mode;[Landroid/view/Display$Mode;)V

    .line 84
    invoke-virtual {v12, v10}, Lcom/android/server/display/mode/VoteSummary;->filterModes([Landroid/view/Display$Mode;)Ljava/util/List;

    .line 87
    move-result-object v1

    .line 88
    move-object v4, v1

    .line 89
    check-cast v4, Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_2

    .line 97
    iget-boolean v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 99
    if-eqz v2, :cond_4

    .line 101
    const-string v2, "DisplayModeDirector"

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string v5, "Found available modes="

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const-string v5, " with lowest priority considered "

    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {v15}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v5, " and summary: "

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v4

    .line 140
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    goto :goto_1

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    goto/16 :goto_10

    .line 147
    :cond_2
    iget-boolean v4, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 149
    if-eqz v4, :cond_3

    .line 151
    const-string v4, "DisplayModeDirector"

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    const-string v6, "Couldn\'t find available modes with lowest priority set to "

    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {v15}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v6, " and with the following summary: "

    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v5

    .line 182
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 187
    goto :goto_0

    .line 188
    :cond_4
    :goto_1
    new-instance v6, Lcom/android/server/display/mode/VoteSummary;

    .line 190
    iget-boolean v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 192
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    .line 195
    move-result v4

    .line 196
    iget-boolean v5, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 198
    iget-boolean v14, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    .line 200
    invoke-direct {v6, v2, v4, v5, v14}, Lcom/android/server/display/mode/VoteSummary;-><init>(ZZZZ)V

    .line 203
    invoke-virtual {v6, v3, v13, v9}, Lcom/android/server/display/mode/VoteSummary;->applyVotes(IILandroid/util/SparseArray;)V

    .line 206
    invoke-virtual {v6, v12}, Lcom/android/server/display/mode/VoteSummary;->limitRefreshRanges(Lcom/android/server/display/mode/VoteSummary;)V

    .line 209
    iget v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 211
    invoke-virtual {v12, v1, v11, v2}, Lcom/android/server/display/mode/VoteSummary;->selectBaseMode(Ljava/util/List;Landroid/view/Display$Mode;I)Landroid/view/Display$Mode;

    .line 214
    move-result-object v14

    .line 215
    iget-object v5, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    .line 217
    if-eqz v5, :cond_c

    .line 219
    iget-boolean v1, v5, Lcom/android/server/display/mode/VotesStatsReporter;->mFrameworkStatsLogReportingEnabled:Z

    .line 221
    if-nez v1, :cond_5

    .line 223
    goto/16 :goto_9

    .line 225
    :cond_5
    if-eqz v14, :cond_6

    .line 227
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 230
    move-result v1

    .line 231
    float-to-int v1, v1

    .line 232
    :goto_2
    move/from16 v17, v1

    .line 234
    goto :goto_3

    .line 235
    :cond_6
    const/4 v1, -0x1

    .line 236
    goto :goto_2

    .line 237
    :goto_3
    const/4 v4, 0x0

    .line 238
    :goto_4
    if-gt v4, v13, :cond_c

    .line 240
    iget v1, v5, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityReported:I

    .line 242
    if-ge v4, v1, :cond_7

    .line 244
    if-ge v4, v15, :cond_7

    .line 246
    :goto_5
    move v13, v4

    .line 247
    move-object v1, v5

    .line 248
    move-object/from16 v24, v6

    .line 250
    goto/16 :goto_8

    .line 252
    :cond_7
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 255
    move-result-object v1

    .line 256
    move-object v3, v1

    .line 257
    check-cast v3, Lcom/android/server/display/mode/Vote;

    .line 259
    if-nez v3, :cond_8

    .line 261
    goto :goto_5

    .line 262
    :cond_8
    iget v1, v5, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityReported:I

    .line 264
    iget-boolean v2, v5, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    .line 266
    if-lt v4, v1, :cond_9

    .line 268
    if-ge v4, v15, :cond_9

    .line 270
    invoke-static {v3, v2}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    .line 273
    move-result v18

    .line 274
    const/16 v1, 0x318

    .line 276
    const/16 v19, 0x1

    .line 278
    move v13, v2

    .line 279
    move/from16 v2, p1

    .line 281
    move-object/from16 v21, v3

    .line 283
    move v3, v4

    .line 284
    move/from16 v22, v4

    .line 286
    move/from16 v4, v19

    .line 288
    move-object/from16 v23, v5

    .line 290
    move/from16 v5, v18

    .line 292
    move-object/from16 v24, v6

    .line 294
    move/from16 v6, v17

    .line 296
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 299
    move/from16 v6, v22

    .line 301
    goto :goto_6

    .line 302
    :cond_9
    move v13, v2

    .line 303
    move-object/from16 v21, v3

    .line 305
    move-object/from16 v23, v5

    .line 307
    move-object/from16 v24, v6

    .line 309
    move v6, v4

    .line 310
    :goto_6
    if-lt v6, v15, :cond_b

    .line 312
    move-object/from16 v5, v23

    .line 314
    iget v1, v5, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityReported:I

    .line 316
    if-ge v6, v1, :cond_a

    .line 318
    move-object/from16 v1, v21

    .line 320
    invoke-static {v1, v13}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    .line 323
    move-result v13

    .line 324
    const/16 v1, 0x318

    .line 326
    const/4 v4, 0x2

    .line 327
    move/from16 v2, p1

    .line 329
    move v3, v6

    .line 330
    move-object/from16 v25, v5

    .line 332
    move v5, v13

    .line 333
    move v13, v6

    .line 334
    move/from16 v6, v17

    .line 336
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 339
    move-object/from16 v1, v25

    .line 341
    goto :goto_7

    .line 342
    :cond_a
    move v13, v6

    .line 343
    move-object v1, v5

    .line 344
    goto :goto_7

    .line 345
    :cond_b
    move v13, v6

    .line 346
    move-object/from16 v1, v23

    .line 348
    :goto_7
    iput v15, v1, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityReported:I

    .line 350
    :goto_8
    add-int/lit8 v4, v13, 0x1

    .line 352
    move-object v5, v1

    .line 353
    move-object/from16 v6, v24

    .line 355
    const/16 v13, 0x18

    .line 357
    goto :goto_4

    .line 358
    :cond_c
    :goto_9
    move-object/from16 v24, v6

    .line 360
    if-nez v14, :cond_d

    .line 362
    const-string v1, "DisplayModeDirector"

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    .line 366
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    const-string v3, "Can\'t find a set of allowed modes which satisfies the votes. Falling back to the default mode. Display = "

    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    const-string v3, ", votes = "

    .line 379
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    const-string v3, ", supported modes = "

    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 393
    move-result-object v3

    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    move-result-object v2

    .line 401
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 407
    move-result v1

    .line 408
    new-instance v2, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 410
    invoke-direct {v2, v1, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 413
    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 415
    invoke-direct {v1, v2, v2}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 418
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 420
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getModeId()I

    .line 423
    move-result v13

    .line 424
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 426
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 429
    move-result-object v17

    .line 430
    const/4 v14, 0x0

    .line 431
    move-object v12, v2

    .line 432
    move-object v15, v1

    .line 433
    move-object/from16 v16, v1

    .line 435
    invoke-direct/range {v12 .. v17}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    .line 438
    monitor-exit v8

    .line 439
    return-object v2

    .line 440
    :cond_d
    iget v1, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 442
    const/4 v2, 0x1

    .line 443
    if-eqz v1, :cond_f

    .line 445
    const/4 v3, 0x3

    .line 446
    if-ne v1, v3, :cond_e

    .line 448
    goto :goto_a

    .line 449
    :cond_e
    const/4 v1, 0x0

    .line 450
    goto :goto_b

    .line 451
    :cond_f
    :goto_a
    move v1, v2

    .line 452
    :goto_b
    if-nez v1, :cond_11

    .line 454
    iget-boolean v3, v12, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    .line 456
    if-eqz v3, :cond_10

    .line 458
    goto :goto_c

    .line 459
    :cond_10
    move-object/from16 v1, v24

    .line 461
    goto :goto_d

    .line 462
    :cond_11
    :goto_c
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 465
    move-result v3

    .line 466
    invoke-virtual {v12, v3}, Lcom/android/server/display/mode/VoteSummary;->disableModeSwitching(F)V

    .line 469
    if-eqz v1, :cond_10

    .line 471
    move-object/from16 v1, v24

    .line 473
    invoke-virtual {v1, v3}, Lcom/android/server/display/mode/VoteSummary;->disableModeSwitching(F)V

    .line 476
    invoke-virtual {v12, v3}, Lcom/android/server/display/mode/VoteSummary;->disableRenderRateSwitching(F)V

    .line 479
    iget v4, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 481
    if-nez v4, :cond_12

    .line 483
    invoke-virtual {v1, v3}, Lcom/android/server/display/mode/VoteSummary;->disableRenderRateSwitching(F)V

    .line 486
    :cond_12
    :goto_d
    iget v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 488
    const/4 v4, 0x2

    .line 489
    if-ne v3, v4, :cond_13

    .line 491
    move/from16 v19, v2

    .line 493
    goto :goto_e

    .line 494
    :cond_13
    const/16 v19, 0x0

    .line 496
    :goto_e
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    .line 498
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplaysConnected:Ljava/util/Set;

    .line 500
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 503
    move-result-object v3

    .line 504
    check-cast v2, Ljava/util/HashSet;

    .line 506
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 509
    move-result v2

    .line 510
    if-eqz v2, :cond_14

    .line 512
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 515
    move-result v2

    .line 516
    iget v3, v12, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 518
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 521
    move-result v2

    .line 522
    iput v2, v12, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 524
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 527
    move-result v2

    .line 528
    iget v3, v1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 530
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 533
    move-result v2

    .line 534
    iput v2, v1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 536
    :cond_14
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 538
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getModeId()I

    .line 541
    move-result v18

    .line 542
    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 544
    new-instance v4, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 546
    iget v5, v12, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 548
    iget v6, v12, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 550
    invoke-direct {v4, v5, v6}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 553
    new-instance v5, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 555
    iget v6, v12, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 557
    iget v7, v12, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 559
    invoke-direct {v5, v6, v7}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 562
    invoke-direct {v3, v4, v5}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 565
    new-instance v4, Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 567
    new-instance v5, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 569
    iget v6, v1, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 571
    iget v7, v1, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 573
    invoke-direct {v5, v6, v7}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 576
    new-instance v6, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 578
    iget v7, v1, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 580
    iget v1, v1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 582
    invoke-direct {v6, v7, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 585
    invoke-direct {v4, v5, v6}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 588
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 590
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 593
    move-result-object v22

    .line 594
    move-object/from16 v17, v2

    .line 596
    move-object/from16 v20, v3

    .line 598
    move-object/from16 v21, v4

    .line 600
    invoke-direct/range {v17 .. v22}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    .line 603
    monitor-exit v8

    .line 604
    return-object v2

    .line 605
    :cond_15
    :goto_f
    const-string v0, "DisplayModeDirector"

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    .line 609
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    const-string v1, ")"

    .line 617
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    move-result-object v1

    .line 624
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 629
    invoke-direct {v0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    .line 632
    monitor-exit v8

    .line 633
    return-object v0

    .line 634
    :goto_10
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    throw v0
.end method

.method public getDesiredDisplayModeSpecsWithInjectedFpsSettings(FFF)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 6
    sget v2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->$r8$clinit:I

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFFI)V

    .line 12
    invoke-virtual {p0, v2}, Lcom/android/server/display/mode/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 15
    move-result-object p0

    .line 16
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public getDisplayObserver()Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    .line 3
    return-object p0
.end method

.method public getHbmObserver()Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 3
    return-object p0
.end method

.method public final getModeSwitchingType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public getSettingsObserver()Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 3
    return-object p0
.end method

.method public getUdpfsObserver()Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 3
    return-object p0
.end method

.method public getVote(II)Lcom/android/server/display/mode/Vote;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/display/mode/Vote;

    .line 13
    return-object p0
.end method

.method public injectAppSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 3
    return-void
.end method

.method public injectBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 3
    return-void
.end method

.method public injectDefaultModeByDisplay(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 3
    return-void
.end method

.method public injectDisplayDeviceConfigByDisplay(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 3
    return-void
.end method

.method public injectSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 3
    return-void
.end method

.method public injectVotesByDisplay(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VotesStorage;->injectVotesByDisplay(Landroid/util/SparseArray;)V

    .line 6
    return-void
.end method

.method public final isVrrSupportedLocked(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/DisplayDeviceConfig;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    .line 13
    if-nez p0, :cond_0

    .line 15
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 17
    if-eqz p0, :cond_1

    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final notifyDesiredDisplayModeSpecsChangedLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    .line 16
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    :cond_0
    return-void
.end method

.method public final onBootCompleted()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 3
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 5
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 7
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 14
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 20
    if-nez v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 25
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v1

    .line 31
    const v2, 0x11101b7

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 40
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 42
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 44
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 46
    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 49
    iput-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 54
    if-eqz v0, :cond_1

    .line 56
    :try_start_1
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBar;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    throw p0

    .line 63
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final onUserSwitching()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 6
    sget v2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->$r8$clinit:I

    .line 8
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 11
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->updateRefreshRateSettingsOnUserSwitching()V

    .line 14
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    .line 16
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->updateRefreshRateSettingsCoverOnUserSwitching()V

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 26
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    .line 29
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 31
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    .line 34
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    .line 36
    if-eqz v1, :cond_1

    .line 38
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 40
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 43
    move-result-object p0

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateModeLocked(Z)V

    .line 48
    :cond_1
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final start(Landroid/hardware/SensorManager;)V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getPrimaryPhysicalDisplayId()J

    .line 17
    move-result-wide v1

    .line 18
    invoke-static {v1, v2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    sput-object v1, Lcom/android/server/display/mode/RefreshRateController;->sPrimaryDisplayToken:Landroid/os/IBinder;

    .line 35
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 37
    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 41
    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->updateDefaultDisplayToken()V

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    .line 46
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 48
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 50
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    .line 52
    check-cast v1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 54
    check-cast v2, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 56
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 63
    new-instance v1, Landroid/util/SparseArray;

    .line 65
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 68
    new-instance v2, Landroid/util/SparseArray;

    .line 70
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 73
    new-instance v3, Landroid/util/SparseArray;

    .line 75
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 78
    iget-object v4, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 80
    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 82
    check-cast v4, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 84
    invoke-virtual {v4}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 87
    move-result-object v4

    .line 88
    const-string v5, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    .line 90
    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 93
    move-result-object v4

    .line 94
    array-length v5, v4

    .line 95
    const/4 v6, 0x0

    .line 96
    move v7, v6

    .line 97
    :goto_0
    if-ge v7, v5, :cond_2

    .line 99
    aget-object v8, v4, v7

    .line 101
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    .line 104
    move-result v8

    .line 105
    invoke-virtual {v0, v8}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 108
    move-result-object v9

    .line 109
    iget-object v10, v9, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 111
    invoke-virtual {v1, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    iget-object v10, v9, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 116
    invoke-virtual {v2, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    invoke-virtual {v9}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {v3, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    add-int/lit8 v7, v7, 0x1

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    iget-object v4, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 131
    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    .line 133
    invoke-virtual {v4, v6}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;->getDisplayDeviceConfig(I)Lcom/android/server/display/DisplayDeviceConfig;

    .line 136
    move-result-object v4

    .line 137
    iget-object v5, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 139
    iget-object v5, v5, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 141
    monitor-enter v5

    .line 142
    :try_start_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 145
    move-result v7

    .line 146
    move v8, v6

    .line 147
    :goto_1
    if-ge v8, v7, :cond_3

    .line 149
    iget-object v9, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 151
    iget-object v9, v9, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 153
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 156
    move-result v10

    .line 157
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 160
    move-result-object v11

    .line 161
    check-cast v11, [Landroid/view/Display$Mode;

    .line 163
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    iget-object v9, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 168
    iget-object v9, v9, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 170
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 173
    move-result v10

    .line 174
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 177
    move-result-object v11

    .line 178
    check-cast v11, [Landroid/view/Display$Mode;

    .line 180
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    iget-object v9, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 185
    iget-object v9, v9, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 187
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 190
    move-result v10

    .line 191
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 194
    move-result-object v11

    .line 195
    check-cast v11, Landroid/view/Display$Mode;

    .line 197
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    add-int/lit8 v8, v8, 0x1

    .line 202
    goto :goto_1

    .line 203
    :catchall_0
    move-exception p0

    .line 204
    goto/16 :goto_5

    .line 206
    :cond_3
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 208
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 210
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 216
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 221
    move-result-object v1

    .line 222
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 224
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 226
    check-cast v2, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 228
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    sget-object v2, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->PEAK_REFRESH_RATE_URI:Landroid/net/Uri;

    .line 233
    invoke-virtual {v1, v2, v6, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 236
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 238
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 240
    check-cast v2, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 242
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    sget-object v2, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->MIN_REFRESH_RATE_URI:Landroid/net/Uri;

    .line 247
    invoke-virtual {v1, v2, v6, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 250
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 252
    invoke-virtual {v1, v2, v6, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 255
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeMotionSmoothness:Landroid/net/Uri;

    .line 257
    invoke-virtual {v1, v2, v6, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 260
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    .line 262
    invoke-virtual {v1, v2, v6, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 265
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 267
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 269
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDisplayListener:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;

    .line 271
    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mHandler:Landroid/os/Handler;

    .line 273
    check-cast v1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 275
    check-cast v3, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 277
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 284
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 286
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 288
    iget-object v1, v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 290
    const-string/jumbo v2, "peak_refresh_rate_default"

    .line 293
    const-string/jumbo v3, "display_manager"

    .line 296
    const/high16 v4, -0x40800000    # -1.0f

    .line 298
    invoke-interface {v1, v3, v2, v4}, Landroid/provider/DeviceConfigInterface;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 301
    move-result v1

    .line 302
    cmpl-float v2, v1, v4

    .line 304
    if-eqz v2, :cond_4

    .line 306
    iput v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 308
    :cond_4
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 310
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 312
    monitor-enter v1

    .line 313
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 316
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    .line 319
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    .line 322
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 323
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 325
    const/4 v1, -0x1

    .line 326
    if-eqz v0, :cond_8

    .line 328
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 330
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    .line 335
    if-eqz v3, :cond_6

    .line 337
    iget-object v3, v2, Lcom/android/server/display/mode/RefreshRateModeManager;->mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    .line 339
    iget-object v4, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mContext:Landroid/content/Context;

    .line 341
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 344
    move-result-object v4

    .line 345
    iget-object v5, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mRefreshRateModeSetting:Landroid/net/Uri;

    .line 347
    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 350
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    .line 352
    if-eqz v5, :cond_5

    .line 354
    iget-object v5, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mSubRefreshRateModeSetting:Landroid/net/Uri;

    .line 356
    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 359
    :cond_5
    iget-object v4, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 361
    iget-object v4, v4, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    .line 363
    monitor-enter v4

    .line 364
    :try_start_2
    iget-object v3, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 366
    invoke-virtual {v3}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 369
    move-result-object v3

    .line 370
    invoke-virtual {v3, v6}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateModeLocked(Z)V

    .line 373
    monitor-exit v4

    .line 374
    goto :goto_2

    .line 375
    :catchall_1
    move-exception p0

    .line 376
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 377
    throw p0

    .line 378
    :cond_6
    :goto_2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 380
    if-eqz v3, :cond_7

    .line 382
    const-string v3, "RefreshRateModeManager"

    .line 384
    const-string/jumbo v4, "registerBrightnessAndStateListener"

    .line 387
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 392
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 395
    move-result-object v3

    .line 396
    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 398
    new-instance v4, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda2;

    .line 400
    invoke-direct {v4, v2}, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    .line 403
    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)F

    .line 406
    invoke-virtual {v2}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->getCurrentScreenBrightness()F

    .line 413
    move-result v5

    .line 414
    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 417
    move-result v5

    .line 418
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    sget-object v4, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 423
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 426
    move-result v4

    .line 427
    invoke-static {v4}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    .line 430
    invoke-static {v5}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    .line 433
    iget-object v4, v2, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayStateListener:Lcom/android/server/display/mode/RefreshRateModeManager$1;

    .line 435
    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    .line 438
    :cond_7
    const-string v3, "RefreshRateModeManager"

    .line 440
    const-string/jumbo v4, "registerWirelessChargeReceiver"

    .line 443
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v3, Landroid/content/IntentFilter;

    .line 448
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 451
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    .line 453
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    iget-object v4, v2, Lcom/android/server/display/mode/RefreshRateModeManager;->mContext:Landroid/content/Context;

    .line 458
    new-instance v5, Lcom/android/server/display/mode/RefreshRateModeManager$2;

    .line 460
    invoke-direct {v5, v2}, Lcom/android/server/display/mode/RefreshRateModeManager$2;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    .line 463
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    :cond_8
    if-eqz v0, :cond_9

    .line 468
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 470
    if-eqz v2, :cond_10

    .line 472
    :cond_9
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 474
    iput-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 476
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 478
    check-cast p1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 480
    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 483
    move-result-object p1

    .line 484
    invoke-virtual {p1, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 487
    move-result-object p1

    .line 488
    if-eqz p1, :cond_a

    .line 490
    invoke-virtual {p1}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    .line 493
    move-result-object p1

    .line 494
    goto :goto_3

    .line 495
    :cond_a
    const/4 p1, 0x0

    .line 496
    :goto_3
    if-eqz p1, :cond_b

    .line 498
    iget p1, p1, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    .line 500
    goto :goto_4

    .line 501
    :cond_b
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 503
    :goto_4
    iput p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 505
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 507
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 509
    const-string/jumbo v3, "peak_refresh_rate_brightness_thresholds"

    .line 512
    invoke-virtual {p1, v3}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 515
    move-result-object p1

    .line 516
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    .line 519
    move-result-object p1

    .line 520
    iget-object v3, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 522
    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 524
    const-string/jumbo v4, "peak_refresh_rate_ambient_thresholds"

    .line 527
    invoke-virtual {v3, v4}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 530
    move-result-object v3

    .line 531
    invoke-static {v3}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    .line 534
    move-result-object v3

    .line 535
    if-eqz p1, :cond_c

    .line 537
    if-eqz v3, :cond_c

    .line 539
    array-length v4, p1

    .line 540
    array-length v5, v3

    .line 541
    if-ne v4, v5, :cond_c

    .line 543
    iput-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 545
    iput-object v3, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 547
    :cond_c
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 549
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 551
    const-string/jumbo v3, "fixed_refresh_rate_high_display_brightness_thresholds"

    .line 554
    invoke-virtual {p1, v3}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 557
    move-result-object p1

    .line 558
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    .line 561
    move-result-object p1

    .line 562
    iget-object v3, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 564
    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 566
    const-string/jumbo v4, "fixed_refresh_rate_high_ambient_brightness_thresholds"

    .line 569
    invoke-virtual {v3, v4}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 572
    move-result-object v3

    .line 573
    invoke-static {v3}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    .line 576
    move-result-object v3

    .line 577
    if-eqz p1, :cond_d

    .line 579
    if-eqz v3, :cond_d

    .line 581
    array-length v4, p1

    .line 582
    array-length v5, v3

    .line 583
    if-ne v4, v5, :cond_d

    .line 585
    iput-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 587
    iput-object v3, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 589
    :cond_d
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 591
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 593
    iget-object p1, p1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 595
    const-string/jumbo v3, "refresh_rate_in_zone"

    .line 598
    const-string/jumbo v4, "display_manager"

    .line 601
    invoke-interface {p1, v4, v3, v1}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 604
    move-result p1

    .line 605
    if-eq p1, v1, :cond_e

    .line 607
    iput p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 609
    :cond_e
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 611
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 613
    iget-object p1, p1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 615
    const-string/jumbo v3, "refresh_rate_in_high_zone"

    .line 618
    const-string/jumbo v4, "display_manager"

    .line 621
    invoke-interface {p1, v4, v3, v1}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 624
    move-result p1

    .line 625
    if-eq p1, v1, :cond_f

    .line 627
    iput p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 629
    :cond_f
    invoke-virtual {v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 632
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 634
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 636
    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 638
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 640
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 643
    move-result-object v3

    .line 644
    iget-object v1, v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 646
    const-string/jumbo v4, "display_manager"

    .line 649
    invoke-interface {v1, v4, v3, p1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 652
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 654
    iget-object v1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    .line 656
    check-cast p1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 658
    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 661
    move-result-object p1

    .line 662
    const-wide/16 v3, 0xc

    .line 664
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 667
    :cond_10
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    .line 669
    invoke-virtual {p1}, Lcom/android/server/display/mode/ProximitySensorObserver;->observe()V

    .line 672
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 674
    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->observe()V

    .line 677
    if-nez v0, :cond_11

    .line 679
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 681
    invoke-virtual {p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->observe()V

    .line 684
    :cond_11
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 686
    monitor-enter p1

    .line 687
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 690
    monitor-exit p1

    .line 691
    return-void

    .line 692
    :catchall_2
    move-exception p0

    .line 693
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 694
    throw p0

    .line 695
    :catchall_3
    move-exception p0

    .line 696
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 697
    throw p0

    .line 698
    :goto_5
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 699
    throw p0
.end method

.method public final updateRefreshRateSettingsCoverOnUserSwitching()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

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
    const-string/jumbo v1, "refresh_rate_mode_cover"

    .line 18
    const/4 v3, -0x2

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object v0

    .line 27
    const-string/jumbo v4, "pms_settings_refresh_rate_enabled"

    .line 30
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 36
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    move-result-object v0

    .line 52
    const-string/jumbo v2, "pms_override_refresh_rate_mode_cover"

    .line 55
    const/4 v4, -0x1

    .line 56
    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 59
    move-result v0

    .line 60
    if-eq v0, v4, :cond_1

    .line 62
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 67
    move-result-object v5

    .line 68
    invoke-static {v5, v1, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 71
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0, v2, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateRefreshRateSettingsOnUserSwitching()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

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
    const-string/jumbo v1, "refresh_rate_mode"

    .line 18
    const/4 v3, -0x2

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object v0

    .line 27
    const-string/jumbo v4, "pms_settings_refresh_rate_enabled"

    .line 30
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 36
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    move-result-object v0

    .line 52
    const-string/jumbo v2, "pms_override_refresh_rate_mode"

    .line 55
    const/4 v4, -0x1

    .line 56
    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 59
    move-result v0

    .line 60
    if-eq v0, v4, :cond_1

    .line 62
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 67
    move-result-object v5

    .line 68
    invoke-static {v5, v1, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 71
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0, v2, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 80
    :cond_1
    :goto_0
    return-void
.end method
