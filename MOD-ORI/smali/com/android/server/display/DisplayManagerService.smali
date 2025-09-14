.class public final Lcom/android/server/display/DisplayManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static DEBUG:Z

.field public static final EMPTY_ARRAY:[I

.field public static final HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;


# instance fields
.field public final dateFormat:Ljava/text/SimpleDateFormat;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAreUserDisabledHdrTypesAllowed:Z

.field public mBootCompleted:Z

.field public mBrightnessAnimRefreshRateToken:Lcom/android/server/display/mode/RefreshRateToken;

.field public mBrightnessAnimStarted:Z

.field public final mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

.field public mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field public final mCallbacks:Landroid/util/SparseArray;

.field public final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public mConnectedExternalDisplayId:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDefaultDisplayDefaultColorMode:I

.field public mDefaultDisplayTopInset:I

.field public final mDefaultHdrConversionMode:I

.field public mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

.field public final mDisplayAccessUIDs:Landroid/util/SparseArray;

.field public final mDisplayAdapters:Ljava/util/ArrayList;

.field public final mDisplayBlanker:Lcom/android/server/display/DisplayManagerService$1;

.field public final mDisplayBrightnessListeners:Ljava/util/ArrayList;

.field public final mDisplayBrightnesses:Landroid/util/SparseArray;

.field public final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field public final mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

.field public final mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

.field public mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field public final mDisplayPowerControllers:Landroid/util/SparseArray;

.field public final mDisplayStateListeners:Ljava/util/ArrayList;

.field public final mDisplayStateOverrideLocks:Ljava/util/ArrayList;

.field public final mDisplayStateOverrides:Landroid/util/SparseIntArray;

.field public final mDisplayStates:Landroid/util/SparseIntArray;

.field public final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

.field public mDualScreenPolicy:I

.field public final mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

.field public final mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

.field public final mExtraDisplayEventLogging:Z

.field public final mExtraDisplayLoggingPackageName:Ljava/lang/String;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mForceListenProcessId:I

.field public final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field public final mHbmBrightnessCallbacks:Landroid/util/SparseArray;

.field public mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

.field public final mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

.field public final mIdleModeReceiver:Lcom/android/server/display/DisplayManagerService$2;

.field public final mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

.field public mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public mIsDocked:Z

.field public mIsDreaming:Z

.field public mIsHbmEnabled:Z

.field public volatile mIsHdrOutputControlEnabled:Z

.field public final mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field public mMinimalPostProcessingAllowed:Z

.field public final mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

.field public final mMinimumBrightnessSpline:Landroid/util/Spline;

.field public final mOverlayProperties:Landroid/hardware/OverlayProperties;

.field public mOverrideHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

.field public final mPendingCallbackSelfLocked:Landroid/util/SparseArray;

.field public mPendingTraversal:Z

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public mPowerHandler:Landroid/os/Handler;

.field public final mPresentationDisplays:Ljava/util/HashSet;

.field public mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field public final mRequestDisplayStateLock:Ljava/lang/Object;

.field public final mResolutionRestoreReceiver:Lcom/android/server/display/DisplayManagerService$2;

.field public final mRotationChangeReceiver:Lcom/android/server/display/DisplayManagerService$2;

.field public mSafeMode:Z

.field public final mScreenExtendedBrightnessRangeMaximum:F

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSmallAreaDetectionController:Lcom/android/server/display/SmallAreaDetectionController;

.field public mStableDisplaySize:Landroid/graphics/Point;

.field public mSupportedHdrOutputType:[I

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public mSystemPreferredHdrOutputType:I

.field public mSystemReady:Z

.field public final mTempCallbacks:Ljava/util/ArrayList;

.field public final mTempViewports:Ljava/util/ArrayList;

.field public final mUiHandler:Landroid/os/Handler;

.field public final mUidImportanceListener:Lcom/android/server/display/DisplayManagerService$UidImportanceListener;

.field public mUserDisabledHdrTypes:[I

.field public mUserPreferredMode:Landroid/view/Display$Mode;

.field public final mViewports:Ljava/util/ArrayList;

.field public mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

.field public mVolumeController:Lcom/android/server/display/VolumeController;

.field public final mWideColorSpace:Landroid/graphics/ColorSpace;

.field public mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field public mWifiDisplayScanRequestCount:I

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static -$$Nest$mconnectWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "requestConnectLocked: address="

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "WifiDisplayAdapter"

    .line 24
    .line 25
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$1;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public static -$$Nest$mcreateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I
    .locals 23

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p3

    .line 6
    .line 7
    move-object/from16 v14, p4

    .line 8
    .line 9
    move-object/from16 v5, p6

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v15, "Virtual Display: successfully set up virtual display "

    .line 15
    .line 16
    const-string v10, "Content Recording: failed to start mirroring - releasing virtual display "

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v11, v4, v5}, Lcom/android/server/display/DisplayManagerService;->validatePackageName(ILjava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_31

    .line 27
    .line 28
    if-eqz p2, :cond_30

    .line 29
    .line 30
    if-eqz v12, :cond_2f

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->getSurface()Landroid/view/Surface;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->getFlags()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v14, :cond_1

    .line 41
    .line 42
    iget-object v1, v11, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/companion/virtual/VirtualDeviceManager;

    .line 51
    .line 52
    :try_start_0
    invoke-interface/range {p4 .. p4}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v1, v2}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    .line 57
    .line 58
    .line 59
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    const-class v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 63
    .line 64
    invoke-virtual {v11, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 69
    .line 70
    invoke-virtual {v1, v14}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    or-int/2addr v0, v1

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 77
    .line 78
    const-string v1, "Invalid virtual device"

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :catch_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 85
    .line 86
    const-string v1, "Unable to validate virtual device"

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    .line 93
    .line 94
    invoke-virtual {v8}, Landroid/view/Surface;->isSingleBuffered()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    const-string v1, "Surface can\'t be single-buffered"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_3
    :goto_1
    and-int/lit8 v1, v0, 0x1

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    or-int/lit8 v0, v0, 0x10

    .line 114
    .line 115
    and-int/lit8 v1, v0, 0x20

    .line 116
    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    const-string v1, "Public display must not be marked as SHOW_WHEN_LOCKED_INSECURE"

    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_5
    :goto_2
    and-int/lit8 v1, v0, 0x8

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    and-int/lit8 v0, v0, -0x11

    .line 133
    .line 134
    :cond_6
    and-int/lit8 v1, v0, 0x10

    .line 135
    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    and-int/lit16 v0, v0, -0x801

    .line 139
    .line 140
    :cond_7
    and-int/lit16 v1, v0, 0x800

    .line 141
    .line 142
    if-nez v1, :cond_8

    .line 143
    .line 144
    and-int/lit8 v1, v0, 0x10

    .line 145
    .line 146
    if-nez v1, :cond_8

    .line 147
    .line 148
    if-eqz v14, :cond_8

    .line 149
    .line 150
    const v1, 0x8000

    .line 151
    .line 152
    .line 153
    or-int/2addr v0, v1

    .line 154
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    const/4 v9, 0x1

    .line 159
    const/16 v16, 0x0

    .line 160
    .line 161
    if-eqz v13, :cond_b

    .line 162
    .line 163
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-interface {v3, v13}, Landroid/media/projection/IMediaProjectionManager;->isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_a

    .line 172
    .line 173
    invoke-interface/range {p3 .. p3}, Landroid/media/projection/IMediaProjection;->isValid()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-nez v3, :cond_9

    .line 178
    .line 179
    const-string v3, "DisplayManagerService"

    .line 180
    .line 181
    const-string v6, "Reusing token: create virtual display for app reusing token"

    .line 182
    .line 183
    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-interface {v3, v13}, Landroid/media/projection/IMediaProjectionManager;->requestConsentForInvalidProjection(Landroid/media/projection/IMediaProjection;)V

    .line 191
    .line 192
    .line 193
    move v3, v9

    .line 194
    goto :goto_3

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    goto :goto_5

    .line 197
    :catch_1
    move-exception v0

    .line 198
    goto :goto_4

    .line 199
    :cond_9
    move/from16 v3, v16

    .line 200
    .line 201
    :goto_3
    invoke-interface {v13, v0}, Landroid/media/projection/IMediaProjection;->applyVirtualDisplayFlags(I)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    move v7, v3

    .line 206
    move v3, v0

    .line 207
    goto :goto_6

    .line 208
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    .line 209
    .line 210
    const-string v3, "Cannot create VirtualDisplay with non-current MediaProjection"

    .line 211
    .line 212
    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :goto_4
    :try_start_3
    new-instance v3, Ljava/lang/SecurityException;

    .line 217
    .line 218
    const-string v4, "Unable to validate media projection or flags"

    .line 219
    .line 220
    invoke-direct {v3, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    .line 226
    .line 227
    throw v0

    .line 228
    :cond_b
    move v3, v0

    .line 229
    move/from16 v7, v16

    .line 230
    .line 231
    :goto_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    .line 233
    .line 234
    const/16 v1, 0x3e8

    .line 235
    .line 236
    if-eq v4, v1, :cond_11

    .line 237
    .line 238
    and-int/lit8 v0, v3, 0x10

    .line 239
    .line 240
    if-eqz v0, :cond_11

    .line 241
    .line 242
    if-eqz v13, :cond_c

    .line 243
    .line 244
    :try_start_4
    invoke-interface/range {p3 .. p3}, Landroid/media/projection/IMediaProjection;->canProjectVideo()Z

    .line 245
    .line 246
    .line 247
    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 248
    if-eqz v0, :cond_c

    .line 249
    .line 250
    :goto_7
    move v0, v9

    .line 251
    goto :goto_8

    .line 252
    :catch_2
    move-exception v0

    .line 253
    move-object v2, v0

    .line 254
    const-string v0, "DisplayManagerService"

    .line 255
    .line 256
    const-string v6, "Unable to query projection service for permissions"

    .line 257
    .line 258
    invoke-static {v0, v6, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    .line 260
    .line 261
    :cond_c
    const-string v0, "android.permission.CAPTURE_VIDEO_OUTPUT"

    .line 262
    .line 263
    const-string/jumbo v2, "canProjectVideo()"

    .line 264
    .line 265
    .line 266
    invoke-virtual {v11, v0, v2}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_d

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_d
    if-eqz v13, :cond_e

    .line 274
    .line 275
    :try_start_5
    invoke-interface/range {p3 .. p3}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z

    .line 276
    .line 277
    .line 278
    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 279
    if-eqz v0, :cond_e

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :catch_3
    move-exception v0

    .line 283
    move-object v2, v0

    .line 284
    const-string v0, "DisplayManagerService"

    .line 285
    .line 286
    const-string v6, "Unable to query projection service for permissions"

    .line 287
    .line 288
    invoke-static {v0, v6, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    :cond_e
    const-string v0, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    .line 292
    .line 293
    const-string/jumbo v2, "canProjectSecureVideo()"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v11, v0, v2}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    :goto_8
    if-nez v0, :cond_11

    .line 301
    .line 302
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->interactiveScreenMirror()Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_f

    .line 307
    .line 308
    if-eqz v14, :cond_f

    .line 309
    .line 310
    move v0, v9

    .line 311
    goto :goto_9

    .line 312
    :cond_f
    move/from16 v0, v16

    .line 313
    .line 314
    :goto_9
    if-eqz v0, :cond_10

    .line 315
    .line 316
    goto :goto_a

    .line 317
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    .line 318
    .line 319
    const-string v1, "Requires CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display. In order to create a virtual display that does not perform screen sharing (mirroring), please use the flag VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY."

    .line 320
    .line 321
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v0

    .line 325
    :cond_11
    :goto_a
    if-eq v4, v1, :cond_14

    .line 326
    .line 327
    and-int/lit8 v0, v3, 0x4

    .line 328
    .line 329
    if-eqz v0, :cond_14

    .line 330
    .line 331
    if-eqz v13, :cond_12

    .line 332
    .line 333
    :try_start_6
    invoke-interface/range {p3 .. p3}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z

    .line 334
    .line 335
    .line 336
    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 337
    if-eqz v0, :cond_12

    .line 338
    .line 339
    move v0, v9

    .line 340
    goto :goto_b

    .line 341
    :catch_4
    move-exception v0

    .line 342
    move-object v2, v0

    .line 343
    const-string v0, "DisplayManagerService"

    .line 344
    .line 345
    const-string v6, "Unable to query projection service for permissions"

    .line 346
    .line 347
    invoke-static {v0, v6, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    .line 349
    .line 350
    :cond_12
    const-string v0, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    .line 351
    .line 352
    const-string/jumbo v2, "canProjectSecureVideo()"

    .line 353
    .line 354
    .line 355
    invoke-virtual {v11, v0, v2}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    :goto_b
    if-eqz v0, :cond_13

    .line 360
    .line 361
    goto :goto_c

    .line 362
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    .line 363
    .line 364
    const-string v1, "Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display."

    .line 365
    .line 366
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    throw v0

    .line 370
    :cond_14
    :goto_c
    if-eq v4, v1, :cond_16

    .line 371
    .line 372
    and-int/lit16 v0, v3, 0x400

    .line 373
    .line 374
    if-eqz v0, :cond_16

    .line 375
    .line 376
    const-string v0, "android.permission.ADD_TRUSTED_DISPLAY"

    .line 377
    .line 378
    const-string/jumbo v2, "createVirtualDisplay()"

    .line 379
    .line 380
    .line 381
    invoke-virtual {v11, v0, v2}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_15

    .line 386
    .line 387
    goto :goto_d

    .line 388
    :cond_15
    const-string v0, "162627132"

    .line 389
    .line 390
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    const-string v2, "Attempt to create a trusted display without holding permission!"

    .line 395
    .line 396
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    const v1, 0x534e4554

    .line 401
    .line 402
    .line 403
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 404
    .line 405
    .line 406
    new-instance v0, Ljava/lang/SecurityException;

    .line 407
    .line 408
    const-string v1, "Requires ADD_TRUSTED_DISPLAY permission to create a trusted virtual display."

    .line 409
    .line 410
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw v0

    .line 414
    :cond_16
    :goto_d
    if-eqz v14, :cond_17

    .line 415
    .line 416
    and-int/lit8 v0, v3, 0x10

    .line 417
    .line 418
    if-eqz v0, :cond_17

    .line 419
    .line 420
    and-int/lit8 v0, v3, 0x2

    .line 421
    .line 422
    if-eqz v0, :cond_17

    .line 423
    .line 424
    const-string v0, "DisplayManagerService"

    .line 425
    .line 426
    const-string v2, "Mirror displays created by a virtual device cannot show presentations, hence ignoring flag VIRTUAL_DISPLAY_FLAG_PRESENTATION."

    .line 427
    .line 428
    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    and-int/lit8 v3, v3, -0x3

    .line 432
    .line 433
    :cond_17
    if-eq v4, v1, :cond_19

    .line 434
    .line 435
    and-int/lit16 v0, v3, 0x800

    .line 436
    .line 437
    if-eqz v0, :cond_19

    .line 438
    .line 439
    if-nez v14, :cond_19

    .line 440
    .line 441
    const-string v0, "android.permission.ADD_TRUSTED_DISPLAY"

    .line 442
    .line 443
    const-string/jumbo v2, "createVirtualDisplay()"

    .line 444
    .line 445
    .line 446
    invoke-virtual {v11, v0, v2}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-eqz v0, :cond_18

    .line 451
    .line 452
    goto :goto_e

    .line 453
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    .line 454
    .line 455
    const-string v1, "Requires ADD_TRUSTED_DISPLAY permission to create a virtual display which is not in the default DisplayGroup."

    .line 456
    .line 457
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw v0

    .line 461
    :cond_19
    :goto_e
    and-int/lit16 v0, v3, 0x1000

    .line 462
    .line 463
    if-eqz v0, :cond_1b

    .line 464
    .line 465
    if-eq v4, v1, :cond_1b

    .line 466
    .line 467
    const-string v0, "android.permission.ADD_ALWAYS_UNLOCKED_DISPLAY"

    .line 468
    .line 469
    const-string/jumbo v2, "createVirtualDisplay()"

    .line 470
    .line 471
    .line 472
    invoke-virtual {v11, v0, v2}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-eqz v0, :cond_1a

    .line 477
    .line 478
    goto :goto_f

    .line 479
    :cond_1a
    new-instance v0, Ljava/lang/SecurityException;

    .line 480
    .line 481
    const-string v1, "Requires ADD_ALWAYS_UNLOCKED_DISPLAY permission to create an always unlocked virtual display."

    .line 482
    .line 483
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw v0

    .line 487
    :cond_1b
    :goto_f
    const/high16 v0, 0x100000

    .line 488
    .line 489
    and-int/2addr v0, v3

    .line 490
    if-eqz v0, :cond_1d

    .line 491
    .line 492
    iget-object v0, v11, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 493
    .line 494
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-nez v0, :cond_1c

    .line 503
    .line 504
    goto :goto_10

    .line 505
    :cond_1c
    new-instance v0, Ljava/lang/SecurityException;

    .line 506
    .line 507
    const-string v1, "Carlife display only create by System app"

    .line 508
    .line 509
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    throw v0

    .line 513
    :cond_1d
    :goto_10
    and-int/lit16 v0, v3, 0x400

    .line 514
    .line 515
    if-nez v0, :cond_1e

    .line 516
    .line 517
    and-int/lit16 v3, v3, -0x201

    .line 518
    .line 519
    :cond_1e
    move v6, v3

    .line 520
    and-int/lit16 v0, v6, 0x600

    .line 521
    .line 522
    const/16 v1, 0x200

    .line 523
    .line 524
    if-ne v0, v1, :cond_20

    .line 525
    .line 526
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 527
    .line 528
    const-string/jumbo v1, "createVirtualDisplay()"

    .line 529
    .line 530
    .line 531
    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    if-eqz v0, :cond_1f

    .line 536
    .line 537
    goto :goto_11

    .line 538
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    .line 539
    .line 540
    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    .line 541
    .line 542
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    throw v0

    .line 546
    :cond_20
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 547
    .line 548
    .line 549
    move-result-wide v17

    .line 550
    :try_start_7
    invoke-static {v5, v4, v12}, Lcom/android/server/display/VirtualDisplayAdapter;->generateDisplayUniqueId(Ljava/lang/String;ILandroid/hardware/display/VirtualDisplayConfig;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->isHomeSupported()Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    const/4 v3, 0x5

    .line 559
    if-eqz v1, :cond_23

    .line 560
    .line 561
    and-int/lit16 v1, v6, 0x400

    .line 562
    .line 563
    if-nez v1, :cond_21

    .line 564
    .line 565
    const-string v1, "DisplayManagerService"

    .line 566
    .line 567
    const-string v2, "Display created with home support but lacks VIRTUAL_DISPLAY_FLAG_TRUSTED, ignoring the home support request."

    .line 568
    .line 569
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .line 571
    .line 572
    goto :goto_12

    .line 573
    :catchall_1
    move-exception v0

    .line 574
    goto/16 :goto_1e

    .line 575
    .line 576
    :cond_21
    and-int/lit8 v1, v6, 0x10

    .line 577
    .line 578
    if-eqz v1, :cond_22

    .line 579
    .line 580
    const-string v1, "DisplayManagerService"

    .line 581
    .line 582
    const-string v2, "Display created with home support but has VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR, ignoring the home support request."

    .line 583
    .line 584
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .line 586
    .line 587
    goto :goto_12

    .line 588
    :cond_22
    iget-object v1, v11, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 589
    .line 590
    invoke-virtual {v1, v0, v3, v9}, Lcom/android/server/wm/WindowManagerInternal;->setHomeSupportedOnDisplay(Ljava/lang/String;IZ)V

    .line 591
    .line 592
    .line 593
    :cond_23
    :goto_12
    iget-object v2, v11, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 594
    .line 595
    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 596
    move-object/from16 v1, p0

    .line 597
    .line 598
    move-object/from16 v19, v2

    .line 599
    .line 600
    move-object/from16 v2, p2

    .line 601
    .line 602
    move v12, v3

    .line 603
    move-object/from16 v3, p3

    .line 604
    .line 605
    move-object/from16 v5, p6

    .line 606
    .line 607
    move/from16 p6, v6

    .line 608
    .line 609
    move-object v6, v0

    .line 610
    move/from16 v20, v7

    .line 611
    .line 612
    move-object/from16 v7, p4

    .line 613
    .line 614
    move/from16 v21, v9

    .line 615
    .line 616
    move/from16 v9, p6

    .line 617
    .line 618
    move-object/from16 v22, v10

    .line 619
    .line 620
    move-object/from16 v10, p1

    .line 621
    .line 622
    :try_start_8
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;Landroid/companion/virtual/IVirtualDevice;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    const/4 v2, -0x1

    .line 627
    if-eq v1, v2, :cond_24

    .line 628
    .line 629
    if-eqz v14, :cond_24

    .line 630
    .line 631
    if-eqz p5, :cond_24

    .line 632
    .line 633
    iget-object v3, v11, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 634
    .line 635
    invoke-static/range {p4 .. p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 636
    .line 637
    .line 638
    move-result-object v4

    .line 639
    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 640
    .line 641
    .line 642
    const-string v3, "DisplayManagerService"

    .line 643
    .line 644
    const-string v4, "Virtual Display: successfully created virtual display"

    .line 645
    .line 646
    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    goto :goto_13

    .line 650
    :catchall_2
    move-exception v0

    .line 651
    goto/16 :goto_1d

    .line 652
    .line 653
    :cond_24
    :goto_13
    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 654
    if-ne v1, v2, :cond_25

    .line 655
    .line 656
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->isHomeSupported()Z

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    if-eqz v3, :cond_25

    .line 661
    .line 662
    move/from16 v3, p6

    .line 663
    .line 664
    and-int/lit16 v4, v3, 0x400

    .line 665
    .line 666
    if-eqz v4, :cond_26

    .line 667
    .line 668
    iget-object v4, v11, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 669
    .line 670
    invoke-virtual {v4, v0, v12}, Lcom/android/server/wm/WindowManagerInternal;->clearDisplaySettings(Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 671
    .line 672
    .line 673
    goto :goto_14

    .line 674
    :cond_25
    move/from16 v3, p6

    .line 675
    .line 676
    :cond_26
    :goto_14
    const/4 v4, 0x0

    .line 677
    if-eqz v13, :cond_29

    .line 678
    .line 679
    :try_start_a
    invoke-interface/range {p3 .. p3}, Landroid/media/projection/IMediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    if-nez v0, :cond_27

    .line 684
    .line 685
    move-object v0, v4

    .line 686
    goto :goto_15

    .line 687
    :cond_27
    invoke-interface/range {p3 .. p3}, Landroid/media/projection/IMediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    iget-object v0, v0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 692
    .line 693
    :goto_15
    invoke-interface/range {p3 .. p3}, Landroid/media/projection/IMediaProjection;->getTaskId()I

    .line 694
    .line 695
    .line 696
    move-result v5

    .line 697
    if-nez v0, :cond_28

    .line 698
    .line 699
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayIdToMirror()I

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    invoke-static {v0}, Landroid/view/ContentRecordingSession;->createDisplaySession(I)Landroid/view/ContentRecordingSession;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    goto :goto_17

    .line 708
    :catch_5
    move-exception v0

    .line 709
    goto :goto_16

    .line 710
    :cond_28
    invoke-static {v0, v5}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;

    .line 711
    .line 712
    .line 713
    move-result-object v4
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 714
    goto :goto_17

    .line 715
    :goto_16
    :try_start_b
    const-string v5, "DisplayManagerService"

    .line 716
    .line 717
    const-string v6, "Unable to retrieve the projection\'s launch cookie"

    .line 718
    .line 719
    invoke-static {v5, v6, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 720
    .line 721
    .line 722
    :cond_29
    :goto_17
    if-nez v13, :cond_2b

    .line 723
    .line 724
    and-int/lit8 v0, v3, 0x10

    .line 725
    .line 726
    if-eqz v0, :cond_2a

    .line 727
    .line 728
    goto :goto_18

    .line 729
    :cond_2a
    move/from16 v9, v16

    .line 730
    .line 731
    goto :goto_19

    .line 732
    :cond_2b
    :goto_18
    move/from16 v9, v21

    .line 733
    .line 734
    :goto_19
    if-eqz v9, :cond_2e

    .line 735
    .line 736
    if-eq v1, v2, :cond_2e

    .line 737
    .line 738
    if-eqz v4, :cond_2e

    .line 739
    .line 740
    invoke-virtual {v4, v1}, Landroid/view/ContentRecordingSession;->setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;

    .line 741
    .line 742
    .line 743
    move/from16 v3, v20

    .line 744
    .line 745
    invoke-virtual {v4, v3}, Landroid/view/ContentRecordingSession;->setWaitingForConsent(Z)Landroid/view/ContentRecordingSession;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 746
    .line 747
    .line 748
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    invoke-interface {v0, v4, v13}, Landroid/media/projection/IMediaProjectionManager;->setContentRecordingSession(Landroid/view/ContentRecordingSession;Landroid/media/projection/IMediaProjection;)Z

    .line 753
    .line 754
    .line 755
    move-result v0

    .line 756
    if-nez v0, :cond_2c

    .line 757
    .line 758
    const-string v0, "DisplayManagerService"

    .line 759
    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    .line 761
    .line 762
    move-object/from16 v4, v22

    .line 763
    .line 764
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    .line 776
    .line 777
    invoke-interface/range {p2 .. p2}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 782
    .line 783
    .line 784
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 785
    .line 786
    .line 787
    move v1, v2

    .line 788
    goto :goto_1c

    .line 789
    :catch_6
    move-exception v0

    .line 790
    goto :goto_1a

    .line 791
    :cond_2c
    if-eqz v13, :cond_2d

    .line 792
    .line 793
    :try_start_d
    const-string v0, "DisplayManagerService"

    .line 794
    .line 795
    const-string v2, "Content Recording: notifying MediaProjection of successful VirtualDisplay creation."

    .line 796
    .line 797
    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    .line 799
    .line 800
    invoke-interface {v13, v1}, Landroid/media/projection/IMediaProjection;->notifyVirtualDisplayCreated(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 801
    .line 802
    .line 803
    :cond_2d
    :try_start_e
    const-string v0, "DisplayManagerService"

    .line 804
    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .line 819
    .line 820
    goto :goto_1b

    .line 821
    :goto_1a
    const-string v2, "DisplayManagerService"

    .line 822
    .line 823
    const-string v3, "Unable to tell MediaProjectionManagerService to set the content recording session"

    .line 824
    .line 825
    invoke-static {v2, v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 826
    .line 827
    .line 828
    :cond_2e
    :goto_1b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 829
    .line 830
    .line 831
    :goto_1c
    return v1

    .line 832
    :goto_1d
    :try_start_f
    monitor-exit v19
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 833
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 834
    :goto_1e
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 835
    .line 836
    .line 837
    throw v0

    .line 838
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 839
    .line 840
    const-string/jumbo v1, "virtualDisplayConfig must not be null"

    .line 841
    .line 842
    .line 843
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    throw v0

    .line 847
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 848
    .line 849
    const-string v1, "appToken must not be null"

    .line 850
    .line 851
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    throw v0

    .line 855
    :cond_31
    new-instance v0, Ljava/lang/SecurityException;

    .line 856
    .line 857
    const-string/jumbo v1, "packageName must match the calling uid"

    .line 858
    .line 859
    .line 860
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    throw v0
.end method

.method public static -$$Nest$mdeliverDeviceEvent(ILandroid/os/Bundle;Lcom/android/server/display/DisplayManagerService;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "DisplayManagerService"

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "Delivering device event="

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p2, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    move v3, v2

    .line 39
    :goto_0
    if-ge v3, v1, :cond_0

    .line 40
    .line 41
    iget-object v4, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 42
    .line 43
    iget-object v5, p2, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_3

    .line 59
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_1
    if-ge v2, v1, :cond_1

    .line 61
    .line 62
    iget-object v0, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    :try_start_1
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 74
    .line 75
    invoke-interface {v3, p1, p0}, Landroid/hardware/display/IDisplayManagerCallback;->onDeviceEvent(Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception v3

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v5, "Failed to notify process "

    .line 83
    .line 84
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v5, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v5, " that displays changed, assuming it died."

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    .line 105
    .line 106
    .line 107
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    iget-object p0, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    throw p0
.end method

.method public static -$$Nest$mdeliverDisplayEvent(Lcom/android/server/display/DisplayManagerService;ILandroid/util/ArraySet;I)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :goto_0
    const-string v0, "DisplayManagerService"

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Delivering display event: displayId="

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", event="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, ", uids="

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string v2, ""

    .line 51
    .line 52
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    const-wide/32 v0, 0x20000

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string/jumbo v3, "deliverDisplayEvent#event="

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, ",displayId="

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v4, ", uids="

    .line 95
    .line 96
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    const-string v3, ""

    .line 108
    .line 109
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 120
    .line 121
    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 131
    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    move v3, v2

    .line 135
    :goto_3
    if-ge v3, v1, :cond_7

    .line 136
    .line 137
    if-eqz p2, :cond_5

    .line 138
    .line 139
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 140
    .line 141
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 146
    .line 147
    iget v4, v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 148
    .line 149
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_6

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    goto/16 :goto_c

    .line 162
    .line 163
    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 164
    .line 165
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 166
    .line 167
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 172
    .line 173
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_5
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-ge v2, p2, :cond_11

    .line 187
    .line 188
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    check-cast p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 195
    .line 196
    iget v0, p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 197
    .line 198
    iget v1, p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 199
    .line 200
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 201
    .line 202
    if-eqz v3, :cond_d

    .line 203
    .line 204
    const/16 v4, 0x2710

    .line 205
    .line 206
    if-ge v0, v4, :cond_8

    .line 207
    .line 208
    goto/16 :goto_9

    .line 209
    .line 210
    :cond_8
    invoke-virtual {v3, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-static {v3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    const/16 v4, 0x190

    .line 219
    .line 220
    if-lt v3, v4, :cond_d

    .line 221
    .line 222
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    .line 223
    .line 224
    if-eqz v3, :cond_9

    .line 225
    .line 226
    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mForceListenProcessId:I

    .line 227
    .line 228
    if-ne v1, v3, :cond_9

    .line 229
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string/jumbo v3, "must receive listener cause canceled override pid="

    .line 233
    .line 234
    .line 235
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    const-string v3, "DisplayManagerService"

    .line 246
    .line 247
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_9
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPendingCallbackSelfLocked:Landroid/util/SparseArray;

    .line 252
    .line 253
    monitor-enter v3

    .line 254
    :try_start_1
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mPendingCallbackSelfLocked:Landroid/util/SparseArray;

    .line 255
    .line 256
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Landroid/util/SparseArray;

    .line 261
    .line 262
    iget-object v5, p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayManagerService;->extraLogging(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-eqz v5, :cond_a

    .line 269
    .line 270
    const-string v5, "DisplayManagerService"

    .line 271
    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v7, "Uid is cached: "

    .line 278
    .line 279
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v7, ", pendingCallbacks: "

    .line 286
    .line 287
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :catchall_1
    move-exception p0

    .line 302
    goto :goto_8

    .line 303
    :cond_a
    :goto_6
    if-nez v4, :cond_b

    .line 304
    .line 305
    new-instance v4, Landroid/util/SparseArray;

    .line 306
    .line 307
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 308
    .line 309
    .line 310
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mPendingCallbackSelfLocked:Landroid/util/SparseArray;

    .line 311
    .line 312
    invoke-virtual {v5, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    :cond_b
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    check-cast v0, Lcom/android/server/display/DisplayManagerService$PendingCallback;

    .line 320
    .line 321
    if-nez v0, :cond_c

    .line 322
    .line 323
    new-instance v0, Lcom/android/server/display/DisplayManagerService$PendingCallback;

    .line 324
    .line 325
    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/display/DisplayManagerService$PendingCallback;-><init>(Lcom/android/server/display/DisplayManagerService$CallbackRecord;II)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    goto :goto_7

    .line 332
    :cond_c
    invoke-virtual {v0, p1, p3}, Lcom/android/server/display/DisplayManagerService$PendingCallback;->addDisplayEvent(II)V

    .line 333
    .line 334
    .line 335
    :goto_7
    monitor-exit v3

    .line 336
    goto :goto_b

    .line 337
    :goto_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 338
    throw p0

    .line 339
    :cond_d
    :goto_9
    invoke-virtual {p2, p1, p3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(II)Z

    .line 340
    .line 341
    .line 342
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    .line 343
    .line 344
    if-eqz p2, :cond_10

    .line 345
    .line 346
    iget p2, p0, Lcom/android/server/display/DisplayManagerService;->mForceListenProcessId:I

    .line 347
    .line 348
    if-ne p2, v1, :cond_10

    .line 349
    .line 350
    const/4 p2, 0x1

    .line 351
    if-ne p1, p2, :cond_10

    .line 352
    .line 353
    const/4 v0, 0x2

    .line 354
    if-ne p3, v0, :cond_10

    .line 355
    .line 356
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 357
    .line 358
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    if-eqz v0, :cond_e

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    goto :goto_a

    .line 369
    :cond_e
    const/4 v0, 0x0

    .line 370
    :goto_a
    if-eqz v0, :cond_f

    .line 371
    .line 372
    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 373
    .line 374
    and-int/lit16 v1, v1, 0x2000

    .line 375
    .line 376
    if-nez v1, :cond_10

    .line 377
    .line 378
    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    .line 379
    .line 380
    if-ne v0, p2, :cond_10

    .line 381
    .line 382
    :cond_f
    const/4 p2, -0x1

    .line 383
    iput p2, p0, Lcom/android/server/display/DisplayManagerService;->mForceListenProcessId:I

    .line 384
    .line 385
    :cond_10
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 386
    .line 387
    goto/16 :goto_5

    .line 388
    .line 389
    :cond_11
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :goto_c
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    throw p0
.end method

.method public static -$$Nest$mdeliverDisplayVolumeEvent(ILandroid/os/Bundle;Lcom/android/server/display/DisplayManagerService;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "DisplayManagerService"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Delivering display volume event="

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p2, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object v2, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    move v3, v2

    .line 43
    :goto_0
    if-ge v3, v1, :cond_1

    .line 44
    .line 45
    iget-object v4, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v5, p2, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    move v0, v2

    .line 66
    :goto_1
    if-ge v0, v1, :cond_2

    .line 67
    .line 68
    iget-object v3, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    :try_start_1
    iget-object v4, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 80
    .line 81
    invoke-interface {v4, p0, p1}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayVolumeEvent(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catch_0
    move-exception v4

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v6, "Failed to notify process "

    .line 89
    .line 90
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget v6, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 94
    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v6, " that displays changed, assuming it died."

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v5, v4}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    .line 111
    .line 112
    .line 113
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    iget-object p0, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 119
    .line 120
    .line 121
    iget-object p0, p2, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mVolumeController:Lcom/android/server/display/VolumeController;

    .line 124
    .line 125
    iput-object p0, p2, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    .line 126
    .line 127
    if-eqz p0, :cond_3

    .line 128
    .line 129
    const-string/jumbo p2, "minVol"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    iput p2, p0, Lcom/android/server/display/VolumeController;->mMinVolume:I

    .line 137
    .line 138
    const-string/jumbo p2, "maxVol"

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    iput p2, p0, Lcom/android/server/display/VolumeController;->mMaxVolume:I

    .line 146
    .line 147
    const-string/jumbo p2, "curVol"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    iput p2, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    .line 155
    .line 156
    const-string/jumbo p2, "isMute"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    iput-boolean p1, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    .line 164
    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string/jumbo p2, "notifyDisplayVolumeEvnet: max="

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget p2, p0, Lcom/android/server/display/VolumeController;->mMaxVolume:I

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p2, ", min="

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget p2, p0, Lcom/android/server/display/VolumeController;->mMinVolume:I

    .line 184
    .line 185
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p2, ", vol="

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget p2, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string p2, ", muted="

    .line 199
    .line 200
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget-boolean p0, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    .line 204
    .line 205
    const-string p2, "VolumeController"

    .line 206
    .line 207
    invoke-static {p2, p1, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 208
    .line 209
    .line 210
    :cond_3
    return-void

    .line 211
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    throw p0
.end method

.method public static -$$Nest$mdeliverDisplayVolumeKeyEvent(Lcom/android/server/display/DisplayManagerService;I)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "DisplayManagerService"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Delivering volume Key event="

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    move v3, v2

    .line 43
    :goto_0
    if-ge v3, v1, :cond_1

    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_3

    .line 63
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_1
    if-ge v2, v1, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    :try_start_1
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 78
    .line 79
    invoke-interface {v3, p1}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayVolumeKeyEvent(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catch_0
    move-exception v3

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v5, "Failed to notify process "

    .line 87
    .line 88
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget v5, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v5, " that displays changed, assuming it died."

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    .line 109
    .line 110
    .line 111
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    throw p0
.end method

.method public static -$$Nest$mdeliverPresentationDisplayInfoEvent(Lcom/android/server/display/DisplayManagerService;IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, v0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    .line 10
    .line 11
    iput-object p3, v0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    const/4 p3, 0x1

    .line 17
    if-ne p2, p3, :cond_0

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->addPresentationDisplay(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    if-nez p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->removePresentationDisplay(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    monitor-exit p1

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public static -$$Nest$mdumpInternal(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "  mUserDisabledHdrTypes: size="

    .line 5
    .line 6
    const-string v1, " mUserPreferredMode="

    .line 7
    .line 8
    const-string v2, "  mMinimumBrightnessCurve="

    .line 9
    .line 10
    const-string v3, "  mStableDisplaySize="

    .line 11
    .line 12
    const-string v4, "  mWifiDisplayScanRequestCount="

    .line 13
    .line 14
    const-string v5, "  mDefaultDisplayDefaultColorMode="

    .line 15
    .line 16
    const-string v6, "  mViewports="

    .line 17
    .line 18
    const-string v7, "  mPendingTraversal="

    .line 19
    .line 20
    const-string v8, "  mSafeMode="

    .line 21
    .line 22
    const-string v9, "DISPLAY MANAGER (dumpsys display)"

    .line 23
    .line 24
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 28
    .line 29
    monitor-enter v9

    .line 30
    :try_start_0
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 31
    .line 32
    new-instance v11, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-boolean v8, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    .line 38
    .line 39
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-boolean v7, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 55
    .line 56
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget v5, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    .line 89
    .line 90
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget v4, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    .line 106
    .line 107
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 123
    .line 124
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    .line 140
    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 152
    .line 153
    if-eqz v2, :cond_0

    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 161
    .line 162
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :catchall_0
    move-exception p0

    .line 174
    goto/16 :goto_d

    .line 175
    .line 176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 177
    .line 178
    .line 179
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    if-nez v1, :cond_1

    .line 183
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 190
    .line 191
    array-length v0, v0

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 203
    .line 204
    array-length v1, v0

    .line 205
    move v3, v2

    .line 206
    :goto_1
    if-ge v3, v1, :cond_1

    .line 207
    .line 208
    aget v4, v0, v3

    .line 209
    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v6, "  "

    .line 216
    .line 217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    add-int/lit8 v3, v3, 0x1

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 234
    .line 235
    if-eqz v0, :cond_2

    .line 236
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v1, "  mHdrConversionMode="

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 263
    .line 264
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    const-string v3, "Display States: size="

    .line 274
    .line 275
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    move v1, v2

    .line 289
    :goto_2
    if-ge v1, v0, :cond_3

    .line 290
    .line 291
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 292
    .line 293
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 298
    .line 299
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    .line 304
    .line 305
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    check-cast v5, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 310
    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v7, "  Display Id="

    .line 317
    .line 318
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    const-string v6, "  Display State="

    .line 337
    .line 338
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-static {v4}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string v4, "  Display Brightness="

    .line 361
    .line 362
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    iget v4, v5, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 366
    .line 367
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    const-string v4, "  Display SdrBrightness="

    .line 383
    .line 384
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    iget v4, v5, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 388
    .line 389
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    add-int/lit8 v1, v1, 0x1

    .line 400
    .line 401
    goto :goto_2

    .line 402
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .line 415
    .line 416
    const-string v3, "Display State Override Locks: size="

    .line 417
    .line 418
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    move v1, v2

    .line 432
    :goto_3
    if-ge v1, v0, :cond_4

    .line 433
    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    const-string v4, "  "

    .line 440
    .line 441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    const-string v4, ": "

    .line 448
    .line 449
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    add-int/lit8 v1, v1, 0x1

    .line 469
    .line 470
    goto :goto_3

    .line 471
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 472
    .line 473
    .line 474
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    .line 475
    .line 476
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .line 484
    .line 485
    const-string v3, "Display State Overrides: size="

    .line 486
    .line 487
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    move v1, v2

    .line 501
    :goto_4
    if-ge v1, v0, :cond_5

    .line 502
    .line 503
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    .line 504
    .line 505
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    .line 510
    .line 511
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .line 519
    .line 520
    const-string v6, "  Display Id="

    .line 521
    .line 522
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .line 539
    .line 540
    const-string v5, "  Display State Override="

    .line 541
    .line 542
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-static {v4}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    add-int/lit8 v1, v1, 0x1

    .line 560
    .line 561
    goto :goto_4

    .line 562
    :cond_5
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 563
    .line 564
    const-string v1, "    "

    .line 565
    .line 566
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 570
    .line 571
    .line 572
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 573
    .line 574
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    const-string v3, "Display Adapters: size="

    .line 581
    .line 582
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 586
    .line 587
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 588
    .line 589
    .line 590
    move-result v3

    .line 591
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 602
    .line 603
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    if-eqz v3, :cond_6

    .line 612
    .line 613
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    check-cast v3, Lcom/android/server/display/DisplayAdapter;

    .line 618
    .line 619
    new-instance v4, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .line 623
    .line 624
    const-string v5, "  "

    .line 625
    .line 626
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    iget-object v5, v3, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    .line 630
    .line 631
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v3, v0}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 642
    .line 643
    .line 644
    goto :goto_5

    .line 645
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 646
    .line 647
    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    .line 652
    .line 653
    const-string v3, "Display Devices: size="

    .line 654
    .line 655
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 659
    .line 660
    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 661
    .line 662
    check-cast v3, Ljava/util/ArrayList;

    .line 663
    .line 664
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 665
    .line 666
    .line 667
    move-result v3

    .line 668
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 679
    .line 680
    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;

    .line 681
    .line 682
    const/4 v4, 0x1

    .line 683
    invoke-direct {v3, v4, p1, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 690
    .line 691
    .line 692
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 693
    .line 694
    invoke-virtual {v0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 695
    .line 696
    .line 697
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 698
    .line 699
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 704
    .line 705
    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    .line 707
    .line 708
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    .line 710
    .line 711
    const-string v3, "Callbacks: size="

    .line 712
    .line 713
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    move v1, v2

    .line 727
    :goto_6
    if-ge v1, v0, :cond_7

    .line 728
    .line 729
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 730
    .line 731
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    check-cast v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 736
    .line 737
    new-instance v4, Ljava/lang/StringBuilder;

    .line 738
    .line 739
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    .line 741
    .line 742
    const-string v5, "  "

    .line 743
    .line 744
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    const-string v5, ": mPid="

    .line 751
    .line 752
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    iget v5, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 756
    .line 757
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    const-string v5, ", mWifiDisplayScanRequested="

    .line 761
    .line 762
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    iget-boolean v5, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 766
    .line 767
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    const-string v5, ", mWifiDisplayScanRequestedTime="

    .line 771
    .line 772
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequestedTime:Ljava/lang/String;

    .line 776
    .line 777
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v3

    .line 784
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    add-int/lit8 v1, v1, 0x1

    .line 788
    .line 789
    goto :goto_6

    .line 790
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 791
    .line 792
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 797
    .line 798
    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    const-string v3, "Display Power Controllers: size="

    .line 805
    .line 806
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    move v1, v2

    .line 820
    :goto_7
    if-ge v1, v0, :cond_8

    .line 821
    .line 822
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 823
    .line 824
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    check-cast v3, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 829
    .line 830
    check-cast v3, Lcom/android/server/display/DisplayPowerController;

    .line 831
    .line 832
    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    .line 833
    .line 834
    .line 835
    add-int/lit8 v1, v1, 0x1

    .line 836
    .line 837
    goto :goto_7

    .line 838
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 839
    .line 840
    .line 841
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 842
    .line 843
    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->dump(Ljava/io/PrintWriter;)V

    .line 844
    .line 845
    .line 846
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    .line 847
    .line 848
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 849
    .line 850
    .line 851
    move-result v0

    .line 852
    if-lez v0, :cond_9

    .line 853
    .line 854
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 855
    .line 856
    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    .line 858
    .line 859
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    .line 861
    .line 862
    const-string/jumbo v3, "mDisplayBrightnessListeners: size="

    .line 863
    .line 864
    .line 865
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    .line 879
    .line 880
    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;

    .line 881
    .line 882
    const/4 v3, 0x0

    .line 883
    invoke-direct {v1, v3, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;-><init>(ILjava/io/PrintWriter;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 887
    .line 888
    .line 889
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    .line 890
    .line 891
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 892
    .line 893
    .line 894
    move-result v0

    .line 895
    if-lez v0, :cond_a

    .line 896
    .line 897
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 898
    .line 899
    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    .line 901
    .line 902
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    .line 904
    .line 905
    const-string/jumbo v3, "mDisplayStateListenerInfo: size="

    .line 906
    .line 907
    .line 908
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    .line 922
    .line 923
    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;

    .line 924
    .line 925
    const/4 v3, 0x1

    .line 926
    invoke-direct {v1, v3, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;-><init>(ILjava/io/PrintWriter;)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 930
    .line 931
    .line 932
    :cond_a
    const-string v0, "VRR request about brightness animation:"

    .line 933
    .line 934
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    .line 938
    .line 939
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    .line 941
    .line 942
    const-string v1, "  mBrightnessAnimStarted="

    .line 943
    .line 944
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessAnimStarted:Z

    .line 948
    .line 949
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    .line 952
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    .line 960
    .line 961
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 962
    .line 963
    .line 964
    const-string v1, "  mBrightnessAnimRefreshRateToken="

    .line 965
    .line 966
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessAnimRefreshRateToken:Lcom/android/server/display/mode/RefreshRateToken;

    .line 970
    .line 971
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 972
    .line 973
    .line 974
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    .line 982
    .line 983
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 984
    .line 985
    .line 986
    move-result v0

    .line 987
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 988
    .line 989
    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    .line 991
    .line 992
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 993
    .line 994
    .line 995
    const-string v3, "HBM brightness Listener: size="

    .line 996
    .line 997
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v1

    .line 1007
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    if-lez v0, :cond_b

    .line 1011
    .line 1012
    move v1, v2

    .line 1013
    :goto_8
    if-ge v1, v0, :cond_b

    .line 1014
    .line 1015
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    .line 1016
    .line 1017
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v3

    .line 1021
    check-cast v3, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;

    .line 1022
    .line 1023
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1026
    .line 1027
    .line 1028
    const-string v5, "  "

    .line 1029
    .line 1030
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    .line 1036
    const-string v5, ": mUid="

    .line 1037
    .line 1038
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    iget v5, v3, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mUid:I

    .line 1042
    .line 1043
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    .line 1046
    const-string v5, " mPid="

    .line 1047
    .line 1048
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    .line 1051
    iget v3, v3, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mPid:I

    .line 1052
    .line 1053
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v3

    .line 1060
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    .line 1062
    .line 1063
    add-int/lit8 v1, v1, 0x1

    .line 1064
    .line 1065
    goto :goto_8

    .line 1066
    :cond_b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1067
    .line 1068
    .line 1069
    const-string v0, "MTK power throttling as per HBM"

    .line 1070
    .line 1071
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    const-string v0, "  SEC_FEATURE_ENABLE_MTK_POWER_THROTTLING=false"

    .line 1075
    .line 1076
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    .line 1083
    .line 1084
    const-string v1, "  mIsMtkPtHintExist="

    .line 1085
    .line 1086
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    .line 1103
    .line 1104
    const-string v1, "  mMtKPowerThrottling="

    .line 1105
    .line 1106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    .line 1109
    const/4 v1, 0x0

    .line 1110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v0

    .line 1117
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1121
    .line 1122
    .line 1123
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 1124
    .line 1125
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 1126
    .line 1127
    .line 1128
    move-result v0

    .line 1129
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1130
    .line 1131
    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1135
    .line 1136
    .line 1137
    const-string v3, "Display Window Policy Controllers: size="

    .line 1138
    .line 1139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v1

    .line 1149
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    :goto_9
    if-ge v2, v0, :cond_c

    .line 1153
    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1157
    .line 1158
    .line 1159
    const-string v3, "Display "

    .line 1160
    .line 1161
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    .line 1164
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 1165
    .line 1166
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1167
    .line 1168
    .line 1169
    move-result v3

    .line 1170
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    const-string v3, ":"

    .line 1174
    .line 1175
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v1

    .line 1182
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    .line 1184
    .line 1185
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 1186
    .line 1187
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v1

    .line 1191
    check-cast v1, Landroid/util/Pair;

    .line 1192
    .line 1193
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1194
    .line 1195
    check-cast v1, Landroid/window/DisplayWindowPolicyController;

    .line 1196
    .line 1197
    const-string v3, "  "

    .line 1198
    .line 1199
    invoke-virtual {v1, v3, p1}, Landroid/window/DisplayWindowPolicyController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1200
    .line 1201
    .line 1202
    add-int/lit8 v2, v2, 0x1

    .line 1203
    .line 1204
    goto :goto_9

    .line 1205
    :cond_c
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    if-eqz v10, :cond_d

    .line 1207
    .line 1208
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v10, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 1212
    .line 1213
    .line 1214
    :cond_d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1215
    .line 1216
    .line 1217
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 1218
    .line 1219
    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->dump(Ljava/io/PrintWriter;)V

    .line 1220
    .line 1221
    .line 1222
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    .line 1223
    .line 1224
    invoke-virtual {v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->dump(Ljava/io/PrintWriter;)V

    .line 1225
    .line 1226
    .line 1227
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSmallAreaDetectionController:Lcom/android/server/display/SmallAreaDetectionController;

    .line 1228
    .line 1229
    if-eqz v0, :cond_f

    .line 1230
    .line 1231
    const-string v1, "Small area detection allowlist"

    .line 1232
    .line 1233
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    const-string v1, "  Packages:"

    .line 1237
    .line 1238
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    iget-object v1, v0, Lcom/android/server/display/SmallAreaDetectionController;->mLock:Ljava/lang/Object;

    .line 1242
    .line 1243
    monitor-enter v1

    .line 1244
    :try_start_1
    iget-object v2, v0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    .line 1245
    .line 1246
    check-cast v2, Landroid/util/ArrayMap;

    .line 1247
    .line 1248
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v2

    .line 1252
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v2

    .line 1256
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1257
    .line 1258
    .line 1259
    move-result v3

    .line 1260
    if-eqz v3, :cond_e

    .line 1261
    .line 1262
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v3

    .line 1266
    check-cast v3, Ljava/lang/String;

    .line 1267
    .line 1268
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1269
    .line 1270
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1271
    .line 1272
    .line 1273
    const-string v5, "    "

    .line 1274
    .line 1275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    const-string v5, " threshold = "

    .line 1282
    .line 1283
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    .line 1285
    .line 1286
    iget-object v5, v0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    .line 1287
    .line 1288
    check-cast v5, Landroid/util/ArrayMap;

    .line 1289
    .line 1290
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v3

    .line 1294
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v3

    .line 1301
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    .line 1303
    .line 1304
    goto :goto_a

    .line 1305
    :catchall_1
    move-exception p0

    .line 1306
    goto :goto_b

    .line 1307
    :cond_e
    monitor-exit v1

    .line 1308
    goto :goto_c

    .line 1309
    :goto_b
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1310
    throw p0

    .line 1311
    :cond_f
    :goto_c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1312
    .line 1313
    .line 1314
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1315
    .line 1316
    invoke-virtual {p0, p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->dump(Ljava/io/PrintWriter;)V

    .line 1317
    .line 1318
    .line 1319
    return-void

    .line 1320
    :goto_d
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1321
    throw p0
.end method

.method public static -$$Nest$mloadBrightnessConfigurations(Lcom/android/server/display/DisplayManagerService;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 19
    .line 20
    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-direct {v3, p0, v0, v4}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/display/DisplayManagerService;II)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    invoke-virtual {v2, v3, p0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 28
    .line 29
    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public static -$$Nest$mregisterAdditionalDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    .line 5
    .line 6
    xor-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$1;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-direct {v2, v3, v1}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public static -$$Nest$mregisterCallbackInternal(IIJLandroid/hardware/display/IDisplayManagerCallback;Lcom/android/server/display/DisplayManagerService;)V
    .locals 9

    .line 1
    iget-object v0, p5, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p5, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object p0, v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v8, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 24
    .line 25
    move-object v1, v8

    .line 26
    move v2, p0

    .line 27
    move v3, p1

    .line 28
    move-wide v4, p2

    .line 29
    move-object v6, p4

    .line 30
    move-object v7, p5

    .line 31
    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(IIJLandroid/hardware/display/IDisplayManagerCallback;Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_1
    invoke-interface {p4}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-interface {p1, v8, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_2
    iget-object p1, p5, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {p1, p0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception p0

    .line 50
    new-instance p1, Ljava/lang/RuntimeException;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    throw p0
.end method

.method public static -$$Nest$mregisterDefaultDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 11
    .line 12
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 13
    .line 14
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 15
    .line 16
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter;

    .line 22
    .line 23
    new-instance v9, Lcom/android/server/display/LocalDisplayAdapter$Injector;

    .line 24
    .line 25
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    move-object v2, v1

    .line 29
    invoke-direct/range {v2 .. v9}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;Lcom/android/server/display/LocalDisplayAdapter$Injector;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter;->registerLocked()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 47
    .line 48
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 49
    .line 50
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/android/server/display/VirtualDisplayAdapter;

    .line 56
    .line 57
    new-instance v7, Lcom/android/server/display/VirtualDisplayAdapter$1;

    .line 58
    .line 59
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    move-object v2, v1

    .line 63
    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/VirtualDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 76
    .line 77
    iput-object p0, v1, Lcom/android/server/display/VirtualDisplayAdapter;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 78
    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public static -$$Nest$mregisterHbmBrightnessCallbackInternal(IILandroid/hardware/display/IHbmBrightnessCallback;Lcom/android/server/display/DisplayManagerService;)V
    .locals 4

    .line 1
    const-string v0, "[api] registerHbmBrightnessCallbackInternal: callingPid="

    .line 2
    .line 3
    const-string/jumbo v1, "registerHbmBrightnessCallbackInternal: already registered. pid="

    .line 4
    .line 5
    .line 6
    iget-object v2, p3, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    iget-object v3, p3, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const-string p2, "DisplayManagerService"

    .line 20
    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, ", uid="

    .line 30
    .line 31
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    monitor-exit v2

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const-string v1, "DisplayManagerService"

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " callingUid="

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;

    .line 74
    .line 75
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;-><init>(IILandroid/hardware/display/IHbmBrightnessCallback;Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    :try_start_1
    invoke-interface {p2}, Landroid/hardware/display/IHbmBrightnessCallback;->asBinder()Landroid/os/IBinder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 p2, 0x0

    .line 83
    invoke-interface {p1, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    :try_start_2
    iget-object p1, p3, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    monitor-exit v2

    .line 92
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception p0

    .line 94
    new-instance p1, Ljava/lang/RuntimeException;

    .line 95
    .line 96
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    throw p0
.end method

.method public static -$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    move p2, v0

    .line 8
    :cond_0
    invoke-virtual {p0, p3, p2}, Lcom/android/server/display/DisplayManagerService;->clampBrightness(FI)F

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    invoke-virtual {p0, p4, p2}, Lcom/android/server/display/DisplayManagerService;->clampBrightness(FI)F

    .line 13
    .line 14
    .line 15
    move-result p4

    .line 16
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-gez v2, :cond_1

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 36
    .line 37
    :goto_0
    if-ltz v2, :cond_f

    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 40
    .line 41
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ne v4, p2, :cond_2

    .line 46
    .line 47
    iget v4, v3, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 48
    .line 49
    cmpl-float v4, v4, p3

    .line 50
    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    iget v4, v3, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 54
    .line 55
    cmpl-float v4, v4, p4

    .line 56
    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_7

    .line 63
    .line 64
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 65
    .line 66
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const/4 v5, 0x1

    .line 71
    if-eq v4, p2, :cond_4

    .line 72
    .line 73
    if-eq p2, v0, :cond_3

    .line 74
    .line 75
    if-ne p2, v5, :cond_4

    .line 76
    .line 77
    :cond_3
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v0, v4}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    const/4 v0, 0x0

    .line 85
    if-nez p1, :cond_8

    .line 86
    .line 87
    iget v4, v3, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 88
    .line 89
    cmpl-float v4, v4, p3

    .line 90
    .line 91
    if-eqz v4, :cond_8

    .line 92
    .line 93
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-nez v4, :cond_5

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_5
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    .line 103
    .line 104
    if-eqz v4, :cond_7

    .line 105
    .line 106
    const/high16 v4, 0x42c80000    # 100.0f

    .line 107
    .line 108
    rem-float v6, p3, v4

    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    cmpl-float v6, v6, v7

    .line 112
    .line 113
    if-eqz v6, :cond_6

    .line 114
    .line 115
    move v4, p3

    .line 116
    move v6, v5

    .line 117
    goto :goto_2

    .line 118
    :cond_6
    div-float v4, p3, v4

    .line 119
    .line 120
    :goto_1
    move v6, v0

    .line 121
    goto :goto_2

    .line 122
    :cond_7
    move v4, p3

    .line 123
    goto :goto_1

    .line 124
    :goto_2
    if-nez v6, :cond_8

    .line 125
    .line 126
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_8

    .line 137
    .line 138
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    .line 143
    .line 144
    invoke-interface {v7, v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;->onChanged(F)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_8
    :goto_4
    if-nez p1, :cond_a

    .line 149
    .line 150
    iget-boolean v4, p0, Lcom/android/server/display/DisplayManagerService;->mIsHbmEnabled:Z

    .line 151
    .line 152
    const/high16 v6, 0x3f800000    # 1.0f

    .line 153
    .line 154
    cmpl-float v6, p3, v6

    .line 155
    .line 156
    if-lez v6, :cond_9

    .line 157
    .line 158
    move v0, v5

    .line 159
    :cond_9
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mIsHbmEnabled:Z

    .line 160
    .line 161
    if-eq v4, v0, :cond_a

    .line 162
    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayHbmBrightnessEventLocked(IZ)V

    .line 164
    .line 165
    .line 166
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eq v0, p2, :cond_b

    .line 173
    .line 174
    const-string v0, "DisplayManagerService"

    .line 175
    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v6, "!@display_state requestDisplayStateInternal: "

    .line 182
    .line 183
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 187
    .line 188
    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    invoke-static {v6}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v6, " -> "

    .line 200
    .line 201
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v6, " displayId="

    .line 212
    .line 213
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-static {v0, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    :cond_b
    const-wide/32 v6, 0x20000

    .line 227
    .line 228
    .line 229
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_c

    .line 234
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v4, ", brightness="

    .line 248
    .line 249
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v4, ", sdrBrightness="

    .line 256
    .line 257
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string/jumbo v8, "requestDisplayStateInternal:"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-static {v6, v7, v4, v0, p1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 289
    .line 290
    invoke-virtual {v0, v2, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 291
    .line 292
    .line 293
    iput p3, v3, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 294
    .line 295
    iput p4, v3, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 296
    .line 297
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 298
    .line 299
    invoke-virtual {p3, p1, v5}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 300
    .line 301
    .line 302
    move-result-object p3

    .line 303
    iget-boolean p4, p3, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 304
    .line 305
    if-nez p4, :cond_d

    .line 306
    .line 307
    if-eq p2, v5, :cond_d

    .line 308
    .line 309
    monitor-exit v1

    .line 310
    goto :goto_6

    .line 311
    :cond_d
    iget-object p2, p3, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 312
    .line 313
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    if-eqz p2, :cond_e

    .line 322
    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    const-string/jumbo p3, "requestDisplayStateInternal:"

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    invoke-static {v6, v7, p2, p1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 342
    .line 343
    .line 344
    :cond_e
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    if-eqz p0, :cond_10

    .line 346
    .line 347
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 348
    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_f
    :goto_5
    :try_start_1
    monitor-exit v1

    .line 352
    :cond_10
    :goto_6
    return-void

    .line 353
    :goto_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    throw p0
.end method

.method public static -$$Nest$mrotateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, v1, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 35
    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 38
    .line 39
    const-string v0, "HiddenDisplay"

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerInternal;->freezeDisplayRotation(IILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
.end method

.method public static -$$Nest$msetAreUserDisabledHdrTypesAllowedInternal(Lcom/android/server/display/DisplayManagerService;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 5
    .line 6
    if-ne v1, p1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 15
    .line 16
    array-length v1, v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "are_user_disabled_hdr_formats_allowed"

    .line 28
    .line 29
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    new-array p1, p1, [I

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 40
    .line 41
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 42
    .line 43
    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayManagerService;[II)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    invoke-virtual {v1, v2, p0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    :goto_0
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public static -$$Nest$msetBrightnessConfigurationForUserWithStatsInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 18
    .line 19
    .line 20
    iget-object v2, v1, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 21
    .line 22
    invoke-static {v2, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const/4 p3, 0x1

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    iput-boolean p3, v1, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v2, p4, p5, p6}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveHistory(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    .line 34
    :try_start_1
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 47
    .line 48
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 49
    .line 50
    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_0

    .line 57
    :catchall_1
    move-exception p1

    .line 58
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0
.end method

.method public static -$$Nest$msetDisplayStateOverrideInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v4

    .line 8
    new-instance v7, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mRequestDisplayStateLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v8

    .line 16
    :try_start_0
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 17
    .line 18
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    move v6, v1

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_0
    move v6, v10

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    move v1, v10

    .line 42
    :goto_1
    if-ge v1, v0, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLock:Landroid/os/IBinder;

    .line 53
    .line 54
    if-ne v2, p1, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v1, -0x1

    .line 61
    :goto_2
    if-gez v1, :cond_4

    .line 62
    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    const-string p0, "DisplayManagerService"

    .line 66
    .line 67
    const-string/jumbo p1, "setDisplayStateOverrideInternal: sameRequest: unknown"

    .line 68
    .line 69
    .line 70
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :catchall_1
    move-exception p0

    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_3
    :try_start_3
    new-instance v11, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    .line 81
    .line 82
    move-object v0, v11

    .line 83
    move-object v1, p0

    .line 84
    move-object v2, p1

    .line 85
    move v3, p2

    .line 86
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;IJI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .line 88
    .line 89
    :try_start_4
    invoke-interface {p1, v11, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    .line 91
    .line 92
    :try_start_5
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string p1, "DisplayStateOverrideLock is already dead."

    .line 101
    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_4
    if-nez p2, :cond_5

    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    .line 121
    .line 122
    iget p1, p1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedState:I

    .line 123
    .line 124
    if-eq p2, p1, :cond_6

    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    .line 133
    .line 134
    iput p2, p1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedState:I

    .line 135
    .line 136
    :goto_3
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 137
    .line 138
    new-instance p2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;

    .line 139
    .line 140
    const/4 v0, 0x0

    .line 141
    invoke-direct {p2, v0, p0, v7}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 145
    .line 146
    .line 147
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    :try_start_6
    new-instance p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

    .line 149
    .line 150
    const/4 p1, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 155
    .line 156
    .line 157
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 158
    goto :goto_4

    .line 159
    :cond_6
    :try_start_7
    const-string p0, "DisplayManagerService"

    .line 160
    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string/jumbo v0, "setDisplayStateOverrideInternal: sameRequest: "

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 187
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 188
    :goto_4
    return-void

    .line 189
    :goto_5
    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 190
    :try_start_a
    throw p0

    .line 191
    :goto_6
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 192
    throw p0
.end method

.method public static -$$Nest$msetDisplayStateOverrideWithDisplayIdInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;II)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v4

    .line 8
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mRequestDisplayStateLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v7

    .line 11
    :try_start_0
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 12
    .line 13
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v9, 0x0

    .line 21
    move v1, v9

    .line 22
    :goto_0
    if-ge v1, v0, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLock:Landroid/os/IBinder;

    .line 33
    .line 34
    if-ne v2, p1, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    .line 43
    .line 44
    iget v2, v2, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mDisplayId:I

    .line 45
    .line 46
    if-ne v2, p3, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, -0x1

    .line 53
    :goto_1
    if-gez v1, :cond_3

    .line 54
    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    const-string p0, "DisplayManagerService"

    .line 58
    .line 59
    const-string/jumbo p1, "setDisplayStateOverrideWithDisplayIdInternal: sameRequest: unknown"

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :catchall_1
    move-exception p0

    .line 73
    goto/16 :goto_5

    .line 74
    .line 75
    :cond_2
    :try_start_3
    new-instance v10, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    .line 76
    .line 77
    move-object v0, v10

    .line 78
    move-object v1, p0

    .line 79
    move-object v2, p1

    .line 80
    move v3, p2

    .line 81
    move v6, p3

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;IJI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    .line 84
    .line 85
    :try_start_4
    invoke-interface {p1, v10, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    .line 87
    .line 88
    :try_start_5
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    const-string p1, "DisplayStateOverrideLock is already dead."

    .line 97
    .line 98
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_3
    if-nez p2, :cond_4

    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    .line 117
    .line 118
    iget p1, p1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedState:I

    .line 119
    .line 120
    if-eq p2, p1, :cond_7

    .line 121
    .line 122
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    .line 129
    .line 130
    iput p2, p1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedState:I

    .line 131
    .line 132
    :goto_2
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 133
    .line 134
    const/4 p2, 0x1

    .line 135
    invoke-virtual {p1, p3, p2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 142
    .line 143
    if-eqz p1, :cond_5

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    goto :goto_3

    .line 150
    :cond_5
    const/4 p0, 0x0

    .line 151
    :goto_3
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 152
    if-eqz p0, :cond_6

    .line 153
    .line 154
    :try_start_6
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 155
    .line 156
    .line 157
    :cond_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 158
    goto :goto_4

    .line 159
    :cond_7
    :try_start_7
    const-string p0, "DisplayManagerService"

    .line 160
    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string/jumbo p3, "setDisplayStateOverrideWithDisplayIdInternal: sameRequest: "

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 187
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 188
    :goto_4
    return-void

    .line 189
    :goto_5
    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 190
    :try_start_a
    throw p0

    .line 191
    :goto_6
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 192
    throw p0
.end method

.method public static -$$Nest$msetUserDisabledHdrTypesInternal(Lcom/android/server/display/DisplayManagerService;[I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string p0, "DisplayManagerService"

    .line 7
    .line 8
    const-string p1, "Null is not an expected argument to setUserDisabledHdrTypesInternal"

    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    goto :goto_1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    sget-object v1, Landroid/view/Display$HdrCapabilities;->HDR_TYPES:[I

    .line 18
    .line 19
    array-length v2, p1

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_2

    .line 22
    .line 23
    aget v4, p1, v3

    .line 24
    .line 25
    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([II)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-gez v4, :cond_1

    .line 30
    .line 31
    const-string p0, "DisplayManagerService"

    .line 32
    .line 33
    const-string/jumbo p1, "userDisabledHdrTypes contains unexpected types"

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 48
    .line 49
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const-string v1, ""

    .line 58
    .line 59
    array-length v2, p1

    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    const-string v1, ","

    .line 63
    .line 64
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-string/jumbo v3, "user_disabled_hdr_formats"

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 93
    .line 94
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 95
    .line 96
    if-nez v1, :cond_5

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 99
    .line 100
    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayManagerService;[II)V

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x1

    .line 107
    invoke-virtual {v1, v2, p0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 108
    .line 109
    .line 110
    :cond_5
    monitor-exit v0

    .line 111
    :goto_1
    return-void

    .line 112
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0
.end method

.method public static -$$Nest$msetVirtualDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    .line 23
    .line 24
    if-eq p1, p2, :cond_1

    .line 25
    .line 26
    iput-boolean p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 32
    .line 33
    const/4 p2, 0x2

    .line 34
    invoke-virtual {p1, p0, p2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    monitor-exit v0

    .line 38
    :goto_0
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public static -$$Nest$msetVirtualDisplaySurfaceInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Update surface for VirtualDisplay "

    .line 25
    .line 26
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v1, "VirtualDisplayAdapter"

    .line 39
    .line 40
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    monitor-exit v0

    .line 47
    :goto_0
    return-void

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public static -$$Nest$mstartWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;II)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string p1, "The calling process has not registered an IDisplayManagerCallback."

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "DisplayManagerService"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    sput-object v1, Lcom/android/server/display/DisplayManagerService;->EMPTY_ARRAY:[I

    .line 13
    .line 14
    new-instance v1, Landroid/hardware/display/HdrConversionMode;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/display/DisplayManagerService;->HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mUidImportanceListener:Lcom/android/server/display/DisplayManagerService$UidImportanceListener;

    const/4 v11, 0x0

    .line 4
    new-array v1, v11, [I

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    const/4 v12, 0x1

    .line 5
    iput-boolean v12, v0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    const/4 v13, 0x0

    .line 6
    iput-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 7
    iput-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mOverrideHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    const/4 v14, -0x1

    .line 8
    iput v14, v0, Lcom/android/server/display/DisplayManagerService;->mSystemPreferredHdrOutputType:I

    .line 9
    new-instance v7, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 10
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v7, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 12
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 13
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 14
    new-instance v1, Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    invoke-direct {v1}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 19
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mRequestDisplayStateLock:Ljava/lang/Object;

    .line 20
    new-instance v1, Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService$1;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBlanker:Lcom/android/server/display/DisplayManagerService$1;

    .line 21
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 22
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    .line 23
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    .line 24
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 26
    new-instance v1, Lcom/android/server/display/PersistentDataStore;

    .line 27
    new-instance v2, Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-direct {v2}, Lcom/android/server/display/PersistentDataStore$Injector;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/server/display/PersistentDataStore;-><init>(Lcom/android/server/display/PersistentDataStore$Injector;)V

    .line 28
    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 30
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mPendingCallbackSelfLocked:Landroid/util/SparseArray;

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    .line 32
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 33
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    .line 34
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd, HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 35
    iput-boolean v11, v0, Lcom/android/server/display/DisplayManagerService;->mBootCompleted:Z

    .line 36
    new-instance v2, Lcom/android/server/display/DisplayManagerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/display/DisplayManagerService$2;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mIdleModeReceiver:Lcom/android/server/display/DisplayManagerService$2;

    .line 37
    new-instance v2, Lcom/android/server/display/DisplayManagerService$2;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/server/display/DisplayManagerService$2;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mResolutionRestoreReceiver:Lcom/android/server/display/DisplayManagerService$2;

    .line 38
    new-instance v2, Lcom/android/server/display/DisplayManagerService$2;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/android/server/display/DisplayManagerService$2;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mRotationChangeReceiver:Lcom/android/server/display/DisplayManagerService$2;

    .line 39
    new-instance v15, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v15, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 41
    iput v14, v0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    .line 44
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    .line 45
    iput v14, v0, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    .line 46
    iput-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessAnimRefreshRateToken:Lcom/android/server/display/mode/RefreshRateToken;

    .line 47
    iput v14, v0, Lcom/android/server/display/DisplayManagerService;->mForceListenProcessId:I

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 49
    new-instance v3, Lcom/android/server/utils/FoldSettingProvider;

    new-instance v2, Lcom/android/internal/util/SettingsWrapper;

    invoke-direct {v2}, Lcom/android/internal/util/SettingsWrapper;-><init>()V

    new-instance v4, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v3, v10, v2, v4}, Lcom/android/server/utils/FoldSettingProvider;-><init>(Landroid/content/Context;Lcom/android/internal/util/SettingsWrapper;Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;)V

    move-object/from16 v2, p2

    .line 51
    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 52
    iput-object v10, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    new-instance v9, Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct {v9}, Lcom/android/server/display/feature/DisplayManagerFlags;-><init>()V

    .line 55
    iput-object v9, v0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 56
    new-instance v8, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 57
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 58
    new-instance v6, Lcom/android/server/display/DisplayDeviceRepository;

    invoke-direct {v6, v7, v1}, Lcom/android/server/display/DisplayDeviceRepository;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v6, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 59
    new-instance v5, Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v4, Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-direct {v4}, Lcom/android/internal/foldables/FoldGracePeriodProvider;-><init>()V

    new-instance v2, Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayManagerService$1;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    move-object v1, v5

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move-object v13, v5

    move-object v5, v6

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    move-object/from16 p2, v8

    move-object/from16 v18, v9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/LogicalDisplayMapper;-><init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/internal/foldables/FoldGracePeriodProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/DisplayManagerService$1;Lcom/android/server/display/DisplayManagerService$SyncRoot;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 60
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector;

    move-object/from16 v3, p2

    move-object/from16 v2, v18

    invoke-direct {v1, v10, v3, v2, v15}, Lcom/android/server/display/mode/DisplayModeDirector;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 61
    new-instance v1, Lcom/android/internal/display/BrightnessSynchronizer;

    .line 62
    iget-object v4, v2, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessIntRangeUserPerceptionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 63
    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v4

    .line 64
    invoke-direct {v1, v10, v4}, Lcom/android/internal/display/BrightnessSynchronizer;-><init>(Landroid/content/Context;Z)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e006f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    .line 67
    const-string/jumbo v4, "persist.sys.displayinset.top"

    invoke-static {v4, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111016d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v12

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    .line 69
    :goto_0
    iput v4, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultHdrConversionMode:I

    const v4, 0x1070122

    .line 70
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 71
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    .line 72
    new-array v6, v5, [F

    move v7, v11

    :goto_1
    const/high16 v8, 0x7fc00000    # Float.NaN

    if-ge v7, v5, :cond_1

    .line 73
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const v4, 0x1070123

    .line 75
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    .line 77
    new-array v5, v4, [F

    move v7, v11

    :goto_2
    if-ge v7, v4, :cond_2

    .line 78
    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    aput v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    new-instance v1, Landroid/hardware/display/Curve;

    invoke-direct {v1, v6, v5}, Landroid/hardware/display/Curve;-><init>([F[F)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    .line 81
    invoke-static {v6, v5}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    .line 82
    iput v11, v0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 83
    invoke-static {}, Landroid/view/SurfaceControl;->getCompositionColorSpaces()[Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 84
    aget-object v1, v1, v12

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    .line 85
    invoke-static {}, Landroid/view/SurfaceControl;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mOverlayProperties:Landroid/hardware/OverlayProperties;

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10e013b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0137

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 88
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v1, v4

    iput v1, v0, Lcom/android/server/display/DisplayManagerService;->mScreenExtendedBrightnessRangeMaximum:F

    .line 89
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v10, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const v4, 0x30000006

    .line 90
    const-string v5, "DisplayDeviceRepository.mHDMIWakeLock"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    move-object/from16 v4, v19

    iput-object v1, v4, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 91
    iput-boolean v11, v0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 92
    new-instance v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    sget-object v4, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    invoke-direct {v1, v4}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 93
    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_vri_package()Ljava/util/Optional;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayLoggingPackageName:Ljava/lang/String;

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v12

    iput-boolean v1, v0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    .line 95
    new-instance v1, Lcom/android/server/display/ExternalDisplayStatsService;

    .line 96
    new-instance v4, Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    invoke-direct {v4, v10, v3}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;)V

    invoke-direct {v1, v4}, Lcom/android/server/display/ExternalDisplayStatsService;-><init>(Lcom/android/server/display/ExternalDisplayStatsService$Injector;)V

    .line 97
    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 98
    new-instance v3, Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 99
    new-instance v4, Lcom/android/server/display/notifications/DisplayNotificationManager$1;

    invoke-direct {v4, v10, v2, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager$1;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/ExternalDisplayStatsService;)V

    invoke-direct {v3, v2, v10, v4}, Lcom/android/server/display/notifications/DisplayNotificationManager;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;)V

    .line 100
    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 101
    new-instance v1, Lcom/android/server/display/ExternalDisplayPolicy;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayManagerService$1;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-direct {v1, v2}, Lcom/android/server/display/ExternalDisplayPolicy;-><init>(Lcom/android/server/display/DisplayManagerService$1;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create DisplayManagerService took to complete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Display "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p0, " does not support input device matching."

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v0, "DisplayManagerService"

    .line 54
    .line 55
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :goto_1
    return-object p0
.end method


# virtual methods
.method public final addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/DisplayPowerController;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget v1, v15, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcom/android/server/display/BrightnessTracker;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 27
    .line 28
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    new-instance v9, Lcom/android/server/display/BrightnessSetting;

    .line 43
    .line 44
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 45
    .line 46
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 47
    .line 48
    invoke-direct {v9, v1, v2, v15, v3}, Lcom/android/server/display/BrightnessSetting;-><init>(ILcom/android/server/display/PersistentDataStore;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayManagerService$SyncRoot;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    .line 52
    .line 53
    invoke-virtual {v1, v15}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    new-instance v14, Lcom/android/server/display/DisplayPowerController;

    .line 58
    .line 59
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 62
    .line 63
    iget-object v4, v0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    .line 64
    .line 65
    iget-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 66
    .line 67
    iget-object v8, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 68
    .line 69
    new-instance v10, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-direct {v10, v0, v15, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;I)V

    .line 73
    .line 74
    .line 75
    iget-boolean v12, v0, Lcom/android/server/display/DisplayManagerService;->mBootCompleted:Z

    .line 76
    .line 77
    new-instance v13, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-direct {v13, v0, v15, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;I)V

    .line 81
    .line 82
    .line 83
    new-instance v7, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    .line 84
    .line 85
    invoke-direct {v7, v0, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 86
    .line 87
    .line 88
    iget-object v6, v0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBlanker:Lcom/android/server/display/DisplayManagerService$1;

    .line 91
    .line 92
    move-object/from16 v16, v1

    .line 93
    .line 94
    move-object v1, v14

    .line 95
    move-object/from16 v17, v6

    .line 96
    .line 97
    move-object/from16 v6, v16

    .line 98
    .line 99
    move-object/from16 v16, v7

    .line 100
    .line 101
    move-object/from16 v7, p1

    .line 102
    .line 103
    move-object/from16 v18, v13

    .line 104
    .line 105
    move-object/from16 v13, v17

    .line 106
    .line 107
    move-object/from16 v19, v14

    .line 108
    .line 109
    move-object/from16 v14, v18

    .line 110
    .line 111
    move-object/from16 v15, v16

    .line 112
    .line 113
    invoke-direct/range {v1 .. v15}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 117
    .line 118
    move-object/from16 v1, p1

    .line 119
    .line 120
    iget v1, v1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 121
    .line 122
    move-object/from16 v2, v19

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    return-object v2
.end method

.method public final addPresentationDisplay(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "DisplayManagerService"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "Presentation has been added already"

    .line 12
    .line 13
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Failed to add presentation("

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v0, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", "

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, ")"

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/4 v0, 0x1

    .line 67
    if-ne p1, v0, :cond_2

    .line 68
    .line 69
    new-instance p1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;

    .line 70
    .line 71
    const/4 v0, 0x3

    .line 72
    invoke-direct {p1, p0, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public final applyDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 7

    .line 1
    iget v0, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget v3, p1, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 23
    .line 24
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 30
    .line 31
    if-nez v6, :cond_0

    .line 32
    .line 33
    if-ne v0, v5, :cond_0

    .line 34
    .line 35
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    .line 36
    .line 37
    const/4 v6, -0x1

    .line 38
    if-ne v0, v6, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v1, v3

    .line 42
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerControllerInterface;I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    .line 60
    .line 61
    if-ne p1, v5, :cond_2

    .line 62
    .line 63
    :cond_1
    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    .line 64
    .line 65
    check-cast v2, Lcom/android/server/display/DisplayPowerController;

    .line 66
    .line 67
    invoke-virtual {v2, v0, v1, p0}, Lcom/android/server/display/DisplayPowerController;->onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;II)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public final checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const-string p0, "Permission Denial: "

    .line 12
    .line 13
    const-string v0, " from pid="

    .line 14
    .line 15
    invoke-static {p0, p2, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, ", uid="

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, " requires "

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "DisplayManagerService"

    .line 51
    .line 52
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public final clampBrightness(FI)F
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    cmpl-float p2, p1, v1

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    cmpg-float p2, p1, p2

    .line 14
    .line 15
    if-gez p2, :cond_1

    .line 16
    .line 17
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mScreenExtendedBrightnessRangeMaximum:F

    .line 21
    .line 22
    cmpl-float p2, p1, p0

    .line 23
    .line 24
    if-lez p2, :cond_2

    .line 25
    .line 26
    move p1, p0

    .line 27
    :cond_2
    :goto_0
    return p1
.end method

.method public final clearUserDisabledHdrTypesLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    new-array v1, v1, [I

    .line 6
    .line 7
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string/jumbo v1, "user_disabled_hdr_formats"

    .line 16
    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final configurePreferredDisplayModeLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    .line 29
    .line 30
    iget v3, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    .line 31
    .line 32
    iget v2, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    .line 33
    .line 34
    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 38
    .line 39
    if-eqz p1, :cond_5

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    iget-object v3, p1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, v3, v0}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-nez p0, :cond_4

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    iget v2, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    .line 58
    .line 59
    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_6

    .line 66
    .line 67
    return-void

    .line 68
    :cond_6
    new-instance p0, Landroid/view/Display$Mode$Builder;

    .line 69
    .line 70
    invoke-direct {p0}, Landroid/view/Display$Mode$Builder;-><init>()V

    .line 71
    .line 72
    .line 73
    if-eqz v1, :cond_7

    .line 74
    .line 75
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 76
    .line 77
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 78
    .line 79
    invoke-virtual {p0, v0, v1}, Landroid/view/Display$Mode$Builder;->setResolution(II)Landroid/view/Display$Mode$Builder;

    .line 80
    .line 81
    .line 82
    :cond_7
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_8

    .line 87
    .line 88
    invoke-virtual {p0, v2}, Landroid/view/Display$Mode$Builder;->setRefreshRate(F)Landroid/view/Display$Mode$Builder;

    .line 89
    .line 90
    .line 91
    :cond_8
    invoke-virtual {p0}, Landroid/view/Display$Mode$Builder;->build()Landroid/view/Display$Mode;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;Landroid/companion/virtual/IVirtualDevice;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 6
    .line 7
    const/4 v15, -0x1

    .line 8
    const-string v14, "DisplayManagerService"

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const-string v0, "Rejecting request to create private virtual display because the virtual display adapter is not available."

    .line 13
    .line 14
    invoke-static {v14, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v15

    .line 18
    :cond_0
    const/4 v13, 0x0

    .line 19
    invoke-virtual {v1, v13}, Lcom/android/server/display/DisplayManagerService;->getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iput-object v3, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mDefaultDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 24
    .line 25
    const-string v2, "Virtual Display: creating DisplayDevice with VirtualDisplayAdapter"

    .line 26
    .line 27
    invoke-static {v14, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v12, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 31
    .line 32
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-interface/range {p1 .. p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    iget-object v2, v12, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v10, 0x1

    .line 46
    const/16 v16, 0x0

    .line 47
    .line 48
    const-string v9, "VirtualDisplayAdapter"

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    const-string v0, "Can\'t create virtual display, display with same appToken already exists"

    .line 53
    .line 54
    invoke-static {v9, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-object/from16 v18, v14

    .line 58
    .line 59
    :goto_0
    move-object/from16 v15, v16

    .line 60
    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_1
    invoke-virtual/range {p9 .. p9}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    and-int/lit8 v3, p8, 0x4

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    move v3, v10

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v3, v13

    .line 74
    :goto_1
    iget-object v4, v12, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    .line 75
    .line 76
    invoke-virtual/range {p9 .. p9}, Landroid/hardware/display/VirtualDisplayConfig;->getRequestedRefreshRate()F

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    move-object/from16 v8, p5

    .line 81
    .line 82
    invoke-interface {v4, v2, v3, v8, v5}, Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;->createDisplay(Ljava/lang/String;ZLjava/lang/String;F)Landroid/os/IBinder;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    new-instance v2, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;

    .line 89
    .line 90
    invoke-direct {v2, v12, v11}, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    .line 91
    .line 92
    .line 93
    move-object v7, v2

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move-object/from16 v7, v16

    .line 96
    .line 97
    :goto_2
    new-instance v6, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 98
    .line 99
    new-instance v5, Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 100
    .line 101
    iget-object v2, v12, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 102
    .line 103
    move-object/from16 v3, p1

    .line 104
    .line 105
    invoke-direct {v5, v3, v2}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;-><init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V

    .line 106
    .line 107
    .line 108
    move-object v2, v6

    .line 109
    move-object v3, v12

    .line 110
    move-object/from16 v17, v5

    .line 111
    .line 112
    move-object v5, v11

    .line 113
    move-object v15, v6

    .line 114
    move/from16 v6, p3

    .line 115
    .line 116
    move-object/from16 p3, v7

    .line 117
    .line 118
    move-object/from16 v7, p4

    .line 119
    .line 120
    move-object/from16 v8, p7

    .line 121
    .line 122
    move-object v1, v9

    .line 123
    move/from16 v9, p8

    .line 124
    .line 125
    move-object/from16 v10, v17

    .line 126
    .line 127
    move-object/from16 v17, v1

    .line 128
    .line 129
    move-object v1, v11

    .line 130
    move-object/from16 v11, p2

    .line 131
    .line 132
    move-object/from16 p4, v1

    .line 133
    .line 134
    move-object v1, v12

    .line 135
    move-object/from16 v12, p3

    .line 136
    .line 137
    move-object/from16 v13, p5

    .line 138
    .line 139
    move-object/from16 v18, v14

    .line 140
    .line 141
    move-object/from16 v14, p9

    .line 142
    .line 143
    invoke-direct/range {v2 .. v14}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Landroid/media/projection/IMediaProjection;Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;Ljava/lang/String;Landroid/hardware/display/VirtualDisplayConfig;)V

    .line 144
    .line 145
    .line 146
    iget-object v2, v1, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 147
    .line 148
    move-object/from16 v3, p4

    .line 149
    .line 150
    invoke-virtual {v2, v3, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    move-object/from16 v2, p3

    .line 156
    .line 157
    :try_start_0
    invoke-interface {v0, v2}, Landroid/media/projection/IMediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 158
    .line 159
    .line 160
    const-string v0, "Virtual Display: registered media projection callback for new VirtualDisplayDevice"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    .line 162
    move-object/from16 v2, v17

    .line 163
    .line 164
    :try_start_1
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .line 166
    .line 167
    :goto_3
    const/4 v4, 0x0

    .line 168
    goto :goto_5

    .line 169
    :catch_0
    move-exception v0

    .line 170
    :goto_4
    const/4 v4, 0x0

    .line 171
    goto :goto_6

    .line 172
    :catch_1
    move-exception v0

    .line 173
    move-object/from16 v2, v17

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_4
    move-object/from16 v2, v17

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :goto_5
    :try_start_2
    invoke-interface {v3, v15, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 180
    .line 181
    .line 182
    goto :goto_7

    .line 183
    :catch_2
    move-exception v0

    .line 184
    :goto_6
    const-string v5, "Virtual Display: error while setting up VirtualDisplayDevice"

    .line 185
    .line 186
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .line 188
    .line 189
    iget-object v0, v1, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 190
    .line 191
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v15, v4}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :goto_7
    if-nez v15, :cond_5

    .line 200
    .line 201
    const-string v0, "Virtual Display: VirtualDisplayAdapter failed to create DisplayDevice"

    .line 202
    .line 203
    move-object/from16 v1, v18

    .line 204
    .line 205
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    :goto_8
    const/4 v1, -0x1

    .line 209
    return v1

    .line 210
    :cond_5
    move-object/from16 v1, v18

    .line 211
    .line 212
    const v0, 0x8000

    .line 213
    .line 214
    .line 215
    and-int v0, p8, v0

    .line 216
    .line 217
    move-object/from16 v2, p0

    .line 218
    .line 219
    iget-object v3, v2, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 220
    .line 221
    if-eqz v0, :cond_7

    .line 222
    .line 223
    if-eqz p6, :cond_6

    .line 224
    .line 225
    :try_start_3
    invoke-interface/range {p6 .. p6}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    iget-object v4, v3, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    .line 230
    .line 231
    iget-object v5, v15, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 238
    .line 239
    .line 240
    goto :goto_9

    .line 241
    :catch_3
    move-exception v0

    .line 242
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 243
    .line 244
    .line 245
    goto :goto_9

    .line 246
    :cond_6
    const-string v0, "Display created with VIRTUAL_DISPLAY_FLAG_DEVICE_DISPLAY_GROUP set, but no virtual device. The display will not be added to a device display group."

    .line 247
    .line 248
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    :cond_7
    :goto_9
    iget-object v0, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 252
    .line 253
    const/4 v4, 0x1

    .line 254
    invoke-virtual {v0, v15, v4}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v15}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    if-eqz v3, :cond_8

    .line 262
    .line 263
    iget v0, v3, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 264
    .line 265
    return v0

    .line 266
    :cond_8
    const-string v3, "Rejecting request to create virtual display because the logical display was not created."

    .line 267
    .line 268
    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    iget-object v1, v2, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 272
    .line 273
    invoke-interface/range {p1 .. p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 278
    .line 279
    .line 280
    const/4 v1, 0x3

    .line 281
    invoke-virtual {v0, v15, v1}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    .line 282
    .line 283
    .line 284
    goto :goto_8
.end method

.method public final enableConnectedDisplay(IZ)V
    .locals 4

    .line 1
    const-string/jumbo v0, "enableConnectedDisplay: Can not find displayId="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string p0, "DisplayManagerService"

    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-static {v2}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 43
    .line 44
    invoke-virtual {p0, v2, p2}, Lcom/android/server/display/ExternalDisplayPolicy;->setExternalDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 49
    .line 50
    invoke-virtual {p0, v2, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 51
    .line 52
    .line 53
    :goto_0
    monitor-exit v1

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public final extraLogging(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayLoggingPackageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final getAmbientBrightnessInfo(F)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 12
    .line 13
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->getAmbientBrightnessInfo(F)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final getBrightnessConfigForDisplayWithPdsFallbackLocked(ILjava/lang/String;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/hardware/display/BrightnessConfiguration;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p2, 0x0

    .line 28
    :goto_0
    if-nez p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    move-object p2, p0

    .line 42
    check-cast p2, Landroid/hardware/display/BrightnessConfiguration;

    .line 43
    .line 44
    :cond_1
    return-object p2
.end method

.method public final getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 13
    .line 14
    :goto_0
    return-object p0
.end method

.method public getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public getDisplayDeviceRepository()Lcom/android/server/display/DisplayDeviceRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDisplayHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDisplayInfoForFrameRateOverride(Lcom/android/server/display/LogicalDisplay;I)Landroid/view/DisplayInfo;
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iput p0, v1, Landroid/view/DisplayInfo;->refreshRateMode:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_0
    :goto_0
    iget p0, v1, Landroid/view/DisplayInfo;->renderFrameRate:F

    .line 36
    .line 37
    array-length v2, v0

    .line 38
    const/4 v3, 0x0

    .line 39
    move v4, v3

    .line 40
    :goto_1
    if-ge v4, v2, :cond_2

    .line 41
    .line 42
    aget-object v5, v0, v4

    .line 43
    .line 44
    iget v6, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    .line 45
    .line 46
    if-ne v6, p2, :cond_1

    .line 47
    .line 48
    iget p0, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 55
    cmpl-float v0, p0, v0

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_3
    const/16 v0, 0x2710

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    if-lt p2, v0, :cond_5

    .line 64
    .line 65
    const-wide/32 v4, 0xa29ae4e

    .line 66
    .line 67
    .line 68
    invoke-static {v4, v5, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    move p2, v3

    .line 76
    goto :goto_4

    .line 77
    :cond_5
    :goto_3
    move p2, v2

    .line 78
    :goto_4
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getVsyncRate()F

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    div-float p0, v4, p0

    .line 87
    .line 88
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    int-to-float v5, v5

    .line 93
    sub-float/2addr p0, v5

    .line 94
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    const v6, 0x3a6bedfa    # 9.0E-4f

    .line 99
    .line 100
    .line 101
    cmpl-float p0, p0, v6

    .line 102
    .line 103
    if-lez p0, :cond_6

    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_6
    div-float/2addr v4, v5

    .line 107
    new-instance p0, Landroid/view/DisplayInfo;

    .line 108
    .line 109
    invoke-direct {p0}, Landroid/view/DisplayInfo;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 113
    .line 114
    .line 115
    iget-object v5, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 116
    .line 117
    array-length v7, v5

    .line 118
    move v8, v3

    .line 119
    :goto_5
    if-ge v8, v7, :cond_b

    .line 120
    .line 121
    aget-object v9, v5, v8

    .line 122
    .line 123
    invoke-virtual {v9, v0}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-nez v10, :cond_7

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_7
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    sub-float v11, v4, v6

    .line 135
    .line 136
    cmpl-float v10, v10, v11

    .line 137
    .line 138
    if-ltz v10, :cond_a

    .line 139
    .line 140
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    add-float v11, v4, v6

    .line 145
    .line 146
    cmpg-float v10, v10, v11

    .line 147
    .line 148
    if-gtz v10, :cond_a

    .line 149
    .line 150
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 151
    .line 152
    if-eqz v0, :cond_8

    .line 153
    .line 154
    const-string v0, "DisplayManagerService"

    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string/jumbo v2, "found matching modeId "

    .line 159
    .line 160
    .line 161
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    :cond_8
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    iput v0, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    .line 183
    .line 184
    if-nez p2, :cond_9

    .line 185
    .line 186
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    iput p2, p0, Landroid/view/DisplayInfo;->modeId:I

    .line 191
    .line 192
    :cond_9
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 193
    .line 194
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    invoke-virtual {p1, p2, p0}, Lcom/android/server/display/DisplayDevice;->updateDisplayInfoForFrameRateOverride(ILandroid/view/DisplayInfo;)V

    .line 199
    .line 200
    .line 201
    return-object p0

    .line 202
    :cond_a
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_b
    iput v4, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    .line 206
    .line 207
    if-nez p2, :cond_c

    .line 208
    .line 209
    iget-object p1, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 210
    .line 211
    array-length p2, p1

    .line 212
    add-int/2addr p2, v2

    .line 213
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    check-cast p1, [Landroid/view/Display$Mode;

    .line 218
    .line 219
    iput-object p1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 220
    .line 221
    array-length p2, p1

    .line 222
    sub-int/2addr p2, v2

    .line 223
    new-instance v1, Landroid/view/Display$Mode;

    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    iget v8, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getVsyncRate()F

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    new-array v10, v3, [F

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    const/16 v5, 0xff

    .line 246
    .line 247
    move-object v4, v1

    .line 248
    invoke-direct/range {v4 .. v11}, Landroid/view/Display$Mode;-><init>(IIIFF[F[I)V

    .line 249
    .line 250
    .line 251
    aput-object v1, p1, p2

    .line 252
    .line 253
    iget-object p1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 254
    .line 255
    array-length p2, p1

    .line 256
    sub-int/2addr p2, v2

    .line 257
    aget-object p1, p1, p2

    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    iput p1, p0, Landroid/view/DisplayInfo;->modeId:I

    .line 264
    .line 265
    :cond_c
    return-object p0
.end method

.method public final getDisplayInfoInternal(II)Landroid/view/DisplayInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoForFrameRateOverride(Lcom/android/server/display/LogicalDisplay;I)Landroid/view/DisplayInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    return-object v1

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final getDisplayToken(I)Landroid/os/IBinder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {p0, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getHdrConversionModeInternal()Landroid/hardware/display/HdrConversionMode;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputConversionSupport()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/android/server/display/DisplayManagerService;->HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mOverrideHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 24
    .line 25
    :goto_0
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultHdrConversionMode:I

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    new-instance p0, Landroid/hardware/display/HdrConversionMode;

    .line 33
    .line 34
    invoke-direct {p0, v3}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/4 v2, 0x2

    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ne v3, v2, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    monitor-exit v0

    .line 52
    return-object v1

    .line 53
    :cond_4
    :goto_1
    new-instance v1, Landroid/hardware/display/HdrConversionMode;

    .line 54
    .line 55
    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemPreferredHdrOutputType:I

    .line 56
    .line 57
    invoke-direct {v1, v2, p0}, Landroid/hardware/display/HdrConversionMode;-><init>(II)V

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-object v1

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final getHdrConversionModeSettingInternal()Landroid/hardware/display/HdrConversionMode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputConversionSupport()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/android/server/display/DisplayManagerService;->HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    new-instance v0, Landroid/hardware/display/HdrConversionMode;

    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultHdrConversionMode:I

    .line 30
    .line 31
    invoke-direct {v0, p0}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method

.method public getLogicalDisplayMapper()Lcom/android/server/display/LogicalDisplayMapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "media_projection"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 24
    .line 25
    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/os/UserManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/os/UserManager;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getUserPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, -0x1

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public getVirtualDisplaySurfaceInternal(Landroid/os/IBinder;)Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->getVirtualDisplaySurfaceLocked(Landroid/os/IBinder;)Landroid/view/Surface;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 9
    .line 10
    .line 11
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_RESOLUTION_POLICY:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget v1, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 31
    .line 32
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 33
    .line 34
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v2, v2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 39
    .line 40
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    new-instance v3, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {v3, v1}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/view/Display$Mode;

    .line 63
    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    sget-object v3, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 76
    .line 77
    const/16 v4, 0xc

    .line 78
    .line 79
    invoke-virtual {v3, v0, v4}, Lcom/android/server/display/mode/DisplayModeDirector;->getVote(II)Lcom/android/server/display/mode/Vote;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    instance-of v5, v3, Lcom/android/server/display/mode/SizeVote;

    .line 86
    .line 87
    if-eqz v5, :cond_1

    .line 88
    .line 89
    check-cast v3, Lcom/android/server/display/mode/SizeVote;

    .line 90
    .line 91
    iget v3, v3, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    .line 92
    .line 93
    if-ne v3, v2, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    new-instance v3, Lcom/android/server/display/mode/SizeVote;

    .line 97
    .line 98
    invoke-direct {v3, v2, v1, v2, v1}, Lcom/android/server/display/mode/SizeVote;-><init>(IIII)V

    .line 99
    .line 100
    .line 101
    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 102
    .line 103
    invoke-virtual {v1, v0, v4, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->applyDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public isMinimalPostProcessingAllowed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mMinimalPostProcessingAllowed:Z

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

.method public final isUidPresentOnDisplayInternal(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/util/IntArray;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 p1, -0x1

    .line 19
    if-eq p0, p1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return p0

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final loadStableDisplayValuesLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/graphics/Point;

    .line 12
    .line 13
    iget v2, v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    .line 14
    .line 15
    iget v0, v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    .line 16
    .line 17
    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 18
    .line 19
    .line 20
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 25
    .line 26
    if-lez v1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v1, 0x10e0159

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const v2, 0x10e0158

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-lez v1, :cond_1

    .line 55
    .line 56
    if-lez v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 9

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-wide/16 v5, 0x2710

    .line 20
    .line 21
    add-long/2addr v3, v5

    .line 22
    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 23
    .line 24
    invoke-virtual {p1, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    monitor-exit v0

    .line 36
    goto/16 :goto_b

    .line 37
    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    sub-long v5, v3, v5

    .line 45
    .line 46
    const-wide/16 v7, 0x0

    .line 47
    .line 48
    cmp-long p1, v5, v7

    .line 49
    .line 50
    if-lez p1, :cond_3

    .line 51
    .line 52
    sget-boolean p1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    const-string p1, "DisplayManagerService"

    .line 57
    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v8, "waitForDefaultDisplay: waiting, timeout="

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-static {p1, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 80
    .line 81
    invoke-virtual {p1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v4, "Timeout waiting for default display to be initialized. DefaultDisplay="

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 98
    .line 99
    invoke-virtual {v4, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", mVirtualDisplayAdapter="

    .line 107
    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 112
    .line 113
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    throw p0

    .line 126
    :cond_4
    const/16 v0, 0x3e8

    .line 127
    .line 128
    if-ne p1, v0, :cond_10

    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 131
    .line 132
    monitor-enter p1

    .line 133
    :try_start_3
    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mBootCompleted:Z

    .line 134
    .line 135
    :goto_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-ge v1, v0, :cond_5

    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 150
    .line 151
    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 152
    .line 153
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 154
    .line 155
    const/16 v4, 0xd

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 171
    .line 172
    .line 173
    add-int/lit8 v1, v1, 0x1

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :catchall_1
    move-exception p0

    .line 177
    goto/16 :goto_a

    .line 178
    .line 179
    :cond_5
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->onBootCompleted()V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 186
    .line 187
    iget-object v0, p1, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 188
    .line 189
    monitor-enter v0

    .line 190
    :try_start_4
    iput-boolean v2, p1, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 191
    .line 192
    iget v1, p1, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:I

    .line 193
    .line 194
    const/4 v3, -0x1

    .line 195
    if-eq v1, v3, :cond_6

    .line 196
    .line 197
    invoke-virtual {p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->setDeviceStateLocked(I)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :catchall_2
    move-exception p0

    .line 202
    goto/16 :goto_9

    .line 203
    .line 204
    :cond_6
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 205
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 206
    .line 207
    iget-object v0, p1, Lcom/android/server/display/notifications/DisplayNotificationManager;->mInjector:Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;

    .line 208
    .line 209
    check-cast v0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;

    .line 210
    .line 211
    iget-object v1, v0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$context:Landroid/content/Context;

    .line 212
    .line 213
    const-class v3, Landroid/app/NotificationManager;

    .line 214
    .line 215
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    check-cast v1, Landroid/app/NotificationManager;

    .line 220
    .line 221
    iput-object v1, p1, Lcom/android/server/display/notifications/DisplayNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 222
    .line 223
    if-nez v1, :cond_7

    .line 224
    .line 225
    const-string p1, "DisplayNotificationManager"

    .line 226
    .line 227
    const-string/jumbo v0, "onBootCompleted: NotificationManager is null"

    .line 228
    .line 229
    .line 230
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_7
    new-instance v1, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;

    .line 235
    .line 236
    iget-object v3, v0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$context:Landroid/content/Context;

    .line 237
    .line 238
    new-instance v4, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$$ExternalSyntheticLambda0;

    .line 239
    .line 240
    invoke-direct {v4, v3}, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, v0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$flags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 244
    .line 245
    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;)V

    .line 246
    .line 247
    .line 248
    iget-boolean v0, v1, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mIsConnectedDisplayErrorHandlingEnabled:Z

    .line 249
    .line 250
    if-nez v0, :cond_8

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_8
    iget-object v0, v1, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mInjector:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;

    .line 254
    .line 255
    check-cast v0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$$ExternalSyntheticLambda0;

    .line 256
    .line 257
    iget-object v0, v0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 258
    .line 259
    const-class v3, Landroid/hardware/usb/UsbManager;

    .line 260
    .line 261
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 266
    .line 267
    const-string v3, "ConnectedDisplayUsbErrorsDetector"

    .line 268
    .line 269
    if-nez v0, :cond_9

    .line 270
    .line 271
    const-string p1, "UsbManager is null"

    .line 272
    .line 273
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_9
    iput-object p1, v1, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mListener:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 278
    .line 279
    :try_start_5
    iget-object p1, v1, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mContext:Landroid/content/Context;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/UsbManager;->registerDisplayPortAltModeInfoListener(Ljava/util/concurrent/Executor;Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :catch_1
    move-exception p1

    .line 290
    const-string v0, "Failed to register listener"

    .line 291
    .line 292
    invoke-static {v3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .line 294
    .line 295
    :goto_5
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 296
    .line 297
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 298
    .line 299
    monitor-enter p1

    .line 300
    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    .line 301
    .line 302
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    .line 303
    .line 304
    check-cast v0, Ljava/util/HashSet;

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_b

    .line 315
    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Ljava/lang/Integer;

    .line 321
    .line 322
    iget-object v3, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    invoke-virtual {v3, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    if-eqz v1, :cond_a

    .line 333
    .line 334
    invoke-virtual {p0, v1}, Lcom/android/server/display/ExternalDisplayPolicy;->handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 335
    .line 336
    .line 337
    goto :goto_6

    .line 338
    :catchall_3
    move-exception p0

    .line 339
    goto/16 :goto_8

    .line 340
    .line 341
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    .line 342
    .line 343
    check-cast v0, Ljava/util/HashSet;

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-nez v0, :cond_c

    .line 350
    .line 351
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 352
    .line 353
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 354
    .line 355
    .line 356
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    .line 357
    .line 358
    check-cast v0, Ljava/util/HashSet;

    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 361
    .line 362
    .line 363
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 364
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 365
    .line 366
    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 367
    .line 368
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    if-nez p1, :cond_d

    .line 373
    .line 374
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    .line 375
    .line 376
    if-eqz p0, :cond_10

    .line 377
    .line 378
    const-string p0, "ExternalDisplayPolicy"

    .line 379
    .line 380
    const-string p1, "External display management is not enabled on your device: cannot register thermal listener."

    .line 381
    .line 382
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    goto :goto_b

    .line 386
    :cond_d
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 387
    .line 388
    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 389
    .line 390
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    if-nez p1, :cond_e

    .line 395
    .line 396
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    .line 397
    .line 398
    if-eqz p0, :cond_10

    .line 399
    .line 400
    const-string p0, "ExternalDisplayPolicy"

    .line 401
    .line 402
    const-string p1, "ConnectedDisplayErrorHandlingEnabled is not enabled on your device: cannot register thermal listener."

    .line 403
    .line 404
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    goto :goto_b

    .line 408
    :cond_e
    new-instance p1, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;

    .line 409
    .line 410
    invoke-direct {p1, p0}, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/ExternalDisplayPolicy;)V

    .line 411
    .line 412
    .line 413
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/DisplayManagerService$1;

    .line 414
    .line 415
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    const-string/jumbo p0, "thermalservice"

    .line 419
    .line 420
    .line 421
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    invoke-static {p0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    const-string v0, "ExternalDisplayPolicy"

    .line 430
    .line 431
    if-nez p0, :cond_f

    .line 432
    .line 433
    const-string p0, "Could not observe thermal status. Service not available"

    .line 434
    .line 435
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    goto :goto_7

    .line 439
    :cond_f
    const/4 v1, 0x3

    .line 440
    :try_start_7
    invoke-interface {p0, p1, v1}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 441
    .line 442
    .line 443
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    .line 444
    .line 445
    if-eqz p0, :cond_10

    .line 446
    .line 447
    const-string/jumbo p0, "registerThermalServiceListener complete."

    .line 448
    .line 449
    .line 450
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    goto :goto_b

    .line 454
    :catch_2
    move-exception p0

    .line 455
    const-string p1, "Failed to register thermal status listener"

    .line 456
    .line 457
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    .line 459
    .line 460
    :goto_7
    const-string p0, "ExternalDisplayPolicy"

    .line 461
    .line 462
    const-string p1, "Failed to register thermal listener"

    .line 463
    .line 464
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    goto :goto_b

    .line 468
    :goto_8
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 469
    throw p0

    .line 470
    :goto_9
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 471
    throw p0

    .line 472
    :goto_a
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 473
    throw p0

    .line 474
    :cond_10
    :goto_b
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    const-string v0, "DisplayManagerService"

    .line 2
    .line 3
    const-string v1, "DisplayManagerService onStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->loadStableDisplayValuesLocked()V

    .line 17
    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v0, "display"

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 38
    .line 39
    .line 40
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 41
    .line 42
    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v1, p1, :cond_0

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_3

    .line 32
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 33
    .line 34
    new-instance v5, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;

    .line 35
    .line 36
    invoke-direct {v5, p0, v1, p2, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayManagerService;ZII)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v5, v3}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 43
    .line 44
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string/jumbo v1, "minimal_post_processing_allowed"

    .line 52
    .line 53
    .line 54
    const/4 v4, -0x2

    .line 55
    invoke-static {p2, v1, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move v3, v2

    .line 63
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayManagerService;->setMinimalPostProcessingAllowed(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 67
    .line 68
    .line 69
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :try_start_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->onUserSwitching()V

    .line 77
    .line 78
    .line 79
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    return-void

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    :try_start_4
    throw p0

    .line 84
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 2
    .line 3
    const/16 p1, 0x1c

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public overrideSensorManager(Landroid/hardware/SensorManager;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

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

.method public performTraversalInternal(Landroid/view/SurfaceControl$Transaction;Landroid/util/SparseArray;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, p0, p2, p1, v2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {p2, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 37
    .line 38
    const/4 v1, 0x5

    .line 39
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 60
    .line 61
    invoke-interface {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-void

    .line 66
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0
.end method

.method public final recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 15
    .line 16
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 22
    .line 23
    const-string/jumbo p0, "persist.sys.displayinset.top"

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    return-void
.end method

.method public final registerWifiDisplayAdapterLocked()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x111018c

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string/jumbo v0, "persist.debug.wfd.enable"

    .line 17
    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 32
    .line 33
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 36
    .line 37
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 38
    .line 39
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 40
    .line 41
    move-object v2, v0

    .line 42
    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$1;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-direct {v1, v0, v2}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;

    .line 76
    .line 77
    const/4 v1, 0x2

    .line 78
    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method public final releaseDisplayAndEmitEvent(Lcom/android/server/display/LogicalDisplay;I)V
    .locals 11

    .line 1
    iget v0, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, -0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-virtual {p0, v1, v3}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerControllerInterface;I)V

    .line 17
    .line 18
    .line 19
    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 20
    .line 21
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v5

    .line 24
    move v6, v4

    .line 25
    :goto_0
    :try_start_0
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-ge v6, v7, :cond_0

    .line 32
    .line 33
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 40
    .line 41
    new-instance v8, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    invoke-direct {v8, v9, v7}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 48
    .line 49
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v9

    .line 56
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 57
    .line 58
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 67
    .line 68
    .line 69
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 70
    .line 71
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 72
    .line 73
    const/4 v7, 0x7

    .line 74
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 79
    .line 80
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 81
    .line 82
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v8

    .line 89
    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 90
    .line 91
    .line 92
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 93
    .line 94
    if-eqz v6, :cond_1

    .line 95
    .line 96
    invoke-virtual {v6, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 100
    .line 101
    iget-object v7, v6, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 102
    .line 103
    if-eqz v7, :cond_2

    .line 104
    .line 105
    iget-object v8, v6, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 106
    .line 107
    iget-object v7, v7, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 108
    .line 109
    invoke-virtual {v7, v8}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-object v7, v6, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 113
    .line 114
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    iget-object v6, v6, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 116
    .line 117
    iget-object v6, v6, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    .line 118
    .line 119
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    if-eqz v6, :cond_3

    .line 121
    .line 122
    :try_start_2
    iget-object v6, v6, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 123
    .line 124
    if-eqz v6, :cond_3

    .line 125
    .line 126
    invoke-virtual {v6, v4}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 136
    .line 137
    invoke-virtual {v6, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    .line 139
    .line 140
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    goto :goto_2

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    goto :goto_1

    .line 144
    :catchall_1
    move-exception p0

    .line 145
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    :try_start_4
    throw p0

    .line 147
    :goto_1
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    throw p0

    .line 149
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iget v1, v1, Landroid/view/DisplayInfo;->type:I

    .line 159
    .line 160
    if-ne v1, v2, :cond_5

    .line 161
    .line 162
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 165
    .line 166
    .line 167
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    .line 168
    .line 169
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 173
    .line 174
    .line 175
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 176
    .line 177
    if-eqz v1, :cond_6

    .line 178
    .line 179
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    .line 180
    .line 181
    if-ne v1, v0, :cond_6

    .line 182
    .line 183
    iput v3, p0, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    .line 184
    .line 185
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 186
    .line 187
    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;

    .line 188
    .line 189
    const/4 v3, 0x5

    .line 190
    invoke-direct {v2, p0, v3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 197
    .line 198
    iput-boolean v4, v1, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    .line 199
    .line 200
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 201
    .line 202
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_7

    .line 207
    .line 208
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 209
    .line 210
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Landroid/util/Pair;

    .line 215
    .line 216
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v1, Landroid/companion/virtual/IVirtualDevice;

    .line 219
    .line 220
    if-eqz v1, :cond_7

    .line 221
    .line 222
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 223
    .line 224
    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;

    .line 225
    .line 226
    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/companion/virtual/IVirtualDevice;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    .line 231
    .line 232
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public final releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "DisplayManagerService"

    .line 17
    .line 18
    const-string v2, "Virtual Display: Display Device released"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final removePresentationDisplay(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "DisplayManagerService"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "Presentation is not included in Set"

    .line 12
    .line 13
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Failed to remove presentation("

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v0, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", "

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, ")"

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    new-instance p1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    invoke-direct {p1, p0, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public final requestDisplayPower(IZ)Z
    .locals 9

    .line 1
    const-string/jumbo v0, "requestDisplayPower(displayId="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "requestDisplayPower: Cannot update the power state to ON="

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "requestDisplayPower: Cannot find a display with displayId="

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    invoke-virtual {v4, p1, v5}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v6, 0x0

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    const-string p0, "DisplayManagerService"

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    monitor-exit v3

    .line 41
    return v6

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 51
    .line 52
    iget-object v2, v4, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    const/4 v7, 0x2

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v7, v5

    .line 59
    :goto_0
    if-eqz p2, :cond_2

    .line 60
    .line 61
    iget v8, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/high16 v8, -0x40800000    # -1.0f

    .line 65
    .line 66
    :goto_1
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 67
    .line 68
    iget-object v4, v4, Lcom/android/server/display/LogicalDisplay;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    .line 69
    .line 70
    invoke-virtual {v2, v7, v8, p0, v4}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-nez p0, :cond_3

    .line 75
    .line 76
    const-string p0, "DisplayManagerService"

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p2, " for a display with displayId="

    .line 87
    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, ", runnable is null"

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    monitor-exit v3

    .line 107
    return v6

    .line 108
    :cond_3
    check-cast p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->run()V

    .line 111
    .line 112
    .line 113
    const-string p0, "DisplayManagerService"

    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p1, ", on="

    .line 124
    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p1, ")"

    .line 132
    .line 133
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    monitor-exit v3

    .line 144
    return v5

    .line 145
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    throw p0
.end method

.method public final resetBrightnessConfigurations()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 16
    .line 17
    .line 18
    iget-object v3, v2, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {v3, v4, v0, v1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iput-boolean v1, v2, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 29
    .line 30
    :cond_0
    invoke-virtual {v3, v4, v4, v4}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveHistory(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    invoke-direct {v0, p0, v2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final scheduleTraversalLocked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 15
    .line 16
    const/4 p1, 0x4

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 2
    .line 3
    const-wide/32 v1, 0x20000

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    const-string/jumbo v3, "sendDisplayEventLocked#event="

    .line 13
    .line 14
    .line 15
    const-string v4, ",displayEnabled="

    .line 16
    .line 17
    invoke-static {p2, v3, v4, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p2, "Not Sending Display Event; display is not enabled: "

    .line 43
    .line 44
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string p1, "DisplayManagerService"

    .line 55
    .line 56
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_1
    return-void
.end method

.method public final sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .locals 2

    .line 1
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Deliver Display Event on Handler: "

    .line 17
    .line 18
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p2, "DisplayManagerService"

    .line 29
    .line 30
    invoke-static {p2, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final sendDisplayHbmBrightnessEventLocked(IZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v1, "sendDisplayHbmBrightnessEventLocked: displayId="

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " isHbm="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "DisplayManagerService"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ge v0, v2, :cond_1

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    :try_start_0
    iget-object v3, v2, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mCallback:Landroid/hardware/display/IHbmBrightnessCallback;

    .line 59
    .line 60
    invoke-interface {v3, p1, p2}, Landroid/hardware/display/IHbmBrightnessCallback;->onChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string/jumbo v4, "notifyHbmBrightnessEvent: Error calling hbm brightness callback pid="

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget v4, v2, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mPid:I

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, " uid="

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget v4, v2, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mUid:I

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->binderDied()V

    .line 95
    .line 96
    .line 97
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method public final setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 16
    .line 17
    invoke-virtual {v2, p2}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    .line 18
    .line 19
    .line 20
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 26
    .line 27
    .line 28
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget v3, v3, Landroid/view/DisplayInfo;->type:I

    .line 53
    .line 54
    if-ne v3, v4, :cond_1

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, [F

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v5, [F

    .line 73
    .line 74
    const/16 v6, 0x216

    .line 75
    .line 76
    invoke-static {v6, v3, v5, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[F[FLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    goto :goto_3

    .line 82
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-object v2, v2, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v3, v2, v4}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget-object v2, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 101
    .line 102
    invoke-static {v2, p1, v0, p4}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    iput-boolean v4, v3, Lcom/android/server/display/PersistentDataStore;->mDirty:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    .line 107
    :goto_1
    :try_start_3
    iget-object p4, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 108
    .line 109
    invoke-virtual {p4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 110
    .line 111
    .line 112
    iget p4, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 113
    .line 114
    if-eq p3, p4, :cond_3

    .line 115
    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 118
    :cond_3
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 119
    .line 120
    invoke-virtual {p3, p2}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 125
    .line 126
    invoke-virtual {p3, p2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-eqz p2, :cond_4

    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 133
    .line 134
    iget p2, p2, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 135
    .line 136
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    const/4 p0, 0x0

    .line 144
    :goto_2
    if-eqz p0, :cond_5

    .line 145
    .line 146
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 147
    .line 148
    invoke-virtual {p0, p1, v4}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    .line 149
    .line 150
    .line 151
    :cond_5
    monitor-exit v1

    .line 152
    return-void

    .line 153
    :goto_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    throw p0
.end method

.method public setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    iget-object v3, p1, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    new-instance v3, Landroid/view/DisplayInfo;

    .line 23
    .line 24
    invoke-direct {v3, p2}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 25
    .line 26
    .line 27
    iput-object v3, p1, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v3, p2}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    iget-object v3, p1, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 40
    .line 41
    invoke-virtual {v3, p2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p2, p1, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    iput-object v2, p1, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :goto_1
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public setDisplayedContentSamplingEnabledInternal(IZII)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p0, p2, p3, p4}, Landroid/view/SurfaceControl;->setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final setDockedAndIdleEnabled(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/16 v3, 0xe

    .line 24
    .line 25
    iput v3, v2, Landroid/os/Message;->what:I

    .line 26
    .line 27
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide p0

    .line 38
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputConversionSupport()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, -0x1

    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ne v1, v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string/jumbo p1, "preferredHdrOutputType must not be set if the conversion mode is HDR_CONVERSION_SYSTEM"

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto/16 :goto_7

    .line 42
    .line 43
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const-string/jumbo v5, "hdr_conversion_mode"

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v4, 0x3

    .line 66
    if-ne v1, v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move v1, v3

    .line 74
    :goto_1
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-string/jumbo v6, "hdr_force_conversion_type"

    .line 81
    .line 82
    .line 83
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const/4 v5, 0x0

    .line 91
    if-ne v1, v2, :cond_8

    .line 92
    .line 93
    new-instance v1, Landroid/util/IntArray;

    .line 94
    .line 95
    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSupportedHdrOutputType:[I

    .line 99
    .line 100
    if-nez v2, :cond_4

    .line 101
    .line 102
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getSupportedHdrOutputTypes()[I

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSupportedHdrOutputType:[I

    .line 112
    .line 113
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSupportedHdrOutputType:[I

    .line 114
    .line 115
    array-length v6, v2

    .line 116
    const/4 v7, 0x0

    .line 117
    move v8, v7

    .line 118
    :goto_2
    if-ge v8, v6, :cond_7

    .line 119
    .line 120
    aget v9, v2, v8

    .line 121
    .line 122
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 123
    .line 124
    array-length v11, v10

    .line 125
    move v12, v7

    .line 126
    :goto_3
    if-ge v12, v11, :cond_6

    .line 127
    .line 128
    aget v13, v10, v12

    .line 129
    .line 130
    if-ne v9, v13, :cond_5

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    invoke-virtual {v1, v9}, Landroid/util/IntArray;->add(I)V

    .line 137
    .line 138
    .line 139
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_7
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    goto :goto_5

    .line 147
    :cond_8
    move-object v1, v5

    .line 148
    :goto_5
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mOverrideHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 157
    .line 158
    if-nez v6, :cond_a

    .line 159
    .line 160
    if-ne v2, v4, :cond_9

    .line 161
    .line 162
    if-ne p1, v3, :cond_9

    .line 163
    .line 164
    const/4 v2, 0x1

    .line 165
    :cond_9
    move-object v5, v1

    .line 166
    goto :goto_6

    .line 167
    :cond_a
    invoke-virtual {v6}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mOverrideHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    :goto_6
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-static {v5, v2, p1}, Lcom/android/server/display/DisplayControl;->setHdrConversionMode([III)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemPreferredHdrOutputType:I

    .line 187
    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 190
    :goto_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    throw p0
.end method

.method public setMinimalPostProcessingAllowed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mMinimalPostProcessingAllowed:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

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

.method public final setStableDisplaySizeLocked(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Point;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 6
    .line 7
    .line 8
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 11
    .line 12
    .line 13
    iget-object p0, v0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 14
    .line 15
    iget p1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    .line 16
    .line 17
    iget p2, v1, Landroid/graphics/Point;->x:I

    .line 18
    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    iget p1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    .line 22
    .line 23
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 24
    .line 25
    if-eq p1, v2, :cond_1

    .line 26
    .line 27
    :cond_0
    iput p2, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    .line 28
    .line 29
    iget p1, v1, Landroid/graphics/Point;->y:I

    .line 30
    .line 31
    iput p1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    iput-boolean p0, v0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, -0x1

    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-lez v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-lez v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    cmpl-float v3, v3, v1

    .line 25
    .line 26
    if-lez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-eq p1, v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string/jumbo p1, "width, height and refresh rate of mode should be greater than 0 when setting the global user preferred display mode."

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_5

    .line 43
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 44
    .line 45
    move v3, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :goto_1
    if-nez p2, :cond_4

    .line 52
    .line 53
    move v4, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    :goto_2
    if-nez p2, :cond_5

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_5
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    :goto_3
    invoke-virtual {p0, p1, v4, v3, v1}, Lcom/android/server/display/DisplayManagerService;->storeModeInPersistentDataStoreLocked(IIIF)V

    .line 67
    .line 68
    .line 69
    if-eq p1, v2, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredModeForDisplayLocked(ILandroid/view/Display$Mode;)V

    .line 72
    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_6
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 76
    .line 77
    invoke-virtual {p0, v4, v3, v1, p2}, Lcom/android/server/display/DisplayManagerService;->storeModeInGlobalSettingsLocked(IIFLandroid/view/Display$Mode;)V

    .line 78
    .line 79
    .line 80
    :goto_4
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public final setUserPreferredModeForDisplayLocked(ILandroid/view/Display$Mode;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    if-nez p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getSupportedResolutionsLocked()[Landroid/graphics/Point;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    array-length v1, p1

    .line 25
    const/4 v2, 0x2

    .line 26
    if-ne v1, v2, :cond_3

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/Point;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    aget-object v4, p1, v3

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v5, 0x1

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    move v2, v5

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    aget-object p1, p1, v5

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v2, v3

    .line 63
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string/jumbo p1, "screen_resolution_mode"

    .line 70
    .line 71
    .line 72
    const/4 v1, -0x2

    .line 73
    invoke-static {p0, p1, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final setupLogicalDisplay(Lcom/android/server/display/LogicalDisplay;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget v3, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 6
    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    move v4, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v4, v2

    .line 12
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    const/4 v7, -0x1

    .line 22
    if-nez v6, :cond_1

    .line 23
    .line 24
    :goto_1
    move v5, v7

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    iget-object v6, v0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v5, v6, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-nez v5, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget v5, v5, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    .line 36
    .line 37
    :goto_2
    if-ne v5, v7, :cond_4

    .line 38
    .line 39
    if-nez v3, :cond_3

    .line 40
    .line 41
    iget v5, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    move v5, v2

    .line 45
    :cond_4
    :goto_3
    iput v5, p1, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    .line 46
    .line 47
    iget-boolean v5, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 48
    .line 49
    if-nez v5, :cond_5

    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 52
    .line 53
    invoke-virtual {p1, v5}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    .line 54
    .line 55
    .line 56
    :cond_5
    if-eqz v4, :cond_7

    .line 57
    .line 58
    iget-object v4, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 61
    .line 62
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 63
    .line 64
    invoke-virtual {v5, v4}, Lcom/android/server/display/mode/DisplayModeDirector;->defaultDisplayDeviceUpdated(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 68
    .line 69
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 70
    .line 71
    if-gtz v5, :cond_6

    .line 72
    .line 73
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 74
    .line 75
    if-gtz v4, :cond_6

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {p0, v5, v4}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    .line 90
    .line 91
    .line 92
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 93
    .line 94
    .line 95
    :cond_7
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 96
    .line 97
    if-eqz v4, :cond_8

    .line 98
    .line 99
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->configurePreferredDisplayModeLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 104
    .line 105
    .line 106
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/DisplayPowerController;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_9

    .line 111
    .line 112
    iget v4, p1, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 113
    .line 114
    invoke-virtual {p0, v0, v4}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerControllerInterface;I)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;

    .line 118
    .line 119
    const/4 v4, 0x2

    .line 120
    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/display/DisplayManagerService;II)V

    .line 121
    .line 122
    .line 123
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 124
    .line 125
    invoke-virtual {v4, v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 126
    .line 127
    .line 128
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 129
    .line 130
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    .line 138
    .line 139
    if-ne v0, v1, :cond_a

    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    .line 142
    .line 143
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 144
    .line 145
    .line 146
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget p1, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    .line 153
    .line 154
    new-instance v0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 157
    .line 158
    .line 159
    iput p1, v0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 160
    .line 161
    iput p1, v0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 162
    .line 163
    invoke-virtual {p0, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequestedTime:Ljava/lang/String;

    .line 4
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p1, :cond_0

    .line 6
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestStartScanLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p1, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 8
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;I)V

    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 10
    iget-object p1, p1, Lcom/android/server/display/WifiDisplayAdapter;->mVolumeController:Lcom/android/server/display/VolumeController;

    .line 11
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    :cond_0
    return-void
.end method

.method public final startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;II)V
    .locals 3

    .line 12
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 14
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequestedTime:Ljava/lang/String;

    .line 15
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p1, :cond_0

    .line 17
    const-string/jumbo v0, "requestStartScanLocked : "

    const-string v1, ", interval : "

    const-string v2, "WifiDisplayAdapter"

    .line 18
    invoke-static {p2, p3, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p1, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 20
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;II)V

    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 22
    iget-object p1, p1, Lcom/android/server/display/WifiDisplayAdapter;->mVolumeController:Lcom/android/server/display/VolumeController;

    .line 23
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    :cond_0
    return-void
.end method

.method public final stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    new-instance v2, Ljava/util/Date;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequestedTime:Ljava/lang/String;

    .line 20
    .line 21
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string p1, "WifiDisplayAdapter"

    .line 37
    .line 38
    const-string/jumbo v0, "requestStopScanLocked"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/android/server/display/WifiDisplayAdapter$1;

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    invoke-direct {p1, p0, v0}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    if-gez p1, :cond_1

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v1, "mWifiDisplayScanRequestCount became negative: "

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget v1, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 76
    .line 77
    const-string v1, "DisplayManagerService"

    .line 78
    .line 79
    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    .line 83
    .line 84
    :cond_1
    :goto_0
    return-void
.end method

.method public final storeModeInGlobalSettingsLocked(IIFLandroid/view/Display$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "user_preferred_refresh_rate"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 11
    .line 12
    .line 13
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const-string/jumbo v0, "user_preferred_resolution_height"

    .line 20
    .line 21
    .line 22
    invoke-static {p3, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string/jumbo p3, "user_preferred_resolution_width"

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-direct {p1, p2, p4}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;-><init>(ILandroid/view/Display$Mode;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final storeModeInPersistentDataStoreLocked(IIIF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v3, v1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    .line 30
    .line 31
    if-ne p2, v3, :cond_2

    .line 32
    .line 33
    iget v3, v1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    .line 34
    .line 35
    if-ne p3, v3, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iput p2, v1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    .line 39
    .line 40
    iput p3, v1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    .line 41
    .line 42
    iput-boolean v2, v0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 43
    .line 44
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_6

    .line 49
    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget p1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    .line 58
    .line 59
    cmpl-float p1, p4, p1

    .line 60
    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    iput p4, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    .line 65
    .line 66
    iput-boolean v2, v0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final systemReady(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "display_manager"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "enable_hdr_output_control"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 27
    .line 28
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda26;

    .line 33
    .line 34
    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 38
    .line 39
    const-string/jumbo v4, "display_manager"

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v4, v2, v3}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string/jumbo v3, "minimal_post_processing_allowed"

    .line 62
    .line 63
    .line 64
    const/4 v4, -0x2

    .line 65
    invoke-static {v1, v3, p1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    move v2, p1

    .line 72
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->setMinimalPostProcessingAllowed(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateUserDisabledHdrTypesFromSettingsLocked()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateUserPreferredDisplayModeSettingsLocked()V

    .line 79
    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    .line 82
    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string/jumbo v2, "hdr_conversion_mode"

    .line 92
    .line 93
    .line 94
    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultHdrConversionMode:I

    .line 95
    .line 96
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/4 v2, 0x3

    .line 101
    if-ne v1, v2, :cond_1

    .line 102
    .line 103
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const-string/jumbo v3, "hdr_force_conversion_type"

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    const/4 p1, -0x1

    .line 118
    :goto_0
    new-instance v2, Landroid/hardware/display/HdrConversionMode;

    .line 119
    .line 120
    invoke-direct {v2, v1, p1}, Landroid/hardware/display/HdrConversionMode;-><init>(II)V

    .line 121
    .line 122
    .line 123
    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 124
    .line 125
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 130
    .line 131
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    .line 132
    .line 133
    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 137
    .line 138
    monitor-enter v1

    .line 139
    :try_start_1
    iput-object v0, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    .line 140
    .line 141
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector;->start(Landroid/hardware/SensorManager;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 150
    .line 151
    const/4 v0, 0x2

    .line 152
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    .line 154
    .line 155
    new-instance p1, Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    .line 156
    .line 157
    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayManagerService$SettingsObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->startSynchronizing()V

    .line 163
    .line 164
    .line 165
    new-instance p1, Landroid/content/IntentFilter;

    .line 166
    .line 167
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v0, "android.intent.action.DREAMING_STARTED"

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v0, "android.intent.action.DREAMING_STOPPED"

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string v0, "android.intent.action.DOCK_EVENT"

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mIdleModeReceiver:Lcom/android/server/display/DisplayManagerService$2;

    .line 188
    .line 189
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lcom/samsung/android/provider/SemDynamicFeature;->isSuitable()Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_4

    .line 197
    .line 198
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    const-string v0, "DISPLAY_MANAGER"

    .line 201
    .line 202
    const-string v1, "ENABLE_DEBUG_LOG"

    .line 203
    .line 204
    invoke-static {p1, v0, v1}, Lcom/samsung/android/provider/SemDynamicFeature;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/provider/Feature;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    if-eqz p1, :cond_3

    .line 209
    .line 210
    const-string v0, "DynamicFeature_Display"

    .line 211
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v2, "Debug value changed from "

    .line 215
    .line 216
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/samsung/android/provider/Feature;->getBoolean()Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    or-int/2addr p1, v0

    .line 238
    sput-boolean p1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 239
    .line 240
    const-string p1, "DynamicFeature_Display"

    .line 241
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string v1, "Debug value changed to "

    .line 245
    .line 246
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    :cond_3
    const-string/jumbo p1, "com.sec.df.changed.DISPLAY_MANAGER.ENABLE_DEBUG_LOG"

    .line 262
    .line 263
    .line 264
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 269
    .line 270
    new-instance v1, Lcom/android/server/display/DisplayManagerService$7;

    .line 271
    .line 272
    invoke-direct {v1}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    .line 277
    .line 278
    :cond_4
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 279
    .line 280
    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 281
    .line 282
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_5

    .line 287
    .line 288
    new-instance p1, Landroid/content/IntentFilter;

    .line 289
    .line 290
    const-string v0, "android.os.action.SETTING_RESTORED"

    .line 291
    .line 292
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 296
    .line 297
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mResolutionRestoreReceiver:Lcom/android/server/display/DisplayManagerService$2;

    .line 298
    .line 299
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    .line 301
    .line 302
    :cond_5
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 303
    .line 304
    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-eqz p1, :cond_6

    .line 311
    .line 312
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 313
    .line 314
    new-instance v0, Lcom/android/server/display/SmallAreaDetectionController;

    .line 315
    .line 316
    sget-object v1, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    .line 317
    .line 318
    invoke-direct {v0, p1, v1}, Lcom/android/server/display/SmallAreaDetectionController;-><init>(Landroid/content/Context;Landroid/provider/DeviceConfigInterface;)V

    .line 319
    .line 320
    .line 321
    const-string/jumbo p1, "display_manager"

    .line 322
    .line 323
    .line 324
    const-string/jumbo v2, "small_area_detection_allowlist"

    .line 325
    .line 326
    .line 327
    invoke-interface {v1, p1, v2}, Landroid/provider/DeviceConfigInterface;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {v0, p1}, Lcom/android/server/display/SmallAreaDetectionController;->updateAllowlist(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto :goto_1

    .line 335
    :cond_6
    const/4 v0, 0x0

    .line 336
    :goto_1
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSmallAreaDetectionController:Lcom/android/server/display/SmallAreaDetectionController;

    .line 337
    .line 338
    return-void

    .line 339
    :catchall_0
    move-exception p0

    .line 340
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    throw p0

    .line 342
    :catchall_1
    move-exception p0

    .line 343
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 344
    throw p0
.end method

.method public final updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerControllerInterface;I)V
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 3
    .line 4
    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 5
    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_0
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    .line 28
    .line 29
    move-object v4, p1

    .line 30
    check-cast v4, Lcom/android/server/display/DisplayPowerController;

    .line 31
    .line 32
    iget v4, v4, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 35
    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 38
    .line 39
    new-instance v4, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-direct {v4, v5, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    monitor-exit v2

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0

    .line 62
    :cond_1
    :goto_0
    if-eq p2, v1, :cond_2

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 71
    .line 72
    if-eqz p0, :cond_2

    .line 73
    .line 74
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 75
    .line 76
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 77
    .line 78
    monitor-enter p2

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    .line 80
    .line 81
    move-object v1, p1

    .line 82
    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 83
    .line 84
    iget v1, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 85
    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 90
    .line 91
    .line 92
    monitor-exit p2

    .line 93
    goto :goto_1

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    throw p0

    .line 97
    :cond_2
    :goto_1
    return-void
.end method

.method public final updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 8
    .line 9
    and-int/lit8 v2, v2, 0x20

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_c

    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 15
    .line 16
    move-object/from16 v4, p1

    .line 17
    .line 18
    invoke-virtual {v2, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_0
    iget-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    iget v6, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    iget v7, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 34
    .line 35
    const/4 v8, 0x1

    .line 36
    const/high16 v9, 0x800000

    .line 37
    .line 38
    const/4 v10, 0x2

    .line 39
    if-ne v7, v8, :cond_8

    .line 40
    .line 41
    iget-object v7, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 42
    .line 43
    iget-object v12, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    .line 44
    .line 45
    invoke-virtual {v12, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    if-ne v12, v10, :cond_1

    .line 50
    .line 51
    move v15, v10

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    if-eqz v12, :cond_4

    .line 58
    .line 59
    invoke-static {}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->values()[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    array-length v13, v12

    .line 64
    const/4 v14, 0x0

    .line 65
    :goto_0
    if-ge v14, v13, :cond_4

    .line 66
    .line 67
    aget-object v15, v12, v14

    .line 68
    .line 69
    invoke-virtual {v15}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->getDisplayState()I

    .line 70
    .line 71
    .line 72
    move-result v15

    .line 73
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v16

    .line 77
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v17

    .line 81
    if-eqz v17, :cond_3

    .line 82
    .line 83
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v17

    .line 87
    move-object/from16 v11, v17

    .line 88
    .line 89
    check-cast v11, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    .line 90
    .line 91
    iget v3, v11, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedState:I

    .line 92
    .line 93
    if-ne v15, v3, :cond_2

    .line 94
    .line 95
    iget v3, v11, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mDisplayId:I

    .line 96
    .line 97
    if-ne v3, v6, :cond_2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const/4 v3, 0x0

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    const/4 v15, 0x0

    .line 107
    :goto_2
    iget v3, v0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    .line 108
    .line 109
    if-nez v3, :cond_5

    .line 110
    .line 111
    iget v7, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 112
    .line 113
    and-int/2addr v7, v9

    .line 114
    if-eqz v7, :cond_5

    .line 115
    .line 116
    :goto_3
    const/4 v15, 0x0

    .line 117
    goto :goto_4

    .line 118
    :cond_5
    if-ne v3, v8, :cond_6

    .line 119
    .line 120
    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 121
    .line 122
    and-int/2addr v3, v9

    .line 123
    if-nez v3, :cond_6

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    :goto_4
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    .line 127
    .line 128
    if-nez v3, :cond_7

    .line 129
    .line 130
    const-string v3, "DisplayManagerService"

    .line 131
    .line 132
    const-string/jumbo v7, "getCopyOfArrayList: error : null"

    .line 133
    .line 134
    .line 135
    invoke-static {v3, v7}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    goto :goto_5

    .line 140
    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    .line 144
    .line 145
    :goto_5
    move-object v3, v7

    .line 146
    goto :goto_6

    .line 147
    :cond_8
    const/4 v3, 0x0

    .line 148
    const/4 v15, 0x0

    .line 149
    :goto_6
    sget-boolean v7, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    .line 150
    .line 151
    if-eqz v7, :cond_9

    .line 152
    .line 153
    iget v7, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 154
    .line 155
    and-int/2addr v7, v9

    .line 156
    if-eqz v7, :cond_9

    .line 157
    .line 158
    invoke-static {v5}, Landroid/view/Display;->isDozeState(I)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_9

    .line 163
    .line 164
    move v5, v10

    .line 165
    const/4 v9, 0x0

    .line 166
    goto :goto_7

    .line 167
    :cond_9
    move v9, v15

    .line 168
    :goto_7
    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 169
    .line 170
    if-ne v1, v10, :cond_a

    .line 171
    .line 172
    invoke-static {v5}, Landroid/view/Display;->isDozeState(I)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_a

    .line 177
    .line 178
    move v5, v8

    .line 179
    :cond_a
    if-eqz v5, :cond_b

    .line 180
    .line 181
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    .line 182
    .line 183
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 188
    .line 189
    iget v6, v0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 190
    .line 191
    iget v7, v0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 192
    .line 193
    iget-object v8, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    .line 194
    .line 195
    move-object/from16 v4, p1

    .line 196
    .line 197
    move-object v10, v3

    .line 198
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;ILjava/util/ArrayList;)Ljava/lang/Runnable;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    return-object v0

    .line 203
    :cond_b
    const/4 v0, 0x0

    .line 204
    goto :goto_8

    .line 205
    :cond_c
    move-object v0, v3

    .line 206
    :goto_8
    return-object v0
.end method

.method public final updateUserDisabledHdrTypesFromSettingsLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "are_user_disabled_hdr_formats_allowed"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string/jumbo v3, "user_disabled_hdr_formats"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    :try_start_0
    const-string v3, ","

    .line 38
    .line 39
    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    array-length v3, v0

    .line 44
    new-array v3, v3, [I

    .line 45
    .line 46
    iput-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 47
    .line 48
    :goto_1
    array-length v3, v0

    .line 49
    if-ge v1, v3, :cond_1

    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 52
    .line 53
    aget-object v4, v0, v1

    .line 54
    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    aput v4, v3, v1

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 71
    .line 72
    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    .line 73
    .line 74
    const/4 v3, 0x3

    .line 75
    invoke-direct {v1, p0, v3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :goto_2
    const-string v1, "DisplayManagerService"

    .line 83
    .line 84
    const-string v2, "Failed to parse USER_DISABLED_HDR_FORMATS. Clearing the setting."

    .line 85
    .line 86
    invoke-static {v1, v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->clearUserDisabledHdrTypesLocked()V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->clearUserDisabledHdrTypesLocked()V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_3
    return-void
.end method

.method public final updateUserPreferredDisplayModeSettingsLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "user_preferred_refresh_rate"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string/jumbo v3, "user_preferred_resolution_height"

    .line 22
    .line 23
    .line 24
    const/4 v4, -0x1

    .line 25
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string/jumbo v5, "user_preferred_resolution_width"

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    new-instance v4, Landroid/view/Display$Mode;

    .line 43
    .line 44
    invoke-direct {v4, v3, v1, v0}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-lez v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-lez v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    cmpl-float v0, v0, v2

    .line 64
    .line 65
    if-lez v0, :cond_0

    .line 66
    .line 67
    move-object v0, v4

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-direct {v0, v1, v4}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;-><init>(ILandroid/view/Display$Mode;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    .line 87
    .line 88
    const/4 v1, 0x2

    .line 89
    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 90
    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 94
    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void
.end method

.method public final updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 34
    .line 35
    iget v3, v2, Landroid/hardware/display/DisplayViewport;->type:I

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v3, v4, :cond_0

    .line 48
    .line 49
    iget-object v3, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v4, v2, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    iget v3, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 60
    .line 61
    invoke-static {v3}, Landroid/view/Display;->isActiveState(I)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iput-boolean v3, v2, Landroid/hardware/display/DisplayViewport;->isActive:Z

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 73
    .line 74
    const/4 p1, 0x5

    .line 75
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method public validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, [F

    .line 11
    .line 12
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, [F

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, v0

    .line 18
    if-ge v1, v2, :cond_2

    .line 19
    .line 20
    aget v2, p1, v1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    .line 23
    .line 24
    aget v4, v0, v1

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    cmpg-float v2, v2, v3

    .line 31
    .line 32
    if-gez v2, :cond_1

    .line 33
    .line 34
    const-string p0, "DisplayManagerService"

    .line 35
    .line 36
    const-string/jumbo p1, "brightness curve is too dark"

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method public final validatePackageName(ILjava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    array-length p1, p0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    if-ge v2, p1, :cond_2

    .line 23
    .line 24
    aget-object v3, p0, v2

    .line 25
    .line 26
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    return v0

    .line 33
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return v1
.end method

.method public final windowManagerAndInputReady()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 13
    .line 14
    const-class v1, Lcom/android/server/input/InputManagerService$LocalService;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/input/InputManagerService$LocalService;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 23
    .line 24
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-class v2, Landroid/app/ActivityManager;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/app/ActivityManager;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUidImportanceListener:Lcom/android/server/display/DisplayManagerService$UidImportanceListener;

    .line 45
    .line 46
    const/16 v3, 0x190

    .line 47
    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 49
    .line 50
    .line 51
    const-class v1, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    .line 58
    .line 59
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 70
    .line 71
    new-instance v2, Landroid/os/HandlerExecutor;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 74
    .line 75
    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;

    .line 79
    .line 80
    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const-class v2, Lcom/android/server/policy/WindowManagerPolicy;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lcom/android/server/policy/WindowManagerPolicy;

    .line 98
    .line 99
    iput-object v2, v1, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 103
    .line 104
    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw p0
.end method
