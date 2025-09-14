.class public abstract Lcom/android/server/chimera/PolicyHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;
.implements Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;
.implements Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;
.implements Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;
.implements Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;
.implements Lcom/android/server/chimera/SystemEventListener$CameraStateListener;
.implements Lcom/android/server/chimera/SystemEventListener$AlwaysRunningQuotaExceedListener;
.implements Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;


# static fields
.field public static final CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

.field public static final CMDLINE_OUT:[I

.field public static final PICKED_OOM_ADJ:I

.field public static mIsBubEnabled:Z


# instance fields
.field public final mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

.field public mActionCnt:I

.field public final mActionCntSrc:[I

.field public final mAdjKillCnt:Landroid/util/SparseIntArray;

.field public mAlwaysRunningQuotaKillCnt:I

.field public mAlwaysRunningQuotaKillTriggerCnt:I

.field public final mAppFileCacheRecliamCnt:[J

.field public final mAppKillCnt:Landroid/util/ArrayMap;

.field public final mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

.field public mAvgAvailableMem:J

.field public mAvgReleasedMem:J

.field public final mBigAppPssMap:Ljava/util/Map;

.field public final mCameraAppInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

.field public final mCameraProviderInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

.field public final mCameraRelateInfos:Ljava/util/List;

.field public final mCameraServerInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

.field public mCemPkgKillIntervalMs:I

.field public final mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

.field public final mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

.field public final mDefaultQuickReclaimAdditionalMemory:I

.field public mDynamicQuickReclaimAdditionalMemory:I

.field public final mHandler:Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

.field public mIsCarMode:Z

.field public mIsDynamicCameraMemorySuccess:Z

.field public mIsKillBoostModeOnHeavy:Z

.field public mIsKillBoostModeOnNormal:Z

.field public mKillCnt:I

.field public final mKillCntByGrp:[I

.field public final mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

.field public final mLastKilledTimeMap:Ljava/util/Map;

.field public mNoActionCnt:I

.field public mPkgKillIntervalHeavy:I

.field public final mPkgKillIntervalMs:I

.field public mPkgProtectedParameters:[[I

.field public mPowerWhitelistedApps:Ljava/util/List;

.field public final mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mQuickReclaimLastFilterTime:J

.field public final mQuickReclaimPreKillApps:Ljava/util/List;

.field public final mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

.field public mSubProcessKillCnt:I

.field public mSubProcessKillTriggerCnt:I

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public mTriggerCnt:I

.field public final mTriggerCntSrc:[I

.field public final mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

.field public mWeightLru:F

.field public mWeightMem:F

.field public mWeightStandbyBucket:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x927c0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/chimera/PolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    .line 9
    .line 10
    const/16 v0, 0x352

    .line 11
    .line 12
    sput v0, Lcom/android/server/chimera/PolicyHandler;->PICKED_OOM_ADJ:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lcom/android/server/chimera/PolicyHandler;->mIsBubEnabled:Z

    .line 16
    .line 17
    const/16 v0, 0x1000

    .line 18
    .line 19
    filled-new-array {v0}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/server/chimera/PolicyHandler;->CMDLINE_OUT:[I

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    new-instance v0, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    .line 19
    .line 20
    const v0, 0x3e99999a    # 0.3f

    .line 21
    .line 22
    .line 23
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 26
    .line 27
    const v0, 0x3ecccccd    # 0.4f

    .line 28
    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 36
    .line 37
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 38
    .line 39
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    array-length v1, v1

    .line 44
    new-array v1, v1, [I

    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 47
    .line 48
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    array-length v1, v1

    .line 53
    new-array v1, v1, [I

    .line 54
    .line 55
    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    .line 56
    .line 57
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 58
    .line 59
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 60
    .line 61
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    .line 62
    .line 63
    filled-new-array {v0, v0, v0}, [I

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    .line 68
    .line 69
    const-wide/16 v1, 0x0

    .line 70
    .line 71
    iput-wide v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 72
    .line 73
    iput-wide v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    .line 74
    .line 75
    const/4 v1, 0x4

    .line 76
    new-array v2, v1, [J

    .line 77
    .line 78
    fill-array-data v2, :array_0

    .line 79
    .line 80
    .line 81
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAppFileCacheRecliamCnt:[J

    .line 82
    .line 83
    new-instance v2, Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 89
    .line 90
    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    .line 91
    .line 92
    new-instance v2, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 98
    .line 99
    new-instance v2, Landroid/util/ArrayMap;

    .line 100
    .line 101
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 105
    .line 106
    sget-object v2, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 107
    .line 108
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 109
    .line 110
    const v2, 0x2932e00

    .line 111
    .line 112
    .line 113
    iput v2, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    .line 114
    .line 115
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 121
    .line 122
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 127
    .line 128
    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 129
    .line 130
    new-instance v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 131
    .line 132
    const-string/jumbo v2, "vendor.samsung.hardware.camera.provider"

    .line 133
    .line 134
    .line 135
    invoke-direct {v1, v2}, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraProviderInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 139
    .line 140
    new-instance v2, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 141
    .line 142
    const-string/jumbo v3, "cameraserver"

    .line 143
    .line 144
    .line 145
    invoke-direct {v2, v3}, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraServerInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 149
    .line 150
    new-instance v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 151
    .line 152
    const-string/jumbo v4, "com.sec.android.app.camera"

    .line 153
    .line 154
    .line 155
    invoke-direct {v3, v4}, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iput-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraAppInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 159
    .line 160
    filled-new-array {v1, v2, v3}, [Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 169
    .line 170
    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    .line 171
    .line 172
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillTriggerCnt:I

    .line 173
    .line 174
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillCnt:I

    .line 175
    .line 176
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 177
    .line 178
    iput-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 179
    .line 180
    iput-object p3, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 181
    .line 182
    new-instance p1, Lcom/android/server/chimera/WakeLockManager;

    .line 183
    .line 184
    invoke-direct {p1, p3}, Lcom/android/server/chimera/WakeLockManager;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 185
    .line 186
    .line 187
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    .line 188
    .line 189
    new-instance p1, Lcom/android/internal/util/RingBuffer;

    .line 190
    .line 191
    const-class v0, Ljava/lang/String;

    .line 192
    .line 193
    const/16 v1, 0xc8

    .line 194
    .line 195
    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 196
    .line 197
    .line 198
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 199
    .line 200
    iput-object p4, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 201
    .line 202
    new-instance p1, Lcom/android/server/chimera/SkipReasonLogger;

    .line 203
    .line 204
    invoke-direct {p1, p3}, Lcom/android/server/chimera/SkipReasonLogger;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 205
    .line 206
    .line 207
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 208
    .line 209
    new-instance p1, Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

    .line 210
    .line 211
    invoke-direct {p1, p0, p6}, Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;-><init>(Lcom/android/server/chimera/PolicyHandler;Landroid/os/Looper;)V

    .line 212
    .line 213
    .line 214
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mHandler:Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

    .line 215
    .line 216
    iget p1, p2, Lcom/android/server/chimera/ChimeraStrategy;->mQuickReclaimDefaultThreshold:I

    .line 217
    .line 218
    mul-int/lit16 p1, p1, 0x400

    .line 219
    .line 220
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mDefaultQuickReclaimAdditionalMemory:I

    .line 221
    .line 222
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    .line 223
    .line 224
    iput-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 225
    .line 226
    const p1, 0x1b7740

    .line 227
    .line 228
    .line 229
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    const-string/jumbo p2, "persist.sys.chimera_pkg_kill_interval_ms"

    .line 237
    .line 238
    .line 239
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalMs:I

    .line 248
    .line 249
    const-string/jumbo p1, "ro.slmk.chimera_cem_pkg_kill_interval_ms"

    .line 250
    .line 251
    .line 252
    sget-object p2, Lcom/android/server/chimera/PolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mCemPkgKillIntervalMs:I

    .line 263
    .line 264
    iget p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalMs:I

    .line 265
    .line 266
    const/16 p2, 0x12c

    .line 267
    .line 268
    const/16 p4, 0x352

    .line 269
    .line 270
    filled-new-array {p2, p4, p1}, [I

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    iget p5, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    .line 275
    .line 276
    filled-new-array {p2, p4, p5}, [I

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    filled-new-array {p1, p2}, [[I

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 285
    .line 286
    invoke-virtual {p3, p0}, Lcom/android/server/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    nop

    .line 291
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static addRescheduleExceptionPackage(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/chimera/RestartImmediatePackages;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public static closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public static getDRAMUsedByApp(Lcom/android/server/chimera/ChimeraAppInfo;)J
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 22
    .line 23
    iget-wide v2, v2, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->DRAMUsed:J

    .line 24
    .line 25
    add-long/2addr v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-wide v0
.end method

.method public static toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v1, ", "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v2}, Lcom/android/server/chimera/ChimeraAppInfo;->toString(Z)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static toHHmmss(J)Ljava/lang/String;
    .locals 5

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p0, v0

    .line 4
    const-wide/16 v0, 0xe10

    .line 5
    .line 6
    div-long v2, p0, v0

    .line 7
    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    rem-long v0, p0, v0

    .line 13
    .line 14
    const-wide/16 v3, 0x3c

    .line 15
    .line 16
    div-long/2addr v0, v3

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    rem-long/2addr p0, v3

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    filled-new-array {v2, v0, p0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "%02d:%02d:%02d"

    .line 31
    .line 32
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method


# virtual methods
.method public final clearQuickReclaimFields()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 37
    .line 38
    check-cast p0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public final dumpAdjInfo(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->getKillCntByAdj()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/16 v2, 0xd

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v3, "kills at or below oom_adj "

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 19
    .line 20
    aget v3, v3, v1

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ": "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    aget v3, v0, v1

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v0, "details:"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/lit8 v0, v0, -0x1

    .line 61
    .line 62
    :goto_1
    if-ltz v0, :cond_1

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string/jumbo v4, "killed "

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, " at adj "

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v0, v0, -0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final dumpAppInfo(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "App-KillCount List :"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/Map$Entry;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ": "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public dumpCommonInfo(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 6
    .line 7
    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_DEVICE_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 8
    .line 9
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 10
    .line 11
    sget-object v5, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Total Trigger Count: "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "ActionCnt: "

    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v3, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    move v3, v2

    .line 59
    :goto_0
    const/4 v4, 0x6

    .line 60
    if-ge v3, v4, :cond_0

    .line 61
    .line 62
    aget-object v4, v0, v3

    .line 63
    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v6, "Triggered by "

    .line 67
    .line 68
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v6, v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->name:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v6, ": "

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v7, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    aget v7, v7, v8

    .line 88
    .line 89
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v5, "\nAction by "

    .line 100
    .line 101
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v5, v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->name:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    aget v4, v5, v4

    .line 119
    .line 120
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    add-int/lit8 v3, v3, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v1, "KillCnt: "

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    .line 137
    .line 138
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 139
    .line 140
    .line 141
    move v0, v2

    .line 142
    :goto_1
    const/4 v1, 0x3

    .line 143
    if-ge v0, v1, :cond_1

    .line 144
    .line 145
    add-int/lit8 v1, v0, 0x1

    .line 146
    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    .line 152
    .line 153
    aget v0, v4, v0

    .line 154
    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v3, "     G%d: %d"

    .line 164
    .line 165
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    move v0, v1

    .line 173
    goto :goto_1

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v1, "NoActionCnt: "

    .line 177
    .line 178
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 182
    .line 183
    const-string v3, "AvgAvailableMem: "

    .line 184
    .line 185
    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iget-wide v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 190
    .line 191
    const-string v1, "AvgReleasedMem: "

    .line 192
    .line 193
    invoke-static {v0, v3, v4, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-wide v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    .line 198
    .line 199
    const-string/jumbo v1, "mIsQuickReclaimEnabled: "

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v3, v4, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 207
    .line 208
    iget-boolean v3, v1, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 209
    .line 210
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v3, ", heavy apps : "

    .line 214
    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v4, "Camera:"

    .line 221
    .line 222
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 226
    .line 227
    iget-object v5, v4, Lcom/android/server/chimera/SystemRepository;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 228
    .line 229
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    const-string/jumbo v5, "ro.slmk.chimera.quickreclaim_big_game_enable"

    .line 237
    .line 238
    .line 239
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_2

    .line 244
    .line 245
    const-string v2, ", BigGame:"

    .line 246
    .line 247
    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    iget-object v3, v4, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 252
    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    :cond_2
    const-string v2, "QuickReclaimKillCnt: "

    .line 261
    .line 262
    invoke-static {p1, v3, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v2, "QuickReclaimDynamicThreshold: "

    .line 281
    .line 282
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget v2, p0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    .line 286
    .line 287
    const-string v3, "Protected AccessibilityPackges: "

    .line 288
    .line 289
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    const-string v2, ", "

    .line 294
    .line 295
    invoke-virtual {v4}, Lcom/android/server/chimera/SystemRepository;->getAccessibilityServicePackages()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string v2, "App File Cache Reclaim Enable: "

    .line 316
    .line 317
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-boolean v2, v1, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    .line 321
    .line 322
    const-string v3, "App File Cache Reclaim: "

    .line 323
    .line 324
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAppFileCacheRecliamCnt:[J

    .line 329
    .line 330
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v2, "Fast Madvise Enable: "

    .line 347
    .line 348
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-boolean v2, v1, Lcom/android/server/chimera/SettingRepository;->mIsFastMadviseEnable:Z

    .line 352
    .line 353
    const-string v3, "SubProcessKillEnable: "

    .line 354
    .line 355
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    iget-boolean v1, v1, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    .line 360
    .line 361
    const-string v2, "SubProcessKillTriggerCnt: "

    .line 362
    .line 363
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillTriggerCnt:I

    .line 368
    .line 369
    const-string v2, "SubProcessKillCnt: "

    .line 370
    .line 371
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillCnt:I

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpQuotaPPN(Ljava/io/PrintWriter;)V

    .line 388
    .line 389
    .line 390
    return-void
.end method

.method public final dumpHistoryBuffer(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "Date Time PackageName AppType StandbyBucket PSS PIDs OomScores TriggerSource:"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, [Ljava/lang/String;

    .line 21
    .line 22
    array-length v0, p0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    .line 26
    aget-object v2, p0, v1

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p0, ""

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final dumpQuotaPPN(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 2
    .line 3
    const-string/jumbo v0, "ro.slmk.chimera_quota_enable"

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "AlwaysRunningQuotaPPN Trigger Cnt: "

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    .line 21
    .line 22
    const-string v3, "AlwaysRunningQuotaPPN Cnt: "

    .line 23
    .line 24
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    .line 29
    .line 30
    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 31
    .line 32
    .line 33
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 34
    .line 35
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "AlwaysRunningQuotaKill Enable: "

    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "AlwaysRunningQuotaKill Trigger Cnt: "

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillTriggerCnt:I

    .line 71
    .line 72
    const-string v3, "AlwaysRunningQuotaKill Cnt: "

    .line 73
    .line 74
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget p0, p0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillCnt:I

    .line 79
    .line 80
    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    sget-object p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->INSTANCE:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskHistory:Lcom/android/internal/util/RingBuffer;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    const-string v0, "\n************** Task History ****************"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskHistory:Lcom/android/internal/util/RingBuffer;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, [Ljava/lang/String;

    .line 105
    .line 106
    array-length v0, p0

    .line 107
    :goto_0
    if-ge v1, v0, :cond_1

    .line 108
    .line 109
    aget-object v2, p0, v1

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 118
    .line 119
    .line 120
    :cond_2
    return-void
.end method

.method public abstract executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
.end method

.method public final getKillCntByAdj()[I
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 2
    .line 3
    const/16 v0, 0xd

    .line 4
    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_3

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    :goto_1
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 25
    .line 26
    aget v4, v4, v1

    .line 27
    .line 28
    if-le v3, v4, :cond_1

    .line 29
    .line 30
    add-int/lit8 v4, v1, -0x1

    .line 31
    .line 32
    if-gez v4, :cond_0

    .line 33
    .line 34
    move v1, v4

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    aget v1, v0, v1

    .line 37
    .line 38
    aput v1, v0, v4

    .line 39
    .line 40
    move v1, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_2
    if-gez v1, :cond_2

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    aget v3, v0, v1

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 48
    .line 49
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    add-int/2addr v4, v3

    .line 54
    aput v4, v0, v1

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    :goto_3
    if-lez v1, :cond_4

    .line 60
    .line 61
    add-int/lit8 p0, v1, -0x1

    .line 62
    .line 63
    aget v1, v0, v1

    .line 64
    .line 65
    aput v1, v0, p0

    .line 66
    .line 67
    move v1, p0

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    return-object v0
.end method

.method public final isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z
    .locals 12

    .line 1
    iget v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 8
    .line 9
    const-string p1, "PolicyHandler"

    .line 10
    .line 11
    const-string p2, "Invalid app group id"

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 27
    .line 28
    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 29
    .line 30
    const/4 v4, 0x3

    .line 31
    const/4 v5, 0x5

    .line 32
    const/16 v6, -0x3e8

    .line 33
    .line 34
    const/16 v7, 0x64

    .line 35
    .line 36
    if-ne p2, v3, :cond_5

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->getDRAMUsedByApp(Lcom/android/server/chimera/ChimeraAppInfo;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v8

    .line 42
    const-wide/16 v10, 0x2800

    .line 43
    .line 44
    cmp-long p2, v8, v10

    .line 45
    .line 46
    if-gez p2, :cond_1

    .line 47
    .line 48
    return v1

    .line 49
    :cond_1
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 50
    .line 51
    if-nez p2, :cond_2

    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 54
    .line 55
    invoke-static {p1, p2}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 60
    .line 61
    :cond_2
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 62
    .line 63
    iget-object p2, p2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 64
    .line 65
    array-length v0, p2

    .line 66
    move v3, v1

    .line 67
    :goto_0
    if-ge v3, v0, :cond_f

    .line 68
    .line 69
    aget v8, p2, v3

    .line 70
    .line 71
    if-lt v8, v7, :cond_4

    .line 72
    .line 73
    const/16 v9, 0xfa

    .line 74
    .line 75
    if-le v8, v9, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 82
    .line 83
    sget-object p2, Lcom/android/server/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 84
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 86
    .line 87
    .line 88
    return v1

    .line 89
    :cond_5
    if-eqz v0, :cond_27

    .line 90
    .line 91
    move p2, v1

    .line 92
    :goto_2
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 93
    .line 94
    iget-object v3, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 95
    .line 96
    array-length v3, v3

    .line 97
    if-ge p2, v3, :cond_f

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 100
    .line 101
    aget v0, v0, p2

    .line 102
    .line 103
    const/16 v3, 0x12c

    .line 104
    .line 105
    if-ge v0, v3, :cond_6

    .line 106
    .line 107
    goto/16 :goto_e

    .line 108
    .line 109
    :cond_6
    iget-object v8, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 110
    .line 111
    iget-object v9, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 112
    .line 113
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    aget-object v8, v8, v9

    .line 118
    .line 119
    aget v8, v8, v1

    .line 120
    .line 121
    if-ge v0, v8, :cond_7

    .line 122
    .line 123
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 126
    .line 127
    aget v0, v0, p2

    .line 128
    .line 129
    if-lt v0, v6, :cond_7

    .line 130
    .line 131
    goto/16 :goto_e

    .line 132
    .line 133
    :cond_7
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 136
    .line 137
    aget v0, v0, p2

    .line 138
    .line 139
    if-lt v0, v7, :cond_a

    .line 140
    .line 141
    if-ge v0, v3, :cond_a

    .line 142
    .line 143
    iget v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 144
    .line 145
    if-ne v8, v5, :cond_8

    .line 146
    .line 147
    goto/16 :goto_e

    .line 148
    .line 149
    :cond_8
    const/16 v9, 0xc8

    .line 150
    .line 151
    if-ge v0, v9, :cond_9

    .line 152
    .line 153
    const/16 v0, 0x28

    .line 154
    .line 155
    if-ge v8, v0, :cond_9

    .line 156
    .line 157
    goto/16 :goto_e

    .line 158
    .line 159
    :cond_9
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPowerWhitelistedApps:Ljava/util/List;

    .line 160
    .line 161
    if-eqz v0, :cond_a

    .line 162
    .line 163
    iget-object v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 164
    .line 165
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_a

    .line 170
    .line 171
    goto/16 :goto_e

    .line 172
    .line 173
    :cond_a
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 174
    .line 175
    iget-object v8, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 176
    .line 177
    aget v8, v8, p2

    .line 178
    .line 179
    if-eq v8, v4, :cond_27

    .line 180
    .line 181
    if-ne v8, v5, :cond_b

    .line 182
    .line 183
    goto/16 :goto_e

    .line 184
    .line 185
    :cond_b
    sget-boolean v8, Lcom/android/server/chimera/PolicyHandler;->mIsBubEnabled:Z

    .line 186
    .line 187
    if-nez v8, :cond_c

    .line 188
    .line 189
    iget-object v8, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 190
    .line 191
    aget v8, v8, p2

    .line 192
    .line 193
    sget v9, Lcom/android/server/chimera/PolicyHandler;->PICKED_OOM_ADJ:I

    .line 194
    .line 195
    if-ne v8, v9, :cond_c

    .line 196
    .line 197
    goto/16 :goto_e

    .line 198
    .line 199
    :cond_c
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 200
    .line 201
    aget v0, v0, p2

    .line 202
    .line 203
    const/16 v8, 0x2bc

    .line 204
    .line 205
    if-ne v0, v8, :cond_d

    .line 206
    .line 207
    goto/16 :goto_e

    .line 208
    .line 209
    :cond_d
    if-ne v0, v3, :cond_e

    .line 210
    .line 211
    goto/16 :goto_e

    .line 212
    .line 213
    :cond_e
    add-int/lit8 p2, p2, 0x1

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_f
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 217
    .line 218
    iget v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 219
    .line 220
    iget-object p2, p2, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 221
    .line 222
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 223
    .line 224
    if-eqz p2, :cond_10

    .line 225
    .line 226
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowManagerService;->isOnScreenWindow(I)Z

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    goto :goto_3

    .line 231
    :cond_10
    move p2, v1

    .line 232
    :goto_3
    if-eqz p2, :cond_11

    .line 233
    .line 234
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 235
    .line 236
    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 237
    .line 238
    invoke-virtual {p2, p1, v0}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 239
    .line 240
    .line 241
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 242
    .line 243
    const-string p2, "PolicyHandler"

    .line 244
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v2, "Skipped by visible screen : "

    .line 248
    .line 249
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return v1

    .line 275
    :cond_11
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    .line 276
    .line 277
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 278
    .line 279
    iget-object p2, p2, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    .line 280
    .line 281
    check-cast p2, Ljava/util/HashSet;

    .line 282
    .line 283
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    if-eqz p2, :cond_12

    .line 288
    .line 289
    sget-object p2, Lcom/android/server/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 290
    .line 291
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 292
    .line 293
    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 294
    .line 295
    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v0, "Skipped by WAKELOCK "

    .line 299
    .line 300
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    const-string v0, " "

    .line 304
    .line 305
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 325
    .line 326
    const-string p2, "PolicyHandler"

    .line 327
    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    return v1

    .line 335
    :cond_12
    iget p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 336
    .line 337
    const/high16 v0, 0x20000

    .line 338
    .line 339
    and-int/2addr p2, v0

    .line 340
    if-ne p2, v0, :cond_1d

    .line 341
    .line 342
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 343
    .line 344
    if-eqz p2, :cond_1a

    .line 345
    .line 346
    move p2, v1

    .line 347
    :goto_4
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 348
    .line 349
    iget-object v3, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 350
    .line 351
    array-length v3, v3

    .line 352
    if-ge p2, v3, :cond_1a

    .line 353
    .line 354
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 355
    .line 356
    aget v0, v0, p2

    .line 357
    .line 358
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 359
    .line 360
    iget-object v8, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 361
    .line 362
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    aget-object v3, v3, v8

    .line 367
    .line 368
    aget v3, v3, v2

    .line 369
    .line 370
    if-gt v0, v3, :cond_19

    .line 371
    .line 372
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 373
    .line 374
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 375
    .line 376
    aget v0, v0, p2

    .line 377
    .line 378
    if-lt v0, v6, :cond_19

    .line 379
    .line 380
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 381
    .line 382
    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 383
    .line 384
    check-cast v3, Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 391
    .line 392
    iget-object v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 393
    .line 394
    iget v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 395
    .line 396
    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 402
    .line 403
    .line 404
    monitor-enter v0

    .line 405
    :try_start_0
    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 406
    .line 407
    invoke-virtual {v9, v8, v3}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    if-eqz v3, :cond_18

    .line 412
    .line 413
    iget-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 414
    .line 415
    if-nez v8, :cond_17

    .line 416
    .line 417
    iget-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 418
    .line 419
    if-eqz v8, :cond_13

    .line 420
    .line 421
    goto :goto_5

    .line 422
    :cond_13
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 423
    .line 424
    iget-object v8, v8, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 425
    .line 426
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 427
    .line 428
    .line 429
    move-result v8

    .line 430
    if-lez v8, :cond_14

    .line 431
    .line 432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 434
    .line 435
    .line 436
    const/4 v0, 0x2

    .line 437
    goto :goto_6

    .line 438
    :catchall_0
    move-exception p0

    .line 439
    goto :goto_7

    .line 440
    :cond_14
    :try_start_1
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 441
    .line 442
    iget v8, v8, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    .line 443
    .line 444
    if-lez v8, :cond_15

    .line 445
    .line 446
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 448
    .line 449
    .line 450
    move v0, v4

    .line 451
    goto :goto_6

    .line 452
    :cond_15
    :try_start_2
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 453
    .line 454
    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 455
    .line 456
    if-ge v8, v7, :cond_16

    .line 457
    .line 458
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 460
    .line 461
    .line 462
    move v0, v5

    .line 463
    goto :goto_6

    .line 464
    :cond_16
    :try_start_3
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->hasContentProviderConnection(Lcom/android/server/am/ProcessRecord;)Z

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-eqz v3, :cond_18

    .line 469
    .line 470
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 471
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 472
    .line 473
    .line 474
    const/4 v0, 0x6

    .line 475
    goto :goto_6

    .line 476
    :cond_17
    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 477
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 478
    .line 479
    .line 480
    move v0, v2

    .line 481
    goto :goto_6

    .line 482
    :cond_18
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 483
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 484
    .line 485
    .line 486
    move v0, v1

    .line 487
    :goto_6
    if-lez v0, :cond_19

    .line 488
    .line 489
    goto :goto_8

    .line 490
    :goto_7
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 491
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 492
    .line 493
    .line 494
    throw p0

    .line 495
    :cond_19
    add-int/lit8 p2, p2, 0x1

    .line 496
    .line 497
    goto/16 :goto_4

    .line 498
    .line 499
    :cond_1a
    move v0, v1

    .line 500
    :goto_8
    invoke-static {}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->values()[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 501
    .line 502
    .line 503
    move-result-object p2

    .line 504
    aget-object p2, p2, v0

    .line 505
    .line 506
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 507
    .line 508
    sget-object v4, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 509
    .line 510
    if-ne v3, v4, :cond_1b

    .line 511
    .line 512
    if-gtz v0, :cond_1c

    .line 513
    .line 514
    :cond_1b
    sget-object v4, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 515
    .line 516
    if-ne v3, v4, :cond_1d

    .line 517
    .line 518
    if-lez v0, :cond_1d

    .line 519
    .line 520
    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 521
    .line 522
    if-eq p2, v0, :cond_1d

    .line 523
    .line 524
    :cond_1c
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 525
    .line 526
    sget-object v2, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 527
    .line 528
    invoke-virtual {v0, p1, v2}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 529
    .line 530
    .line 531
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 532
    .line 533
    const-string v0, "PolicyHandler"

    .line 534
    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    const-string v3, "Skipped by Normal Service condition: "

    .line 538
    .line 539
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    const-string p1, " reason: "

    .line 555
    .line 556
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    invoke-static {v0, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    return v1

    .line 573
    :cond_1d
    iget p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 574
    .line 575
    const/16 v0, 0x2710

    .line 576
    .line 577
    if-ge p2, v0, :cond_1f

    .line 578
    .line 579
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 580
    .line 581
    if-eqz p2, :cond_1f

    .line 582
    .line 583
    move p2, v1

    .line 584
    :goto_9
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 585
    .line 586
    iget-object v3, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 587
    .line 588
    array-length v3, v3

    .line 589
    if-ge p2, v3, :cond_1f

    .line 590
    .line 591
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 592
    .line 593
    aget v0, v0, p2

    .line 594
    .line 595
    const/16 v3, 0x320

    .line 596
    .line 597
    if-ge v0, v3, :cond_1e

    .line 598
    .line 599
    move p2, v2

    .line 600
    goto :goto_a

    .line 601
    :cond_1e
    add-int/lit8 p2, p2, 0x1

    .line 602
    .line 603
    goto :goto_9

    .line 604
    :cond_1f
    move p2, v1

    .line 605
    :goto_a
    if-eqz p2, :cond_20

    .line 606
    .line 607
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 608
    .line 609
    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 610
    .line 611
    invoke-virtual {p2, p1, v0}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 612
    .line 613
    .line 614
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 615
    .line 616
    const-string p2, "PolicyHandler"

    .line 617
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    const-string v2, "Skipped by uid     : "

    .line 621
    .line 622
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 626
    .line 627
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    return v1

    .line 648
    :cond_20
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 649
    .line 650
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 651
    .line 652
    iget-object v3, p2, Lcom/android/server/chimera/SystemRepository;->mActivityManager:Landroid/app/ActivityManager;

    .line 653
    .line 654
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    .line 655
    .line 656
    .line 657
    move-result v3

    .line 658
    if-nez v3, :cond_21

    .line 659
    .line 660
    :goto_b
    move p2, v1

    .line 661
    goto :goto_c

    .line 662
    :cond_21
    iget-object v3, p2, Lcom/android/server/chimera/SystemRepository;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 663
    .line 664
    if-nez v3, :cond_22

    .line 665
    .line 666
    iget-object v3, p2, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 667
    .line 668
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    .line 669
    .line 670
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v3

    .line 674
    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 675
    .line 676
    iput-object v3, p2, Lcom/android/server/chimera/SystemRepository;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 677
    .line 678
    if-nez v3, :cond_22

    .line 679
    .line 680
    goto :goto_b

    .line 681
    :cond_22
    iget-object p2, p2, Lcom/android/server/chimera/SystemRepository;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 682
    .line 683
    invoke-virtual {p2, v0}, Landroid/app/admin/DevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    .line 684
    .line 685
    .line 686
    move-result p2

    .line 687
    :goto_c
    if-eqz p2, :cond_23

    .line 688
    .line 689
    return v1

    .line 690
    :cond_23
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 691
    .line 692
    check-cast p2, Ljava/util/ArrayList;

    .line 693
    .line 694
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 695
    .line 696
    .line 697
    move-result-object p2

    .line 698
    :cond_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    if-eqz v0, :cond_26

    .line 703
    .line 704
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 709
    .line 710
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 711
    .line 712
    iget v4, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 713
    .line 714
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 715
    .line 716
    .line 717
    invoke-static {v4}, Landroid/os/Process;->getThreadGroupLeader(I)I

    .line 718
    .line 719
    .line 720
    move-result v3

    .line 721
    if-ne v3, v4, :cond_25

    .line 722
    .line 723
    move v3, v2

    .line 724
    goto :goto_d

    .line 725
    :cond_25
    move v3, v1

    .line 726
    :goto_d
    if-nez v3, :cond_24

    .line 727
    .line 728
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 729
    .line 730
    const-string p2, "PolicyHandler"

    .line 731
    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    const-string v3, "Skipped by Thread Group Leader condition: "

    .line 735
    .line 736
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 740
    .line 741
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    const-string p1, " pid: "

    .line 745
    .line 746
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    iget p1, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 750
    .line 751
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object p1

    .line 758
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    .line 760
    .line 761
    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    move v1, v2

    .line 765
    :cond_26
    xor-int/lit8 p0, v1, 0x1

    .line 766
    .line 767
    return p0

    .line 768
    :cond_27
    :goto_e
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 769
    .line 770
    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 771
    .line 772
    invoke-virtual {p2, p1, v0}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 773
    .line 774
    .line 775
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 776
    .line 777
    const-string p2, "PolicyHandler"

    .line 778
    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    .line 780
    .line 781
    const-string v2, "Skipped by adj     : "

    .line 782
    .line 783
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 787
    .line 788
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object p1

    .line 795
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object p1

    .line 802
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    return v1
.end method

.method public final onAppLaunchIntent(Ljava/lang/String;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 6
    .line 7
    check-cast v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    iget-wide v5, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimLastFilterTime:J

    .line 21
    .line 22
    sub-long v5, v3, v5

    .line 23
    .line 24
    const-wide/32 v7, 0x493e0

    .line 25
    .line 26
    .line 27
    cmp-long v5, v5, v7

    .line 28
    .line 29
    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 30
    .line 31
    const-string v7, "PolicyHandler"

    .line 32
    .line 33
    if-lez v5, :cond_1

    .line 34
    .line 35
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string/jumbo v1, "filter overtime, quit quick reclaim"

    .line 39
    .line 40
    .line 41
    invoke-static {v7, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const-string/jumbo v5, "com.sec.android.app.camera"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    iget-object v8, v6, Lcom/android/server/chimera/SystemRepository;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 56
    .line 57
    invoke-virtual {v8, v1}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    const/4 v9, 0x0

    .line 62
    if-nez v8, :cond_3

    .line 63
    .line 64
    const-string/jumbo v8, "ro.slmk.chimera.quickreclaim_big_game_enable"

    .line 65
    .line 66
    .line 67
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_2

    .line 72
    .line 73
    iget-object v8, v6, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 74
    .line 75
    invoke-virtual {v8, v1}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v8, v9

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    :goto_0
    const/4 v8, 0x1

    .line 85
    :goto_1
    if-nez v5, :cond_4

    .line 86
    .line 87
    if-nez v8, :cond_4

    .line 88
    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 94
    .line 95
    sget-object v10, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 96
    .line 97
    invoke-virtual {v6}, Lcom/android/server/chimera/SystemRepository;->getAvailableMemory()J

    .line 98
    .line 99
    .line 100
    move-result-wide v10

    .line 101
    const-wide/16 v12, 0x400

    .line 102
    .line 103
    div-long/2addr v10, v12

    .line 104
    iget-object v12, v0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 105
    .line 106
    if-eqz v5, :cond_5

    .line 107
    .line 108
    iget-wide v12, v12, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 109
    .line 110
    iget v5, v0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    .line 111
    .line 112
    int-to-long v14, v5

    .line 113
    add-long/2addr v12, v14

    .line 114
    sub-long/2addr v12, v10

    .line 115
    move-wide v15, v3

    .line 116
    goto :goto_4

    .line 117
    :cond_5
    iget-object v5, v0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 118
    .line 119
    check-cast v5, Landroid/util/ArrayMap;

    .line 120
    .line 121
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Ljava/lang/Long;

    .line 126
    .line 127
    const-wide/32 v13, 0x19000

    .line 128
    .line 129
    .line 130
    if-nez v5, :cond_6

    .line 131
    .line 132
    :goto_2
    move-wide v15, v3

    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 135
    .line 136
    .line 137
    move-result-wide v15

    .line 138
    const-wide/32 v17, 0x64000

    .line 139
    .line 140
    .line 141
    sub-long v15, v15, v17

    .line 142
    .line 143
    const-wide/16 v17, 0x2

    .line 144
    .line 145
    div-long v15, v15, v17

    .line 146
    .line 147
    add-long/2addr v15, v13

    .line 148
    cmp-long v5, v15, v13

    .line 149
    .line 150
    if-gez v5, :cond_7

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    iget v5, v0, Lcom/android/server/chimera/PolicyHandler;->mDefaultQuickReclaimAdditionalMemory:I

    .line 154
    .line 155
    int-to-long v13, v5

    .line 156
    cmp-long v5, v15, v13

    .line 157
    .line 158
    if-lez v5, :cond_8

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_8
    move-wide v13, v15

    .line 162
    goto :goto_2

    .line 163
    :goto_3
    iget-wide v2, v12, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 164
    .line 165
    add-long/2addr v13, v2

    .line 166
    sub-long v12, v13, v10

    .line 167
    .line 168
    :goto_4
    const-wide/16 v2, 0x0

    .line 169
    .line 170
    cmp-long v2, v12, v2

    .line 171
    .line 172
    if-gez v2, :cond_9

    .line 173
    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    .line 175
    .line 176
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v1, "available memory: "

    .line 180
    .line 181
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v1, ", quit chimera quick reclaim"

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v7, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_12

    .line 200
    .line 201
    :cond_9
    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 202
    .line 203
    iget v3, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 204
    .line 205
    const/4 v4, 0x1

    .line 206
    add-int/2addr v3, v4

    .line 207
    iput v3, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 208
    .line 209
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 210
    .line 211
    const/4 v10, 0x5

    .line 212
    aget v5, v3, v10

    .line 213
    .line 214
    add-int/lit8 v11, v5, 0x1

    .line 215
    .line 216
    aput v11, v3, v10

    .line 217
    .line 218
    invoke-virtual {v0, v2}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 219
    .line 220
    .line 221
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    check-cast v8, Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    move v8, v9

    .line 232
    move v10, v8

    .line 233
    move v11, v10

    .line 234
    move v14, v11

    .line 235
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v17

    .line 239
    if-eqz v17, :cond_19

    .line 240
    .line 241
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v17

    .line 245
    move-object/from16 v5, v17

    .line 246
    .line 247
    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 248
    .line 249
    if-nez v14, :cond_a

    .line 250
    .line 251
    iget-object v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_b

    .line 258
    .line 259
    :cond_a
    move-object/from16 v19, v4

    .line 260
    .line 261
    move/from16 v20, v14

    .line 262
    .line 263
    move-wide/from16 v21, v15

    .line 264
    .line 265
    const/4 v4, 0x1

    .line 266
    move/from16 v16, v8

    .line 267
    .line 268
    goto/16 :goto_10

    .line 269
    .line 270
    :cond_b
    iget-object v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 271
    .line 272
    check-cast v9, Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    move-object/from16 v19, v4

    .line 279
    .line 280
    iget-object v4, v5, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 281
    .line 282
    if-eqz v9, :cond_c

    .line 283
    .line 284
    move/from16 v20, v14

    .line 285
    .line 286
    :goto_6
    const/4 v9, 0x1

    .line 287
    goto :goto_7

    .line 288
    :cond_c
    iget-object v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 289
    .line 290
    check-cast v9, Ljava/util/ArrayList;

    .line 291
    .line 292
    move/from16 v20, v14

    .line 293
    .line 294
    const/4 v14, 0x0

    .line 295
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 300
    .line 301
    iget v9, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 302
    .line 303
    iget-object v14, v6, Lcom/android/server/chimera/SystemRepository;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 304
    .line 305
    invoke-virtual {v14, v9}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    if-nez v9, :cond_d

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_d
    iget-object v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 317
    .line 318
    invoke-interface {v9}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    new-instance v14, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda6;

    .line 323
    .line 324
    invoke-direct {v14, v0}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/chimera/PolicyHandler;)V

    .line 325
    .line 326
    .line 327
    invoke-interface {v9, v14}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    :goto_7
    const-string/jumbo v14, "quick reclaim skip "

    .line 332
    .line 333
    .line 334
    move-wide/from16 v21, v15

    .line 335
    .line 336
    const-string v15, ": "

    .line 337
    .line 338
    if-eqz v9, :cond_e

    .line 339
    .line 340
    invoke-static {v5}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 341
    .line 342
    .line 343
    new-instance v9, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v4, " for process changed"

    .line 362
    .line 363
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    invoke-static {v7, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    move/from16 v16, v8

    .line 374
    .line 375
    :goto_8
    const/4 v4, 0x1

    .line 376
    goto/16 :goto_11

    .line 377
    .line 378
    :cond_e
    iget-object v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 379
    .line 380
    check-cast v9, Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result v16

    .line 390
    if-eqz v16, :cond_11

    .line 391
    .line 392
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v16

    .line 396
    move-object/from16 v23, v9

    .line 397
    .line 398
    move-object/from16 v9, v16

    .line 399
    .line 400
    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 401
    .line 402
    iget-object v1, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 403
    .line 404
    move/from16 v16, v8

    .line 405
    .line 406
    iget v8, v5, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 407
    .line 408
    invoke-virtual {v6, v8, v1}, Lcom/android/server/chimera/SystemRepository;->hasConnectionProvider(ILjava/lang/String;)Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_f

    .line 413
    .line 414
    const-string/jumbo v1, "hasConnectionProvider"

    .line 415
    .line 416
    .line 417
    goto :goto_a

    .line 418
    :cond_f
    iget v1, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 419
    .line 420
    invoke-virtual {v6, v1}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    const/4 v8, 0x1

    .line 425
    aget v1, v1, v8

    .line 426
    .line 427
    const/16 v9, 0x12c

    .line 428
    .line 429
    if-ge v1, v9, :cond_10

    .line 430
    .line 431
    const-string/jumbo v1, "importantAdj"

    .line 432
    .line 433
    .line 434
    goto :goto_a

    .line 435
    :cond_10
    move-object/from16 v1, p1

    .line 436
    .line 437
    move/from16 v8, v16

    .line 438
    .line 439
    move-object/from16 v9, v23

    .line 440
    .line 441
    goto :goto_9

    .line 442
    :cond_11
    move/from16 v16, v8

    .line 443
    .line 444
    const/4 v1, 0x0

    .line 445
    :goto_a
    if-eqz v1, :cond_12

    .line 446
    .line 447
    invoke-static {v5}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 448
    .line 449
    .line 450
    new-instance v9, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v4, " for "

    .line 469
    .line 470
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-static {v7, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    goto :goto_8

    .line 484
    :cond_12
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 485
    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 487
    .line 488
    .line 489
    move-result-wide v23

    .line 490
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 491
    .line 492
    .line 493
    move-result-object v9

    .line 494
    check-cast v1, Ljava/util/HashMap;

    .line 495
    .line 496
    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    const-string v9, "Killed on trigger5 : "

    .line 502
    .line 503
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v9, ", freed: "

    .line 517
    .line 518
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    iget-wide v8, v5, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 522
    .line 523
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    invoke-static {v7, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-static {v4}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    iget-object v1, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 537
    .line 538
    check-cast v1, Ljava/util/ArrayList;

    .line 539
    .line 540
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    move/from16 v8, v16

    .line 545
    .line 546
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 547
    .line 548
    .line 549
    move-result v4

    .line 550
    if-eqz v4, :cond_15

    .line 551
    .line 552
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 557
    .line 558
    if-nez v3, :cond_14

    .line 559
    .line 560
    iget v9, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 561
    .line 562
    invoke-static {v9}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 563
    .line 564
    .line 565
    new-instance v9, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    const-string/jumbo v14, "quick reclaim kill "

    .line 568
    .line 569
    .line 570
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    iget v14, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 574
    .line 575
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    const-string v4, " without pidfd"

    .line 587
    .line 588
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v4

    .line 595
    invoke-static {v7, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    :cond_13
    :goto_c
    const/4 v4, 0x1

    .line 599
    goto :goto_d

    .line 600
    :cond_14
    iget-object v9, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    .line 601
    .line 602
    if-eqz v9, :cond_13

    .line 603
    .line 604
    iget-object v9, v0, Lcom/android/server/chimera/PolicyHandler;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 605
    .line 606
    new-instance v14, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;

    .line 607
    .line 608
    invoke-direct {v14, v0, v4}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v9, v14}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 612
    .line 613
    .line 614
    goto :goto_c

    .line 615
    :goto_d
    add-int/2addr v8, v4

    .line 616
    goto :goto_b

    .line 617
    :cond_15
    const/4 v4, 0x1

    .line 618
    int-to-long v14, v11

    .line 619
    move v1, v8

    .line 620
    iget-wide v8, v5, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 621
    .line 622
    add-long/2addr v14, v8

    .line 623
    long-to-int v11, v14

    .line 624
    add-int/2addr v10, v4

    .line 625
    invoke-virtual {v0, v5, v2}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 626
    .line 627
    .line 628
    int-to-long v8, v11

    .line 629
    cmp-long v5, v8, v12

    .line 630
    .line 631
    if-lez v5, :cond_16

    .line 632
    .line 633
    goto :goto_e

    .line 634
    :cond_16
    sub-long v8, v12, v8

    .line 635
    .line 636
    const-wide/16 v14, 0x5000

    .line 637
    .line 638
    cmp-long v5, v8, v14

    .line 639
    .line 640
    if-gez v5, :cond_17

    .line 641
    .line 642
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    const-string/jumbo v5, "relTarget - released < 20480, stop kill"

    .line 646
    .line 647
    .line 648
    invoke-static {v7, v5}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    goto :goto_e

    .line 652
    :cond_17
    const/4 v5, 0x4

    .line 653
    if-lt v1, v5, :cond_18

    .line 654
    .line 655
    :goto_e
    move v14, v4

    .line 656
    goto :goto_f

    .line 657
    :cond_18
    const/4 v14, 0x0

    .line 658
    :goto_f
    move v8, v1

    .line 659
    move-object/from16 v4, v19

    .line 660
    .line 661
    move-wide/from16 v15, v21

    .line 662
    .line 663
    const/4 v9, 0x0

    .line 664
    move-object/from16 v1, p1

    .line 665
    .line 666
    goto/16 :goto_5

    .line 667
    .line 668
    :goto_10
    invoke-static {v5}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 669
    .line 670
    .line 671
    :goto_11
    move-object/from16 v1, p1

    .line 672
    .line 673
    move/from16 v8, v16

    .line 674
    .line 675
    move-object/from16 v4, v19

    .line 676
    .line 677
    move/from16 v14, v20

    .line 678
    .line 679
    move-wide/from16 v15, v21

    .line 680
    .line 681
    const/4 v9, 0x0

    .line 682
    goto/16 :goto_5

    .line 683
    .line 684
    :cond_19
    move-wide/from16 v21, v15

    .line 685
    .line 686
    move/from16 v16, v8

    .line 687
    .line 688
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 689
    .line 690
    move/from16 v9, v16

    .line 691
    .line 692
    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 693
    .line 694
    .line 695
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 696
    .line 697
    check-cast v0, Ljava/util/ArrayList;

    .line 698
    .line 699
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 700
    .line 701
    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    .line 703
    .line 704
    const-string/jumbo v1, "quick reclaim kill before "

    .line 705
    .line 706
    .line 707
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    move-object/from16 v1, p1

    .line 711
    .line 712
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    const-string v1, " complete: killed "

    .line 716
    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    const-string v1, " apps, freed "

    .line 724
    .line 725
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    const-string v1, " KB, before kill relTarget: "

    .line 732
    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    const-string v1, " KB and Processing time(ms): "

    .line 740
    .line 741
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 745
    .line 746
    .line 747
    move-result-wide v1

    .line 748
    sub-long v1, v1, v21

    .line 749
    .line 750
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    invoke-static {v7, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    :goto_12
    return-void
.end method

.method public final onCameraClose()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda2;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "PolicyHandler"

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 47
    .line 48
    iget v6, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 49
    .line 50
    invoke-static {v6}, Landroid/os/Process;->getRss(I)[J

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const/4 v7, 0x0

    .line 55
    aget-wide v7, v6, v7

    .line 56
    .line 57
    const/4 v9, 0x3

    .line 58
    aget-wide v9, v6, v9

    .line 59
    .line 60
    add-long/2addr v7, v9

    .line 61
    iput-wide v7, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->closeRss:J

    .line 62
    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo v7, "pid: "

    .line 66
    .line 67
    .line 68
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v7, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 72
    .line 73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v7, " name: "

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v7, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v7, " closeRss: "

    .line 87
    .line 88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-wide v7, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->closeRss:J

    .line 92
    .line 93
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {v4, v6}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-wide v4, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->openRss:J

    .line 107
    .line 108
    iget-wide v6, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->closeRss:J

    .line 109
    .line 110
    sub-long/2addr v4, v6

    .line 111
    add-long/2addr v1, v4

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    long-to-int v0, v1

    .line 114
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mDefaultQuickReclaimAdditionalMemory:I

    .line 115
    .line 116
    shr-int/lit8 v2, v1, 0x1

    .line 117
    .line 118
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    add-int/2addr v1, v2

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const/4 v1, 0x1

    .line 128
    iput-boolean v1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    .line 129
    .line 130
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    .line 131
    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string/jumbo v1, "get dynamic quick reclaim additional memory successfully "

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, " (MB)"

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-static {v4, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_2
    :goto_1
    return-void
.end method

.method public final onCameraOpen()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda2;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 40
    .line 41
    iget v2, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 42
    .line 43
    invoke-static {v2}, Landroid/os/Process;->getRss(I)[J

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x0

    .line 48
    aget-wide v3, v2, v3

    .line 49
    .line 50
    const/4 v5, 0x3

    .line 51
    aget-wide v5, v2, v5

    .line 52
    .line 53
    add-long/2addr v3, v5

    .line 54
    iput-wide v3, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->openRss:J

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo v3, "pid: "

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v3, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, " name: "

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v3, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v3, " openRss: "

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-wide v3, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->openRss:J

    .line 85
    .line 86
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const-string v2, "PolicyHandler"

    .line 99
    .line 100
    invoke-static {v2, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    :goto_1
    return-void
.end method

.method public final onDeviceIdle()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "PolicyHandler"

    .line 7
    .line 8
    const-string/jumbo v0, "onDeviceIdle()"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isEnable()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Handler onDozeState catch exception "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "HeimdallAlwaysRunningMonitor"

    .line 42
    .line 43
    invoke-static {p0, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const/4 p2, 0x0

    .line 2
    aget-object p4, p5, p2

    .line 3
    .line 4
    if-nez p6, :cond_7

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast p5, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p5, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 22
    .line 23
    iget-object p5, p5, Lcom/android/server/chimera/SystemRepository;->mFGActivityManager:Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

    .line 24
    .line 25
    if-eqz p5, :cond_7

    .line 26
    .line 27
    monitor-enter p5

    .line 28
    :try_start_0
    iget-object v0, p5, Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;->mForegroundActivities:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p5

    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit p5

    .line 38
    throw p0

    .line 39
    :cond_0
    iget-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 40
    .line 41
    iget-boolean p5, p5, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 42
    .line 43
    if-eqz p5, :cond_7

    .line 44
    .line 45
    iget-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 46
    .line 47
    iget-object v0, p5, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 48
    .line 49
    invoke-virtual {v0, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_7

    .line 54
    .line 55
    const-string/jumbo v0, "com.sec.android.app.camera"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 67
    .line 68
    check-cast v0, Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Long;

    .line 75
    .line 76
    const-wide/16 v1, -0x1

    .line 77
    .line 78
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const-wide/32 v3, 0x64000

    .line 90
    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    iget-object v0, p5, Lcom/android/server/chimera/SystemRepository;->mGameApps:Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    .line 96
    .line 97
    invoke-virtual {v0, p4}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->contains(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget-object v6, p5, Lcom/android/server/chimera/SystemRepository;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 102
    .line 103
    invoke-virtual {v6, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    if-nez v6, :cond_3

    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 112
    .line 113
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object p5

    .line 117
    check-cast p1, Landroid/util/ArrayMap;

    .line 118
    .line 119
    invoke-virtual {p1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    invoke-static {p1, v5, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    cmp-long p1, v1, v3

    .line 130
    .line 131
    if-lez p1, :cond_4

    .line 132
    .line 133
    iget-object p1, p5, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 134
    .line 135
    invoke-virtual {p1, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->update(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 139
    .line 140
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object p5

    .line 144
    check-cast p1, Landroid/util/ArrayMap;

    .line 145
    .line 146
    invoke-virtual {p1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    invoke-static {p1, v5, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 151
    .line 152
    .line 153
    move-result-wide v0

    .line 154
    iget-object p1, p5, Lcom/android/server/chimera/SystemRepository;->mGameApps:Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    .line 155
    .line 156
    invoke-virtual {p1, p4}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->contains(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_6

    .line 161
    .line 162
    cmp-long p1, v0, v3

    .line 163
    .line 164
    if-lez p1, :cond_7

    .line 165
    .line 166
    iget-object p1, p5, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 167
    .line 168
    invoke-virtual {p1, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->update(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 172
    .line 173
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 174
    .line 175
    .line 176
    move-result-object p5

    .line 177
    check-cast p1, Landroid/util/ArrayMap;

    .line 178
    .line 179
    invoke-virtual {p1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_6
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 184
    .line 185
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object p5

    .line 189
    check-cast p1, Landroid/util/ArrayMap;

    .line 190
    .line 191
    invoke-virtual {p1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    :cond_7
    :goto_0
    const-string/jumbo p1, "com.samsung.android.permissioncontroller"

    .line 195
    .line 196
    .line 197
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-nez p1, :cond_e

    .line 202
    .line 203
    const-string/jumbo p1, "com.google.android.permissioncontroller"

    .line 204
    .line 205
    .line 206
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_8

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_8
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 214
    .line 215
    iget-boolean p1, p1, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    .line 216
    .line 217
    if-eqz p1, :cond_d

    .line 218
    .line 219
    if-nez p6, :cond_e

    .line 220
    .line 221
    if-nez p3, :cond_e

    .line 222
    .line 223
    sget-object p1, Lcom/android/server/chimera/ChimeraCommonUtil;->mAppLaunchInfoMap:Ljava/util/Map;

    .line 224
    .line 225
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 226
    .line 227
    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p3

    .line 231
    check-cast p3, Ljava/lang/String;

    .line 232
    .line 233
    if-eqz p3, :cond_9

    .line 234
    .line 235
    const-string p5, "COLD"

    .line 236
    .line 237
    invoke-virtual {p3, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result p3

    .line 241
    goto :goto_1

    .line 242
    :cond_9
    move p3, p2

    .line 243
    :goto_1
    if-nez p3, :cond_c

    .line 244
    .line 245
    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Ljava/lang/String;

    .line 250
    .line 251
    if-eqz p1, :cond_a

    .line 252
    .line 253
    const-string p2, "WARM"

    .line 254
    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result p2

    .line 259
    :cond_a
    if-eqz p2, :cond_b

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_b
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 263
    .line 264
    const-string p1, "PolicyHandler"

    .line 265
    .line 266
    const-string p2, "Chimera AppFileCacheReclaim do reclaimAppCaches skip: "

    .line 267
    .line 268
    invoke-virtual {p2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    invoke-static {p1, p2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mHandler:Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

    .line 280
    .line 281
    const/4 p2, 0x1

    .line 282
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    iput-object p4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 287
    .line 288
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mHandler:Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

    .line 289
    .line 290
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_d
    sget-object p0, Lcom/android/server/chimera/ChimeraCommonUtil;->mAppLaunchInfoMap:Ljava/util/Map;

    .line 295
    .line 296
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 297
    .line 298
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 299
    .line 300
    .line 301
    :cond_e
    :goto_3
    return-void
.end method

.method public final onHomeLaunched()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string v3, "PolicyHandler"

    .line 10
    .line 11
    const-string/jumbo v4, "onHomeLaunched()"

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual {v0, v4, v5}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    .line 21
    .line 22
    .line 23
    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 24
    .line 25
    iget-boolean v6, v6, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 26
    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    goto/16 :goto_12

    .line 30
    .line 31
    :cond_0
    sget-object v6, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/server/chimera/SystemRepository;->getAvailableMemory()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    const-wide/16 v8, 0x400

    .line 38
    .line 39
    div-long/2addr v6, v8

    .line 40
    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 41
    .line 42
    iget-wide v8, v2, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 43
    .line 44
    sub-long/2addr v8, v6

    .line 45
    iget v6, v0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    .line 46
    .line 47
    int-to-long v6, v6

    .line 48
    add-long/2addr v8, v6

    .line 49
    const-wide/16 v6, 0x0

    .line 50
    .line 51
    cmp-long v8, v8, v6

    .line 52
    .line 53
    if-gtz v8, :cond_1

    .line 54
    .line 55
    goto/16 :goto_12

    .line 56
    .line 57
    :cond_1
    iget v2, v2, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 58
    .line 59
    shr-int/2addr v2, v1

    .line 60
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 61
    .line 62
    iget-object v9, v0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 63
    .line 64
    iget-object v10, v9, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 65
    .line 66
    invoke-virtual {v10}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-virtual {v9, v8, v2, v4, v10}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_1a

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    const/4 v9, 0x3

    .line 81
    if-lt v8, v9, :cond_1a

    .line 82
    .line 83
    iget-boolean v8, v0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    .line 84
    .line 85
    if-eqz v8, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_6

    .line 99
    .line 100
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    check-cast v9, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 105
    .line 106
    iget v10, v9, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    sget-object v12, Lcom/android/server/chimera/PolicyHandler;->CMDLINE_OUT:[I

    .line 110
    .line 111
    const-string v13, "/cmdline"

    .line 112
    .line 113
    const-string v14, "/proc/"

    .line 114
    .line 115
    if-nez v10, :cond_3

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    new-array v10, v1, [Ljava/lang/String;

    .line 119
    .line 120
    new-instance v15, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget v6, v9, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 126
    .line 127
    invoke-static {v6, v15, v13}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v6, v12, v10, v11, v11}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_5

    .line 136
    .line 137
    aget-object v6, v10, v5

    .line 138
    .line 139
    if-eqz v6, :cond_5

    .line 140
    .line 141
    iget-object v7, v9, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-nez v6, :cond_4

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    const-wide/16 v6, 0x0

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 154
    .line 155
    .line 156
    move-result-wide v6

    .line 157
    new-instance v8, Ljava/io/File;

    .line 158
    .line 159
    const-string v9, "/proc"

    .line 160
    .line 161
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    if-nez v8, :cond_7

    .line 169
    .line 170
    :cond_6
    :goto_2
    move v11, v1

    .line 171
    goto/16 :goto_a

    .line 172
    .line 173
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    array-length v10, v8

    .line 179
    move v15, v5

    .line 180
    :goto_3
    if-ge v15, v10, :cond_8

    .line 181
    .line 182
    aget-object v16, v8, v15

    .line 183
    .line 184
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v16

    .line 188
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .line 194
    .line 195
    :catch_0
    add-int/2addr v15, v1

    .line 196
    const/4 v5, 0x0

    .line 197
    goto :goto_3

    .line 198
    :cond_8
    new-array v5, v1, [Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    const/4 v9, 0x0

    .line 205
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    if-eqz v10, :cond_f

    .line 210
    .line 211
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    check-cast v10, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result v15

    .line 221
    const/16 v1, 0x64

    .line 222
    .line 223
    if-ge v15, v1, :cond_a

    .line 224
    .line 225
    :cond_9
    :goto_5
    const/4 v11, 0x1

    .line 226
    goto :goto_8

    .line 227
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {v1, v12, v5, v11, v11}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    const/4 v1, 0x0

    .line 249
    aget-object v15, v5, v1

    .line 250
    .line 251
    if-nez v15, :cond_b

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_b
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraProviderInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 255
    .line 256
    iget-object v11, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    if-eqz v11, :cond_c

    .line 263
    .line 264
    :goto_6
    const/4 v11, 0x1

    .line 265
    goto :goto_7

    .line 266
    :cond_c
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraAppInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 267
    .line 268
    iget-object v11, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v11

    .line 274
    if-eqz v11, :cond_d

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_d
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraServerInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 278
    .line 279
    iget-object v11, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v11

    .line 285
    if-eqz v11, :cond_9

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :goto_7
    add-int/2addr v9, v11

    .line 289
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 290
    .line 291
    .line 292
    move-result v10

    .line 293
    iput v10, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 294
    .line 295
    new-instance v10, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string/jumbo v15, "get camera process\'s pid: "

    .line 298
    .line 299
    .line 300
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget v15, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 304
    .line 305
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v15, " name: "

    .line 309
    .line 310
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    iget-object v1, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-static {v3, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 326
    .line 327
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-lt v9, v1, :cond_e

    .line 332
    .line 333
    goto :goto_9

    .line 334
    :cond_e
    :goto_8
    move v1, v11

    .line 335
    const/4 v11, 0x0

    .line 336
    goto/16 :goto_4

    .line 337
    .line 338
    :cond_f
    move v11, v1

    .line 339
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string/jumbo v5, "get camera process\'s pid success and Processing time(ms): "

    .line 342
    .line 343
    .line 344
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 348
    .line 349
    .line 350
    move-result-wide v8

    .line 351
    sub-long/2addr v8, v6

    .line 352
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-static {v3, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    const-wide/16 v6, 0x0

    .line 367
    .line 368
    :cond_10
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-eqz v5, :cond_12

    .line 373
    .line 374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 379
    .line 380
    iget-wide v8, v5, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 381
    .line 382
    iget-wide v12, v5, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    .line 383
    .line 384
    sub-long/2addr v8, v12

    .line 385
    cmp-long v10, v8, v6

    .line 386
    .line 387
    if-lez v10, :cond_11

    .line 388
    .line 389
    move-wide v6, v8

    .line 390
    :cond_11
    iget v5, v5, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 391
    .line 392
    if-le v5, v11, :cond_10

    .line 393
    .line 394
    move v11, v5

    .line 395
    goto :goto_b

    .line 396
    :cond_12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    const/4 v8, 0x4

    .line 405
    if-eqz v5, :cond_13

    .line 406
    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 412
    .line 413
    iget v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 414
    .line 415
    int-to-float v9, v9

    .line 416
    const/high16 v10, 0x3f000000    # 0.5f

    .line 417
    .line 418
    mul-float/2addr v9, v10

    .line 419
    int-to-float v10, v11

    .line 420
    div-float/2addr v9, v10

    .line 421
    iget v10, v5, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 422
    .line 423
    int-to-float v10, v10

    .line 424
    const v12, 0x3dcccccd    # 0.1f

    .line 425
    .line 426
    .line 427
    mul-float/2addr v10, v12

    .line 428
    const/high16 v12, 0x42480000    # 50.0f

    .line 429
    .line 430
    div-float/2addr v10, v12

    .line 431
    add-float/2addr v10, v9

    .line 432
    iget-wide v12, v5, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 433
    .line 434
    iget-wide v14, v5, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    .line 435
    .line 436
    sub-long/2addr v12, v14

    .line 437
    long-to-float v9, v12

    .line 438
    const v12, 0x3ecccccd    # 0.4f

    .line 439
    .line 440
    .line 441
    mul-float/2addr v9, v12

    .line 442
    long-to-float v12, v6

    .line 443
    div-float/2addr v9, v12

    .line 444
    add-float/2addr v9, v10

    .line 445
    const/high16 v10, 0x42c80000    # 100.0f

    .line 446
    .line 447
    mul-float/2addr v9, v10

    .line 448
    iput v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->score:F

    .line 449
    .line 450
    iget v12, v5, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 451
    .line 452
    sub-int/2addr v8, v12

    .line 453
    int-to-float v8, v8

    .line 454
    mul-float/2addr v8, v10

    .line 455
    add-float/2addr v8, v9

    .line 456
    iput v8, v5, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    .line 457
    .line 458
    goto :goto_c

    .line 459
    :cond_13
    new-instance v1, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda4;

    .line 460
    .line 461
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 462
    .line 463
    .line 464
    invoke-interface {v2, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 465
    .line 466
    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 468
    .line 469
    .line 470
    move-result-wide v5

    .line 471
    iput-wide v5, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimLastFilterTime:J

    .line 472
    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    .line 474
    .line 475
    .line 476
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    const/4 v2, 0x0

    .line 481
    :cond_14
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    if-eqz v5, :cond_1c

    .line 486
    .line 487
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 492
    .line 493
    iget v6, v5, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 494
    .line 495
    if-lt v6, v8, :cond_15

    .line 496
    .line 497
    const-string/jumbo v0, "killing stopped to group 4"

    .line 498
    .line 499
    .line 500
    invoke-static {v3, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_12

    .line 504
    .line 505
    :cond_15
    invoke-virtual {v0, v5, v4}, Lcom/android/server/chimera/PolicyHandler;->isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    .line 506
    .line 507
    .line 508
    move-result v6

    .line 509
    if-nez v6, :cond_16

    .line 510
    .line 511
    const/4 v11, 0x0

    .line 512
    goto :goto_d

    .line 513
    :cond_16
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    .line 514
    .line 515
    .line 516
    move-result v6

    .line 517
    if-eqz v6, :cond_19

    .line 518
    .line 519
    new-instance v6, Ljava/util/ArrayList;

    .line 520
    .line 521
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .line 523
    .line 524
    iget-object v7, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 525
    .line 526
    check-cast v7, Ljava/util/ArrayList;

    .line 527
    .line 528
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 533
    .line 534
    .line 535
    move-result v9

    .line 536
    if-eqz v9, :cond_19

    .line 537
    .line 538
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v9

    .line 542
    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 543
    .line 544
    :try_start_1
    iget v10, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 545
    .line 546
    const/4 v11, 0x0

    .line 547
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Process;->openPidFd(II)Ljava/io/FileDescriptor;

    .line 548
    .line 549
    .line 550
    move-result-object v10

    .line 551
    if-nez v10, :cond_17

    .line 552
    .line 553
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    :catch_1
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 558
    .line 559
    .line 560
    move-result v7

    .line 561
    if-eqz v7, :cond_14

    .line 562
    .line 563
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v7

    .line 567
    check-cast v7, Ljava/io/FileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 568
    .line 569
    :try_start_3
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 570
    .line 571
    .line 572
    goto :goto_f

    .line 573
    :cond_17
    :try_start_4
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 574
    .line 575
    .line 576
    iput-object v10, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    .line 577
    .line 578
    goto :goto_e

    .line 579
    :catch_2
    const/4 v11, 0x0

    .line 580
    :catch_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    :catch_4
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 585
    .line 586
    .line 587
    move-result v6

    .line 588
    if-eqz v6, :cond_18

    .line 589
    .line 590
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v6

    .line 594
    check-cast v6, Ljava/io/FileDescriptor;

    .line 595
    .line 596
    :try_start_5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 597
    .line 598
    .line 599
    goto :goto_10

    .line 600
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    const-string/jumbo v6, "open pid "

    .line 603
    .line 604
    .line 605
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    iget v6, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 609
    .line 610
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    const-string v6, ": "

    .line 614
    .line 615
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    iget-object v6, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 619
    .line 620
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v6, " failed!"

    .line 624
    .line 625
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v5

    .line 632
    invoke-static {v3, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    goto/16 :goto_d

    .line 636
    .line 637
    :cond_19
    const/4 v11, 0x0

    .line 638
    iget-object v6, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 639
    .line 640
    check-cast v6, Ljava/util/ArrayList;

    .line 641
    .line 642
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 643
    .line 644
    .line 645
    move-result v6

    .line 646
    add-int/2addr v2, v6

    .line 647
    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 648
    .line 649
    check-cast v6, Ljava/util/ArrayList;

    .line 650
    .line 651
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    if-lt v2, v8, :cond_14

    .line 655
    .line 656
    goto :goto_12

    .line 657
    :cond_1a
    move v11, v5

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    .line 659
    .line 660
    const-string/jumbo v1, "executePolicy() - getAppsToKill return "

    .line 661
    .line 662
    .line 663
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    if-eqz v2, :cond_1b

    .line 667
    .line 668
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 669
    .line 670
    .line 671
    move-result v5

    .line 672
    goto :goto_11

    .line 673
    :cond_1b
    move v5, v11

    .line 674
    :goto_11
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-static {v3, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    :cond_1c
    :goto_12
    return-void
.end method

.method public final onLmkdEventTriggered(II)V
    .locals 10

    .line 1
    const-string/jumbo v0, "onLmkdKillTriggered() - lmkdLevel: "

    .line 2
    .line 3
    .line 4
    const-string v1, " type: "

    .line 5
    .line 6
    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v1, "PolicyHandler"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-eq p2, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq p2, v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    sget-object p2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD_GENIE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 29
    .line 30
    invoke-virtual {p0, p2, p1}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_1
    sget-object p2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 36
    .line 37
    invoke-virtual {p0, p2, p1}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 43
    .line 44
    check-cast p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-lez p1, :cond_4

    .line 51
    .line 52
    new-instance p1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance p2, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 68
    .line 69
    check-cast v2, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const-string v4, "AbnormalFgsDetector"

    .line 80
    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 88
    .line 89
    iget-object v5, v3, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    iget v5, v3, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->uid:I

    .line 95
    .line 96
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    const/16 v5, 0x1388

    .line 104
    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v5, v3, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    .line 113
    .line 114
    iget-wide v6, v3, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->detectPss:J

    .line 115
    .line 116
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 117
    .line 118
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v8, "TYPE"

    .line 122
    .line 123
    const/16 v9, 0x67

    .line 124
    .line 125
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    const-string v8, "PNAME"

    .line 129
    .line 130
    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    const-string v5, "PSS"

    .line 134
    .line 135
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    sub-int/2addr v5, v0

    .line 147
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-nez v4, :cond_2

    .line 156
    .line 157
    sget-object v4, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 158
    .line 159
    invoke-virtual {v4, v3}, Lcom/android/server/chimera/SystemRepository;->sendHqmBigData(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catch_0
    sget-object v3, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    const-string/jumbo v3, "failed to create the KPUT"

    .line 169
    .line 170
    .line 171
    invoke-static {v4, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 176
    .line 177
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string/jumbo v2, "com.samsung.sdhms.MEMORY_ABNORMAL_APP_DETECTION"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    const-string/jumbo v2, "package_name"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    const-string/jumbo p1, "uid"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    const-string p1, "anomaly_type"

    .line 199
    .line 200
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    const-string/jumbo p1, "com.sec.android.sdhms"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    sget-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 210
    .line 211
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    .line 215
    .line 216
    sget-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 217
    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string/jumbo v0, "reported AbnormalHeavyApp : "

    .line 221
    .line 222
    .line 223
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 227
    .line 228
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    invoke-static {v4, p2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    .line 254
    .line 255
    iget-object p2, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 256
    .line 257
    check-cast p1, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 260
    .line 261
    .line 262
    iget-object p0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 263
    .line 264
    check-cast p0, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 267
    .line 268
    .line 269
    :cond_4
    :goto_1
    return-void
.end method

.method public final onQuotaKill(Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const-wide/32 v2, 0x7d000

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    move-wide v7, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 13
    .line 14
    invoke-virtual {v0, v4}, Lcom/android/server/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 21
    .line 22
    const-string v1, "PolicyHandler"

    .line 23
    .line 24
    const-string/jumbo v2, "executePolicy() - prepareForTrigger fails"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance v4, Lcom/android/internal/util/MemInfoReader;

    .line 35
    .line 36
    invoke-direct {v4}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    const-wide/16 v7, 0x400

    .line 47
    .line 48
    div-long/2addr v5, v7

    .line 49
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getShmemSizeKb()J

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    sub-long/2addr v5, v7

    .line 54
    iget-object v7, v0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 55
    .line 56
    iget-wide v7, v7, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 57
    .line 58
    sub-long/2addr v7, v5

    .line 59
    const-wide/32 v9, 0xc800

    .line 60
    .line 61
    .line 62
    cmp-long v11, v7, v9

    .line 63
    .line 64
    if-gez v11, :cond_3

    .line 65
    .line 66
    invoke-static {v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getMinSwapFreePercentage()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    add-int/2addr v7, v1

    .line 75
    if-ge v4, v7, :cond_2

    .line 76
    .line 77
    move-wide v7, v9

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 80
    .line 81
    const-string v1, "PolicyHandler"

    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string/jumbo v3, "onQuotaKill() skip by memory enough, memAvailable: "

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v3, ", swapfree(%): "

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_3
    :goto_0
    iget v4, v0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillTriggerCnt:I

    .line 114
    .line 115
    const/4 v5, 0x1

    .line 116
    add-int/2addr v4, v5

    .line 117
    iput v4, v0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillTriggerCnt:I

    .line 118
    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v9

    .line 123
    iget-object v4, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    new-instance v12, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda5;

    .line 134
    .line 135
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    invoke-interface {v11}, Ljava/util/stream/IntStream;->toArray()[I

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    invoke-virtual {v4, v11}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    const/4 v11, 0x0

    .line 151
    if-eqz v4, :cond_6

    .line 152
    .line 153
    iget-object v12, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 154
    .line 155
    if-nez v12, :cond_4

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    move v13, v11

    .line 164
    :goto_1
    move-object v14, v6

    .line 165
    check-cast v14, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 168
    .line 169
    .line 170
    move-result v15

    .line 171
    if-ge v13, v15, :cond_7

    .line 172
    .line 173
    iget-object v15, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v15, [I

    .line 176
    .line 177
    aget v15, v15, v13

    .line 178
    .line 179
    const/16 v1, 0x64

    .line 180
    .line 181
    if-gt v1, v15, :cond_5

    .line 182
    .line 183
    const/16 v1, 0xfa

    .line 184
    .line 185
    if-gt v15, v1, :cond_5

    .line 186
    .line 187
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 192
    .line 193
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 197
    .line 198
    const/16 v1, 0xa

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_6
    :goto_2
    const/4 v12, 0x0

    .line 202
    :cond_7
    if-nez v12, :cond_8

    .line 203
    .line 204
    return-void

    .line 205
    :cond_8
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 206
    .line 207
    .line 208
    move-result-wide v1

    .line 209
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 210
    .line 211
    const-string v4, "PolicyHandler"

    .line 212
    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string/jumbo v13, "onQuotaKill(), remain target: "

    .line 216
    .line 217
    .line 218
    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-static {v4, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    move v4, v11

    .line 240
    :goto_3
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    array-length v6, v6

    .line 245
    if-ge v4, v6, :cond_9

    .line 246
    .line 247
    iget-object v6, v3, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    .line 248
    .line 249
    aget-object v6, v6, v4

    .line 250
    .line 251
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 252
    .line 253
    .line 254
    add-int/lit8 v4, v4, 0x1

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_9
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 258
    .line 259
    iget-object v4, v0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 260
    .line 261
    sget-object v6, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 262
    .line 263
    invoke-virtual {v3, v4, v11, v6, v12}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    if-eqz v3, :cond_1d

    .line 268
    .line 269
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-eqz v4, :cond_a

    .line 274
    .line 275
    goto/16 :goto_14

    .line 276
    .line 277
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    if-eqz v6, :cond_c

    .line 286
    .line 287
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    check-cast v6, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 292
    .line 293
    iget-object v6, v6, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 294
    .line 295
    check-cast v6, Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    .line 303
    .line 304
    move-result v12

    .line 305
    if-eqz v12, :cond_b

    .line 306
    .line 307
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v12

    .line 311
    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 312
    .line 313
    iget v13, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 314
    .line 315
    iget-wide v14, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 316
    .line 317
    invoke-static {v13, v14, v15}, Lcom/android/server/chimera/ChimeraCommonUtil;->getDRAMUsed(IJ)J

    .line 318
    .line 319
    .line 320
    move-result-wide v13

    .line 321
    iput-wide v13, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->DRAMUsed:J

    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_c
    new-instance v4, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;

    .line 325
    .line 326
    invoke-direct {v4, v0}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/PolicyHandler;)V

    .line 327
    .line 328
    .line 329
    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 330
    .line 331
    .line 332
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 333
    .line 334
    iget v6, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 335
    .line 336
    add-int/2addr v6, v5

    .line 337
    iput v6, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 338
    .line 339
    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 340
    .line 341
    const/4 v12, 0x6

    .line 342
    aget v13, v6, v12

    .line 343
    .line 344
    add-int/2addr v13, v5

    .line 345
    aput v13, v6, v12

    .line 346
    .line 347
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    move v6, v11

    .line 352
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    .line 354
    .line 355
    move-result v12

    .line 356
    if-eqz v12, :cond_1b

    .line 357
    .line 358
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v12

    .line 362
    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 363
    .line 364
    invoke-virtual {v0, v12, v4}, Lcom/android/server/chimera/PolicyHandler;->isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    .line 365
    .line 366
    .line 367
    move-result v15

    .line 368
    if-nez v15, :cond_d

    .line 369
    .line 370
    move-object/from16 v18, v3

    .line 371
    .line 372
    move-wide/from16 v16, v7

    .line 373
    .line 374
    goto/16 :goto_e

    .line 375
    .line 376
    :cond_d
    iget-object v15, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 377
    .line 378
    iget-object v15, v15, Lcom/android/server/chimera/SystemRepository;->mFGActivityManager:Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

    .line 379
    .line 380
    if-eqz v15, :cond_f

    .line 381
    .line 382
    iget-object v5, v12, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 383
    .line 384
    monitor-enter v15

    .line 385
    :try_start_0
    iget-object v11, v15, Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;->mForegroundActivities:Landroid/util/SparseArray;

    .line 386
    .line 387
    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->indexOfValueByValue(Ljava/lang/Object;)I

    .line 388
    .line 389
    .line 390
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    if-ltz v5, :cond_e

    .line 392
    .line 393
    const/4 v5, 0x1

    .line 394
    goto :goto_6

    .line 395
    :cond_e
    const/4 v5, 0x0

    .line 396
    :goto_6
    monitor-exit v15

    .line 397
    if-eqz v5, :cond_f

    .line 398
    .line 399
    const/4 v5, 0x1

    .line 400
    goto :goto_7

    .line 401
    :catchall_0
    move-exception v0

    .line 402
    monitor-exit v15

    .line 403
    throw v0

    .line 404
    :cond_f
    const/4 v5, 0x0

    .line 405
    :goto_7
    iget-object v11, v0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 406
    .line 407
    iget-object v15, v12, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 408
    .line 409
    iget v13, v12, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 410
    .line 411
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    .line 415
    .line 416
    .line 417
    move-result v13

    .line 418
    move-wide/from16 v16, v7

    .line 419
    .line 420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 421
    .line 422
    .line 423
    move-result-wide v7

    .line 424
    iget-object v11, v11, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 425
    .line 426
    iget-object v11, v11, Lcom/android/server/chimera/SystemRepository;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 427
    .line 428
    invoke-virtual {v11, v13, v15, v7, v8}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    const/16 v8, 0xa

    .line 433
    .line 434
    if-gt v7, v8, :cond_18

    .line 435
    .line 436
    if-eqz v5, :cond_10

    .line 437
    .line 438
    :goto_8
    move-object/from16 v18, v3

    .line 439
    .line 440
    goto/16 :goto_e

    .line 441
    .line 442
    :cond_10
    iget-object v7, v12, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 443
    .line 444
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    new-instance v11, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda1;

    .line 449
    .line 450
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-interface {v7, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 454
    .line 455
    .line 456
    move-result-object v7

    .line 457
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 458
    .line 459
    .line 460
    move-result-object v11

    .line 461
    invoke-interface {v7, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    check-cast v7, Ljava/util/List;

    .line 466
    .line 467
    iget-object v11, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 468
    .line 469
    iget v13, v12, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 470
    .line 471
    iget-object v11, v11, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 472
    .line 473
    invoke-static {}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v14

    .line 477
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 481
    .line 482
    .line 483
    monitor-enter v11

    .line 484
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 489
    .line 490
    .line 491
    move-result v15

    .line 492
    if-eqz v15, :cond_17

    .line 493
    .line 494
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v15

    .line 498
    check-cast v15, Ljava/lang/String;

    .line 499
    .line 500
    iget-object v8, v11, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 501
    .line 502
    invoke-virtual {v8, v13, v15}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 503
    .line 504
    .line 505
    move-result-object v8

    .line 506
    if-nez v8, :cond_11

    .line 507
    .line 508
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 509
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 510
    .line 511
    .line 512
    goto :goto_8

    .line 513
    :catchall_1
    move-exception v0

    .line 514
    goto/16 :goto_10

    .line 515
    .line 516
    :cond_11
    :try_start_2
    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 517
    .line 518
    iget-object v8, v8, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 519
    .line 520
    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 525
    .line 526
    .line 527
    move-result v15

    .line 528
    if-eqz v15, :cond_16

    .line 529
    .line 530
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v15

    .line 534
    check-cast v15, Lcom/android/server/am/ServiceRecord;

    .line 535
    .line 536
    iget-object v15, v15, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 537
    .line 538
    move-object/from16 v18, v3

    .line 539
    .line 540
    move-object/from16 v19, v7

    .line 541
    .line 542
    const/4 v3, 0x0

    .line 543
    :goto_b
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 544
    .line 545
    .line 546
    move-result v7

    .line 547
    if-ge v3, v7, :cond_15

    .line 548
    .line 549
    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v7

    .line 553
    check-cast v7, Ljava/util/ArrayList;

    .line 554
    .line 555
    if-eqz v7, :cond_14

    .line 556
    .line 557
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 558
    .line 559
    .line 560
    move-result-object v7

    .line 561
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 562
    .line 563
    .line 564
    move-result v20

    .line 565
    if-eqz v20, :cond_14

    .line 566
    .line 567
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v20

    .line 571
    move-object/from16 v21, v7

    .line 572
    .line 573
    move-object/from16 v7, v20

    .line 574
    .line 575
    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 576
    .line 577
    move-object/from16 v20, v8

    .line 578
    .line 579
    iget v8, v7, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    .line 580
    .line 581
    invoke-static {v8}, Landroid/os/UserHandle;->isCore(I)Z

    .line 582
    .line 583
    .line 584
    move-result v8

    .line 585
    if-nez v8, :cond_13

    .line 586
    .line 587
    iget-object v7, v7, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 588
    .line 589
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v7

    .line 593
    if-eqz v7, :cond_12

    .line 594
    .line 595
    goto :goto_d

    .line 596
    :cond_12
    move-object/from16 v8, v20

    .line 597
    .line 598
    move-object/from16 v7, v21

    .line 599
    .line 600
    goto :goto_c

    .line 601
    :cond_13
    :goto_d
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 602
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 603
    .line 604
    .line 605
    :goto_e
    move-wide/from16 v7, v16

    .line 606
    .line 607
    move-object/from16 v3, v18

    .line 608
    .line 609
    :goto_f
    const/4 v5, 0x1

    .line 610
    const/4 v11, 0x0

    .line 611
    goto/16 :goto_5

    .line 612
    .line 613
    :cond_14
    move-object/from16 v20, v8

    .line 614
    .line 615
    add-int/lit8 v3, v3, 0x1

    .line 616
    .line 617
    move-object/from16 v8, v20

    .line 618
    .line 619
    goto :goto_b

    .line 620
    :cond_15
    move-object/from16 v3, v18

    .line 621
    .line 622
    move-object/from16 v7, v19

    .line 623
    .line 624
    goto :goto_a

    .line 625
    :cond_16
    const/16 v8, 0xa

    .line 626
    .line 627
    goto/16 :goto_9

    .line 628
    .line 629
    :cond_17
    move-object/from16 v18, v3

    .line 630
    .line 631
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 632
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 633
    .line 634
    .line 635
    iget-object v3, v12, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 636
    .line 637
    invoke-static {v3}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    goto :goto_11

    .line 641
    :goto_10
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 642
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 643
    .line 644
    .line 645
    throw v0

    .line 646
    :cond_18
    move-object/from16 v18, v3

    .line 647
    .line 648
    :goto_11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    const-string v7, " "

    .line 651
    .line 652
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    iget-object v7, v12, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 656
    .line 657
    check-cast v7, Ljava/util/ArrayList;

    .line 658
    .line 659
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 660
    .line 661
    .line 662
    move-result-object v7

    .line 663
    const-wide/16 v13, 0x0

    .line 664
    .line 665
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 666
    .line 667
    .line 668
    move-result v8

    .line 669
    if-eqz v8, :cond_19

    .line 670
    .line 671
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v8

    .line 675
    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 676
    .line 677
    iget-object v11, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 678
    .line 679
    iget-object v15, v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 680
    .line 681
    move-object/from16 v19, v7

    .line 682
    .line 683
    iget v7, v12, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 684
    .line 685
    move-wide/from16 v20, v9

    .line 686
    .line 687
    const-string v9, "QuotaKill"

    .line 688
    .line 689
    invoke-virtual {v11, v7, v15, v9, v5}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 690
    .line 691
    .line 692
    iget-wide v9, v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->DRAMUsed:J

    .line 693
    .line 694
    add-long/2addr v13, v9

    .line 695
    const-string v7, ","

    .line 696
    .line 697
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    iget v7, v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 701
    .line 702
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    const-string v7, " "

    .line 706
    .line 707
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    iget-object v7, v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 711
    .line 712
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    move-object/from16 v7, v19

    .line 716
    .line 717
    move-wide/from16 v9, v20

    .line 718
    .line 719
    goto :goto_12

    .line 720
    :cond_19
    move-wide/from16 v20, v9

    .line 721
    .line 722
    iget-object v7, v12, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 723
    .line 724
    check-cast v7, Ljava/util/ArrayList;

    .line 725
    .line 726
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 727
    .line 728
    .line 729
    move-result v7

    .line 730
    add-int/2addr v6, v7

    .line 731
    iget v8, v0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillCnt:I

    .line 732
    .line 733
    add-int/2addr v8, v7

    .line 734
    iput v8, v0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillCnt:I

    .line 735
    .line 736
    iget-object v7, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 737
    .line 738
    const-string v8, "PolicyHandler"

    .line 739
    .line 740
    new-instance v9, Ljava/lang/StringBuilder;

    .line 741
    .line 742
    const-string v10, "QuotaKill on trigger6"

    .line 743
    .line 744
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    const-string v3, ", freed: "

    .line 751
    .line 752
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    const-string v3, ", allow restart: "

    .line 759
    .line 760
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v3

    .line 770
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    invoke-static {v8, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0, v12, v4}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 777
    .line 778
    .line 779
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 780
    .line 781
    iget-object v5, v12, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 782
    .line 783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 784
    .line 785
    .line 786
    move-result-wide v7

    .line 787
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 788
    .line 789
    .line 790
    move-result-object v7

    .line 791
    check-cast v3, Ljava/util/HashMap;

    .line 792
    .line 793
    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    sub-long/2addr v1, v13

    .line 797
    const-wide/16 v7, 0x0

    .line 798
    .line 799
    cmp-long v3, v1, v7

    .line 800
    .line 801
    if-gtz v3, :cond_1a

    .line 802
    .line 803
    goto :goto_13

    .line 804
    :cond_1a
    move-wide/from16 v7, v16

    .line 805
    .line 806
    move-object/from16 v3, v18

    .line 807
    .line 808
    move-wide/from16 v9, v20

    .line 809
    .line 810
    goto/16 :goto_f

    .line 811
    .line 812
    :cond_1b
    move-wide/from16 v16, v7

    .line 813
    .line 814
    move-wide/from16 v20, v9

    .line 815
    .line 816
    const-wide/16 v7, 0x0

    .line 817
    .line 818
    :goto_13
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 819
    .line 820
    const-string v5, "PolicyHandler"

    .line 821
    .line 822
    invoke-virtual {v3, v5}, Lcom/android/server/chimera/SkipReasonLogger;->printLog(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 826
    .line 827
    .line 828
    move-result-wide v9

    .line 829
    sub-long v9, v9, v20

    .line 830
    .line 831
    sub-long v1, v16, v1

    .line 832
    .line 833
    cmp-long v3, v1, v7

    .line 834
    .line 835
    if-eqz v3, :cond_1c

    .line 836
    .line 837
    invoke-virtual {v0, v4}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 838
    .line 839
    .line 840
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 841
    .line 842
    const-string v3, "PolicyHandler"

    .line 843
    .line 844
    const-string v4, "Quota kill complete: killed "

    .line 845
    .line 846
    const-string v5, " apps, freed "

    .line 847
    .line 848
    invoke-static {v6, v4, v1, v2, v5}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    move-result-object v1

    .line 852
    const-string v2, " KB, cost "

    .line 853
    .line 854
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    const-string/jumbo v2, "ms"

    .line 861
    .line 862
    .line 863
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 871
    .line 872
    .line 873
    invoke-static {v3, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    goto :goto_15

    .line 877
    :cond_1c
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 878
    .line 879
    const-string v1, "PolicyHandler"

    .line 880
    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    .line 882
    .line 883
    const-string v3, "No Quota kill target, cost "

    .line 884
    .line 885
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    const-string/jumbo v3, "ms"

    .line 892
    .line 893
    .line 894
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v2

    .line 901
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    goto :goto_15

    .line 908
    :cond_1d
    :goto_14
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 909
    .line 910
    const-string v1, "PolicyHandler"

    .line 911
    .line 912
    const-string v2, "No Quota kill target after filtering!"

    .line 913
    .line 914
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 915
    .line 916
    .line 917
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    :goto_15
    return-void
.end method

.method public final prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq p1, v2, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    if-eq p1, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq p1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string/jumbo v2, "power"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/os/PowerManager;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    xor-int/2addr p1, v0

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-string/jumbo v2, "power"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/os/PowerManager;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    xor-int/2addr p1, v0

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 62
    .line 63
    const-string p1, "PolicyHandler"

    .line 64
    .line 65
    const-string/jumbo v0, "prepareForTrigger() - skip reason: screen off"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v1

    .line 75
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 76
    .line 77
    iget-object v2, p1, Lcom/android/server/chimera/SystemRepository;->mAudioManager:Landroid/media/AudioManager;

    .line 78
    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    iget-object v2, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    const-string v3, "audio"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroid/media/AudioManager;

    .line 90
    .line 91
    iput-object v2, p1, Lcom/android/server/chimera/SystemRepository;->mAudioManager:Landroid/media/AudioManager;

    .line 92
    .line 93
    :cond_4
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mAudioManager:Landroid/media/AudioManager;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-lt p1, v0, :cond_5

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 102
    .line 103
    const-string p1, "PolicyHandler"

    .line 104
    .line 105
    const-string/jumbo v0, "prepareForTrigger() - skip reason: incall"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return v1

    .line 115
    :cond_5
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mSmartSwitchEventReceiver:Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;

    .line 118
    .line 119
    iget-boolean v2, p1, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnStart:Z

    .line 120
    .line 121
    if-nez v2, :cond_b

    .line 122
    .line 123
    iget-boolean p1, p1, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnTransfer:Z

    .line 124
    .line 125
    if-eqz p1, :cond_6

    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :cond_6
    iget-boolean p1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    .line 130
    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    const-string p0, "PolicyHandler"

    .line 134
    .line 135
    const-string/jumbo p1, "prepareForTrigger() - skip reason: car mode"

    .line 136
    .line 137
    .line 138
    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v1

    .line 142
    :cond_7
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    .line 143
    .line 144
    iget-object v2, p1, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    .line 145
    .line 146
    check-cast v2, Ljava/util/HashSet;

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 149
    .line 150
    .line 151
    iget-object v2, p1, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    .line 152
    .line 153
    iget-object p1, p1, Lcom/android/server/chimera/WakeLockManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    const-string/jumbo v3, "power"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Landroid/os/PowerManager;

    .line 165
    .line 166
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    new-instance v3, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;

    .line 171
    .line 172
    const/4 v4, 0x4

    .line 173
    invoke-direct {v3, v4}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-array v3, v1, [Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, [Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lcom/android/server/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/chimera/RestartImmediatePackages;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    iget-object p1, p1, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    .line 196
    .line 197
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 203
    .line 204
    monitor-enter p1

    .line 205
    :try_start_0
    iget-object v2, p1, Lcom/android/server/chimera/SystemRepository;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 206
    .line 207
    if-nez v2, :cond_a

    .line 208
    .line 209
    const-string/jumbo v2, "deviceidle"

    .line 210
    .line 211
    .line 212
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    if-eqz v2, :cond_9

    .line 217
    .line 218
    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    iput-object v3, p1, Lcom/android/server/chimera/SystemRepository;->mDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .line 224
    if-eqz v3, :cond_8

    .line 225
    .line 226
    :try_start_1
    new-instance v3, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda6;

    .line 227
    .line 228
    invoke-direct {v3, p1}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :catchall_0
    move-exception p0

    .line 236
    goto :goto_2

    .line 237
    :catch_0
    move-exception v1

    .line 238
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_8
    const-string v1, "SystemRepositoryDefault"

    .line 243
    .line 244
    const-string/jumbo v2, "mDeviceIdleController is null!"

    .line 245
    .line 246
    .line 247
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_9
    const-string v1, "SystemRepositoryDefault"

    .line 252
    .line 253
    const-string v2, "binder is null!"

    .line 254
    .line 255
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    :cond_a
    :goto_1
    iget-object v1, p1, Lcom/android/server/chimera/SystemRepository;->mDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    .line 260
    monitor-exit p1

    .line 261
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    new-instance v1, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;

    .line 266
    .line 267
    const/4 v2, 0x2

    .line 268
    invoke-direct {v1, v2}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;-><init>(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    new-instance v1, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;

    .line 276
    .line 277
    const/4 v2, 0x3

    .line 278
    invoke-direct {v1, v2}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;-><init>(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Ljava/util/List;

    .line 294
    .line 295
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPowerWhitelistedApps:Ljava/util/List;

    .line 296
    .line 297
    return v0

    .line 298
    :goto_2
    monitor-exit p1

    .line 299
    throw p0

    .line 300
    :cond_b
    :goto_3
    const-string p0, "PolicyHandler"

    .line 301
    .line 302
    const-string/jumbo p1, "prepareForTrigger() - skip reason: smart switch"

    .line 303
    .line 304
    .line 305
    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    return v1
.end method

.method public final updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    .line 12
    .line 13
    aget v0, p0, p1

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    aput v0, p0, p1

    .line 18
    .line 19
    return-void
.end method

.method public final updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    .line 6
    .line 7
    iget v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-gt v0, v2, :cond_0

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    .line 16
    .line 17
    aget v3, v2, v0

    .line 18
    .line 19
    add-int/2addr v3, v1

    .line 20
    aput v3, v2, v0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    .line 23
    .line 24
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Integer;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr v0, v1

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    move v0, v3

    .line 59
    :goto_1
    iget-object v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 60
    .line 61
    iget-object v4, v4, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 62
    .line 63
    array-length v5, v4

    .line 64
    if-ge v0, v5, :cond_3

    .line 65
    .line 66
    aget v4, v4, v0

    .line 67
    .line 68
    const/16 v5, -0x3e8

    .line 69
    .line 70
    if-lt v4, v5, :cond_2

    .line 71
    .line 72
    const/16 v5, 0x3e8

    .line 73
    .line 74
    if-gt v4, v5, :cond_2

    .line 75
    .line 76
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 77
    .line 78
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    iget-object v6, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 83
    .line 84
    add-int/2addr v5, v1

    .line 85
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    .line 87
    .line 88
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 92
    .line 93
    if-eqz v0, :cond_b

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    const-wide/16 v6, 0x0

    .line 105
    .line 106
    cmp-long v6, v4, v6

    .line 107
    .line 108
    if-nez v6, :cond_4

    .line 109
    .line 110
    const-string/jumbo v4, "null"

    .line 111
    .line 112
    .line 113
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    const-string v5, "%18s"

    .line 118
    .line 119
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    sget-object v6, Lcom/android/server/chimera/ChimeraDataCache;->DATE_FORMAT_MAP:Ljava/lang/ThreadLocal;

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    check-cast v7, Ljava/util/Map;

    .line 131
    .line 132
    const-string v8, "MM/dd HH:mm:ss.SSS"

    .line 133
    .line 134
    if-nez v7, :cond_5

    .line 135
    .line 136
    new-instance v7, Landroid/util/ArrayMap;

    .line 137
    .line 138
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 145
    .line 146
    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    check-cast v6, Ljava/text/DateFormat;

    .line 158
    .line 159
    if-nez v6, :cond_6

    .line 160
    .line 161
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 162
    .line 163
    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    :cond_6
    :goto_2
    new-instance v7, Ljava/util/Date;

    .line 170
    .line 171
    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v4, " "

    .line 182
    .line 183
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-object v6, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 192
    .line 193
    check-cast v6, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    move v7, v3

    .line 200
    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    const-string v9, ","

    .line 205
    .line 206
    if-eqz v8, :cond_8

    .line 207
    .line 208
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 213
    .line 214
    iget v8, v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 215
    .line 216
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    add-int/2addr v7, v1

    .line 220
    iget-object v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 221
    .line 222
    check-cast v8, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-ge v7, v8, :cond_7

    .line 229
    .line 230
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_8
    iget v6, p1, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 235
    .line 236
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    iget v7, p1, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 241
    .line 242
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    iget-wide v10, p1, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 247
    .line 248
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    filled-new-array {v2, v6, v7, v8, v5}, [Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    const-string v5, "%s %xH %d %d %s"

    .line 261
    .line 262
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 273
    .line 274
    if-eqz v2, :cond_a

    .line 275
    .line 276
    :goto_5
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 277
    .line 278
    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 279
    .line 280
    array-length v5, v2

    .line 281
    if-ge v3, v5, :cond_a

    .line 282
    .line 283
    aget v2, v2, v3

    .line 284
    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 289
    .line 290
    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 291
    .line 292
    array-length v2, v2

    .line 293
    sub-int/2addr v2, v1

    .line 294
    if-ge v3, v2, :cond_9

    .line 295
    .line 296
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    :cond_b
    return-void
.end method
