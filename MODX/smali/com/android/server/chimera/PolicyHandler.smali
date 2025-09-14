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

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/chimera/PolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    .line 10
    const/16 v0, 0x352

    .line 12
    sput v0, Lcom/android/server/chimera/PolicyHandler;->PICKED_OOM_ADJ:I

    .line 14
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lcom/android/server/chimera/PolicyHandler;->mIsBubEnabled:Z

    .line 17
    const/16 v0, 0x1000

    .line 19
    filled-new-array {v0}, [I

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/server/chimera/PolicyHandler;->CMDLINE_OUT:[I

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 6
    const/16 v1, 0x20

    .line 8
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 11
    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 13
    new-instance v0, Landroid/util/ArrayMap;

    .line 15
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    .line 20
    const v0, 0x3e99999a    # 0.3f

    .line 23
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 25
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 27
    const v0, 0x3ecccccd    # 0.4f

    .line 30
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 37
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 39
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 42
    move-result-object v1

    .line 43
    array-length v1, v1

    .line 44
    new-array v1, v1, [I

    .line 46
    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 48
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 51
    move-result-object v1

    .line 52
    array-length v1, v1

    .line 53
    new-array v1, v1, [I

    .line 55
    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    .line 57
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 59
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 61
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    .line 63
    filled-new-array {v0, v0, v0}, [I

    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    .line 69
    const-wide/16 v1, 0x0

    .line 71
    iput-wide v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 73
    iput-wide v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    .line 75
    const/4 v1, 0x4

    .line 76
    new-array v2, v1, [J

    .line 78
    fill-array-data v2, :array_0

    .line 81
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAppFileCacheRecliamCnt:[J

    .line 83
    new-instance v2, Ljava/util/HashMap;

    .line 85
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 88
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 90
    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    .line 94
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 99
    new-instance v2, Landroid/util/ArrayMap;

    .line 101
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 104
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 106
    sget-object v2, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 108
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 110
    const v2, 0x2932e00

    .line 113
    iput v2, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    .line 115
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 120
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 128
    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 130
    new-instance v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 132
    const-string/jumbo v2, "vendor.samsung.hardware.camera.provider"

    .line 135
    invoke-direct {v1, v2}, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;-><init>(Ljava/lang/String;)V

    .line 138
    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraProviderInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 140
    new-instance v2, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 142
    const-string/jumbo v3, "cameraserver"

    .line 145
    invoke-direct {v2, v3}, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;-><init>(Ljava/lang/String;)V

    .line 148
    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraServerInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 150
    new-instance v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 152
    const-string/jumbo v4, "com.sec.android.app.camera"

    .line 155
    invoke-direct {v3, v4}, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;-><init>(Ljava/lang/String;)V

    .line 158
    iput-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraAppInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 160
    filled-new-array {v1, v2, v3}, [Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 167
    move-result-object v1

    .line 168
    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 170
    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    .line 172
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillTriggerCnt:I

    .line 174
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillCnt:I

    .line 176
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 178
    iput-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 180
    iput-object p3, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 182
    new-instance p1, Lcom/android/server/chimera/WakeLockManager;

    .line 184
    invoke-direct {p1, p3}, Lcom/android/server/chimera/WakeLockManager;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 187
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    .line 189
    new-instance p1, Lcom/android/internal/util/RingBuffer;

    .line 191
    const-class v0, Ljava/lang/String;

    .line 193
    const/16 v1, 0xc8

    .line 195
    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 198
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 200
    iput-object p4, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 202
    new-instance p1, Lcom/android/server/chimera/SkipReasonLogger;

    .line 204
    invoke-direct {p1, p3}, Lcom/android/server/chimera/SkipReasonLogger;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 207
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 209
    new-instance p1, Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

    .line 211
    invoke-direct {p1, p0, p6}, Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;-><init>(Lcom/android/server/chimera/PolicyHandler;Landroid/os/Looper;)V

    .line 214
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mHandler:Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

    .line 216
    iget p1, p2, Lcom/android/server/chimera/ChimeraStrategy;->mQuickReclaimDefaultThreshold:I

    .line 218
    mul-int/lit16 p1, p1, 0x400

    .line 220
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mDefaultQuickReclaimAdditionalMemory:I

    .line 222
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    .line 224
    iput-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 226
    const p1, 0x1b7740

    .line 229
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    const-string/jumbo p2, "persist.sys.chimera_pkg_kill_interval_ms"

    .line 239
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    move-result-object p1

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 246
    move-result p1

    .line 247
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalMs:I

    .line 249
    const-string/jumbo p1, "ro.slmk.chimera_cem_pkg_kill_interval_ms"

    .line 252
    sget-object p2, Lcom/android/server/chimera/PolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    .line 254
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    move-result-object p1

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 261
    move-result p1

    .line 262
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mCemPkgKillIntervalMs:I

    .line 264
    iget p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalMs:I

    .line 266
    const/16 p2, 0x12c

    .line 268
    const/16 p4, 0x352

    .line 270
    filled-new-array {p2, p4, p1}, [I

    .line 273
    move-result-object p1

    .line 274
    iget p5, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    .line 276
    filled-new-array {p2, p4, p5}, [I

    .line 279
    move-result-object p2

    .line 280
    filled-new-array {p1, p2}, [[I

    .line 283
    move-result-object p1

    .line 284
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 286
    invoke-virtual {p3, p0}, Lcom/android/server/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V

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

    .line 4
    move-result-object v0

    .line 5
    if-nez p0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    .line 13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :goto_0
    return-void
.end method

.method public static closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 21
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

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

    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    const-wide/16 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 23
    iget-wide v2, v2, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->DRAMUsed:J

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

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const-string v1, ", "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v2}, Lcom/android/server/chimera/ChimeraAppInfo;->toString(Z)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 23
    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static toHHmmss(J)Ljava/lang/String;
    .locals 5

    .line 1
    const-wide/16 v0, 0x3e8

    .line 3
    div-long/2addr p0, v0

    .line 4
    const-wide/16 v0, 0xe10

    .line 6
    div-long v2, p0, v0

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    move-result-object v2

    .line 12
    rem-long v0, p0, v0

    .line 14
    const-wide/16 v3, 0x3c

    .line 16
    div-long/2addr v0, v3

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object v0

    .line 21
    rem-long/2addr p0, v3

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    move-result-object p0

    .line 26
    filled-new-array {v2, v0, p0}, [Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    const-string p1, "%02d:%02d:%02d"

    .line 32
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 32
    invoke-static {v1}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 38
    check-cast p0, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 43
    return-void
.end method

.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public final dumpAdjInfo(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->getKillCntByAdj()[I

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/16 v2, 0xd

    .line 8
    if-ge v1, v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v3, "kills at or below oom_adj "

    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 20
    aget v3, v3, v1

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v3, ": "

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    aget v3, v0, v1

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 48
    const-string/jumbo v0, "details:"

    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 56
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 59
    move-result v0

    .line 60
    add-int/lit8 v0, v0, -0x1

    .line 62
    :goto_1
    if-ltz v0, :cond_1

    .line 64
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 66
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 69
    move-result v1

    .line 70
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 72
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 75
    move-result v2

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v4, "killed "

    .line 81
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v2, " at adj "

    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    add-int/lit8 v0, v0, -0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 108
    return-void
.end method

.method public final dumpAppInfo(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "App-KillCount List :"

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/Map$Entry;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v2, ": "

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 3
    sget-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 5
    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 7
    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_DEVICE_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 9
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 11
    sget-object v5, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 13
    filled-new-array/range {v0 .. v5}, [Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "Total Trigger Count: "

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget v2, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    const-string v3, "ActionCnt: "

    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget v3, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x0

    .line 58
    move v3, v2

    .line 59
    :goto_0
    const/4 v4, 0x6

    .line 60
    if-ge v3, v4, :cond_0

    .line 62
    aget-object v4, v0, v3

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    const-string v6, "Triggered by "

    .line 68
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v6, v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->name:Ljava/lang/String;

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v6, ": "

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v7, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 83
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 86
    move-result v8

    .line 87
    aget v7, v7, v8

    .line 89
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v5, "\nAction by "

    .line 101
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v5, v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->name:Ljava/lang/String;

    .line 106
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    .line 114
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 117
    move-result v4

    .line 118
    aget v4, v5, v4

    .line 120
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v3, v3, 0x1

    .line 125
    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "KillCnt: "

    .line 133
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    .line 138
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 141
    move v0, v2

    .line 142
    :goto_1
    const/4 v1, 0x3

    .line 143
    if-ge v0, v1, :cond_1

    .line 145
    add-int/lit8 v1, v0, 0x1

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v3

    .line 151
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    .line 153
    aget v0, v4, v0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    move-result-object v0

    .line 159
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 162
    move-result-object v0

    .line 163
    const-string v3, "     G%d: %d"

    .line 165
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    move v0, v1

    .line 173
    goto :goto_1

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "NoActionCnt: "

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 183
    const-string v3, "AvgAvailableMem: "

    .line 185
    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    move-result-object v0

    .line 189
    iget-wide v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 191
    const-string v1, "AvgReleasedMem: "

    .line 193
    invoke-static {v0, v3, v4, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    move-result-object v0

    .line 197
    iget-wide v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    .line 199
    const-string/jumbo v1, "mIsQuickReclaimEnabled: "

    .line 202
    invoke-static {v0, v3, v4, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 208
    iget-boolean v3, v1, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 210
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    const-string v3, ", heavy apps : "

    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    .line 220
    const-string v4, "Camera:"

    .line 222
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 227
    iget-object v5, v4, Lcom/android/server/chimera/SystemRepository;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 229
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v3

    .line 236
    const-string/jumbo v5, "ro.slmk.chimera.quickreclaim_big_game_enable"

    .line 239
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_2

    .line 245
    const-string v2, ", BigGame:"

    .line 247
    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    move-result-object v2

    .line 251
    iget-object v3, v4, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object v3

    .line 260
    :cond_2
    const-string v2, "QuickReclaimKillCnt: "

    .line 262
    invoke-static {p1, v3, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 265
    move-result-object v0

    .line 266
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    .line 280
    const-string v2, "QuickReclaimDynamicThreshold: "

    .line 282
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    iget v2, p0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    .line 287
    const-string v3, "Protected AccessibilityPackges: "

    .line 289
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    move-result-object v0

    .line 293
    const-string v2, ", "

    .line 295
    invoke-virtual {v4}, Lcom/android/server/chimera/SystemRepository;->getAccessibilityServicePackages()Ljava/util/List;

    .line 298
    move-result-object v3

    .line 299
    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    .line 315
    const-string v2, "App File Cache Reclaim Enable: "

    .line 317
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    iget-boolean v2, v1, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    .line 322
    const-string v3, "App File Cache Reclaim: "

    .line 324
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    move-result-object v0

    .line 328
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAppFileCacheRecliamCnt:[J

    .line 330
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 346
    const-string v2, "Fast Madvise Enable: "

    .line 348
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    iget-boolean v2, v1, Lcom/android/server/chimera/SettingRepository;->mIsFastMadviseEnable:Z

    .line 353
    const-string v3, "SubProcessKillEnable: "

    .line 355
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    move-result-object v0

    .line 359
    iget-boolean v1, v1, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    .line 361
    const-string v2, "SubProcessKillTriggerCnt: "

    .line 363
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    move-result-object v0

    .line 367
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillTriggerCnt:I

    .line 369
    const-string v2, "SubProcessKillCnt: "

    .line 371
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    move-result-object v0

    .line 375
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillCnt:I

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpQuotaPPN(Ljava/io/PrintWriter;)V

    .line 390
    return-void
.end method

.method public final dumpHistoryBuffer(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 9
    const-string v0, "Date Time PackageName AppType StandbyBucket PSS PIDs OomScores TriggerSource:"

    .line 11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 16
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, [Ljava/lang/String;

    .line 22
    array-length v0, p0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_0

    .line 26
    aget-object v2, p0, v1

    .line 28
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p0, ""

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    :cond_1
    return-void
.end method

.method public final dumpQuotaPPN(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 3
    const-string/jumbo v0, "ro.slmk.chimera_quota_enable"

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "AlwaysRunningQuotaPPN Trigger Cnt: "

    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    sget v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    .line 22
    const-string v3, "AlwaysRunningQuotaPPN Cnt: "

    .line 24
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v0

    .line 28
    sget v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    .line 30
    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 33
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 35
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 43
    move-result v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    const-string v3, "AlwaysRunningQuotaKill Enable: "

    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    const-string v2, "AlwaysRunningQuotaKill Trigger Cnt: "

    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    iget v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillTriggerCnt:I

    .line 72
    const-string v3, "AlwaysRunningQuotaKill Cnt: "

    .line 74
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    move-result-object v0

    .line 78
    iget p0, p0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillCnt:I

    .line 80
    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 83
    :cond_0
    sget-object p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->INSTANCE:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 85
    iget-object v0, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskHistory:Lcom/android/internal/util/RingBuffer;

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_2

    .line 93
    const-string v0, "\n************** Task History ****************"

    .line 95
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskHistory:Lcom/android/internal/util/RingBuffer;

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 103
    move-result-object p0

    .line 104
    check-cast p0, [Ljava/lang/String;

    .line 106
    array-length v0, p0

    .line 107
    :goto_0
    if-ge v1, v0, :cond_1

    .line 109
    aget-object v2, p0, v1

    .line 111
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

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

    .line 3
    const/16 v0, 0xd

    .line 5
    new-array v0, v0, [I

    .line 7
    const/16 v1, 0xc

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 12
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_3

    .line 18
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 20
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 23
    move-result v3

    .line 24
    :goto_1
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 26
    aget v4, v4, v1

    .line 28
    if-le v3, v4, :cond_1

    .line 30
    add-int/lit8 v4, v1, -0x1

    .line 32
    if-gez v4, :cond_0

    .line 34
    move v1, v4

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    aget v1, v0, v1

    .line 38
    aput v1, v0, v4

    .line 40
    move v1, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_2
    if-gez v1, :cond_2

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    aget v3, v0, v1

    .line 47
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 49
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 52
    move-result v4

    .line 53
    add-int/2addr v4, v3

    .line 54
    aput v4, v0, v1

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    :goto_3
    if-lez v1, :cond_4

    .line 61
    add-int/lit8 p0, v1, -0x1

    .line 63
    aget v1, v0, v1

    .line 65
    aput v1, v0, p0

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

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 9
    const-string p1, "PolicyHandler"

    .line 11
    const-string p2, "Invalid app group id"

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {p1, p2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return v1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 22
    invoke-static {p1, v0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 28
    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 30
    const/4 v4, 0x3

    .line 31
    const/4 v5, 0x5

    .line 32
    const/16 v6, -0x3e8

    .line 34
    const/16 v7, 0x64

    .line 36
    if-ne p2, v3, :cond_5

    .line 38
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->getDRAMUsedByApp(Lcom/android/server/chimera/ChimeraAppInfo;)J

    .line 41
    move-result-wide v8

    .line 42
    const-wide/16 v10, 0x2800

    .line 44
    cmp-long p2, v8, v10

    .line 46
    if-gez p2, :cond_1

    .line 48
    return v1

    .line 49
    :cond_1
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 51
    if-nez p2, :cond_2

    .line 53
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 55
    invoke-static {p1, p2}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 61
    :cond_2
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 63
    iget-object p2, p2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 65
    array-length v0, p2

    .line 66
    move v3, v1

    .line 67
    :goto_0
    if-ge v3, v0, :cond_f

    .line 69
    aget v8, p2, v3

    .line 71
    if-lt v8, v7, :cond_4

    .line 73
    const/16 v9, 0xfa

    .line 75
    if-le v8, v9, :cond_3

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 83
    sget-object p2, Lcom/android/server/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 88
    return v1

    .line 89
    :cond_5
    if-eqz v0, :cond_27

    .line 91
    move p2, v1

    .line 92
    :goto_2
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 94
    iget-object v3, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 96
    array-length v3, v3

    .line 97
    if-ge p2, v3, :cond_f

    .line 99
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 101
    aget v0, v0, p2

    .line 103
    const/16 v3, 0x12c

    .line 105
    if-ge v0, v3, :cond_6

    .line 107
    goto/16 :goto_e

    .line 109
    :cond_6
    iget-object v8, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 111
    iget-object v9, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 113
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 116
    move-result v9

    .line 117
    aget-object v8, v8, v9

    .line 119
    aget v8, v8, v1

    .line 121
    if-ge v0, v8, :cond_7

    .line 123
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 125
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 127
    aget v0, v0, p2

    .line 129
    if-lt v0, v6, :cond_7

    .line 131
    goto/16 :goto_e

    .line 133
    :cond_7
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 135
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 137
    aget v0, v0, p2

    .line 139
    if-lt v0, v7, :cond_a

    .line 141
    if-ge v0, v3, :cond_a

    .line 143
    iget v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 145
    if-ne v8, v5, :cond_8

    .line 147
    goto/16 :goto_e

    .line 149
    :cond_8
    const/16 v9, 0xc8

    .line 151
    if-ge v0, v9, :cond_9

    .line 153
    const/16 v0, 0x28

    .line 155
    if-ge v8, v0, :cond_9

    .line 157
    goto/16 :goto_e

    .line 159
    :cond_9
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPowerWhitelistedApps:Ljava/util/List;

    .line 161
    if-eqz v0, :cond_a

    .line 163
    iget-object v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 165
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_a

    .line 171
    goto/16 :goto_e

    .line 173
    :cond_a
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 175
    iget-object v8, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 177
    aget v8, v8, p2

    .line 179
    if-eq v8, v4, :cond_27

    .line 181
    if-ne v8, v5, :cond_b

    .line 183
    goto/16 :goto_e

    .line 185
    :cond_b
    sget-boolean v8, Lcom/android/server/chimera/PolicyHandler;->mIsBubEnabled:Z

    .line 187
    if-nez v8, :cond_c

    .line 189
    iget-object v8, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 191
    aget v8, v8, p2

    .line 193
    sget v9, Lcom/android/server/chimera/PolicyHandler;->PICKED_OOM_ADJ:I

    .line 195
    if-ne v8, v9, :cond_c

    .line 197
    goto/16 :goto_e

    .line 199
    :cond_c
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 201
    aget v0, v0, p2

    .line 203
    const/16 v8, 0x2bc

    .line 205
    if-ne v0, v8, :cond_d

    .line 207
    goto/16 :goto_e

    .line 209
    :cond_d
    if-ne v0, v3, :cond_e

    .line 211
    goto/16 :goto_e

    .line 213
    :cond_e
    add-int/lit8 p2, p2, 0x1

    .line 215
    goto :goto_2

    .line 216
    :cond_f
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 218
    iget v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 220
    iget-object p2, p2, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 222
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 224
    if-eqz p2, :cond_10

    .line 226
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowManagerService;->isOnScreenWindow(I)Z

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

    .line 234
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 236
    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 238
    invoke-virtual {p2, p1, v0}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 241
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 243
    const-string p2, "PolicyHandler"

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    const-string v2, "Skipped by visible screen : "

    .line 249
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return v1

    .line 275
    :cond_11
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    .line 277
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 279
    iget-object p2, p2, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    .line 281
    check-cast p2, Ljava/util/HashSet;

    .line 283
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 286
    move-result p2

    .line 287
    if-eqz p2, :cond_12

    .line 289
    sget-object p2, Lcom/android/server/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 291
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 293
    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    .line 298
    const-string v0, "Skipped by WAKELOCK "

    .line 300
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    const-string v0, " "

    .line 305
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 307
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object p1

    .line 324
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 326
    const-string p2, "PolicyHandler"

    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return v1

    .line 335
    :cond_12
    iget p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 337
    const/high16 v0, 0x20000

    .line 339
    and-int/2addr p2, v0

    .line 340
    if-ne p2, v0, :cond_1d

    .line 342
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 344
    if-eqz p2, :cond_1a

    .line 346
    move p2, v1

    .line 347
    :goto_4
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 349
    iget-object v3, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 351
    array-length v3, v3

    .line 352
    if-ge p2, v3, :cond_1a

    .line 354
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 356
    aget v0, v0, p2

    .line 358
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 360
    iget-object v8, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 362
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 365
    move-result v8

    .line 366
    aget-object v3, v3, v8

    .line 368
    aget v3, v3, v2

    .line 370
    if-gt v0, v3, :cond_19

    .line 372
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 374
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 376
    aget v0, v0, p2

    .line 378
    if-lt v0, v6, :cond_19

    .line 380
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 382
    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 384
    check-cast v3, Ljava/util/ArrayList;

    .line 386
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 389
    move-result-object v3

    .line 390
    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 392
    iget-object v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 394
    iget v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 396
    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 404
    monitor-enter v0

    .line 405
    :try_start_0
    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 407
    invoke-virtual {v9, v8, v3}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 410
    move-result-object v3

    .line 411
    if-eqz v3, :cond_18

    .line 413
    iget-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 415
    if-nez v8, :cond_17

    .line 417
    iget-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 419
    if-eqz v8, :cond_13

    .line 421
    goto :goto_5

    .line 422
    :cond_13
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 424
    iget-object v8, v8, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 426
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 429
    move-result v8

    .line 430
    if-lez v8, :cond_14

    .line 432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

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

    .line 442
    iget v8, v8, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    .line 444
    if-lez v8, :cond_15

    .line 446
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 450
    move v0, v4

    .line 451
    goto :goto_6

    .line 452
    :cond_15
    :try_start_2
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 454
    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 456
    if-ge v8, v7, :cond_16

    .line 458
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 462
    move v0, v5

    .line 463
    goto :goto_6

    .line 464
    :cond_16
    :try_start_3
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->hasContentProviderConnection(Lcom/android/server/am/ProcessRecord;)Z

    .line 467
    move-result v3

    .line 468
    if-eqz v3, :cond_18

    .line 470
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 471
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

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

    .line 486
    move v0, v1

    .line 487
    :goto_6
    if-lez v0, :cond_19

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

    .line 494
    throw p0

    .line 495
    :cond_19
    add-int/lit8 p2, p2, 0x1

    .line 497
    goto/16 :goto_4

    .line 499
    :cond_1a
    move v0, v1

    .line 500
    :goto_8
    invoke-static {}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->values()[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 503
    move-result-object p2

    .line 504
    aget-object p2, p2, v0

    .line 506
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 508
    sget-object v4, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 510
    if-ne v3, v4, :cond_1b

    .line 512
    if-gtz v0, :cond_1c

    .line 514
    :cond_1b
    sget-object v4, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 516
    if-ne v3, v4, :cond_1d

    .line 518
    if-lez v0, :cond_1d

    .line 520
    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 522
    if-eq p2, v0, :cond_1d

    .line 524
    :cond_1c
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 526
    sget-object v2, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 528
    invoke-virtual {v0, p1, v2}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 531
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 533
    const-string v0, "PolicyHandler"

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    .line 537
    const-string v3, "Skipped by Normal Service condition: "

    .line 539
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 550
    move-result-object p1

    .line 551
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string p1, " reason: "

    .line 556
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    move-result-object p1

    .line 566
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    invoke-static {v0, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return v1

    .line 573
    :cond_1d
    iget p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 575
    const/16 v0, 0x2710

    .line 577
    if-ge p2, v0, :cond_1f

    .line 579
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 581
    if-eqz p2, :cond_1f

    .line 583
    move p2, v1

    .line 584
    :goto_9
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 586
    iget-object v3, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 588
    array-length v3, v3

    .line 589
    if-ge p2, v3, :cond_1f

    .line 591
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 593
    aget v0, v0, p2

    .line 595
    const/16 v3, 0x320

    .line 597
    if-ge v0, v3, :cond_1e

    .line 599
    move p2, v2

    .line 600
    goto :goto_a

    .line 601
    :cond_1e
    add-int/lit8 p2, p2, 0x1

    .line 603
    goto :goto_9

    .line 604
    :cond_1f
    move p2, v1

    .line 605
    :goto_a
    if-eqz p2, :cond_20

    .line 607
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 609
    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 611
    invoke-virtual {p2, p1, v0}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 614
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 616
    const-string p2, "PolicyHandler"

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    .line 620
    const-string v2, "Skipped by uid     : "

    .line 622
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 625
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 627
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 633
    move-result-object p1

    .line 634
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    move-result-object p1

    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 644
    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return v1

    .line 648
    :cond_20
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 650
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 652
    iget-object v3, p2, Lcom/android/server/chimera/SystemRepository;->mActivityManager:Landroid/app/ActivityManager;

    .line 654
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    .line 657
    move-result v3

    .line 658
    if-nez v3, :cond_21

    .line 660
    :goto_b
    move p2, v1

    .line 661
    goto :goto_c

    .line 662
    :cond_21
    iget-object v3, p2, Lcom/android/server/chimera/SystemRepository;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 664
    if-nez v3, :cond_22

    .line 666
    iget-object v3, p2, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 668
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    .line 670
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 673
    move-result-object v3

    .line 674
    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 676
    iput-object v3, p2, Lcom/android/server/chimera/SystemRepository;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 678
    if-nez v3, :cond_22

    .line 680
    goto :goto_b

    .line 681
    :cond_22
    iget-object p2, p2, Lcom/android/server/chimera/SystemRepository;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 683
    invoke-virtual {p2, v0}, Landroid/app/admin/DevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    .line 686
    move-result p2

    .line 687
    :goto_c
    if-eqz p2, :cond_23

    .line 689
    return v1

    .line 690
    :cond_23
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 692
    check-cast p2, Ljava/util/ArrayList;

    .line 694
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 697
    move-result-object p2

    .line 698
    :cond_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 701
    move-result v0

    .line 702
    if-eqz v0, :cond_26

    .line 704
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 707
    move-result-object v0

    .line 708
    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 710
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 712
    iget v4, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 714
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    invoke-static {v4}, Landroid/os/Process;->getThreadGroupLeader(I)I

    .line 720
    move-result v3

    .line 721
    if-ne v3, v4, :cond_25

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

    .line 728
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 730
    const-string p2, "PolicyHandler"

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    .line 734
    const-string v3, "Skipped by Thread Group Leader condition: "

    .line 736
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 741
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const-string p1, " pid: "

    .line 746
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    iget p1, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 751
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    move-result-object p1

    .line 758
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    move v1, v2

    .line 765
    :cond_26
    xor-int/lit8 p0, v1, 0x1

    .line 767
    return p0

    .line 768
    :cond_27
    :goto_e
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 770
    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 772
    invoke-virtual {p2, p1, v0}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 775
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 777
    const-string p2, "PolicyHandler"

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    .line 781
    const-string v2, "Skipped by adj     : "

    .line 783
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 786
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 788
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 794
    move-result-object p1

    .line 795
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 801
    move-result-object p1

    .line 802
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 805
    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return v1
.end method

.method public final onAppLaunchIntent(Ljava/lang/String;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 7
    check-cast v3, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v3

    .line 20
    iget-wide v5, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimLastFilterTime:J

    .line 22
    sub-long v5, v3, v5

    .line 24
    const-wide/32 v7, 0x493e0

    .line 27
    cmp-long v5, v5, v7

    .line 29
    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 31
    const-string v7, "PolicyHandler"

    .line 33
    if-lez v5, :cond_1

    .line 35
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    const-string/jumbo v1, "filter overtime, quit quick reclaim"

    .line 41
    invoke-static {v7, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    .line 47
    return-void

    .line 48
    :cond_1
    const-string/jumbo v5, "com.sec.android.app.camera"

    .line 51
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v5

    .line 55
    iget-object v8, v6, Lcom/android/server/chimera/SystemRepository;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 57
    invoke-virtual {v8, v1}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    .line 60
    move-result v8

    .line 61
    const/4 v9, 0x0

    .line 62
    if-nez v8, :cond_3

    .line 64
    const-string/jumbo v8, "ro.slmk.chimera.quickreclaim_big_game_enable"

    .line 67
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_2

    .line 73
    iget-object v8, v6, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 75
    invoke-virtual {v8, v1}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_2

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

    .line 87
    if-nez v8, :cond_4

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    .line 92
    return-void

    .line 93
    :cond_4
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 95
    sget-object v10, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 97
    invoke-virtual {v6}, Lcom/android/server/chimera/SystemRepository;->getAvailableMemory()J

    .line 100
    move-result-wide v10

    .line 101
    const-wide/16 v12, 0x400

    .line 103
    div-long/2addr v10, v12

    .line 104
    iget-object v12, v0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 106
    if-eqz v5, :cond_5

    .line 108
    iget-wide v12, v12, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 110
    iget v5, v0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

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

    .line 119
    check-cast v5, Landroid/util/ArrayMap;

    .line 121
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Ljava/lang/Long;

    .line 127
    const-wide/32 v13, 0x19000

    .line 130
    if-nez v5, :cond_6

    .line 132
    :goto_2
    move-wide v15, v3

    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 137
    move-result-wide v15

    .line 138
    const-wide/32 v17, 0x64000

    .line 141
    sub-long v15, v15, v17

    .line 143
    const-wide/16 v17, 0x2

    .line 145
    div-long v15, v15, v17

    .line 147
    add-long/2addr v15, v13

    .line 148
    cmp-long v5, v15, v13

    .line 150
    if-gez v5, :cond_7

    .line 152
    goto :goto_2

    .line 153
    :cond_7
    iget v5, v0, Lcom/android/server/chimera/PolicyHandler;->mDefaultQuickReclaimAdditionalMemory:I

    .line 155
    int-to-long v13, v5

    .line 156
    cmp-long v5, v15, v13

    .line 158
    if-lez v5, :cond_8

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

    .line 165
    add-long/2addr v13, v2

    .line 166
    sub-long v12, v13, v10

    .line 168
    :goto_4
    const-wide/16 v2, 0x0

    .line 170
    cmp-long v2, v12, v2

    .line 172
    if-gez v2, :cond_9

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "available memory: "

    .line 181
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", quit chimera quick reclaim"

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    invoke-static {v7, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    goto/16 :goto_12

    .line 201
    :cond_9
    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 203
    iget v3, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 205
    const/4 v4, 0x1

    .line 206
    add-int/2addr v3, v4

    .line 207
    iput v3, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 209
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 211
    const/4 v10, 0x5

    .line 212
    aget v5, v3, v10

    .line 214
    add-int/lit8 v11, v5, 0x1

    .line 216
    aput v11, v3, v10

    .line 218
    invoke-virtual {v0, v2}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 221
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    .line 224
    move-result v3

    .line 225
    check-cast v8, Ljava/util/ArrayList;

    .line 227
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    .line 238
    move-result v17

    .line 239
    if-eqz v17, :cond_19

    .line 241
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    move-result-object v17

    .line 245
    move-object/from16 v5, v17

    .line 247
    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 249
    if-nez v14, :cond_a

    .line 251
    iget-object v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 253
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_b

    .line 259
    :cond_a
    move-object/from16 v19, v4

    .line 261
    move/from16 v20, v14

    .line 263
    move-wide/from16 v21, v15

    .line 265
    const/4 v4, 0x1

    .line 266
    move/from16 v16, v8

    .line 268
    goto/16 :goto_10

    .line 270
    :cond_b
    iget-object v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 272
    check-cast v9, Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 277
    move-result v9

    .line 278
    move-object/from16 v19, v4

    .line 280
    iget-object v4, v5, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 282
    if-eqz v9, :cond_c

    .line 284
    move/from16 v20, v14

    .line 286
    :goto_6
    const/4 v9, 0x1

    .line 287
    goto :goto_7

    .line 288
    :cond_c
    iget-object v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 290
    check-cast v9, Ljava/util/ArrayList;

    .line 292
    move/from16 v20, v14

    .line 294
    const/4 v14, 0x0

    .line 295
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 298
    move-result-object v9

    .line 299
    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 301
    iget v9, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 303
    iget-object v14, v6, Lcom/android/server/chimera/SystemRepository;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 305
    invoke-virtual {v14, v9}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    .line 308
    move-result-object v9

    .line 309
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    move-result v9

    .line 313
    if-nez v9, :cond_d

    .line 315
    goto :goto_6

    .line 316
    :cond_d
    iget-object v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 318
    invoke-interface {v9}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 321
    move-result-object v9

    .line 322
    new-instance v14, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda6;

    .line 324
    invoke-direct {v14, v0}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/chimera/PolicyHandler;)V

    .line 327
    invoke-interface {v9, v14}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 330
    move-result v9

    .line 331
    :goto_7
    const-string/jumbo v14, "quick reclaim skip "

    .line 334
    move-wide/from16 v21, v15

    .line 336
    const-string v15, ": "

    .line 338
    if-eqz v9, :cond_e

    .line 340
    invoke-static {v5}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 343
    new-instance v9, Ljava/lang/StringBuilder;

    .line 345
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    .line 351
    move-result-object v5

    .line 352
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v4, " for process changed"

    .line 363
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    move-result-object v4

    .line 370
    invoke-static {v7, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    move/from16 v16, v8

    .line 375
    :goto_8
    const/4 v4, 0x1

    .line 376
    goto/16 :goto_11

    .line 378
    :cond_e
    iget-object v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 380
    check-cast v9, Ljava/util/ArrayList;

    .line 382
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 385
    move-result-object v9

    .line 386
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 389
    move-result v16

    .line 390
    if-eqz v16, :cond_11

    .line 392
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 395
    move-result-object v16

    .line 396
    move-object/from16 v23, v9

    .line 398
    move-object/from16 v9, v16

    .line 400
    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 402
    iget-object v1, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 404
    move/from16 v16, v8

    .line 406
    iget v8, v5, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 408
    invoke-virtual {v6, v8, v1}, Lcom/android/server/chimera/SystemRepository;->hasConnectionProvider(ILjava/lang/String;)Z

    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_f

    .line 414
    const-string/jumbo v1, "hasConnectionProvider"

    .line 417
    goto :goto_a

    .line 418
    :cond_f
    iget v1, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 420
    invoke-virtual {v6, v1}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    .line 423
    move-result-object v1

    .line 424
    const/4 v8, 0x1

    .line 425
    aget v1, v1, v8

    .line 427
    const/16 v9, 0x12c

    .line 429
    if-ge v1, v9, :cond_10

    .line 431
    const-string/jumbo v1, "importantAdj"

    .line 434
    goto :goto_a

    .line 435
    :cond_10
    move-object/from16 v1, p1

    .line 437
    move/from16 v8, v16

    .line 439
    move-object/from16 v9, v23

    .line 441
    goto :goto_9

    .line 442
    :cond_11
    move/from16 v16, v8

    .line 444
    const/4 v1, 0x0

    .line 445
    :goto_a
    if-eqz v1, :cond_12

    .line 447
    invoke-static {v5}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 450
    new-instance v9, Ljava/lang/StringBuilder;

    .line 452
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    .line 458
    move-result-object v5

    .line 459
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v4, " for "

    .line 470
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    move-result-object v1

    .line 480
    invoke-static {v7, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    goto :goto_8

    .line 484
    :cond_12
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 489
    move-result-wide v23

    .line 490
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 493
    move-result-object v9

    .line 494
    check-cast v1, Ljava/util/HashMap;

    .line 496
    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    .line 501
    const-string v9, "Killed on trigger5 : "

    .line 503
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    .line 512
    move-result-object v9

    .line 513
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 516
    const-string v9, ", freed: "

    .line 518
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-wide v8, v5, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 523
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    move-result-object v1

    .line 530
    invoke-static {v7, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-static {v4}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 536
    iget-object v1, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 538
    check-cast v1, Ljava/util/ArrayList;

    .line 540
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 543
    move-result-object v1

    .line 544
    move/from16 v8, v16

    .line 546
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 549
    move-result v4

    .line 550
    if-eqz v4, :cond_15

    .line 552
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 555
    move-result-object v4

    .line 556
    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 558
    if-nez v3, :cond_14

    .line 560
    iget v9, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 562
    invoke-static {v9}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 565
    new-instance v9, Ljava/lang/StringBuilder;

    .line 567
    const-string/jumbo v14, "quick reclaim kill "

    .line 570
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    iget v14, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 575
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 583
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v4, " without pidfd"

    .line 588
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    move-result-object v4

    .line 595
    invoke-static {v7, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_13
    :goto_c
    const/4 v4, 0x1

    .line 599
    goto :goto_d

    .line 600
    :cond_14
    iget-object v9, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    .line 602
    if-eqz v9, :cond_13

    .line 604
    iget-object v9, v0, Lcom/android/server/chimera/PolicyHandler;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 606
    new-instance v14, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;

    .line 608
    invoke-direct {v14, v0, v4}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)V

    .line 611
    invoke-virtual {v9, v14}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

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

    .line 622
    add-long/2addr v14, v8

    .line 623
    long-to-int v11, v14

    .line 624
    add-int/2addr v10, v4

    .line 625
    invoke-virtual {v0, v5, v2}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 628
    int-to-long v8, v11

    .line 629
    cmp-long v5, v8, v12

    .line 631
    if-lez v5, :cond_16

    .line 633
    goto :goto_e

    .line 634
    :cond_16
    sub-long v8, v12, v8

    .line 636
    const-wide/16 v14, 0x5000

    .line 638
    cmp-long v5, v8, v14

    .line 640
    if-gez v5, :cond_17

    .line 642
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    const-string/jumbo v5, "relTarget - released < 20480, stop kill"

    .line 648
    invoke-static {v7, v5}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    goto :goto_e

    .line 652
    :cond_17
    const/4 v5, 0x4

    .line 653
    if-lt v1, v5, :cond_18

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

    .line 661
    move-wide/from16 v15, v21

    .line 663
    const/4 v9, 0x0

    .line 664
    move-object/from16 v1, p1

    .line 666
    goto/16 :goto_5

    .line 668
    :goto_10
    invoke-static {v5}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 671
    :goto_11
    move-object/from16 v1, p1

    .line 673
    move/from16 v8, v16

    .line 675
    move-object/from16 v4, v19

    .line 677
    move/from16 v14, v20

    .line 679
    move-wide/from16 v15, v21

    .line 681
    const/4 v9, 0x0

    .line 682
    goto/16 :goto_5

    .line 684
    :cond_19
    move-wide/from16 v21, v15

    .line 686
    move/from16 v16, v8

    .line 688
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 690
    move/from16 v9, v16

    .line 692
    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 695
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 697
    check-cast v0, Ljava/util/ArrayList;

    .line 699
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    .line 704
    const-string/jumbo v1, "quick reclaim kill before "

    .line 707
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 710
    move-object/from16 v1, p1

    .line 712
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const-string v1, " complete: killed "

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 723
    const-string v1, " apps, freed "

    .line 725
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 731
    const-string v1, " KB, before kill relTarget: "

    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 739
    const-string v1, " KB and Processing time(ms): "

    .line 741
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 747
    move-result-wide v1

    .line 748
    sub-long v1, v1, v21

    .line 750
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 756
    move-result-object v0

    .line 757
    invoke-static {v7, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :goto_12
    return-void
.end method

.method public final onCameraClose()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    .line 3
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda2;

    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    goto/16 :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    const-wide/16 v1, 0x0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v3

    .line 36
    const-string v4, "PolicyHandler"

    .line 38
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 40
    if-eqz v3, :cond_1

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 48
    iget v6, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 50
    invoke-static {v6}, Landroid/os/Process;->getRss(I)[J

    .line 53
    move-result-object v6

    .line 54
    const/4 v7, 0x0

    .line 55
    aget-wide v7, v6, v7

    .line 57
    const/4 v9, 0x3

    .line 58
    aget-wide v9, v6, v9

    .line 60
    add-long/2addr v7, v9

    .line 61
    iput-wide v7, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->closeRss:J

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v7, "pid: "

    .line 68
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iget v7, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v7, " name: "

    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v7, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v7, " closeRss: "

    .line 88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-wide v7, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->closeRss:J

    .line 93
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    invoke-static {v4, v6}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-wide v4, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->openRss:J

    .line 108
    iget-wide v6, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->closeRss:J

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

    .line 116
    shr-int/lit8 v2, v1, 0x1

    .line 118
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 121
    move-result v0

    .line 122
    add-int/2addr v1, v2

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 126
    move-result v0

    .line 127
    const/4 v1, 0x1

    .line 128
    iput-boolean v1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    .line 130
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v1, "get dynamic quick reclaim additional memory successfully "

    .line 137
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v0, " (MB)"

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    invoke-static {v4, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_2
    :goto_1
    return-void
.end method

.method public final onCameraOpen()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda2;

    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 41
    iget v2, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 43
    invoke-static {v2}, Landroid/os/Process;->getRss(I)[J

    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x0

    .line 48
    aget-wide v3, v2, v3

    .line 50
    const/4 v5, 0x3

    .line 51
    aget-wide v5, v2, v5

    .line 53
    add-long/2addr v3, v5

    .line 54
    iput-wide v3, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->openRss:J

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v3, "pid: "

    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    iget v3, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v3, " name: "

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v3, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v3, " openRss: "

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-wide v3, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->openRss:J

    .line 86
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    const-string v2, "PolicyHandler"

    .line 100
    invoke-static {v2, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string p0, "PolicyHandler"

    .line 8
    const-string/jumbo v0, "onDeviceIdle()"

    .line 11
    invoke-static {p0, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isEnable()Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    .line 28
    const/4 v0, 0x3

    .line 29
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "Handler onDozeState catch exception "

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v1, "HeimdallAlwaysRunningMonitor"

    .line 43
    invoke-static {p0, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

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

    .line 4
    if-nez p6, :cond_7

    .line 6
    if-eqz p3, :cond_0

    .line 8
    iget-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 10
    const-wide/16 v0, 0x0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object v0

    .line 16
    check-cast p5, Ljava/util/HashMap;

    .line 18
    invoke-virtual {p5, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 23
    iget-object p5, p5, Lcom/android/server/chimera/SystemRepository;->mFGActivityManager:Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

    .line 25
    if-eqz p5, :cond_7

    .line 27
    monitor-enter p5

    .line 28
    :try_start_0
    iget-object v0, p5, Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;->mForegroundActivities:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p5

    .line 34
    goto/16 :goto_0

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

    .line 41
    iget-boolean p5, p5, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 43
    if-eqz p5, :cond_7

    .line 45
    iget-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 47
    iget-object v0, p5, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 49
    invoke-virtual {v0, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_7

    .line 55
    const-string/jumbo v0, "com.sec.android.app.camera"

    .line 58
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 64
    goto/16 :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 68
    check-cast v0, Landroid/util/ArrayMap;

    .line 70
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Long;

    .line 76
    const-wide/16 v1, -0x1

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_2

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const-wide/32 v3, 0x64000

    .line 92
    const/4 v5, 0x0

    .line 93
    if-nez v0, :cond_5

    .line 95
    iget-object v0, p5, Lcom/android/server/chimera/SystemRepository;->mGameApps:Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    .line 97
    invoke-virtual {v0, p4}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->contains(Ljava/lang/String;)Z

    .line 100
    move-result v0

    .line 101
    iget-object v6, p5, Lcom/android/server/chimera/SystemRepository;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 103
    invoke-virtual {v6, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    .line 106
    move-result v6

    .line 107
    if-nez v0, :cond_3

    .line 109
    if-nez v6, :cond_3

    .line 111
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 113
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    move-result-object p5

    .line 117
    check-cast p1, Landroid/util/ArrayMap;

    .line 119
    invoke-virtual {p1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    goto :goto_0

    .line 123
    :cond_3
    invoke-static {p1, v5, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 126
    move-result-wide v1

    .line 127
    if-eqz v0, :cond_4

    .line 129
    cmp-long p1, v1, v3

    .line 131
    if-lez p1, :cond_4

    .line 133
    iget-object p1, p5, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 135
    invoke-virtual {p1, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->update(Ljava/lang/String;)V

    .line 138
    :cond_4
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 140
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    move-result-object p5

    .line 144
    check-cast p1, Landroid/util/ArrayMap;

    .line 146
    invoke-virtual {p1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    goto :goto_0

    .line 150
    :cond_5
    invoke-static {p1, v5, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 153
    move-result-wide v0

    .line 154
    iget-object p1, p5, Lcom/android/server/chimera/SystemRepository;->mGameApps:Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    .line 156
    invoke-virtual {p1, p4}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->contains(Ljava/lang/String;)Z

    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_6

    .line 162
    cmp-long p1, v0, v3

    .line 164
    if-lez p1, :cond_7

    .line 166
    iget-object p1, p5, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 168
    invoke-virtual {p1, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->update(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    move-result-object p5

    .line 177
    check-cast p1, Landroid/util/ArrayMap;

    .line 179
    invoke-virtual {p1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    goto :goto_0

    .line 183
    :cond_6
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 185
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    move-result-object p5

    .line 189
    check-cast p1, Landroid/util/ArrayMap;

    .line 191
    invoke-virtual {p1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_7
    :goto_0
    const-string/jumbo p1, "com.samsung.android.permissioncontroller"

    .line 197
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result p1

    .line 201
    if-nez p1, :cond_e

    .line 203
    const-string/jumbo p1, "com.google.android.permissioncontroller"

    .line 206
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_8

    .line 212
    goto :goto_3

    .line 213
    :cond_8
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 215
    iget-boolean p1, p1, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    .line 217
    if-eqz p1, :cond_d

    .line 219
    if-nez p6, :cond_e

    .line 221
    if-nez p3, :cond_e

    .line 223
    sget-object p1, Lcom/android/server/chimera/ChimeraCommonUtil;->mAppLaunchInfoMap:Ljava/util/Map;

    .line 225
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 227
    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-result-object p3

    .line 231
    check-cast p3, Ljava/lang/String;

    .line 233
    if-eqz p3, :cond_9

    .line 235
    const-string p5, "COLD"

    .line 237
    invoke-virtual {p3, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

    .line 245
    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Ljava/lang/String;

    .line 251
    if-eqz p1, :cond_a

    .line 253
    const-string p2, "WARM"

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 258
    move-result p2

    .line 259
    :cond_a
    if-eqz p2, :cond_b

    .line 261
    goto :goto_2

    .line 262
    :cond_b
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 264
    const-string p1, "PolicyHandler"

    .line 266
    const-string p2, "Chimera AppFileCacheReclaim do reclaimAppCaches skip: "

    .line 268
    invoke-virtual {p2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    invoke-static {p1, p2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    goto :goto_3

    .line 279
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mHandler:Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

    .line 281
    const/4 p2, 0x1

    .line 282
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 285
    move-result-object p1

    .line 286
    iput-object p4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mHandler:Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

    .line 290
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    goto :goto_3

    .line 294
    :cond_d
    sget-object p0, Lcom/android/server/chimera/ChimeraCommonUtil;->mAppLaunchInfoMap:Ljava/util/Map;

    .line 296
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 298
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 301
    :cond_e
    :goto_3
    return-void
.end method

.method public final onHomeLaunched()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-string v3, "PolicyHandler"

    .line 11
    const-string/jumbo v4, "onHomeLaunched()"

    .line 14
    invoke-static {v3, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual {v0, v4, v5}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    .line 23
    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 25
    iget-boolean v6, v6, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 27
    if-nez v6, :cond_0

    .line 29
    goto/16 :goto_12

    .line 31
    :cond_0
    sget-object v6, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 33
    invoke-virtual {v2}, Lcom/android/server/chimera/SystemRepository;->getAvailableMemory()J

    .line 36
    move-result-wide v6

    .line 37
    const-wide/16 v8, 0x400

    .line 39
    div-long/2addr v6, v8

    .line 40
    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 42
    iget-wide v8, v2, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 44
    sub-long/2addr v8, v6

    .line 45
    iget v6, v0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    .line 47
    int-to-long v6, v6

    .line 48
    add-long/2addr v8, v6

    .line 49
    const-wide/16 v6, 0x0

    .line 51
    cmp-long v8, v8, v6

    .line 53
    if-gtz v8, :cond_1

    .line 55
    goto/16 :goto_12

    .line 57
    :cond_1
    iget v2, v2, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 59
    shr-int/2addr v2, v1

    .line 60
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 62
    iget-object v9, v0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 64
    iget-object v10, v9, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 66
    invoke-virtual {v10}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 69
    move-result-object v10

    .line 70
    invoke-virtual {v9, v8, v2, v4, v10}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;

    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_1a

    .line 76
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 79
    move-result v8

    .line 80
    const/4 v9, 0x3

    .line 81
    if-lt v8, v9, :cond_1a

    .line 83
    iget-boolean v8, v0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    .line 85
    if-eqz v8, :cond_2

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 90
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object v8

    .line 94
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_6

    .line 100
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v9

    .line 104
    check-cast v9, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 106
    iget v10, v9, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 108
    const/4 v11, 0x0

    .line 109
    sget-object v12, Lcom/android/server/chimera/PolicyHandler;->CMDLINE_OUT:[I

    .line 111
    const-string v13, "/cmdline"

    .line 113
    const-string v14, "/proc/"

    .line 115
    if-nez v10, :cond_3

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    new-array v10, v1, [Ljava/lang/String;

    .line 120
    new-instance v15, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    iget v6, v9, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 127
    invoke-static {v6, v15, v13}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object v6

    .line 131
    invoke-static {v6, v12, v10, v11, v11}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_5

    .line 137
    aget-object v6, v10, v5

    .line 139
    if-eqz v6, :cond_5

    .line 141
    iget-object v7, v9, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 143
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 146
    move-result v6

    .line 147
    if-nez v6, :cond_4

    .line 149
    goto :goto_1

    .line 150
    :cond_4
    const-wide/16 v6, 0x0

    .line 152
    goto :goto_0

    .line 153
    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 156
    move-result-wide v6

    .line 157
    new-instance v8, Ljava/io/File;

    .line 159
    const-string v9, "/proc"

    .line 161
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 167
    move-result-object v8

    .line 168
    if-nez v8, :cond_7

    .line 170
    :cond_6
    :goto_2
    move v11, v1

    .line 171
    goto/16 :goto_a

    .line 173
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    .line 175
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 178
    array-length v10, v8

    .line 179
    move v15, v5

    .line 180
    :goto_3
    if-ge v15, v10, :cond_8

    .line 182
    aget-object v16, v8, v15

    .line 184
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 187
    move-result v16

    .line 188
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

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

    .line 200
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 203
    move-result-object v8

    .line 204
    const/4 v9, 0x0

    .line 205
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    move-result v10

    .line 209
    if-eqz v10, :cond_f

    .line 211
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    move-result-object v10

    .line 215
    check-cast v10, Ljava/lang/Integer;

    .line 217
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 220
    move-result v15

    .line 221
    const/16 v1, 0x64

    .line 223
    if-ge v15, v1, :cond_a

    .line 225
    :cond_9
    :goto_5
    const/4 v11, 0x1

    .line 226
    goto :goto_8

    .line 227
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object v1

    .line 242
    invoke-static {v1, v12, v5, v11, v11}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_9

    .line 248
    const/4 v1, 0x0

    .line 249
    aget-object v15, v5, v1

    .line 251
    if-nez v15, :cond_b

    .line 253
    goto :goto_5

    .line 254
    :cond_b
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraProviderInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 256
    iget-object v11, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 258
    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 261
    move-result v11

    .line 262
    if-eqz v11, :cond_c

    .line 264
    :goto_6
    const/4 v11, 0x1

    .line 265
    goto :goto_7

    .line 266
    :cond_c
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraAppInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 268
    iget-object v11, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 270
    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 273
    move-result v11

    .line 274
    if-eqz v11, :cond_d

    .line 276
    goto :goto_6

    .line 277
    :cond_d
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraServerInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    .line 279
    iget-object v11, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 281
    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 284
    move-result v11

    .line 285
    if-eqz v11, :cond_9

    .line 287
    goto :goto_6

    .line 288
    :goto_7
    add-int/2addr v9, v11

    .line 289
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 292
    move-result v10

    .line 293
    iput v10, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 295
    new-instance v10, Ljava/lang/StringBuilder;

    .line 297
    const-string/jumbo v15, "get camera process\'s pid: "

    .line 300
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    iget v15, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    .line 305
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    const-string v15, " name: "

    .line 310
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    .line 315
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    move-result-object v1

    .line 322
    invoke-static {v3, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    .line 327
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 330
    move-result v1

    .line 331
    if-lt v9, v1, :cond_e

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

    .line 338
    :cond_f
    move v11, v1

    .line 339
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 341
    const-string/jumbo v5, "get camera process\'s pid success and Processing time(ms): "

    .line 344
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 350
    move-result-wide v8

    .line 351
    sub-long/2addr v8, v6

    .line 352
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    move-result-object v1

    .line 359
    invoke-static {v3, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 365
    move-result-object v1

    .line 366
    const-wide/16 v6, 0x0

    .line 368
    :cond_10
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    move-result v5

    .line 372
    if-eqz v5, :cond_12

    .line 374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    move-result-object v5

    .line 378
    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 380
    iget-wide v8, v5, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 382
    iget-wide v12, v5, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    .line 384
    sub-long/2addr v8, v12

    .line 385
    cmp-long v10, v8, v6

    .line 387
    if-lez v10, :cond_11

    .line 389
    move-wide v6, v8

    .line 390
    :cond_11
    iget v5, v5, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 392
    if-le v5, v11, :cond_10

    .line 394
    move v11, v5

    .line 395
    goto :goto_b

    .line 396
    :cond_12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 399
    move-result-object v1

    .line 400
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    move-result v5

    .line 404
    const/4 v8, 0x4

    .line 405
    if-eqz v5, :cond_13

    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    move-result-object v5

    .line 411
    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 413
    iget v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 415
    int-to-float v9, v9

    .line 416
    const/high16 v10, 0x3f000000    # 0.5f

    .line 418
    mul-float/2addr v9, v10

    .line 419
    int-to-float v10, v11

    .line 420
    div-float/2addr v9, v10

    .line 421
    iget v10, v5, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 423
    int-to-float v10, v10

    .line 424
    const v12, 0x3dcccccd    # 0.1f

    .line 427
    mul-float/2addr v10, v12

    .line 428
    const/high16 v12, 0x42480000    # 50.0f

    .line 430
    div-float/2addr v10, v12

    .line 431
    add-float/2addr v10, v9

    .line 432
    iget-wide v12, v5, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 434
    iget-wide v14, v5, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    .line 436
    sub-long/2addr v12, v14

    .line 437
    long-to-float v9, v12

    .line 438
    const v12, 0x3ecccccd    # 0.4f

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

    .line 447
    mul-float/2addr v9, v10

    .line 448
    iput v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->score:F

    .line 450
    iget v12, v5, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

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

    .line 458
    goto :goto_c

    .line 459
    :cond_13
    new-instance v1, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda4;

    .line 461
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 464
    invoke-interface {v2, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 470
    move-result-wide v5

    .line 471
    iput-wide v5, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimLastFilterTime:J

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    .line 476
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 479
    move-result-object v1

    .line 480
    const/4 v2, 0x0

    .line 481
    :cond_14
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 484
    move-result v5

    .line 485
    if-eqz v5, :cond_1c

    .line 487
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 490
    move-result-object v5

    .line 491
    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 493
    iget v6, v5, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 495
    if-lt v6, v8, :cond_15

    .line 497
    const-string/jumbo v0, "killing stopped to group 4"

    .line 500
    invoke-static {v3, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    goto/16 :goto_12

    .line 505
    :cond_15
    invoke-virtual {v0, v5, v4}, Lcom/android/server/chimera/PolicyHandler;->isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    .line 508
    move-result v6

    .line 509
    if-nez v6, :cond_16

    .line 511
    const/4 v11, 0x0

    .line 512
    goto :goto_d

    .line 513
    :cond_16
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    .line 516
    move-result v6

    .line 517
    if-eqz v6, :cond_19

    .line 519
    new-instance v6, Ljava/util/ArrayList;

    .line 521
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 524
    iget-object v7, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 526
    check-cast v7, Ljava/util/ArrayList;

    .line 528
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 531
    move-result-object v7

    .line 532
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 535
    move-result v9

    .line 536
    if-eqz v9, :cond_19

    .line 538
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 541
    move-result-object v9

    .line 542
    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 544
    :try_start_1
    iget v10, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 546
    const/4 v11, 0x0

    .line 547
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Process;->openPidFd(II)Ljava/io/FileDescriptor;

    .line 550
    move-result-object v10

    .line 551
    if-nez v10, :cond_17

    .line 553
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 556
    move-result-object v5

    .line 557
    :catch_1
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 560
    move-result v7

    .line 561
    if-eqz v7, :cond_14

    .line 563
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 566
    move-result-object v7

    .line 567
    check-cast v7, Ljava/io/FileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 569
    :try_start_3
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 572
    goto :goto_f

    .line 573
    :cond_17
    :try_start_4
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 576
    iput-object v10, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    .line 578
    goto :goto_e

    .line 579
    :catch_2
    const/4 v11, 0x0

    .line 580
    :catch_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 583
    move-result-object v5

    .line 584
    :catch_4
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 587
    move-result v6

    .line 588
    if-eqz v6, :cond_18

    .line 590
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 593
    move-result-object v6

    .line 594
    check-cast v6, Ljava/io/FileDescriptor;

    .line 596
    :try_start_5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 599
    goto :goto_10

    .line 600
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 602
    const-string/jumbo v6, "open pid "

    .line 605
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 608
    iget v6, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 610
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 613
    const-string v6, ": "

    .line 615
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    iget-object v6, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 620
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string v6, " failed!"

    .line 625
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    move-result-object v5

    .line 632
    invoke-static {v3, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    goto/16 :goto_d

    .line 637
    :cond_19
    const/4 v11, 0x0

    .line 638
    iget-object v6, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 640
    check-cast v6, Ljava/util/ArrayList;

    .line 642
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 645
    move-result v6

    .line 646
    add-int/2addr v2, v6

    .line 647
    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 649
    check-cast v6, Ljava/util/ArrayList;

    .line 651
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    if-lt v2, v8, :cond_14

    .line 656
    goto :goto_12

    .line 657
    :cond_1a
    move v11, v5

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    .line 660
    const-string/jumbo v1, "executePolicy() - getAppsToKill return "

    .line 663
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    if-eqz v2, :cond_1b

    .line 668
    invoke-interface {v2}, Ljava/util/List;->size()I

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

    .line 677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    move-result-object v0

    .line 681
    invoke-static {v3, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_1c
    :goto_12
    return-void
.end method

.method public final onLmkdEventTriggered(II)V
    .locals 10

    .line 1
    const-string/jumbo v0, "onLmkdKillTriggered() - lmkdLevel: "

    .line 4
    const-string v1, " type: "

    .line 6
    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const-string v1, "PolicyHandler"

    .line 17
    invoke-static {v1, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x1

    .line 21
    if-eq p2, v0, :cond_1

    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq p2, v0, :cond_0

    .line 26
    goto/16 :goto_1

    .line 28
    :cond_0
    sget-object p2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD_GENIE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 30
    invoke-virtual {p0, p2, p1}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    .line 33
    goto/16 :goto_1

    .line 35
    :cond_1
    sget-object p2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 37
    invoke-virtual {p0, p2, p1}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    .line 40
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 42
    iget-object p1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 44
    check-cast p1, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result p1

    .line 50
    if-lez p1, :cond_4

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    .line 59
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v2, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 69
    check-cast v2, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v2

    .line 75
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v3

    .line 79
    const-string v4, "AbnormalFgsDetector"

    .line 81
    if-eqz v3, :cond_3

    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 89
    iget-object v5, v3, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    .line 91
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget v5, v3, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->uid:I

    .line 96
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const/16 v5, 0x1388

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v5, v3, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    .line 114
    iget-wide v6, v3, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->detectPss:J

    .line 116
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 118
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 121
    const-string v8, "TYPE"

    .line 123
    const/16 v9, 0x67

    .line 125
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    const-string v8, "PNAME"

    .line 130
    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v5, "PSS"

    .line 135
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 145
    move-result v5

    .line 146
    sub-int/2addr v5, v0

    .line 147
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 150
    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    move-result v4

    .line 155
    if-nez v4, :cond_2

    .line 157
    sget-object v4, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 159
    invoke-virtual {v4, v3}, Lcom/android/server/chimera/SystemRepository;->sendHqmBigData(Ljava/lang/String;)V

    .line 162
    goto :goto_0

    .line 163
    :catch_0
    sget-object v3, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 165
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    const-string/jumbo v3, "failed to create the KPUT"

    .line 171
    invoke-static {v4, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    goto :goto_0

    .line 175
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 177
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    const-string/jumbo v2, "com.samsung.sdhms.MEMORY_ABNORMAL_APP_DETECTION"

    .line 183
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string/jumbo v2, "package_name"

    .line 189
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 192
    const-string/jumbo p1, "uid"

    .line 195
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 198
    const-string p1, "anomaly_type"

    .line 200
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 203
    const-string/jumbo p1, "com.sec.android.sdhms"

    .line 206
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    sget-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 211
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    sget-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    .line 220
    const-string/jumbo v0, "reported AbnormalHeavyApp : "

    .line 223
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 228
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 231
    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    invoke-static {v4, p2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object p1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    .line 255
    iget-object p2, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 257
    check-cast p1, Ljava/util/ArrayList;

    .line 259
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 262
    iget-object p0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 264
    check-cast p0, Ljava/util/ArrayList;

    .line 266
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 269
    :cond_4
    :goto_1
    return-void
.end method

.method public final onQuotaKill(Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/16 v1, 0xa

    .line 5
    const-wide/32 v2, 0x7d000

    .line 8
    if-eqz p1, :cond_0

    .line 10
    move-wide v7, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 14
    invoke-virtual {v0, v4}, Lcom/android/server/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_1

    .line 20
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 22
    const-string v1, "PolicyHandler"

    .line 24
    const-string/jumbo v2, "executePolicy() - prepareForTrigger fails"

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void

    .line 34
    :cond_1
    new-instance v4, Lcom/android/internal/util/MemInfoReader;

    .line 36
    invoke-direct {v4}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 39
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 42
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    .line 45
    move-result-wide v5

    .line 46
    const-wide/16 v7, 0x400

    .line 48
    div-long/2addr v5, v7

    .line 49
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getShmemSizeKb()J

    .line 52
    move-result-wide v7

    .line 53
    sub-long/2addr v5, v7

    .line 54
    iget-object v7, v0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 56
    iget-wide v7, v7, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 58
    sub-long/2addr v7, v5

    .line 59
    const-wide/32 v9, 0xc800

    .line 62
    cmp-long v11, v7, v9

    .line 64
    if-gez v11, :cond_3

    .line 66
    invoke-static {v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    .line 69
    move-result v4

    .line 70
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getMinSwapFreePercentage()I

    .line 73
    move-result v7

    .line 74
    add-int/2addr v7, v1

    .line 75
    if-ge v4, v7, :cond_2

    .line 77
    move-wide v7, v9

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 81
    const-string v1, "PolicyHandler"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v3, "onQuotaKill() skip by memory enough, memAvailable: "

    .line 88
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    const-string v3, ", swapfree(%): "

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 113
    :cond_3
    :goto_0
    iget v4, v0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillTriggerCnt:I

    .line 115
    const/4 v5, 0x1

    .line 116
    add-int/2addr v4, v5

    .line 117
    iput v4, v0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillTriggerCnt:I

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 122
    move-result-wide v9

    .line 123
    iget-object v4, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 125
    invoke-virtual {v4}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 128
    move-result-object v6

    .line 129
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 132
    move-result-object v11

    .line 133
    new-instance v12, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda5;

    .line 135
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 141
    move-result-object v11

    .line 142
    invoke-interface {v11}, Ljava/util/stream/IntStream;->toArray()[I

    .line 145
    move-result-object v11

    .line 146
    invoke-virtual {v4, v11}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    .line 149
    move-result-object v4

    .line 150
    const/4 v11, 0x0

    .line 151
    if-eqz v4, :cond_6

    .line 153
    iget-object v12, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 155
    if-nez v12, :cond_4

    .line 157
    goto :goto_2

    .line 158
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    .line 160
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 163
    move v13, v11

    .line 164
    :goto_1
    move-object v14, v6

    .line 165
    check-cast v14, Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 170
    move-result v15

    .line 171
    if-ge v13, v15, :cond_7

    .line 173
    iget-object v15, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 175
    check-cast v15, [I

    .line 177
    aget v15, v15, v13

    .line 179
    const/16 v1, 0x64

    .line 181
    if-gt v1, v15, :cond_5

    .line 183
    const/16 v1, 0xfa

    .line 185
    if-gt v15, v1, :cond_5

    .line 187
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 193
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 198
    const/16 v1, 0xa

    .line 200
    goto :goto_1

    .line 201
    :cond_6
    :goto_2
    const/4 v12, 0x0

    .line 202
    :cond_7
    if-nez v12, :cond_8

    .line 204
    return-void

    .line 205
    :cond_8
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 208
    move-result-wide v1

    .line 209
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 211
    const-string v4, "PolicyHandler"

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    .line 215
    const-string/jumbo v13, "onQuotaKill(), remain target: "

    .line 218
    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v6

    .line 228
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    invoke-static {v4, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 236
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    move v4, v11

    .line 240
    :goto_3
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 243
    move-result-object v6

    .line 244
    array-length v6, v6

    .line 245
    if-ge v4, v6, :cond_9

    .line 247
    iget-object v6, v3, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    .line 249
    aget-object v6, v6, v4

    .line 251
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 254
    add-int/lit8 v4, v4, 0x1

    .line 256
    goto :goto_3

    .line 257
    :cond_9
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 259
    iget-object v4, v0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 261
    sget-object v6, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 263
    invoke-virtual {v3, v4, v11, v6, v12}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;

    .line 266
    move-result-object v3

    .line 267
    if-eqz v3, :cond_1d

    .line 269
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 272
    move-result v4

    .line 273
    if-eqz v4, :cond_a

    .line 275
    goto/16 :goto_14

    .line 277
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 280
    move-result-object v4

    .line 281
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    move-result v6

    .line 285
    if-eqz v6, :cond_c

    .line 287
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    move-result-object v6

    .line 291
    check-cast v6, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 293
    iget-object v6, v6, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 295
    check-cast v6, Ljava/util/ArrayList;

    .line 297
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 300
    move-result-object v6

    .line 301
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    move-result v12

    .line 305
    if-eqz v12, :cond_b

    .line 307
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    move-result-object v12

    .line 311
    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 313
    iget v13, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 315
    iget-wide v14, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 317
    invoke-static {v13, v14, v15}, Lcom/android/server/chimera/ChimeraCommonUtil;->getDRAMUsed(IJ)J

    .line 320
    move-result-wide v13

    .line 321
    iput-wide v13, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->DRAMUsed:J

    .line 323
    goto :goto_4

    .line 324
    :cond_c
    new-instance v4, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;

    .line 326
    invoke-direct {v4, v0}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/PolicyHandler;)V

    .line 329
    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 332
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 334
    iget v6, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 336
    add-int/2addr v6, v5

    .line 337
    iput v6, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 339
    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 341
    const/4 v12, 0x6

    .line 342
    aget v13, v6, v12

    .line 344
    add-int/2addr v13, v5

    .line 345
    aput v13, v6, v12

    .line 347
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 350
    move-result-object v3

    .line 351
    move v6, v11

    .line 352
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    move-result v12

    .line 356
    if-eqz v12, :cond_1b

    .line 358
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    move-result-object v12

    .line 362
    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 364
    invoke-virtual {v0, v12, v4}, Lcom/android/server/chimera/PolicyHandler;->isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    .line 367
    move-result v15

    .line 368
    if-nez v15, :cond_d

    .line 370
    move-object/from16 v18, v3

    .line 372
    move-wide/from16 v16, v7

    .line 374
    goto/16 :goto_e

    .line 376
    :cond_d
    iget-object v15, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 378
    iget-object v15, v15, Lcom/android/server/chimera/SystemRepository;->mFGActivityManager:Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

    .line 380
    if-eqz v15, :cond_f

    .line 382
    iget-object v5, v12, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 384
    monitor-enter v15

    .line 385
    :try_start_0
    iget-object v11, v15, Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;->mForegroundActivities:Landroid/util/SparseArray;

    .line 387
    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->indexOfValueByValue(Ljava/lang/Object;)I

    .line 390
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    if-ltz v5, :cond_e

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

    .line 407
    iget-object v15, v12, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 409
    iget v13, v12, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 411
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    .line 417
    move-result v13

    .line 418
    move-wide/from16 v16, v7

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 423
    move-result-wide v7

    .line 424
    iget-object v11, v11, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 426
    iget-object v11, v11, Lcom/android/server/chimera/SystemRepository;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 428
    invoke-virtual {v11, v13, v15, v7, v8}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    .line 431
    move-result v7

    .line 432
    const/16 v8, 0xa

    .line 434
    if-gt v7, v8, :cond_18

    .line 436
    if-eqz v5, :cond_10

    .line 438
    :goto_8
    move-object/from16 v18, v3

    .line 440
    goto/16 :goto_e

    .line 442
    :cond_10
    iget-object v7, v12, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 444
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 447
    move-result-object v7

    .line 448
    new-instance v11, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda1;

    .line 450
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 453
    invoke-interface {v7, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 456
    move-result-object v7

    .line 457
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 460
    move-result-object v11

    .line 461
    invoke-interface {v7, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 464
    move-result-object v7

    .line 465
    check-cast v7, Ljava/util/List;

    .line 467
    iget-object v11, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 469
    iget v13, v12, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 471
    iget-object v11, v11, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 473
    invoke-static {}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    .line 476
    move-result-object v14

    .line 477
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 483
    monitor-enter v11

    .line 484
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 487
    move-result-object v7

    .line 488
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 491
    move-result v15

    .line 492
    if-eqz v15, :cond_17

    .line 494
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 497
    move-result-object v15

    .line 498
    check-cast v15, Ljava/lang/String;

    .line 500
    iget-object v8, v11, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 502
    invoke-virtual {v8, v13, v15}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 505
    move-result-object v8

    .line 506
    if-nez v8, :cond_11

    .line 508
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 509
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 512
    goto :goto_8

    .line 513
    :catchall_1
    move-exception v0

    .line 514
    goto/16 :goto_10

    .line 516
    :cond_11
    :try_start_2
    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 518
    iget-object v8, v8, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 520
    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 523
    move-result-object v8

    .line 524
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 527
    move-result v15

    .line 528
    if-eqz v15, :cond_16

    .line 530
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 533
    move-result-object v15

    .line 534
    check-cast v15, Lcom/android/server/am/ServiceRecord;

    .line 536
    iget-object v15, v15, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 538
    move-object/from16 v18, v3

    .line 540
    move-object/from16 v19, v7

    .line 542
    const/4 v3, 0x0

    .line 543
    :goto_b
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 546
    move-result v7

    .line 547
    if-ge v3, v7, :cond_15

    .line 549
    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 552
    move-result-object v7

    .line 553
    check-cast v7, Ljava/util/ArrayList;

    .line 555
    if-eqz v7, :cond_14

    .line 557
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 560
    move-result-object v7

    .line 561
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    move-result v20

    .line 565
    if-eqz v20, :cond_14

    .line 567
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 570
    move-result-object v20

    .line 571
    move-object/from16 v21, v7

    .line 573
    move-object/from16 v7, v20

    .line 575
    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 577
    move-object/from16 v20, v8

    .line 579
    iget v8, v7, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    .line 581
    invoke-static {v8}, Landroid/os/UserHandle;->isCore(I)Z

    .line 584
    move-result v8

    .line 585
    if-nez v8, :cond_13

    .line 587
    iget-object v7, v7, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 589
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    move-result v7

    .line 593
    if-eqz v7, :cond_12

    .line 595
    goto :goto_d

    .line 596
    :cond_12
    move-object/from16 v8, v20

    .line 598
    move-object/from16 v7, v21

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

    .line 605
    :goto_e
    move-wide/from16 v7, v16

    .line 607
    move-object/from16 v3, v18

    .line 609
    :goto_f
    const/4 v5, 0x1

    .line 610
    const/4 v11, 0x0

    .line 611
    goto/16 :goto_5

    .line 613
    :cond_14
    move-object/from16 v20, v8

    .line 615
    add-int/lit8 v3, v3, 0x1

    .line 617
    move-object/from16 v8, v20

    .line 619
    goto :goto_b

    .line 620
    :cond_15
    move-object/from16 v3, v18

    .line 622
    move-object/from16 v7, v19

    .line 624
    goto :goto_a

    .line 625
    :cond_16
    const/16 v8, 0xa

    .line 627
    goto/16 :goto_9

    .line 629
    :cond_17
    move-object/from16 v18, v3

    .line 631
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 632
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 635
    iget-object v3, v12, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 637
    invoke-static {v3}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

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

    .line 645
    throw v0

    .line 646
    :cond_18
    move-object/from16 v18, v3

    .line 648
    :goto_11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 650
    const-string v7, " "

    .line 652
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 655
    iget-object v7, v12, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 657
    check-cast v7, Ljava/util/ArrayList;

    .line 659
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 662
    move-result-object v7

    .line 663
    const-wide/16 v13, 0x0

    .line 665
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 668
    move-result v8

    .line 669
    if-eqz v8, :cond_19

    .line 671
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 674
    move-result-object v8

    .line 675
    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 677
    iget-object v11, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 679
    iget-object v15, v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 681
    move-object/from16 v19, v7

    .line 683
    iget v7, v12, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 685
    move-wide/from16 v20, v9

    .line 687
    const-string v9, "QuotaKill"

    .line 689
    invoke-virtual {v11, v7, v15, v9, v5}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 692
    iget-wide v9, v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->DRAMUsed:J

    .line 694
    add-long/2addr v13, v9

    .line 695
    const-string v7, ","

    .line 697
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget v7, v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 702
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 705
    const-string v7, " "

    .line 707
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    iget-object v7, v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 712
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    move-object/from16 v7, v19

    .line 717
    move-wide/from16 v9, v20

    .line 719
    goto :goto_12

    .line 720
    :cond_19
    move-wide/from16 v20, v9

    .line 722
    iget-object v7, v12, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 724
    check-cast v7, Ljava/util/ArrayList;

    .line 726
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 729
    move-result v7

    .line 730
    add-int/2addr v6, v7

    .line 731
    iget v8, v0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillCnt:I

    .line 733
    add-int/2addr v8, v7

    .line 734
    iput v8, v0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillCnt:I

    .line 736
    iget-object v7, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 738
    const-string v8, "PolicyHandler"

    .line 740
    new-instance v9, Ljava/lang/StringBuilder;

    .line 742
    const-string v10, "QuotaKill on trigger6"

    .line 744
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 750
    const-string v3, ", freed: "

    .line 752
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 758
    const-string v3, ", allow restart: "

    .line 760
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    move-result-object v3

    .line 770
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    invoke-static {v8, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {v0, v12, v4}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 779
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 781
    iget-object v5, v12, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 786
    move-result-wide v7

    .line 787
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 790
    move-result-object v7

    .line 791
    check-cast v3, Ljava/util/HashMap;

    .line 793
    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    sub-long/2addr v1, v13

    .line 797
    const-wide/16 v7, 0x0

    .line 799
    cmp-long v3, v1, v7

    .line 801
    if-gtz v3, :cond_1a

    .line 803
    goto :goto_13

    .line 804
    :cond_1a
    move-wide/from16 v7, v16

    .line 806
    move-object/from16 v3, v18

    .line 808
    move-wide/from16 v9, v20

    .line 810
    goto/16 :goto_f

    .line 812
    :cond_1b
    move-wide/from16 v16, v7

    .line 814
    move-wide/from16 v20, v9

    .line 816
    const-wide/16 v7, 0x0

    .line 818
    :goto_13
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 820
    const-string v5, "PolicyHandler"

    .line 822
    invoke-virtual {v3, v5}, Lcom/android/server/chimera/SkipReasonLogger;->printLog(Ljava/lang/String;)V

    .line 825
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 828
    move-result-wide v9

    .line 829
    sub-long v9, v9, v20

    .line 831
    sub-long v1, v16, v1

    .line 833
    cmp-long v3, v1, v7

    .line 835
    if-eqz v3, :cond_1c

    .line 837
    invoke-virtual {v0, v4}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 840
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 842
    const-string v3, "PolicyHandler"

    .line 844
    const-string v4, "Quota kill complete: killed "

    .line 846
    const-string v5, " apps, freed "

    .line 848
    invoke-static {v6, v4, v1, v2, v5}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    move-result-object v1

    .line 852
    const-string v2, " KB, cost "

    .line 854
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 860
    const-string/jumbo v2, "ms"

    .line 863
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 869
    move-result-object v1

    .line 870
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 873
    invoke-static {v3, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    goto :goto_15

    .line 877
    :cond_1c
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 879
    const-string v1, "PolicyHandler"

    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    .line 883
    const-string v3, "No Quota kill target, cost "

    .line 885
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 891
    const-string/jumbo v3, "ms"

    .line 894
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 900
    move-result-object v2

    .line 901
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 904
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    goto :goto_15

    .line 908
    :cond_1d
    :goto_14
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 910
    const-string v1, "PolicyHandler"

    .line 912
    const-string v2, "No Quota kill target after filtering!"

    .line 914
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 917
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :goto_15
    return-void
.end method

.method public final prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_2

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq p1, v2, :cond_2

    .line 12
    const/4 v2, 0x6

    .line 13
    if-eq p1, v2, :cond_1

    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq p1, v2, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 22
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 24
    const-string/jumbo v2, "power"

    .line 27
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/os/PowerManager;

    .line 33
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 36
    move-result p1

    .line 37
    xor-int/2addr p1, v0

    .line 38
    if-nez p1, :cond_3

    .line 40
    return v1

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 43
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 45
    const-string/jumbo v2, "power"

    .line 48
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/os/PowerManager;

    .line 54
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 57
    move-result p1

    .line 58
    xor-int/2addr p1, v0

    .line 59
    if-eqz p1, :cond_3

    .line 61
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 63
    const-string p1, "PolicyHandler"

    .line 65
    const-string/jumbo v0, "prepareForTrigger() - skip reason: screen off"

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-static {p1, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return v1

    .line 75
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 77
    iget-object v2, p1, Lcom/android/server/chimera/SystemRepository;->mAudioManager:Landroid/media/AudioManager;

    .line 79
    if-nez v2, :cond_4

    .line 81
    iget-object v2, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 83
    const-string v3, "audio"

    .line 85
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroid/media/AudioManager;

    .line 91
    iput-object v2, p1, Lcom/android/server/chimera/SystemRepository;->mAudioManager:Landroid/media/AudioManager;

    .line 93
    :cond_4
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mAudioManager:Landroid/media/AudioManager;

    .line 95
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    .line 98
    move-result p1

    .line 99
    if-lt p1, v0, :cond_5

    .line 101
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 103
    const-string p1, "PolicyHandler"

    .line 105
    const-string/jumbo v0, "prepareForTrigger() - skip reason: incall"

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-static {p1, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return v1

    .line 115
    :cond_5
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 117
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mSmartSwitchEventReceiver:Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;

    .line 119
    iget-boolean v2, p1, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnStart:Z

    .line 121
    if-nez v2, :cond_b

    .line 123
    iget-boolean p1, p1, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnTransfer:Z

    .line 125
    if-eqz p1, :cond_6

    .line 127
    goto/16 :goto_3

    .line 129
    :cond_6
    iget-boolean p1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    .line 131
    if-eqz p1, :cond_7

    .line 133
    const-string p0, "PolicyHandler"

    .line 135
    const-string/jumbo p1, "prepareForTrigger() - skip reason: car mode"

    .line 138
    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return v1

    .line 142
    :cond_7
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    .line 144
    iget-object v2, p1, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    .line 146
    check-cast v2, Ljava/util/HashSet;

    .line 148
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 151
    iget-object v2, p1, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    .line 153
    iget-object p1, p1, Lcom/android/server/chimera/WakeLockManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 155
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 157
    const-string/jumbo v3, "power"

    .line 160
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Landroid/os/PowerManager;

    .line 166
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 169
    move-result-object p1

    .line 170
    new-instance v3, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;

    .line 172
    const/4 v4, 0x4

    .line 173
    invoke-direct {v3, v4}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;-><init>(I)V

    .line 176
    invoke-virtual {p1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 179
    move-result-object p1

    .line 180
    new-array v3, v1, [Ljava/lang/String;

    .line 182
    invoke-virtual {p1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-result-object p1

    .line 186
    check-cast p1, [Ljava/lang/String;

    .line 188
    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 191
    invoke-static {}, Lcom/android/server/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/chimera/RestartImmediatePackages;

    .line 194
    move-result-object p1

    .line 195
    iget-object p1, p1, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    .line 197
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 199
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 202
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 204
    monitor-enter p1

    .line 205
    :try_start_0
    iget-object v2, p1, Lcom/android/server/chimera/SystemRepository;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 207
    if-nez v2, :cond_a

    .line 209
    const-string/jumbo v2, "deviceidle"

    .line 212
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 215
    move-result-object v2

    .line 216
    if-eqz v2, :cond_9

    .line 218
    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    .line 221
    move-result-object v3

    .line 222
    iput-object v3, p1, Lcom/android/server/chimera/SystemRepository;->mDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-eqz v3, :cond_8

    .line 226
    :try_start_1
    new-instance v3, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda6;

    .line 228
    invoke-direct {v3, p1}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 231
    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    .line 241
    goto :goto_1

    .line 242
    :cond_8
    const-string v1, "SystemRepositoryDefault"

    .line 244
    const-string/jumbo v2, "mDeviceIdleController is null!"

    .line 247
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    goto :goto_1

    .line 251
    :cond_9
    const-string v1, "SystemRepositoryDefault"

    .line 253
    const-string v2, "binder is null!"

    .line 255
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_a
    :goto_1
    iget-object v1, p1, Lcom/android/server/chimera/SystemRepository;->mDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    monitor-exit p1

    .line 261
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 264
    move-result-object p1

    .line 265
    new-instance v1, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;

    .line 267
    const/4 v2, 0x2

    .line 268
    invoke-direct {v1, v2}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;-><init>(I)V

    .line 271
    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 274
    move-result-object p1

    .line 275
    new-instance v1, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;

    .line 277
    const/4 v2, 0x3

    .line 278
    invoke-direct {v1, v2}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;-><init>(I)V

    .line 281
    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 284
    move-result-object p1

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Ljava/util/List;

    .line 295
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPowerWhitelistedApps:Ljava/util/List;

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

    .line 302
    const-string/jumbo p1, "prepareForTrigger() - skip reason: smart switch"

    .line 305
    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return v1
.end method

.method public final updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result p1

    .line 11
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    .line 13
    aget v0, p0, p1

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 17
    aput v0, p0, p1

    .line 19
    return-void
.end method

.method public final updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    .line 7
    iget v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 9
    if-lez v0, :cond_0

    .line 11
    const/4 v2, 0x3

    .line 12
    if-gt v0, v2, :cond_0

    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    .line 17
    aget v3, v2, v0

    .line 19
    add-int/2addr v3, v1

    .line 20
    aput v3, v2, v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    .line 24
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Integer;

    .line 32
    if-nez v0, :cond_1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v0

    .line 43
    add-int/2addr v0, v1

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v0

    .line 48
    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    .line 50
    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz v0, :cond_3

    .line 58
    move v0, v3

    .line 59
    :goto_1
    iget-object v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 61
    iget-object v4, v4, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 63
    array-length v5, v4

    .line 64
    if-ge v0, v5, :cond_3

    .line 66
    aget v4, v4, v0

    .line 68
    const/16 v5, -0x3e8

    .line 70
    if-lt v4, v5, :cond_2

    .line 72
    const/16 v5, 0x3e8

    .line 74
    if-gt v4, v5, :cond_2

    .line 76
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 78
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 81
    move-result v5

    .line 82
    iget-object v6, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 84
    add-int/2addr v5, v1

    .line 85
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 93
    if-eqz v0, :cond_b

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    move-result-wide v4

    .line 104
    const-wide/16 v6, 0x0

    .line 106
    cmp-long v6, v4, v6

    .line 108
    if-nez v6, :cond_4

    .line 110
    const-string/jumbo v4, "null"

    .line 113
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 116
    move-result-object v4

    .line 117
    const-string v5, "%18s"

    .line 119
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    sget-object v6, Lcom/android/server/chimera/ChimeraDataCache;->DATE_FORMAT_MAP:Ljava/lang/ThreadLocal;

    .line 126
    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 129
    move-result-object v7

    .line 130
    check-cast v7, Ljava/util/Map;

    .line 132
    const-string v8, "MM/dd HH:mm:ss.SSS"

    .line 134
    if-nez v7, :cond_5

    .line 136
    new-instance v7, Landroid/util/ArrayMap;

    .line 138
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 144
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 146
    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-result-object v6

    .line 157
    check-cast v6, Ljava/text/DateFormat;

    .line 159
    if-nez v6, :cond_6

    .line 161
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 163
    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_6
    :goto_2
    new-instance v7, Ljava/util/Date;

    .line 171
    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 174
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 177
    move-result-object v4

    .line 178
    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v4, " "

    .line 183
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    iget-object v6, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 193
    check-cast v6, Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 198
    move-result-object v6

    .line 199
    move v7, v3

    .line 200
    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    move-result v8

    .line 204
    const-string v9, ","

    .line 206
    if-eqz v8, :cond_8

    .line 208
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    move-result-object v8

    .line 212
    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 214
    iget v8, v8, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 216
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    add-int/2addr v7, v1

    .line 220
    iget-object v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 222
    check-cast v8, Ljava/util/ArrayList;

    .line 224
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 227
    move-result v8

    .line 228
    if-ge v7, v8, :cond_7

    .line 230
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    goto :goto_4

    .line 234
    :cond_8
    iget v6, p1, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 236
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    move-result-object v6

    .line 240
    iget v7, p1, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 242
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    move-result-object v7

    .line 246
    iget-wide v10, p1, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 248
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 251
    move-result-object v8

    .line 252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v5

    .line 256
    filled-new-array {v2, v6, v7, v8, v5}, [Ljava/lang/Object;

    .line 259
    move-result-object v2

    .line 260
    const-string v5, "%s %xH %d %d %s"

    .line 262
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 274
    if-eqz v2, :cond_a

    .line 276
    :goto_5
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 278
    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 280
    array-length v5, v2

    .line 281
    if-ge v3, v5, :cond_a

    .line 283
    aget v2, v2, v3

    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 290
    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 292
    array-length v2, v2

    .line 293
    sub-int/2addr v2, v1

    .line 294
    if-ge v3, v2, :cond_9

    .line 296
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 301
    goto :goto_5

    .line 302
    :cond_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 308
    move-result p1

    .line 309
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 321
    :cond_b
    return-void
.end method
