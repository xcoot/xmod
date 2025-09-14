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

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [Landroid/view/Display$Mode;

    .line 8
    .line 9
    array-length p1, p0

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p1, :cond_1

    .line 13
    .line 14
    aget-object v2, p0, v1

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    cmpl-float v3, v3, v0

    .line 21
    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
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

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    new-instance v10, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 10
    .line 11
    invoke-direct {v10, v7}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v11, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v11, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    new-instance v0, Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 30
    .line 31
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
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

    .line 43
    .line 44
    iget-object v0, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput-boolean v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 51
    .line 52
    iget-object v0, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput-boolean v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    .line 59
    .line 60
    iget-object v0, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput-boolean v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mIsExternalDisplayLimitModeEnabled:Z

    .line 67
    .line 68
    iget-object v0, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput-boolean v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplaysRefreshRatesSynchronizationEnabled:Z

    .line 75
    .line 76
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBackUpSmoothDisplayAndForcePeakRefreshRateEnabled()Z

    .line 77
    .line 78
    .line 79
    iput-object v9, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 80
    .line 81
    move-object/from16 v0, p4

    .line 82
    .line 83
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    .line 84
    .line 85
    iput-object v7, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 88
    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, v6, v1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/os/Looper;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 97
    .line 98
    iput-object v10, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 99
    .line 100
    iget-object v0, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefreshRateVotingTelemetry:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    new-instance v13, Lcom/android/server/display/mode/VotesStatsReporter;

    .line 107
    .line 108
    const-string/jumbo v14, "ro.surface_flinger.enable_frame_rate_override"

    .line 109
    .line 110
    .line 111
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/sysprop/SurfaceFlingerProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-virtual {v1, v15}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-direct {v13, v1, v0}, Lcom/android/server/display/mode/VotesStatsReporter;-><init>(ZZ)V

    .line 136
    .line 137
    .line 138
    iput-object v13, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    .line 139
    .line 140
    new-instance v0, Landroid/util/SparseArray;

    .line 141
    .line 142
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 146
    .line 147
    new-instance v0, Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 153
    .line 154
    new-instance v0, Landroid/util/SparseArray;

    .line 155
    .line 156
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 157
    .line 158
    .line 159
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 160
    .line 161
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    .line 162
    .line 163
    invoke-direct {v0, v6, v9}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 164
    .line 165
    .line 166
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    .line 167
    .line 168
    new-instance v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 169
    .line 170
    sget-object v1, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    .line 171
    .line 172
    invoke-direct {v0, v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    .line 173
    .line 174
    .line 175
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 176
    .line 177
    new-instance v5, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 178
    .line 179
    invoke-direct {v5, v6}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    .line 180
    .line 181
    .line 182
    iput-object v5, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 183
    .line 184
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 185
    .line 186
    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 187
    .line 188
    .line 189
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 190
    .line 191
    new-instance v4, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 192
    .line 193
    move-object v0, v4

    .line 194
    move-object/from16 v1, p0

    .line 195
    .line 196
    move-object/from16 v2, p1

    .line 197
    .line 198
    move-object/from16 v3, p2

    .line 199
    .line 200
    move-object v12, v4

    .line 201
    move-object v4, v10

    .line 202
    move-object/from16 v16, v5

    .line 203
    .line 204
    move-object/from16 v5, p3

    .line 205
    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 207
    .line 208
    .line 209
    iput-object v12, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 210
    .line 211
    const/4 v12, 0x0

    .line 212
    iput-object v12, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 213
    .line 214
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 215
    .line 216
    invoke-direct {v0, v6}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    .line 217
    .line 218
    .line 219
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 220
    .line 221
    new-instance v5, Lcom/android/server/display/mode/VotesStorage;

    .line 222
    .line 223
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;

    .line 224
    .line 225
    invoke-direct {v0, v6}, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {v5, v0, v13}, Lcom/android/server/display/mode/VotesStorage;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;Lcom/android/server/display/mode/VotesStatsReporter;)V

    .line 229
    .line 230
    .line 231
    iput-object v5, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 232
    .line 233
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    .line 234
    .line 235
    invoke-direct {v0, v6, v7, v8, v5}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/mode/VotesStorage;)V

    .line 236
    .line 237
    .line 238
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    .line 239
    .line 240
    new-instance v0, Lcom/android/server/display/mode/ProximitySensorObserver;

    .line 241
    .line 242
    invoke-direct {v0, v5, v10}, Lcom/android/server/display/mode/ProximitySensorObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V

    .line 243
    .line 244
    .line 245
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    .line 246
    .line 247
    new-instance v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 248
    .line 249
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-direct {v0, v10, v5, v1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;)V

    .line 254
    .line 255
    .line 256
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 257
    .line 258
    new-instance v13, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 259
    .line 260
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    move-object v0, v13

    .line 265
    move-object/from16 v1, p0

    .line 266
    .line 267
    move-object v2, v10

    .line 268
    move-object v3, v5

    .line 269
    move-object v10, v5

    .line 270
    move-object/from16 v5, v16

    .line 271
    .line 272
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    .line 273
    .line 274
    .line 275
    iput-object v13, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 276
    .line 277
    iget-object v0, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mRestrictDisplayModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_1

    .line 284
    .line 285
    new-instance v0, Lcom/android/server/display/mode/SystemRequestObserver;

    .line 286
    .line 287
    invoke-direct {v0, v10}, Lcom/android/server/display/mode/SystemRequestObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;)V

    .line 288
    .line 289
    .line 290
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    .line 291
    .line 292
    :goto_1
    const/4 v0, 0x0

    .line 293
    goto :goto_2

    .line 294
    :cond_1
    iput-object v12, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    .line 295
    .line 296
    goto :goto_1

    .line 297
    :goto_2
    iput-boolean v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 298
    .line 299
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/sysprop/SurfaceFlingerProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0, v15}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Ljava/lang/Boolean;

    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    iput-boolean v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    .line 322
    .line 323
    new-instance v0, Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 324
    .line 325
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 326
    .line 327
    .line 328
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 329
    .line 330
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 331
    .line 332
    .line 333
    iput-object v1, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

    .line 334
    .line 335
    iput-object v12, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    .line 336
    .line 337
    new-instance v1, Lcom/android/server/display/mode/RefreshRateModeManager$1;

    .line 338
    .line 339
    invoke-direct {v1, v0}, Lcom/android/server/display/mode/RefreshRateModeManager$1;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    .line 340
    .line 341
    .line 342
    iput-object v1, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayStateListener:Lcom/android/server/display/mode/RefreshRateModeManager$1;

    .line 343
    .line 344
    iput-object v7, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mContext:Landroid/content/Context;

    .line 345
    .line 346
    iput-object v8, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mHandler:Landroid/os/Handler;

    .line 347
    .line 348
    iput-object v11, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    .line 349
    .line 350
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 351
    .line 352
    if-eqz v1, :cond_2

    .line 353
    .line 354
    new-instance v2, Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 355
    .line 356
    invoke-direct {v2, v11}, Lcom/android/server/display/mode/RefreshRateTokenController;-><init>(Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    goto :goto_3

    .line 360
    :cond_2
    move-object v2, v12

    .line 361
    :goto_3
    sput-object v6, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 362
    .line 363
    sput-object v7, Lcom/android/server/display/mode/RefreshRateController;->mContext:Landroid/content/Context;

    .line 364
    .line 365
    sput-object v8, Lcom/android/server/display/mode/RefreshRateController;->mHandler:Landroid/os/Handler;

    .line 366
    .line 367
    sput-object v10, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 368
    .line 369
    if-eqz v1, :cond_3

    .line 370
    .line 371
    sput-object v2, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 372
    .line 373
    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 374
    .line 375
    if-eqz v1, :cond_4

    .line 376
    .line 377
    new-instance v1, Lcom/samsung/android/core/SystemHistory;

    .line 378
    .line 379
    const/16 v2, 0x19

    .line 380
    .line 381
    const-string v3, "RefreshRateModeManager"

    .line 382
    .line 383
    invoke-direct {v1, v2, v3}, Lcom/samsung/android/core/SystemHistory;-><init>(ILjava/lang/String;)V

    .line 384
    .line 385
    .line 386
    sput-object v1, Lcom/android/server/display/mode/RefreshRateController;->mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

    .line 387
    .line 388
    :cond_4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    .line 389
    .line 390
    if-eqz v1, :cond_5

    .line 391
    .line 392
    new-instance v1, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    .line 393
    .line 394
    invoke-direct {v1, v0, v7, v8}, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;)V

    .line 395
    .line 396
    .line 397
    iput-object v1, v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    .line 398
    .line 399
    :cond_5
    invoke-static {v12}, Lcom/android/server/display/mode/RefreshRateModeManager;->addControllerByDisplayToken(Landroid/os/IBinder;)V

    .line 400
    .line 401
    .line 402
    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 403
    .line 404
    return-void
.end method

.method public static switchingTypeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const-string v0, "Unknown SwitchingType "

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "SWITCHING_TYPE_RENDER_FRAME_RATE_ONLY"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string p0, "SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    const-string p0, "SWITCHING_TYPE_WITHIN_GROUPS"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_3
    const-string p0, "SWITCHING_TYPE_NONE"

    .line 29
    .line 30
    return-object p0
.end method


# virtual methods
.method public final defaultDisplayDeviceUpdated(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 13
    .line 14
    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateBlockingZoneThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mreloadLightSensor(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 23
    .line 24
    const-string/jumbo v1, "display_manager"

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    :try_start_1
    iget-object v4, v2, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 34
    .line 35
    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 36
    .line 37
    iget-object v4, v4, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 38
    .line 39
    const-string/jumbo v5, "refresh_rate_in_hbm_hdr"

    .line 40
    .line 41
    .line 42
    invoke-interface {v4, v1, v5, v3}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 43
    .line 44
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

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    :try_start_2
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const v4, 0x10e007d

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 64
    .line 65
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

    .line 70
    .line 71
    iget v2, v2, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :goto_2
    iput v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    :try_start_3
    iget-object v4, v2, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 82
    .line 83
    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 86
    .line 87
    const-string/jumbo v5, "refresh_rate_in_hbm_sunlight"

    .line 88
    .line 89
    .line 90
    invoke-interface {v4, v1, v5, v3}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 91
    .line 92
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

    .line 97
    .line 98
    if-nez p1, :cond_2

    .line 99
    .line 100
    :try_start_4
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const v1, 0x10e007e

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 112
    .line 113
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

    .line 118
    .line 119
    iget p1, p1, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_3
    :goto_5
    iput v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 123
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

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    const-string v1, "  mSupportedModesByDisplay:"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, [Landroid/view/Display$Mode;

    .line 37
    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v6, "    "

    .line 44
    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, " -> "

    .line 52
    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto/16 :goto_6

    .line 75
    .line 76
    :cond_0
    const-string v2, "  mAppSupportedModesByDisplay:"

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move v2, v1

    .line 82
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-ge v2, v3, :cond_1

    .line 89
    .line 90
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 97
    .line 98
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, [Landroid/view/Display$Mode;

    .line 103
    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v6, "    "

    .line 110
    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v3, " -> "

    .line 118
    .line 119
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_1
    const-string v2, "  mDefaultModeByDisplay:"

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    move v2, v1

    .line 145
    :goto_2
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 146
    .line 147
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-ge v2, v3, :cond_2

    .line 152
    .line 153
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 154
    .line 155
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 160
    .line 161
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Landroid/view/Display$Mode;

    .line 166
    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v6, "    "

    .line 173
    .line 174
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v3, " -> "

    .line 181
    .line 182
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v3, "  mModeSwitchingType: "

    .line 204
    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 209
    .line 210
    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v3, "  mAlwaysRespectAppRequest: "

    .line 230
    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 235
    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    const-string v3, "  SettingsObserver"

    .line 252
    .line 253
    const-string v4, "    mDefaultRefreshRate: "

    .line 254
    .line 255
    invoke-static {p1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    iget v4, v2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    .line 260
    .line 261
    const-string v5, "    mDefaultPeakRefreshRate: "

    .line 262
    .line 263
    invoke-static {v3, v4, p1, v5}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    iget v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 268
    .line 269
    invoke-static {v3, v2, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 270
    .line 271
    .line 272
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    const-string v3, "  AppRequestObserver"

    .line 278
    .line 279
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v4, "    mIgnorePreferredRefreshRate: "

    .line 285
    .line 286
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-boolean v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    .line 290
    .line 291
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 302
    .line 303
    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 304
    .line 305
    .line 306
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 307
    .line 308
    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 309
    .line 310
    .line 311
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 312
    .line 313
    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 314
    .line 315
    .line 316
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 317
    .line 318
    if-eqz v2, :cond_3

    .line 319
    .line 320
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 321
    .line 322
    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 323
    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 327
    .line 328
    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 329
    .line 330
    .line 331
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 333
    .line 334
    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/VotesStorage;->dump(Ljava/io/PrintWriter;)V

    .line 335
    .line 336
    .line 337
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    .line 338
    .line 339
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    const-string v0, "    mIsProxActive="

    .line 343
    .line 344
    const-string v2, "  SensorObserver"

    .line 345
    .line 346
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    .line 350
    .line 351
    monitor-enter v2

    .line 352
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-boolean v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    .line 358
    .line 359
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const-string v0, "    mDozeStateByDisplay:"

    .line 370
    .line 371
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    :goto_4
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 375
    .line 376
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-ge v1, v0, :cond_4

    .line 381
    .line 382
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    iget-object v3, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 389
    .line 390
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    const-string v5, "      "

    .line 400
    .line 401
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v0, " -> "

    .line 408
    .line 409
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    add-int/lit8 v1, v1, 0x1

    .line 423
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

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    const-string v1, "Asked about unknown display, returning empty display mode specs!(id="

    .line 6
    .line 7
    iget-object v8, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v8

    .line 10
    :try_start_0
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 11
    .line 12
    invoke-virtual {v2, v7}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v9

    .line 16
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v10, v2

    .line 23
    check-cast v10, [Landroid/view/Display$Mode;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v11, v2

    .line 32
    check-cast v11, Landroid/view/Display$Mode;

    .line 33
    .line 34
    if-eqz v10, :cond_15

    .line 35
    .line 36
    if-nez v11, :cond_0

    .line 37
    .line 38
    goto/16 :goto_f

    .line 39
    .line 40
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance v12, Lcom/android/server/display/mode/VoteSummary;

    .line 49
    .line 50
    iget-boolean v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 51
    .line 52
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget-boolean v4, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 57
    .line 58
    iget-boolean v5, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    .line 59
    .line 60
    invoke-direct {v12, v2, v3, v4, v5}, Lcom/android/server/display/mode/VoteSummary;-><init>(ZZZZ)V

    .line 61
    .line 62
    .line 63
    iget-boolean v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 64
    .line 65
    const/4 v3, 0x7

    .line 66
    const/16 v13, 0x18

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    const/16 v2, 0x9

    .line 71
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

    .line 77
    .line 78
    invoke-virtual {v12, v15, v2, v9}, Lcom/android/server/display/mode/VoteSummary;->applyVotes(IILandroid/util/SparseArray;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v12, v11, v10}, Lcom/android/server/display/mode/VoteSummary;->adjustSize(Landroid/view/Display$Mode;[Landroid/view/Display$Mode;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v12, v10}, Lcom/android/server/display/mode/VoteSummary;->filterModes([Landroid/view/Display$Mode;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    move-object v4, v1

    .line 89
    check-cast v4, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_2

    .line 96
    .line 97
    iget-boolean v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 98
    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    const-string v2, "DisplayModeDirector"

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v5, "Found available modes="

    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v5, " with lowest priority considered "

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-static {v15}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v5, " and summary: "

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    goto/16 :goto_10

    .line 146
    .line 147
    :cond_2
    iget-boolean v4, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 148
    .line 149
    if-eqz v4, :cond_3

    .line 150
    .line 151
    const-string v4, "DisplayModeDirector"

    .line 152
    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v6, "Couldn\'t find available modes with lowest priority set to "

    .line 159
    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-static {v15}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v6, " and with the following summary: "

    .line 171
    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_4
    :goto_1
    new-instance v6, Lcom/android/server/display/mode/VoteSummary;

    .line 189
    .line 190
    iget-boolean v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 191
    .line 192
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    iget-boolean v5, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 197
    .line 198
    iget-boolean v14, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    .line 199
    .line 200
    invoke-direct {v6, v2, v4, v5, v14}, Lcom/android/server/display/mode/VoteSummary;-><init>(ZZZZ)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v3, v13, v9}, Lcom/android/server/display/mode/VoteSummary;->applyVotes(IILandroid/util/SparseArray;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v12}, Lcom/android/server/display/mode/VoteSummary;->limitRefreshRanges(Lcom/android/server/display/mode/VoteSummary;)V

    .line 207
    .line 208
    .line 209
    iget v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 210
    .line 211
    invoke-virtual {v12, v1, v11, v2}, Lcom/android/server/display/mode/VoteSummary;->selectBaseMode(Ljava/util/List;Landroid/view/Display$Mode;I)Landroid/view/Display$Mode;

    .line 212
    .line 213
    .line 214
    move-result-object v14

    .line 215
    iget-object v5, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    .line 216
    .line 217
    if-eqz v5, :cond_c

    .line 218
    .line 219
    iget-boolean v1, v5, Lcom/android/server/display/mode/VotesStatsReporter;->mFrameworkStatsLogReportingEnabled:Z

    .line 220
    .line 221
    if-nez v1, :cond_5

    .line 222
    .line 223
    goto/16 :goto_9

    .line 224
    .line 225
    :cond_5
    if-eqz v14, :cond_6

    .line 226
    .line 227
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    float-to-int v1, v1

    .line 232
    :goto_2
    move/from16 v17, v1

    .line 233
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

    .line 239
    .line 240
    iget v1, v5, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityReported:I

    .line 241
    .line 242
    if-ge v4, v1, :cond_7

    .line 243
    .line 244
    if-ge v4, v15, :cond_7

    .line 245
    .line 246
    :goto_5
    move v13, v4

    .line 247
    move-object v1, v5

    .line 248
    move-object/from16 v24, v6

    .line 249
    .line 250
    goto/16 :goto_8

    .line 251
    .line 252
    :cond_7
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    move-object v3, v1

    .line 257
    check-cast v3, Lcom/android/server/display/mode/Vote;

    .line 258
    .line 259
    if-nez v3, :cond_8

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_8
    iget v1, v5, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityReported:I

    .line 263
    .line 264
    iget-boolean v2, v5, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    .line 265
    .line 266
    if-lt v4, v1, :cond_9

    .line 267
    .line 268
    if-ge v4, v15, :cond_9

    .line 269
    .line 270
    invoke-static {v3, v2}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    .line 271
    .line 272
    .line 273
    move-result v18

    .line 274
    const/16 v1, 0x318

    .line 275
    .line 276
    const/16 v19, 0x1

    .line 277
    .line 278
    move v13, v2

    .line 279
    move/from16 v2, p1

    .line 280
    .line 281
    move-object/from16 v21, v3

    .line 282
    .line 283
    move v3, v4

    .line 284
    move/from16 v22, v4

    .line 285
    .line 286
    move/from16 v4, v19

    .line 287
    .line 288
    move-object/from16 v23, v5

    .line 289
    .line 290
    move/from16 v5, v18

    .line 291
    .line 292
    move-object/from16 v24, v6

    .line 293
    .line 294
    move/from16 v6, v17

    .line 295
    .line 296
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 297
    .line 298
    .line 299
    move/from16 v6, v22

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_9
    move v13, v2

    .line 303
    move-object/from16 v21, v3

    .line 304
    .line 305
    move-object/from16 v23, v5

    .line 306
    .line 307
    move-object/from16 v24, v6

    .line 308
    .line 309
    move v6, v4

    .line 310
    :goto_6
    if-lt v6, v15, :cond_b

    .line 311
    .line 312
    move-object/from16 v5, v23

    .line 313
    .line 314
    iget v1, v5, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityReported:I

    .line 315
    .line 316
    if-ge v6, v1, :cond_a

    .line 317
    .line 318
    move-object/from16 v1, v21

    .line 319
    .line 320
    invoke-static {v1, v13}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    .line 321
    .line 322
    .line 323
    move-result v13

    .line 324
    const/16 v1, 0x318

    .line 325
    .line 326
    const/4 v4, 0x2

    .line 327
    move/from16 v2, p1

    .line 328
    .line 329
    move v3, v6

    .line 330
    move-object/from16 v25, v5

    .line 331
    .line 332
    move v5, v13

    .line 333
    move v13, v6

    .line 334
    move/from16 v6, v17

    .line 335
    .line 336
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 337
    .line 338
    .line 339
    move-object/from16 v1, v25

    .line 340
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

    .line 347
    .line 348
    :goto_7
    iput v15, v1, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityReported:I

    .line 349
    .line 350
    :goto_8
    add-int/lit8 v4, v13, 0x1

    .line 351
    .line 352
    move-object v5, v1

    .line 353
    move-object/from16 v6, v24

    .line 354
    .line 355
    const/16 v13, 0x18

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_c
    :goto_9
    move-object/from16 v24, v6

    .line 359
    .line 360
    if-nez v14, :cond_d

    .line 361
    .line 362
    const-string v1, "DisplayModeDirector"

    .line 363
    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    const-string v3, "Can\'t find a set of allowed modes which satisfies the votes. Falling back to the default mode. Display = "

    .line 370
    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v3, ", votes = "

    .line 378
    .line 379
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v3, ", supported modes = "

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    new-instance v2, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 409
    .line 410
    invoke-direct {v2, v1, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 411
    .line 412
    .line 413
    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 414
    .line 415
    invoke-direct {v1, v2, v2}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 416
    .line 417
    .line 418
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 419
    .line 420
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getModeId()I

    .line 421
    .line 422
    .line 423
    move-result v13

    .line 424
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 425
    .line 426
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 427
    .line 428
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

    .line 434
    .line 435
    invoke-direct/range {v12 .. v17}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    .line 436
    .line 437
    .line 438
    monitor-exit v8

    .line 439
    return-object v2

    .line 440
    :cond_d
    iget v1, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 441
    .line 442
    const/4 v2, 0x1

    .line 443
    if-eqz v1, :cond_f

    .line 444
    .line 445
    const/4 v3, 0x3

    .line 446
    if-ne v1, v3, :cond_e

    .line 447
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

    .line 453
    .line 454
    iget-boolean v3, v12, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    .line 455
    .line 456
    if-eqz v3, :cond_10

    .line 457
    .line 458
    goto :goto_c

    .line 459
    :cond_10
    move-object/from16 v1, v24

    .line 460
    .line 461
    goto :goto_d

    .line 462
    :cond_11
    :goto_c
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    invoke-virtual {v12, v3}, Lcom/android/server/display/mode/VoteSummary;->disableModeSwitching(F)V

    .line 467
    .line 468
    .line 469
    if-eqz v1, :cond_10

    .line 470
    .line 471
    move-object/from16 v1, v24

    .line 472
    .line 473
    invoke-virtual {v1, v3}, Lcom/android/server/display/mode/VoteSummary;->disableModeSwitching(F)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v12, v3}, Lcom/android/server/display/mode/VoteSummary;->disableRenderRateSwitching(F)V

    .line 477
    .line 478
    .line 479
    iget v4, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 480
    .line 481
    if-nez v4, :cond_12

    .line 482
    .line 483
    invoke-virtual {v1, v3}, Lcom/android/server/display/mode/VoteSummary;->disableRenderRateSwitching(F)V

    .line 484
    .line 485
    .line 486
    :cond_12
    :goto_d
    iget v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 487
    .line 488
    const/4 v4, 0x2

    .line 489
    if-ne v3, v4, :cond_13

    .line 490
    .line 491
    move/from16 v19, v2

    .line 492
    .line 493
    goto :goto_e

    .line 494
    :cond_13
    const/16 v19, 0x0

    .line 495
    .line 496
    :goto_e
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    .line 497
    .line 498
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplaysConnected:Ljava/util/Set;

    .line 499
    .line 500
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    check-cast v2, Ljava/util/HashSet;

    .line 505
    .line 506
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    if-eqz v2, :cond_14

    .line 511
    .line 512
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    iget v3, v12, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 517
    .line 518
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    iput v2, v12, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 523
    .line 524
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    iget v3, v1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 529
    .line 530
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    iput v2, v1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 535
    .line 536
    :cond_14
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 537
    .line 538
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getModeId()I

    .line 539
    .line 540
    .line 541
    move-result v18

    .line 542
    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 543
    .line 544
    new-instance v4, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 545
    .line 546
    iget v5, v12, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 547
    .line 548
    iget v6, v12, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 549
    .line 550
    invoke-direct {v4, v5, v6}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 551
    .line 552
    .line 553
    new-instance v5, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 554
    .line 555
    iget v6, v12, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 556
    .line 557
    iget v7, v12, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 558
    .line 559
    invoke-direct {v5, v6, v7}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 560
    .line 561
    .line 562
    invoke-direct {v3, v4, v5}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 563
    .line 564
    .line 565
    new-instance v4, Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 566
    .line 567
    new-instance v5, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 568
    .line 569
    iget v6, v1, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 570
    .line 571
    iget v7, v1, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 572
    .line 573
    invoke-direct {v5, v6, v7}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 574
    .line 575
    .line 576
    new-instance v6, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 577
    .line 578
    iget v7, v1, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 579
    .line 580
    iget v1, v1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 581
    .line 582
    invoke-direct {v6, v7, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 583
    .line 584
    .line 585
    invoke-direct {v4, v5, v6}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 586
    .line 587
    .line 588
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 589
    .line 590
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 591
    .line 592
    .line 593
    move-result-object v22

    .line 594
    move-object/from16 v17, v2

    .line 595
    .line 596
    move-object/from16 v20, v3

    .line 597
    .line 598
    move-object/from16 v21, v4

    .line 599
    .line 600
    invoke-direct/range {v17 .. v22}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    .line 601
    .line 602
    .line 603
    monitor-exit v8

    .line 604
    return-object v2

    .line 605
    :cond_15
    :goto_f
    const-string v0, "DisplayModeDirector"

    .line 606
    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v1, ")"

    .line 616
    .line 617
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 628
    .line 629
    invoke-direct {v0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    .line 630
    .line 631
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 5
    .line 6
    sget v2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->$r8$clinit:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFFI)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lcom/android/server/display/mode/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 13
    .line 14
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

    .line 2
    .line 3
    return-object p0
.end method

.method public getHbmObserver()Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getModeSwitchingType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 5
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

    .line 2
    .line 3
    return-object p0
.end method

.method public getUdpfsObserver()Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method public getVote(II)Lcom/android/server/display/mode/Vote;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/display/mode/Vote;

    .line 12
    .line 13
    return-object p0
.end method

.method public injectAppSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-void
.end method

.method public injectBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 2
    .line 3
    return-void
.end method

.method public injectDefaultModeByDisplay(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-void
.end method

.method public injectDisplayDeviceConfigByDisplay(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-void
.end method

.method public injectSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-void
.end method

.method public injectVotesByDisplay(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VotesStorage;->injectVotesByDisplay(Landroid/util/SparseArray;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final isVrrSupportedLocked(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/DisplayDeviceConfig;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    .line 15
    .line 16
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onBootCompleted()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 6
    .line 7
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x11101b7

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 48
    .line 49
    iput-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    .line 50
    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    :try_start_1
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBar;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 5
    .line 6
    sget v2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->$r8$clinit:I

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->updateRefreshRateSettingsOnUserSwitching()V

    .line 12
    .line 13
    .line 14
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->updateRefreshRateSettingsCoverOnUserSwitching()V

    .line 19
    .line 20
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

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    .line 32
    .line 33
    .line 34
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateModeLocked(Z)V

    .line 46
    .line 47
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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getPrimaryPhysicalDisplayId()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-static {v1, v2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcom/android/server/display/mode/RefreshRateController;->sPrimaryDisplayToken:Landroid/os/IBinder;

    .line 34
    .line 35
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->updateDefaultDisplayToken()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    check-cast v1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 53
    .line 54
    check-cast v2, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v2, Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v3, Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v4, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 79
    .line 80
    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 81
    .line 82
    check-cast v4, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    const-string v5, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 91
    .line 92
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

    .line 98
    .line 99
    aget-object v8, v4, v7

    .line 100
    .line 101
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    invoke-virtual {v0, v8}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    iget-object v10, v9, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 110
    .line 111
    invoke-virtual {v1, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-object v10, v9, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 115
    .line 116
    invoke-virtual {v2, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {v3, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v7, v7, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    iget-object v4, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 130
    .line 131
    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    .line 132
    .line 133
    invoke-virtual {v4, v6}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;->getDisplayDeviceConfig(I)Lcom/android/server/display/DisplayDeviceConfig;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    iget-object v5, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 138
    .line 139
    iget-object v5, v5, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 140
    .line 141
    monitor-enter v5

    .line 142
    :try_start_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    move v8, v6

    .line 147
    :goto_1
    if-ge v8, v7, :cond_3

    .line 148
    .line 149
    iget-object v9, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 150
    .line 151
    iget-object v9, v9, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 152
    .line 153
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    check-cast v11, [Landroid/view/Display$Mode;

    .line 162
    .line 163
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object v9, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 167
    .line 168
    iget-object v9, v9, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 169
    .line 170
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    check-cast v11, [Landroid/view/Display$Mode;

    .line 179
    .line 180
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object v9, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 184
    .line 185
    iget-object v9, v9, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 186
    .line 187
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    check-cast v11, Landroid/view/Display$Mode;

    .line 196
    .line 197
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v8, v8, 0x1

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :catchall_0
    move-exception p0

    .line 204
    goto/16 :goto_5

    .line 205
    .line 206
    :cond_3
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 207
    .line 208
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 209
    .line 210
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 215
    .line 216
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 217
    .line 218
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 223
    .line 224
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 225
    .line 226
    check-cast v2, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    sget-object v2, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->PEAK_REFRESH_RATE_URI:Landroid/net/Uri;

    .line 232
    .line 233
    invoke-virtual {v1, v2, v6, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 234
    .line 235
    .line 236
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 237
    .line 238
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 239
    .line 240
    check-cast v2, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    sget-object v2, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->MIN_REFRESH_RATE_URI:Landroid/net/Uri;

    .line 246
    .line 247
    invoke-virtual {v1, v2, v6, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 248
    .line 249
    .line 250
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 251
    .line 252
    invoke-virtual {v1, v2, v6, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 253
    .line 254
    .line 255
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeMotionSmoothness:Landroid/net/Uri;

    .line 256
    .line 257
    invoke-virtual {v1, v2, v6, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 258
    .line 259
    .line 260
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    .line 261
    .line 262
    invoke-virtual {v1, v2, v6, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 266
    .line 267
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 268
    .line 269
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDisplayListener:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;

    .line 270
    .line 271
    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mHandler:Landroid/os/Handler;

    .line 272
    .line 273
    check-cast v1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 274
    .line 275
    check-cast v3, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 282
    .line 283
    .line 284
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 285
    .line 286
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 287
    .line 288
    iget-object v1, v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 289
    .line 290
    const-string/jumbo v2, "peak_refresh_rate_default"

    .line 291
    .line 292
    .line 293
    const-string/jumbo v3, "display_manager"

    .line 294
    .line 295
    .line 296
    const/high16 v4, -0x40800000    # -1.0f

    .line 297
    .line 298
    invoke-interface {v1, v3, v2, v4}, Landroid/provider/DeviceConfigInterface;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    cmpl-float v2, v1, v4

    .line 303
    .line 304
    if-eqz v2, :cond_4

    .line 305
    .line 306
    iput v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 307
    .line 308
    :cond_4
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 309
    .line 310
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 311
    .line 312
    monitor-enter v1

    .line 313
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    .line 320
    .line 321
    .line 322
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 323
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 324
    .line 325
    const/4 v1, -0x1

    .line 326
    if-eqz v0, :cond_8

    .line 327
    .line 328
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    .line 334
    .line 335
    if-eqz v3, :cond_6

    .line 336
    .line 337
    iget-object v3, v2, Lcom/android/server/display/mode/RefreshRateModeManager;->mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    .line 338
    .line 339
    iget-object v4, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mContext:Landroid/content/Context;

    .line 340
    .line 341
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    iget-object v5, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mRefreshRateModeSetting:Landroid/net/Uri;

    .line 346
    .line 347
    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 348
    .line 349
    .line 350
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    .line 351
    .line 352
    if-eqz v5, :cond_5

    .line 353
    .line 354
    iget-object v5, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mSubRefreshRateModeSetting:Landroid/net/Uri;

    .line 355
    .line 356
    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 357
    .line 358
    .line 359
    :cond_5
    iget-object v4, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 360
    .line 361
    iget-object v4, v4, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    .line 362
    .line 363
    monitor-enter v4

    .line 364
    :try_start_2
    iget-object v3, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 365
    .line 366
    invoke-virtual {v3}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-virtual {v3, v6}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateModeLocked(Z)V

    .line 371
    .line 372
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

    .line 379
    .line 380
    if-eqz v3, :cond_7

    .line 381
    .line 382
    const-string v3, "RefreshRateModeManager"

    .line 383
    .line 384
    const-string/jumbo v4, "registerBrightnessAndStateListener"

    .line 385
    .line 386
    .line 387
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 391
    .line 392
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 397
    .line 398
    new-instance v4, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda2;

    .line 399
    .line 400
    invoke-direct {v4, v2}, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)F

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->getCurrentScreenBrightness()F

    .line 411
    .line 412
    .line 413
    move-result v5

    .line 414
    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    sget-object v4, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 422
    .line 423
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    invoke-static {v4}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    .line 428
    .line 429
    .line 430
    invoke-static {v5}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    .line 431
    .line 432
    .line 433
    iget-object v4, v2, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayStateListener:Lcom/android/server/display/mode/RefreshRateModeManager$1;

    .line 434
    .line 435
    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    .line 436
    .line 437
    .line 438
    :cond_7
    const-string v3, "RefreshRateModeManager"

    .line 439
    .line 440
    const-string/jumbo v4, "registerWirelessChargeReceiver"

    .line 441
    .line 442
    .line 443
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    new-instance v3, Landroid/content/IntentFilter;

    .line 447
    .line 448
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 449
    .line 450
    .line 451
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    .line 452
    .line 453
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    iget-object v4, v2, Lcom/android/server/display/mode/RefreshRateModeManager;->mContext:Landroid/content/Context;

    .line 457
    .line 458
    new-instance v5, Lcom/android/server/display/mode/RefreshRateModeManager$2;

    .line 459
    .line 460
    invoke-direct {v5, v2}, Lcom/android/server/display/mode/RefreshRateModeManager$2;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 464
    .line 465
    .line 466
    :cond_8
    if-eqz v0, :cond_9

    .line 467
    .line 468
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 469
    .line 470
    if-eqz v2, :cond_10

    .line 471
    .line 472
    :cond_9
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 473
    .line 474
    iput-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 475
    .line 476
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 477
    .line 478
    check-cast p1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 479
    .line 480
    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    invoke-virtual {p1, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    if-eqz p1, :cond_a

    .line 489
    .line 490
    invoke-virtual {p1}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    .line 491
    .line 492
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

    .line 497
    .line 498
    iget p1, p1, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    .line 499
    .line 500
    goto :goto_4

    .line 501
    :cond_b
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 502
    .line 503
    :goto_4
    iput p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 504
    .line 505
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 506
    .line 507
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 508
    .line 509
    const-string/jumbo v3, "peak_refresh_rate_brightness_thresholds"

    .line 510
    .line 511
    .line 512
    invoke-virtual {p1, v3}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    iget-object v3, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 521
    .line 522
    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 523
    .line 524
    const-string/jumbo v4, "peak_refresh_rate_ambient_thresholds"

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3, v4}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    invoke-static {v3}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    if-eqz p1, :cond_c

    .line 536
    .line 537
    if-eqz v3, :cond_c

    .line 538
    .line 539
    array-length v4, p1

    .line 540
    array-length v5, v3

    .line 541
    if-ne v4, v5, :cond_c

    .line 542
    .line 543
    iput-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 544
    .line 545
    iput-object v3, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 546
    .line 547
    :cond_c
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 548
    .line 549
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 550
    .line 551
    const-string/jumbo v3, "fixed_refresh_rate_high_display_brightness_thresholds"

    .line 552
    .line 553
    .line 554
    invoke-virtual {p1, v3}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 555
    .line 556
    .line 557
    move-result-object p1

    .line 558
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    .line 559
    .line 560
    .line 561
    move-result-object p1

    .line 562
    iget-object v3, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 563
    .line 564
    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 565
    .line 566
    const-string/jumbo v4, "fixed_refresh_rate_high_ambient_brightness_thresholds"

    .line 567
    .line 568
    .line 569
    invoke-virtual {v3, v4}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-static {v3}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    if-eqz p1, :cond_d

    .line 578
    .line 579
    if-eqz v3, :cond_d

    .line 580
    .line 581
    array-length v4, p1

    .line 582
    array-length v5, v3

    .line 583
    if-ne v4, v5, :cond_d

    .line 584
    .line 585
    iput-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 586
    .line 587
    iput-object v3, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 588
    .line 589
    :cond_d
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 590
    .line 591
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 592
    .line 593
    iget-object p1, p1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 594
    .line 595
    const-string/jumbo v3, "refresh_rate_in_zone"

    .line 596
    .line 597
    .line 598
    const-string/jumbo v4, "display_manager"

    .line 599
    .line 600
    .line 601
    invoke-interface {p1, v4, v3, v1}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 602
    .line 603
    .line 604
    move-result p1

    .line 605
    if-eq p1, v1, :cond_e

    .line 606
    .line 607
    iput p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 608
    .line 609
    :cond_e
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 610
    .line 611
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 612
    .line 613
    iget-object p1, p1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 614
    .line 615
    const-string/jumbo v3, "refresh_rate_in_high_zone"

    .line 616
    .line 617
    .line 618
    const-string/jumbo v4, "display_manager"

    .line 619
    .line 620
    .line 621
    invoke-interface {p1, v4, v3, v1}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 622
    .line 623
    .line 624
    move-result p1

    .line 625
    if-eq p1, v1, :cond_f

    .line 626
    .line 627
    iput p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 628
    .line 629
    :cond_f
    invoke-virtual {v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 630
    .line 631
    .line 632
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 633
    .line 634
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 635
    .line 636
    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 637
    .line 638
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 639
    .line 640
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    iget-object v1, v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 645
    .line 646
    const-string/jumbo v4, "display_manager"

    .line 647
    .line 648
    .line 649
    invoke-interface {v1, v4, v3, p1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 650
    .line 651
    .line 652
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 653
    .line 654
    iget-object v1, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    .line 655
    .line 656
    check-cast p1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 657
    .line 658
    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    const-wide/16 v3, 0xc

    .line 663
    .line 664
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 665
    .line 666
    .line 667
    :cond_10
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    .line 668
    .line 669
    invoke-virtual {p1}, Lcom/android/server/display/mode/ProximitySensorObserver;->observe()V

    .line 670
    .line 671
    .line 672
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 673
    .line 674
    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->observe()V

    .line 675
    .line 676
    .line 677
    if-nez v0, :cond_11

    .line 678
    .line 679
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 680
    .line 681
    invoke-virtual {p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->observe()V

    .line 682
    .line 683
    .line 684
    :cond_11
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 685
    .line 686
    monitor-enter p1

    .line 687
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 688
    .line 689
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

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "low_power"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string/jumbo v1, "refresh_rate_mode_cover"

    .line 16
    .line 17
    .line 18
    const/4 v3, -0x2

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string/jumbo v4, "pms_settings_refresh_rate_enabled"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string/jumbo v2, "pms_override_refresh_rate_mode_cover"

    .line 53
    .line 54
    .line 55
    const/4 v4, -0x1

    .line 56
    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eq v0, v4, :cond_1

    .line 61
    .line 62
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v5, v1, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0, v2, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateRefreshRateSettingsOnUserSwitching()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "low_power"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string/jumbo v1, "refresh_rate_mode"

    .line 16
    .line 17
    .line 18
    const/4 v3, -0x2

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string/jumbo v4, "pms_settings_refresh_rate_enabled"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string/jumbo v2, "pms_override_refresh_rate_mode"

    .line 53
    .line 54
    .line 55
    const/4 v4, -0x1

    .line 56
    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eq v0, v4, :cond_1

    .line 61
    .line 62
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v5, v1, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0, v2, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
.end method
