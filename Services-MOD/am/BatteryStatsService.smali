.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;
.implements Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;
.implements Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field public final mActivityChangeObserver:Lcom/android/server/am/BatteryStatsService$1;

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

.field public final mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

.field public final mConfigFile:Landroid/util/AtomicFile;

.field public final mContext:Landroid/content/Context;

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public final mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

.field public mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

.field public final mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

.field public final mEntityNames:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public mLastPowerStateFromRadio:I

.field public mLastPowerStateFromWifi:I

.field public final mLock:Ljava/lang/Object;

.field public volatile mMonitorEnabled:Z

.field public final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field public final mNetworkCallback:Lcom/android/server/am/BatteryStatsService$2;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

.field public final mPowerStatsLock:Ljava/lang/Object;

.field public final mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

.field public final mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

.field public final mSemBatteryUsageStatsProvider:Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;

.field public final mStateNames:Ljava/util/Map;

.field public final mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mSystemServicesReady:Z

.field public final mUserManagerUserInfoProvider:Lcom/android/server/am/BatteryStatsService$3;

.field public final mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;


# direct methods
.method public static bridge synthetic -$$Nest$smnativeWaitWakeup(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 33

    .line 1
    move-object/from16 v12, p0

    .line 3
    move-object/from16 v13, p1

    .line 5
    move-object/from16 v14, p2

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 10
    new-instance v0, Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 12
    invoke-direct {v0}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    .line 15
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 17
    const/4 v15, 0x1

    .line 18
    iput-boolean v15, v12, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 20
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 28
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "?"

    .line 38
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    .line 41
    new-instance v0, Ljava/lang/Object;

    .line 43
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/lang/Object;

    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    .line 55
    const/4 v11, 0x0

    .line 56
    iput-object v11, v12, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    .line 60
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    .line 67
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    .line 72
    iput v15, v12, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 74
    iput v15, v12, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 76
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    .line 78
    invoke-direct {v0, v12}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    .line 81
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Lcom/android/server/am/BatteryStatsService$1;

    .line 83
    const/4 v10, 0x0

    .line 84
    iput-boolean v10, v12, Lcom/android/server/am/BatteryStatsService;->mSystemServicesReady:Z

    .line 86
    new-instance v0, Lcom/android/server/am/BatteryStatsService$2;

    .line 88
    invoke-direct {v0, v12}, Lcom/android/server/am/BatteryStatsService$2;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    .line 91
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Lcom/android/server/am/BatteryStatsService$2;

    .line 93
    iput-object v13, v12, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/android/server/am/BatteryStatsService$3;

    .line 97
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/am/BatteryStatsService$3;

    .line 102
    const-string v0, "batterystats-handler"

    .line 104
    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 107
    move-result-object v0

    .line 108
    new-instance v1, Landroid/os/Handler;

    .line 110
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 113
    move-result-object v0

    .line 114
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    iput-object v1, v12, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/android/internal/os/MonotonicClock;

    .line 121
    new-instance v1, Ljava/io/File;

    .line 123
    const-string/jumbo v2, "monotonic_clock.xml"

    .line 126
    invoke-direct {v1, v14, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    invoke-direct {v0, v1}, Lcom/android/internal/os/MonotonicClock;-><init>(Ljava/io/File;)V

    .line 132
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 134
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    .line 136
    invoke-direct {v0, v13}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 139
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 141
    new-instance v0, Lcom/android/internal/os/CpuScalingPolicyReader;

    .line 143
    invoke-direct {v0}, Lcom/android/internal/os/CpuScalingPolicyReader;-><init>()V

    .line 146
    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicyReader;->read()Lcom/android/internal/os/CpuScalingPolicies;

    .line 149
    move-result-object v0

    .line 150
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 155
    move-result-object v0

    .line 156
    const v1, 0x1110058

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 162
    move-result v0

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 166
    move-result-object v1

    .line 167
    const v2, 0x1110057

    .line 170
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 173
    move-result v1

    .line 174
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    .line 176
    invoke-direct {v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;-><init>()V

    .line 179
    iput-boolean v0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    .line 181
    iput-boolean v1, v2, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    move-result-object v0

    .line 187
    const v1, 0x1040395

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    const/4 v9, 0x2

    .line 195
    if-nez v0, :cond_0

    .line 197
    goto :goto_1

    .line 198
    :cond_0
    const-string v1, "([^:]+):(\\d+)\\s*"

    .line 200
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 207
    move-result-object v1

    .line 208
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_2

    .line 214
    invoke-virtual {v1, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 217
    move-result-object v3

    .line 218
    :try_start_0
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 221
    move-result-object v4

    .line 222
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 225
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const-string v6, "*"

    .line 228
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v6

    .line 232
    if-eqz v6, :cond_1

    .line 234
    iput-wide v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    .line 236
    goto :goto_0

    .line 237
    :cond_1
    iget-object v6, v2, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    .line 239
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 242
    move-result-object v4

    .line 243
    check-cast v6, Ljava/util/HashMap;

    .line 245
    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    goto :goto_0

    .line 249
    :catch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 251
    const-string v2, "Invalid config_powerStatsThrottlePeriods format: "

    .line 253
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 260
    throw v1

    .line 261
    :cond_2
    :goto_1
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    .line 263
    invoke-direct {v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)V

    .line 266
    iput-object v1, v12, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    .line 268
    new-instance v8, Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 270
    sget-object v2, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    .line 272
    iget-object v3, v12, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 274
    iget-object v5, v12, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 276
    iget-object v7, v12, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/am/BatteryStatsService$3;

    .line 278
    iget-object v6, v12, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 280
    iget-object v4, v12, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 282
    iget-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 284
    move-object/from16 v16, v0

    .line 286
    move-object v0, v8

    .line 287
    move-object/from16 v17, v4

    .line 289
    move-object/from16 v4, p2

    .line 291
    move-object/from16 v18, v6

    .line 293
    move-object/from16 v6, p0

    .line 295
    move-object/from16 v19, v7

    .line 297
    move-object/from16 v7, p0

    .line 299
    move-object v15, v8

    .line 300
    move-object/from16 v8, v19

    .line 302
    move v14, v9

    .line 303
    move-object/from16 v9, v18

    .line 305
    move v14, v10

    .line 306
    move-object/from16 v10, v17

    .line 308
    move-object/from16 v17, v11

    .line 310
    move-object/from16 v11, v16

    .line 312
    invoke-direct/range {v0 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    .line 315
    iput-object v15, v12, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 317
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 319
    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    .line 321
    invoke-direct {v1, v13}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;-><init>(Landroid/content/Context;)V

    .line 324
    invoke-direct {v0, v1, v15}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;Lcom/android/server/power/stats/BatteryStatsImpl;)V

    .line 327
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 329
    iput-object v0, v15, Lcom/android/server/power/stats/BatteryStatsImpl;->mExternalSync:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 331
    iget-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 333
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 336
    move-result-object v0

    .line 337
    const v1, 0x10e011b

    .line 340
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 343
    move-result v0

    .line 344
    int-to-long v0, v0

    .line 345
    const-wide/16 v2, 0x3e8

    .line 347
    mul-long/2addr v0, v2

    .line 348
    iget-object v2, v15, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 350
    if-eqz v2, :cond_3

    .line 352
    iput-wide v0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimeoutUs:J

    .line 354
    :cond_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->disableSystemServicePowerAttr()Z

    .line 357
    move-result v0

    .line 358
    if-nez v0, :cond_4

    .line 360
    invoke-virtual {v15}, Lcom/android/server/power/stats/BatteryStatsImpl;->startTrackingSystemServerCpuTime()V

    .line 363
    :cond_4
    new-instance v6, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;

    .line 365
    invoke-direct {v6}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;-><init>()V

    .line 368
    const/4 v0, 0x1

    .line 369
    invoke-virtual {v6, v0}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 372
    move-result-object v1

    .line 373
    filled-new-array {v14, v0}, [I

    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    .line 380
    const/4 v2, 0x2

    .line 381
    filled-new-array {v14, v0, v2}, [I

    .line 384
    move-result-object v3

    .line 385
    invoke-virtual {v1, v3}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    .line 388
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    .line 390
    const/4 v3, 0x1

    .line 391
    invoke-direct {v2, v12, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 394
    iput-object v2, v1, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 396
    const/16 v1, 0x8

    .line 398
    invoke-virtual {v6, v1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 401
    move-result-object v2

    .line 402
    filled-new-array {v14, v0}, [I

    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v2, v3}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    .line 409
    const/4 v3, 0x2

    .line 410
    filled-new-array {v14, v0, v3}, [I

    .line 413
    move-result-object v4

    .line 414
    invoke-virtual {v2, v4}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    .line 417
    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    .line 419
    const/4 v3, 0x2

    .line 420
    invoke-direct {v0, v12, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 423
    iput-object v0, v2, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 425
    move v10, v14

    .line 426
    :goto_2
    iget-object v0, v6, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    .line 428
    check-cast v0, Ljava/util/ArrayList;

    .line 430
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 433
    move-result v0

    .line 434
    if-ge v10, v0, :cond_6

    .line 436
    iget-object v0, v6, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    .line 438
    check-cast v0, Ljava/util/ArrayList;

    .line 440
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 443
    move-result-object v0

    .line 444
    move-object v11, v0

    .line 445
    check-cast v11, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 447
    iget v0, v11, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    .line 449
    if-ne v0, v1, :cond_5

    .line 451
    goto :goto_3

    .line 452
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 454
    goto :goto_2

    .line 455
    :cond_6
    move-object/from16 v11, v17

    .line 457
    :goto_3
    if-eqz v11, :cond_7

    .line 459
    const/16 v0, 0xe

    .line 461
    invoke-virtual {v6, v0}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 464
    move-result-object v0

    .line 465
    iget-object v1, v11, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    .line 467
    iput-object v1, v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    .line 469
    iget-object v1, v11, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    .line 471
    iput-object v1, v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    .line 473
    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;

    .line 475
    const/4 v2, 0x1

    .line 476
    invoke-direct {v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;-><init>(I)V

    .line 479
    iput-object v1, v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 481
    const/16 v0, 0xb

    .line 483
    invoke-virtual {v6, v0}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 486
    move-result-object v0

    .line 487
    const/4 v1, 0x1

    .line 488
    filled-new-array {v14, v1}, [I

    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    .line 495
    const/4 v2, 0x2

    .line 496
    filled-new-array {v14, v1, v2}, [I

    .line 499
    move-result-object v3

    .line 500
    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    .line 503
    new-instance v3, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    .line 505
    const/4 v4, 0x3

    .line 506
    invoke-direct {v3, v12, v4}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 509
    iput-object v3, v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 511
    invoke-virtual {v6, v2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 514
    move-result-object v0

    .line 515
    filled-new-array {v14, v1}, [I

    .line 518
    move-result-object v3

    .line 519
    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    .line 522
    filled-new-array {v14, v1, v2}, [I

    .line 525
    move-result-object v3

    .line 526
    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    .line 529
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    .line 531
    const/4 v3, 0x4

    .line 532
    invoke-direct {v2, v12, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 535
    iput-object v2, v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 537
    const/4 v0, 0x4

    .line 538
    invoke-virtual {v6, v0}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 541
    move-result-object v0

    .line 542
    filled-new-array {v14, v1}, [I

    .line 545
    move-result-object v2

    .line 546
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    .line 549
    const/4 v2, 0x2

    .line 550
    filled-new-array {v14, v1, v2}, [I

    .line 553
    move-result-object v3

    .line 554
    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    .line 557
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    .line 559
    const/4 v3, 0x5

    .line 560
    invoke-direct {v2, v12, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 563
    iput-object v2, v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 565
    const/4 v0, 0x5

    .line 566
    invoke-virtual {v6, v0}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 569
    move-result-object v0

    .line 570
    filled-new-array {v14, v1}, [I

    .line 573
    move-result-object v2

    .line 574
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    .line 577
    const/4 v2, 0x2

    .line 578
    filled-new-array {v14, v1, v2}, [I

    .line 581
    move-result-object v3

    .line 582
    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    .line 585
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    .line 587
    const/4 v3, 0x6

    .line 588
    invoke-direct {v2, v12, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 591
    iput-object v2, v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 593
    const/4 v0, 0x6

    .line 594
    invoke-virtual {v6, v0}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 597
    move-result-object v0

    .line 598
    filled-new-array {v14, v1}, [I

    .line 601
    move-result-object v2

    .line 602
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    .line 605
    const/4 v2, 0x2

    .line 606
    filled-new-array {v14, v1, v2}, [I

    .line 609
    move-result-object v3

    .line 610
    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    .line 613
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    .line 615
    const/4 v3, 0x7

    .line 616
    invoke-direct {v2, v12, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 619
    iput-object v2, v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 621
    const/4 v0, 0x3

    .line 622
    invoke-virtual {v6, v0}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 625
    move-result-object v0

    .line 626
    filled-new-array {v14, v1}, [I

    .line 629
    move-result-object v2

    .line 630
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    .line 633
    const/4 v2, 0x2

    .line 634
    filled-new-array {v14, v1, v2}, [I

    .line 637
    move-result-object v3

    .line 638
    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    .line 641
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    .line 643
    const/16 v3, 0x8

    .line 645
    invoke-direct {v2, v12, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 648
    iput-object v2, v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 650
    const/16 v0, 0xa

    .line 652
    invoke-virtual {v6, v0}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 655
    move-result-object v0

    .line 656
    filled-new-array {v14, v1}, [I

    .line 659
    move-result-object v2

    .line 660
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    .line 663
    const/4 v2, 0x2

    .line 664
    filled-new-array {v14, v1, v2}, [I

    .line 667
    move-result-object v3

    .line 668
    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    .line 671
    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    .line 673
    const/16 v2, 0x9

    .line 675
    invoke-direct {v1, v12, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 678
    iput-object v1, v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 680
    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;

    .line 682
    const/4 v1, 0x0

    .line 683
    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;-><init>(I)V

    .line 686
    iput-object v0, v6, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->mCustomPowerStatsProcessorFactory:Ljava/util/function/Supplier;

    .line 688
    new-instance v0, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 690
    const/4 v1, -0x1

    .line 691
    invoke-direct {v0, v1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    .line 694
    iput-object v0, v6, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 696
    const/4 v1, 0x1

    .line 697
    filled-new-array {v14, v1}, [I

    .line 700
    move-result-object v2

    .line 701
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    .line 704
    const/4 v2, 0x2

    .line 705
    filled-new-array {v14, v1, v2}, [I

    .line 708
    move-result-object v2

    .line 709
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    .line 712
    new-instance v7, Lcom/android/server/power/stats/PowerStatsStore;

    .line 714
    iget-object v4, v12, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 716
    new-instance v5, Lcom/android/server/power/stats/PowerStatsStore$DefaultSectionReader;

    .line 718
    invoke-direct {v5, v6}, Lcom/android/server/power/stats/PowerStatsStore$DefaultSectionReader;-><init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig;)V

    .line 721
    const-wide/32 v2, 0x19000

    .line 724
    move-object v0, v7

    .line 725
    move-object/from16 v1, p2

    .line 727
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsStore;-><init>(Ljava/io/File;JLandroid/os/Handler;Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;)V

    .line 730
    iput-object v7, v12, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 732
    iget-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 734
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 737
    move-result-object v1

    .line 738
    const v2, 0x10e0029

    .line 741
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 744
    move-result v1

    .line 745
    int-to-long v1, v1

    .line 746
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 749
    move-result-object v0

    .line 750
    const v3, 0x10e0116

    .line 753
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 756
    move-result v0

    .line 757
    int-to-long v3, v0

    .line 758
    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;

    .line 760
    invoke-direct {v0, v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    .line 763
    new-instance v5, Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 765
    iget-object v8, v12, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 767
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;

    .line 772
    const/4 v10, 0x0

    .line 773
    invoke-direct {v9, v10, v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    .line 776
    new-instance v8, Lcom/android/server/power/stats/PowerStatsAggregator;

    .line 778
    iget-object v10, v12, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 780
    iget-object v10, v10, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 782
    invoke-direct {v8, v6, v10}, Lcom/android/server/power/stats/PowerStatsAggregator;-><init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig;Lcom/android/internal/os/BatteryStatsHistory;)V

    .line 785
    sget-object v10, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    .line 787
    iget-object v11, v12, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 789
    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    .line 791
    const/4 v15, 0x0

    .line 792
    invoke-direct {v14, v12, v15}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 795
    iget-object v15, v12, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 797
    move-object/from16 v20, v5

    .line 799
    move-object/from16 v21, v9

    .line 801
    move-object/from16 v22, v8

    .line 803
    move-wide/from16 v23, v1

    .line 805
    move-wide/from16 v25, v3

    .line 807
    move-object/from16 v27, v7

    .line 809
    move-object/from16 v28, v0

    .line 811
    move-object/from16 v29, v10

    .line 813
    move-object/from16 v30, v11

    .line 815
    move-object/from16 v31, v14

    .line 817
    move-object/from16 v32, v15

    .line 819
    invoke-direct/range {v20 .. v32}, Lcom/android/server/power/stats/PowerStatsScheduler;-><init>(Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;Lcom/android/server/power/stats/PowerStatsAggregator;JJLcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;Landroid/os/Handler;)V

    .line 822
    iput-object v5, v12, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 824
    new-instance v2, Lcom/android/server/power/stats/PowerStatsExporter;

    .line 826
    new-instance v0, Lcom/android/server/power/stats/PowerStatsAggregator;

    .line 828
    iget-object v1, v12, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 830
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 832
    invoke-direct {v0, v6, v1}, Lcom/android/server/power/stats/PowerStatsAggregator;-><init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig;Lcom/android/internal/os/BatteryStatsHistory;)V

    .line 835
    invoke-direct {v2, v7, v0}, Lcom/android/server/power/stats/PowerStatsExporter;-><init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsAggregator;)V

    .line 838
    new-instance v8, Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 840
    iget-object v3, v12, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 842
    iget-object v4, v12, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 844
    move-object v0, v8

    .line 845
    move-object/from16 v1, p1

    .line 847
    move-object v5, v7

    .line 848
    move-object v6, v10

    .line 849
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Lcom/android/server/power/stats/PowerStatsExporter;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/internal/os/Clock;)V

    .line 852
    iput-object v8, v12, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 854
    new-instance v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;

    .line 856
    iget-object v1, v12, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 858
    invoke-direct {v0, v1, v8}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;-><init>(Landroid/os/BatteryStats;Lcom/android/server/power/stats/BatteryUsageStatsProvider;)V

    .line 861
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mSemBatteryUsageStatsProvider:Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;

    .line 863
    iget-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 865
    const/4 v1, 0x1

    .line 866
    iput-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSaveBatteryUsageStatsOnReset:Z

    .line 868
    iput-object v8, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 870
    iput-object v7, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 872
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    .line 874
    invoke-direct {v0, v8}, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider;)V

    .line 877
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    .line 879
    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 881
    iget-object v1, v12, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 883
    invoke-direct {v0, v13, v1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 886
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 888
    new-instance v0, Landroid/util/AtomicFile;

    .line 890
    new-instance v1, Ljava/io/File;

    .line 892
    const-string v2, "battery_usage_stats_config"

    .line 894
    move-object/from16 v3, p2

    .line 896
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 899
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 902
    iput-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    .line 904
    return-void

    .line 905
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 907
    const-string v1, "Parent component 8 is not configured"

    .line 909
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 912
    throw v0
.end method

.method public static dumpHelp$1(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Battery stats (batterystats) dump options:"

    .line 3
    const-string v1, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    .line 5
    const-string v2, "  [--daily] [--reset] [--reset-all] [--write] [--new-daily] [--read-daily]"

    .line 7
    const-string v3, "  [-h] [<package.name>]"

    .line 9
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    .line 14
    const-string v1, "             last old completed stats when they had been reset."

    .line 16
    const-string v2, "  -c: write the current stats in checkin format."

    .line 18
    const-string v3, "  --proto: write the current aggregate stats (without history) in proto format."

    .line 20
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "  --history: show only history data."

    .line 25
    const-string v1, "  --history-start <num>: show only history data starting at given time offset."

    .line 27
    const-string v2, "  --history-create-events <num>: create <num> of battery history events."

    .line 29
    const-string v3, "  --charged: only output data since last charged."

    .line 31
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "  --daily: only output full daily data."

    .line 36
    const-string v1, "  --reset: reset the stats, clearing all current data."

    .line 38
    const-string v2, "  --reset-all: reset the stats, clearing all current and past data."

    .line 40
    const-string v3, "  --write: force write current collected stats to disk."

    .line 42
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "  --new-daily: immediately create and write new daily stats record."

    .line 47
    const-string v1, "  --read-daily: read-load last written daily stats."

    .line 49
    const-string v2, "  --settings: dump the settings key/values related to batterystats"

    .line 51
    const-string v3, "  --cpu: dump cpu stats for debugging purpose"

    .line 53
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "  --wakeups: dump CPU wakeup history and attribution."

    .line 58
    const-string v1, "  --power-profile: dump the power profile constants"

    .line 60
    const-string v2, "  --usage: write battery usage stats. Optional arguments:"

    .line 62
    const-string v3, "     --proto: output as a binary protobuffer"

    .line 64
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "     --model power-profile: use the power profile model even if measured energy is available"

    .line 69
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedBatteryStats()Z

    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 78
    const-string v0, "  --sample: collect and dump a sample of stats for debugging purpose"

    .line 80
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    :cond_0
    const-string v0, "  <package.name>: optional name of package to filter output by."

    .line 85
    const-string v1, "  -h: print this help text."

    .line 87
    const-string v2, "Battery stats (batterystats) commands:"

    .line 89
    const-string v3, "  enable|disable <option>"

    .line 91
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "    Enable or disable a running option.  Option state is not saved across boots."

    .line 96
    const-string v1, "    Options are:"

    .line 98
    const-string v2, "      full-history: include additional detailed events in battery history:"

    .line 100
    const-string v3, "          wake_lock_in, alarms and proc events"

    .line 102
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    .line 107
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    .line 112
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private native getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "batterystats"

    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 18
    return-object v0
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method


# virtual methods
.method public final awaitCompletion()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 7
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 9
    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, v2, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    .line 15
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    return-void
.end method

.method public final computeBatteryScreenOffRealtimeMs()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryScreenOffRealtimeMs_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x3e8

    .line 13
    div-long/2addr v1, v3

    .line 14
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 18
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeRealtime(J)J

    .line 21
    move-result-wide v1

    .line 22
    div-long/2addr v1, v3

    .line 23
    monitor-exit v0

    .line 24
    return-wide v1

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

.method public final computeBatteryTimeRemaining()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    .line 13
    move-result-wide v1

    .line 14
    const-wide/16 v3, 0x0

    .line 16
    cmp-long p0, v1, v3

    .line 18
    if-ltz p0, :cond_0

    .line 20
    const-wide/16 v3, 0x3e8

    .line 22
    div-long/2addr v1, v3

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-wide v1

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final computeChargeTimeRemaining()J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFeatureComputeChargeTimeModel:Z

    .line 5
    const-wide/16 v2, 0x3e8

    .line 7
    const-wide/16 v4, 0x0

    .line 9
    if-eqz v1, :cond_2

    .line 11
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v0, Landroid/content/IntentFilter;

    .line 18
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    const-string/jumbo v1, "com.samsung.server.BatteryService.action.SEC_BATTERY_REMAINING_CHARGING_TIME_CHANGED"

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    move-result-object p0

    .line 32
    const-wide/16 v0, -0x1

    .line 34
    if-eqz p0, :cond_0

    .line 36
    const-string/jumbo v6, "remaining_charging_time"

    .line 39
    invoke-virtual {p0, v6, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 42
    move-result-wide v0

    .line 43
    :cond_0
    cmp-long p0, v0, v4

    .line 45
    if-ltz p0, :cond_1

    .line 47
    mul-long/2addr v0, v2

    .line 48
    :cond_1
    return-wide v0

    .line 49
    :cond_2
    monitor-enter v0

    .line 50
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 55
    move-result-wide v6

    .line 56
    invoke-virtual {p0, v6, v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    .line 59
    move-result-wide v6

    .line 60
    cmp-long p0, v6, v4

    .line 62
    if-ltz p0, :cond_3

    .line 64
    div-long/2addr v6, v2

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    monitor-exit v0

    .line 69
    return-wide v6

    .line 70
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .locals 10

    .line 1
    add-int/lit8 p2, p2, 0x1

    .line 3
    array-length v0, p3

    .line 4
    const/4 v1, -0x1

    .line 5
    if-lt p2, v0, :cond_1

    .line 7
    if-eqz p4, :cond_0

    .line 9
    const-string p0, "--enable"

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "--disable"

    .line 14
    :goto_0
    const-string p2, "Missing option argument for "

    .line 16
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    .line 26
    return v1

    .line 27
    :cond_1
    const-string/jumbo v0, "full-wake-history"

    .line 30
    aget-object v2, p3, p2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_6

    .line 38
    const-string/jumbo v0, "full-history"

    .line 41
    aget-object v2, p3, p2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const-string/jumbo v0, "no-auto-reset"

    .line 53
    aget-object v2, p3, p2

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 64
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 66
    monitor-enter v0

    .line 67
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 69
    iput-boolean p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNoAutoReset:Z

    .line 71
    monitor-exit v0

    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0

    .line 76
    :cond_3
    const-string/jumbo v0, "pretend-screen-off"

    .line 79
    aget-object v2, p3, p2

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5

    .line 87
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 90
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 92
    monitor-enter v0

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 95
    iget-boolean p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mPretendScreenOff:Z

    .line 97
    if-eq p0, p4, :cond_4

    .line 99
    iput-boolean p4, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mPretendScreenOff:Z

    .line 101
    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    .line 103
    const/4 p1, 0x0

    .line 104
    aget-object p0, p0, p1

    .line 106
    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenState:I

    .line 108
    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 113
    move-result-wide v4

    .line 114
    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 119
    move-result-wide v6

    .line 120
    iget-object p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    .line 125
    move-result-wide v8

    .line 126
    const/4 v3, -0x1

    .line 127
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenStateLocked(IIJJJ)V

    .line 130
    :cond_4
    monitor-exit v0

    .line 131
    goto :goto_2

    .line 132
    :catchall_1
    move-exception p0

    .line 133
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    throw p0

    .line 135
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 137
    const-string p4, "Unknown enable/disable option: "

    .line 139
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    aget-object p2, p3, p2

    .line 144
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    .line 157
    return v1

    .line 158
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 161
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 163
    monitor-enter p1

    .line 164
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 166
    invoke-virtual {p0, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 169
    monitor-exit p1

    .line 170
    :goto_2
    return p2

    .line 171
    :catchall_2
    move-exception p0

    .line 172
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 173
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 4
    const/4 v0, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->dumpUnmonitored(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 14
    throw p1
.end method

.method public final dumpCpuStats(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final dumpMeasuredEnergyStats(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 4
    const-string/jumbo v0, "dump"

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpEnergyConsumerStatsLocked(Ljava/io/PrintWriter;)V

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final dumpPowerProfile(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpPowerProfileLocked(Ljava/io/PrintWriter;)V

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final dumpSettings(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "    com.android.server.power.optimization.streamlined_battery_stats: "

    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    .line 14
    const-string p0, "Flags:"

    .line 16
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedBatteryStats()Z

    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final dumpUnmonitored(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 32

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v10, p2

    .line 5
    move-object/from16 v0, p3

    .line 7
    const/4 v2, 0x1

    .line 8
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 10
    const-string v5, "BatteryStatsService"

    .line 12
    invoke-static {v4, v5, v10}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    iget-boolean v4, v1, Lcom/android/server/am/BatteryStatsService;->mSystemServicesReady:Z

    .line 21
    if-nez v4, :cond_1

    .line 23
    return-void

    .line 24
    :cond_1
    const-wide/16 v5, -0x1

    .line 26
    const/4 v7, -0x1

    .line 27
    if-eqz v0, :cond_2d

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v11, 0x0

    .line 32
    const/4 v12, 0x0

    .line 33
    const/4 v13, 0x0

    .line 34
    const/4 v14, 0x0

    .line 35
    const/4 v15, 0x0

    .line 36
    :goto_0
    array-length v4, v0

    .line 37
    if-ge v8, v4, :cond_2c

    .line 39
    aget-object v4, v0, v8

    .line 41
    const-string v3, "--checkin"

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 49
    move v12, v2

    .line 50
    move v14, v12

    .line 51
    :goto_1
    move-wide/from16 v16, v5

    .line 53
    :goto_2
    move-object/from16 v5, p1

    .line 55
    goto/16 :goto_8

    .line 57
    :cond_2
    const-string v3, "--history"

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_3

    .line 65
    or-int/lit8 v11, v11, 0x8

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const-string v3, "--history-start"

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v3

    .line 74
    move-wide/from16 v16, v5

    .line 76
    const-wide/16 v5, 0x0

    .line 78
    if-eqz v3, :cond_5

    .line 80
    or-int/lit8 v11, v11, 0x8

    .line 82
    add-int/2addr v8, v2

    .line 83
    array-length v3, v0

    .line 84
    if-lt v8, v3, :cond_4

    .line 86
    const-string v0, "Missing time argument for --history-since"

    .line 88
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    .line 94
    return-void

    .line 95
    :cond_4
    aget-object v3, v0, v8

    .line 97
    invoke-static {v3, v5, v6}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    .line 100
    move-result-wide v3

    .line 101
    move-object/from16 v5, p1

    .line 103
    move v15, v2

    .line 104
    move-wide/from16 v16, v3

    .line 106
    goto/16 :goto_8

    .line 108
    :cond_5
    const-string v3, "--history-create-events"

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_8

    .line 116
    add-int/2addr v8, v2

    .line 117
    array-length v3, v0

    .line 118
    if-lt v8, v3, :cond_6

    .line 120
    const-string v0, "Missing events argument for --history-create-events"

    .line 122
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    .line 128
    return-void

    .line 129
    :cond_6
    aget-object v3, v0, v8

    .line 131
    invoke-static {v3, v5, v6}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    .line 134
    move-result-wide v3

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 138
    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 140
    monitor-enter v9

    .line 141
    :try_start_0
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 143
    iget-object v6, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 145
    invoke-virtual {v6}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 148
    move-result-wide v26

    .line 149
    iget-object v6, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 151
    invoke-virtual {v6}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 154
    move-result-wide v28

    .line 155
    const-wide/16 v30, 0x0

    .line 157
    :goto_3
    cmp-long v6, v30, v3

    .line 159
    if-gez v6, :cond_7

    .line 161
    const-string/jumbo v20, "name1"

    .line 164
    const-string/jumbo v21, "historyName1"

    .line 167
    const/16 v19, 0x3e8

    .line 169
    move-object/from16 v18, v5

    .line 171
    move-wide/from16 v22, v26

    .line 173
    move-wide/from16 v24, v28

    .line 175
    invoke-virtual/range {v18 .. v25}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakeLockStartInternal(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 178
    const-string/jumbo v20, "name1"

    .line 181
    const-string/jumbo v21, "historyName1"

    .line 184
    const/16 v19, 0x3e8

    .line 186
    move-object/from16 v18, v5

    .line 188
    move-wide/from16 v22, v26

    .line 190
    move-wide/from16 v24, v28

    .line 192
    invoke-virtual/range {v18 .. v25}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakeLockFinishInternal(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 195
    const-wide/16 v18, 0x1

    .line 197
    add-long v30, v30, v18

    .line 199
    goto :goto_3

    .line 200
    :cond_7
    const-string v3, "Battery history create events started."

    .line 202
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    monitor-exit v9

    .line 206
    :goto_4
    move-object/from16 v5, p1

    .line 208
    move v9, v2

    .line 209
    goto/16 :goto_8

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    throw v0

    .line 214
    :cond_8
    const-string v3, "-c"

    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_9

    .line 222
    or-int/lit8 v11, v11, 0x10

    .line 224
    move-object/from16 v5, p1

    .line 226
    move v12, v2

    .line 227
    goto/16 :goto_8

    .line 229
    :cond_9
    const-string v3, "--proto"

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_a

    .line 237
    move-object/from16 v5, p1

    .line 239
    move v13, v2

    .line 240
    goto/16 :goto_8

    .line 242
    :cond_a
    const-string v3, "--charged"

    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_b

    .line 250
    const/4 v3, 0x2

    .line 251
    or-int/2addr v11, v3

    .line 252
    goto/16 :goto_2

    .line 254
    :cond_b
    const-string v3, "--daily"

    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    move-result v3

    .line 260
    if-eqz v3, :cond_c

    .line 262
    or-int/lit8 v11, v11, 0x4

    .line 264
    goto/16 :goto_2

    .line 266
    :cond_c
    const-string v3, "--reset-all"

    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    move-result v3

    .line 272
    if-eqz v3, :cond_d

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 277
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 279
    monitor-enter v3

    .line 280
    :try_start_1
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 282
    const/4 v5, 0x2

    .line 283
    invoke-virtual {v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetAllStatsAndHistoryLocked(I)V

    .line 286
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 288
    invoke-virtual {v4}, Lcom/android/server/power/stats/PowerStatsStore;->reset()V

    .line 291
    const-string v4, "Battery stats and history reset."

    .line 293
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    monitor-exit v3

    .line 297
    goto :goto_4

    .line 298
    :catchall_1
    move-exception v0

    .line 299
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    throw v0

    .line 301
    :cond_d
    const-string v3, "--reset"

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_e

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 312
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 314
    monitor-enter v3

    .line 315
    :try_start_2
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 317
    const/4 v5, 0x2

    .line 318
    invoke-virtual {v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetAllStatsAndHistoryLocked(I)V

    .line 321
    const-string v4, "Battery stats reset."

    .line 323
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    monitor-exit v3

    .line 327
    goto :goto_4

    .line 328
    :catchall_2
    move-exception v0

    .line 329
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 330
    throw v0

    .line 331
    :cond_e
    const-string v3, "--write"

    .line 333
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    move-result v3

    .line 337
    if-eqz v3, :cond_f

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 342
    const-string/jumbo v3, "dump"

    .line 345
    invoke-virtual {v1, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    .line 348
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 350
    monitor-enter v3

    .line 351
    :try_start_3
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 353
    invoke-virtual {v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeSyncLocked()V

    .line 356
    const-string v4, "Battery stats written."

    .line 358
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    monitor-exit v3

    .line 362
    goto/16 :goto_4

    .line 364
    :catchall_3
    move-exception v0

    .line 365
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 366
    throw v0

    .line 367
    :cond_f
    const-string v3, "--new-daily"

    .line 369
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    move-result v3

    .line 373
    if-eqz v3, :cond_10

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 378
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 380
    monitor-enter v3

    .line 381
    :try_start_4
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 383
    invoke-virtual {v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 386
    const-string v4, "New daily stats written."

    .line 388
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    monitor-exit v3

    .line 392
    goto/16 :goto_4

    .line 394
    :catchall_4
    move-exception v0

    .line 395
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 396
    throw v0

    .line 397
    :cond_10
    const-string v3, "--read-daily"

    .line 399
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    move-result v3

    .line 403
    if-eqz v3, :cond_11

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 408
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 410
    monitor-enter v3

    .line 411
    :try_start_5
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 413
    invoke-virtual {v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 416
    const-string v4, "Last daily stats read."

    .line 418
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    monitor-exit v3

    .line 422
    goto/16 :goto_4

    .line 424
    :catchall_5
    move-exception v0

    .line 425
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 426
    throw v0

    .line 427
    :cond_11
    const-string v3, "--enable"

    .line 429
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    move-result v3

    .line 433
    if-nez v3, :cond_2a

    .line 435
    const-string/jumbo v3, "enable"

    .line 438
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    move-result v3

    .line 442
    if-eqz v3, :cond_12

    .line 444
    goto/16 :goto_a

    .line 446
    :cond_12
    const-string v3, "--disable"

    .line 448
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    move-result v3

    .line 452
    if-nez v3, :cond_13

    .line 454
    const-string/jumbo v3, "disable"

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    move-result v3

    .line 461
    if-eqz v3, :cond_14

    .line 463
    :cond_13
    const/4 v2, 0x0

    .line 464
    goto/16 :goto_9

    .line 466
    :cond_14
    const-string v3, "-h"

    .line 468
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    move-result v3

    .line 472
    if-eqz v3, :cond_15

    .line 474
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    .line 477
    return-void

    .line 478
    :cond_15
    const-string v3, "--settings"

    .line 480
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 483
    move-result v3

    .line 484
    if-eqz v3, :cond_16

    .line 486
    invoke-virtual {v1, v10}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    .line 489
    return-void

    .line 490
    :cond_16
    const-string v3, "--cpu"

    .line 492
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    move-result v3

    .line 496
    if-eqz v3, :cond_17

    .line 498
    invoke-virtual {v1, v10}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    .line 501
    return-void

    .line 502
    :cond_17
    const-string v3, "--measured-energy"

    .line 504
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    move-result v3

    .line 508
    if-eqz v3, :cond_18

    .line 510
    invoke-virtual {v1, v10}, Lcom/android/server/am/BatteryStatsService;->dumpMeasuredEnergyStats(Ljava/io/PrintWriter;)V

    .line 513
    return-void

    .line 514
    :cond_18
    const-string v3, "--power-profile"

    .line 516
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    move-result v3

    .line 520
    if-eqz v3, :cond_19

    .line 522
    invoke-virtual {v1, v10}, Lcom/android/server/am/BatteryStatsService;->dumpPowerProfile(Ljava/io/PrintWriter;)V

    .line 525
    return-void

    .line 526
    :cond_19
    const-string v3, "--usage"

    .line 528
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    move-result v3

    .line 532
    if-eqz v3, :cond_1f

    .line 534
    add-int/2addr v8, v2

    .line 535
    const/4 v3, 0x0

    .line 536
    const/4 v4, 0x0

    .line 537
    :goto_5
    array-length v5, v0

    .line 538
    if-ge v8, v5, :cond_1e

    .line 540
    aget-object v5, v0, v8

    .line 542
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    const-string v6, "--model"

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    move-result v6

    .line 551
    if-nez v6, :cond_1b

    .line 553
    const-string v6, "--proto"

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    move-result v5

    .line 559
    if-nez v5, :cond_1a

    .line 561
    goto :goto_6

    .line 562
    :cond_1a
    move v3, v2

    .line 563
    goto :goto_6

    .line 564
    :cond_1b
    add-int/2addr v8, v2

    .line 565
    array-length v4, v0

    .line 566
    if-ge v8, v4, :cond_1d

    .line 568
    const-string/jumbo v4, "power-profile"

    .line 571
    aget-object v5, v0, v8

    .line 573
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 576
    move-result v4

    .line 577
    if-eqz v4, :cond_1c

    .line 579
    move v4, v2

    .line 580
    :goto_6
    add-int/2addr v8, v2

    .line 581
    goto :goto_5

    .line 582
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 584
    const-string v2, "Unknown power model: "

    .line 586
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    aget-object v0, v0, v8

    .line 591
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    move-result-object v0

    .line 598
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    .line 604
    return-void

    .line 605
    :cond_1d
    const-string v0, "--model without a value"

    .line 607
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    .line 613
    return-void

    .line 614
    :cond_1e
    move-object/from16 v5, p1

    .line 616
    invoke-virtual {v1, v5, v10, v4, v3}, Lcom/android/server/am/BatteryStatsService;->dumpUsageStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;IZ)V

    .line 619
    return-void

    .line 620
    :cond_1f
    move-object/from16 v5, p1

    .line 622
    const-string v3, "--wakeups"

    .line 624
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    move-result v3

    .line 628
    if-eqz v3, :cond_20

    .line 630
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 632
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 634
    const-string v2, "  "

    .line 636
    invoke-direct {v1, v10, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 642
    move-result-wide v2

    .line 643
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 646
    return-void

    .line 647
    :cond_20
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedBatteryStats()Z

    .line 650
    move-result v3

    .line 651
    if-eqz v3, :cond_21

    .line 653
    const-string v3, "--sample"

    .line 655
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    move-result v3

    .line 659
    if-eqz v3, :cond_21

    .line 661
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 663
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuPowerStatsCollector:Lcom/android/server/power/stats/CpuPowerStatsCollector;

    .line 665
    invoke-virtual {v1, v10}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    .line 668
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileRadioPowerStatsCollector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;

    .line 670
    invoke-virtual {v1, v10}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    .line 673
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiPowerStatsCollector:Lcom/android/server/power/stats/WifiPowerStatsCollector;

    .line 675
    invoke-virtual {v1, v10}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    .line 678
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBluetoothPowerStatsCollector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector;

    .line 680
    invoke-virtual {v1, v10}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    .line 683
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCameraPowerStatsCollector:Lcom/android/server/power/stats/CameraPowerStatsCollector;

    .line 685
    invoke-virtual {v1, v10}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    .line 688
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mGnssPowerStatsCollector:Lcom/android/server/power/stats/GnssPowerStatsCollector;

    .line 690
    invoke-virtual {v1, v10}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    .line 693
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCustomEnergyConsumerPowerStatsCollector:Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;

    .line 695
    invoke-virtual {v0, v10}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    .line 698
    return-void

    .line 699
    :cond_21
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedBatteryStats()Z

    .line 702
    move-result v3

    .line 703
    if-eqz v3, :cond_23

    .line 705
    const-string v3, "--aggregated"

    .line 707
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 710
    move-result v3

    .line 711
    if-eqz v3, :cond_23

    .line 713
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 715
    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    .line 717
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 720
    move-result-object v2

    .line 721
    invoke-virtual {v2}, Landroid/os/Looper;->isCurrentThread()Z

    .line 724
    move-result v2

    .line 725
    if-nez v2, :cond_22

    .line 727
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsScheduler;->schedulePowerStatsAggregation()V

    .line 730
    new-instance v2, Landroid/os/ConditionVariable;

    .line 732
    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    .line 735
    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;

    .line 737
    const/4 v4, 0x2

    .line 738
    invoke-direct {v3, v4, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 741
    iget-object v4, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    .line 743
    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 746
    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 749
    new-instance v2, Landroid/util/IndentingPrintWriter;

    .line 751
    invoke-direct {v2, v10}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 754
    new-instance v3, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;

    .line 756
    invoke-direct {v3, v0, v2}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;Landroid/util/IndentingPrintWriter;)V

    .line 759
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 762
    new-instance v1, Landroid/os/ConditionVariable;

    .line 764
    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 767
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;

    .line 769
    const/4 v3, 0x2

    .line 770
    invoke-direct {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 773
    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    .line 775
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 778
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 781
    return-void

    .line 782
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 784
    const-string v1, "Should not be executed on the bg handler thread."

    .line 786
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 789
    throw v0

    .line 790
    :cond_23
    const-string v3, "--store"

    .line 792
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 795
    move-result v3

    .line 796
    if-eqz v3, :cond_24

    .line 798
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 800
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 802
    const-string v2, "  "

    .line 804
    invoke-direct {v1, v10, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsStore;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 810
    return-void

    .line 811
    :cond_24
    const-string v3, "--store-toc"

    .line 813
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 816
    move-result v3

    .line 817
    if-eqz v3, :cond_26

    .line 819
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 821
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 823
    const-string v3, "  "

    .line 825
    invoke-direct {v1, v10, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 831
    const-string v3, "Power stats store TOC"

    .line 833
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 839
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    .line 842
    move-result-object v0

    .line 843
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 846
    move-result-object v0

    .line 847
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 850
    move-result v3

    .line 851
    if-eqz v3, :cond_25

    .line 853
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 856
    move-result-object v3

    .line 857
    check-cast v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 859
    invoke-virtual {v3, v1, v2}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->dump(Landroid/util/IndentingPrintWriter;Z)V

    .line 862
    goto :goto_7

    .line 863
    :cond_25
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 866
    return-void

    .line 867
    :cond_26
    const-string v3, "-a"

    .line 869
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 872
    move-result v3

    .line 873
    if-eqz v3, :cond_27

    .line 875
    or-int/lit8 v11, v11, 0x20

    .line 877
    goto :goto_8

    .line 878
    :cond_27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 881
    move-result v3

    .line 882
    if-lez v3, :cond_28

    .line 884
    const/4 v3, 0x0

    .line 885
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 888
    move-result v6

    .line 889
    const/16 v3, 0x2d

    .line 891
    if-ne v6, v3, :cond_28

    .line 893
    const-string v0, "Unknown option: "

    .line 895
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 898
    move-result-object v0

    .line 899
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    .line 905
    return-void

    .line 906
    :cond_28
    :try_start_6
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 908
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 911
    move-result-object v3

    .line 912
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 915
    move-result v6

    .line 916
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 919
    move-result v3
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 920
    move v7, v3

    .line 921
    :goto_8
    add-int/2addr v8, v2

    .line 922
    move-wide/from16 v5, v16

    .line 924
    goto/16 :goto_0

    .line 926
    :catch_0
    const-string v0, "Unknown package: "

    .line 928
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 931
    move-result-object v0

    .line 932
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    .line 938
    return-void

    .line 939
    :goto_9
    invoke-virtual {v1, v10, v8, v0, v2}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    .line 942
    move-result v1

    .line 943
    if-gez v1, :cond_29

    .line 945
    return-void

    .line 946
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 948
    const-string v3, "Disabled: "

    .line 950
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 953
    aget-object v0, v0, v1

    .line 955
    invoke-static {v2, v0, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 958
    return-void

    .line 959
    :cond_2a
    :goto_a
    invoke-virtual {v1, v10, v8, v0, v2}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    .line 962
    move-result v1

    .line 963
    if-gez v1, :cond_2b

    .line 965
    return-void

    .line 966
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 968
    const-string v3, "Enabled: "

    .line 970
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 973
    aget-object v0, v0, v1

    .line 975
    invoke-static {v2, v0, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 978
    return-void

    .line 979
    :cond_2c
    move-wide/from16 v16, v5

    .line 981
    move-object/from16 v5, p1

    .line 983
    move v6, v7

    .line 984
    goto :goto_b

    .line 985
    :cond_2d
    move-wide/from16 v16, v5

    .line 987
    move v6, v7

    .line 988
    const/4 v9, 0x0

    .line 989
    const/4 v11, 0x0

    .line 990
    const/4 v12, 0x0

    .line 991
    const/4 v13, 0x0

    .line 992
    const/4 v14, 0x0

    .line 993
    const/4 v15, 0x0

    .line 994
    :goto_b
    if-eqz v9, :cond_2e

    .line 996
    return-void

    .line 997
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1000
    move-result-wide v2

    .line 1001
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 1003
    invoke-static {v0}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    .line 1006
    move-result v0

    .line 1007
    if-eqz v0, :cond_2f

    .line 1009
    or-int/lit8 v11, v11, 0x40

    .line 1011
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 1014
    const-string/jumbo v0, "dump"

    .line 1017
    invoke-virtual {v1, v0}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 1020
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1023
    if-ltz v6, :cond_30

    .line 1025
    and-int/lit8 v0, v11, 0xa

    .line 1027
    if-nez v0, :cond_30

    .line 1029
    const/4 v0, 0x2

    .line 1030
    or-int/2addr v0, v11

    .line 1031
    and-int/lit8 v0, v0, -0x11

    .line 1033
    move v11, v0

    .line 1034
    :cond_30
    const/high16 v0, 0x420000

    .line 1036
    if-eqz v13, :cond_34

    .line 1038
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 1040
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1043
    move-result-object v2

    .line 1044
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 1047
    move-result-object v10

    .line 1048
    if-eqz v14, :cond_32

    .line 1050
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1052
    iget-object v12, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 1054
    monitor-enter v12

    .line 1055
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1057
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 1059
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 1062
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1063
    if-eqz v0, :cond_31

    .line 1065
    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1067
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 1069
    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    .line 1072
    move-result-object v0

    .line 1073
    if-eqz v0, :cond_31

    .line 1075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1078
    move-result-object v2

    .line 1079
    array-length v3, v0

    .line 1080
    const/4 v4, 0x0

    .line 1081
    invoke-virtual {v2, v0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1084
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1087
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1089
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    .line 1091
    sget-object v20, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    .line 1093
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 1095
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1097
    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 1099
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/am/BatteryStatsService$3;

    .line 1101
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 1103
    iget-object v8, v1, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 1105
    new-instance v29, Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 1107
    invoke-direct/range {v29 .. v29}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    .line 1110
    const/16 v24, 0x0

    .line 1112
    const/16 v25, 0x0

    .line 1114
    const/16 v22, 0x0

    .line 1116
    move-object/from16 v18, v0

    .line 1118
    move-object/from16 v19, v3

    .line 1120
    move-object/from16 v21, v4

    .line 1122
    move-object/from16 v23, v5

    .line 1124
    move-object/from16 v26, v6

    .line 1126
    move-object/from16 v27, v7

    .line 1128
    move-object/from16 v28, v8

    .line 1130
    invoke-direct/range {v18 .. v29}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    .line 1133
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1136
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1139
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 1141
    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    .line 1143
    move-object v2, v0

    .line 1144
    move-object/from16 v4, p1

    .line 1146
    move-object v5, v10

    .line 1147
    move v6, v11

    .line 1148
    move-wide/from16 v7, v16

    .line 1150
    invoke-virtual/range {v2 .. v9}, Landroid/os/BatteryStats;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 1153
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1155
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 1157
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1160
    :try_start_a
    monitor-exit v12

    .line 1161
    return-void

    .line 1162
    :catchall_6
    move-exception v0

    .line 1163
    goto :goto_c

    .line 1164
    :catch_1
    move-exception v0

    .line 1165
    const-string v2, "BatteryStatsService"

    .line 1167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1169
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    const-string v4, "Failure reading checkin file "

    .line 1174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1179
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 1181
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 1184
    move-result-object v4

    .line 1185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1191
    move-result-object v3

    .line 1192
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    :cond_31
    monitor-exit v12

    .line 1196
    goto :goto_d

    .line 1197
    :goto_c
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 1198
    throw v0

    .line 1199
    :cond_32
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 1202
    iget-object v13, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1204
    monitor-enter v13

    .line 1205
    :try_start_b
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1207
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 1209
    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    .line 1211
    move-object/from16 v4, p1

    .line 1213
    move-object v5, v10

    .line 1214
    move v6, v11

    .line 1215
    move-wide/from16 v7, v16

    .line 1217
    invoke-virtual/range {v2 .. v9}, Landroid/os/BatteryStats;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 1220
    if-eqz v15, :cond_33

    .line 1222
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1224
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1227
    goto :goto_e

    .line 1228
    :catchall_7
    move-exception v0

    .line 1229
    goto :goto_f

    .line 1230
    :cond_33
    :goto_e
    monitor-exit v13

    .line 1231
    goto/16 :goto_12

    .line 1233
    :goto_f
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1234
    throw v0

    .line 1235
    :cond_34
    if-eqz v12, :cond_37

    .line 1237
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 1239
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1242
    move-result-object v2

    .line 1243
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 1246
    move-result-object v12

    .line 1247
    if-eqz v14, :cond_36

    .line 1249
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1251
    iget-object v13, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 1253
    monitor-enter v13

    .line 1254
    :try_start_c
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1256
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 1258
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 1261
    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 1262
    if-eqz v0, :cond_35

    .line 1264
    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1266
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 1268
    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    .line 1271
    move-result-object v0

    .line 1272
    if-eqz v0, :cond_35

    .line 1274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1277
    move-result-object v2

    .line 1278
    array-length v3, v0

    .line 1279
    const/4 v4, 0x0

    .line 1280
    invoke-virtual {v2, v0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1283
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1286
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1288
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    .line 1290
    sget-object v20, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    .line 1292
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 1294
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1296
    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 1298
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/am/BatteryStatsService$3;

    .line 1300
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 1302
    iget-object v8, v1, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 1304
    new-instance v29, Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 1306
    invoke-direct/range {v29 .. v29}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    .line 1309
    const/16 v24, 0x0

    .line 1311
    const/16 v25, 0x0

    .line 1313
    const/16 v22, 0x0

    .line 1315
    move-object/from16 v18, v0

    .line 1317
    move-object/from16 v19, v3

    .line 1319
    move-object/from16 v21, v4

    .line 1321
    move-object/from16 v23, v5

    .line 1323
    move-object/from16 v26, v6

    .line 1325
    move-object/from16 v27, v7

    .line 1327
    move-object/from16 v28, v8

    .line 1329
    invoke-direct/range {v18 .. v29}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    .line 1332
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1335
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1338
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 1340
    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    .line 1342
    move-object v2, v0

    .line 1343
    move-object/from16 v4, p2

    .line 1345
    move-object v5, v12

    .line 1346
    move v6, v11

    .line 1347
    move-wide/from16 v7, v16

    .line 1349
    invoke-virtual/range {v2 .. v9}, Landroid/os/BatteryStats;->dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 1352
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1354
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 1356
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Landroid/os/ParcelFormatException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1359
    :try_start_e
    monitor-exit v13

    .line 1360
    return-void

    .line 1361
    :catchall_8
    move-exception v0

    .line 1362
    goto :goto_10

    .line 1363
    :catch_2
    move-exception v0

    .line 1364
    const-string v2, "BatteryStatsService"

    .line 1366
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1368
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1371
    const-string v4, "Failure reading checkin file "

    .line 1373
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1378
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 1380
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 1383
    move-result-object v4

    .line 1384
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1390
    move-result-object v3

    .line 1391
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1394
    :cond_35
    monitor-exit v13

    .line 1395
    goto :goto_11

    .line 1396
    :goto_10
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 1397
    throw v0

    .line 1398
    :cond_36
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 1401
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1403
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 1405
    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    .line 1407
    move-object/from16 v4, p2

    .line 1409
    move-object v5, v12

    .line 1410
    move v6, v11

    .line 1411
    move-wide/from16 v7, v16

    .line 1413
    invoke-virtual/range {v2 .. v9}, Landroid/os/BatteryStats;->dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 1416
    if-eqz v15, :cond_39

    .line 1418
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1420
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1423
    goto :goto_12

    .line 1424
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 1427
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1429
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 1431
    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    .line 1433
    move-object/from16 v4, p2

    .line 1435
    move v5, v11

    .line 1436
    move-wide/from16 v7, v16

    .line 1438
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->dump(Landroid/content/Context;Ljava/io/PrintWriter;IIJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 1441
    if-eqz v15, :cond_38

    .line 1443
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 1445
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1448
    :cond_38
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1451
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 1453
    new-instance v2, Landroid/util/IndentingPrintWriter;

    .line 1455
    const-string v3, "  "

    .line 1457
    invoke-direct {v2, v10, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1463
    move-result-wide v3

    .line 1464
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 1467
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 1469
    invoke-virtual {v0, v10}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->dump(Ljava/io/PrintWriter;)V

    .line 1472
    :cond_39
    :goto_12
    return-void

    .line 1473
    :catchall_9
    move-exception v0

    .line 1474
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1477
    throw v0
.end method

.method public final dumpUsageStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 4
    const-string/jumbo v0, "dump"

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    .line 10
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 12
    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 15
    const-wide/16 v1, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne p3, v1, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->powerProfileModeledOnly()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 35
    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    .line 38
    move-result-object p3

    .line 39
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 44
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->prepareForDumpLocked()V

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedBatteryStats()Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 56
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->schedulePowerStatsSampleCollection()V

    .line 59
    new-instance v1, Landroid/os/ConditionVariable;

    .line 61
    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 64
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 66
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;

    .line 68
    const/4 v3, 0x2

    .line 69
    invoke-direct {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 72
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 80
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 82
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 84
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    .line 87
    move-result-wide v1

    .line 88
    invoke-virtual {v0, p0, p3, v1, v2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    .line 91
    move-result-object p0

    .line 92
    if-eqz p4, :cond_2

    .line 94
    invoke-virtual {p0, p1}, Landroid/os/BatteryUsageStats;->dumpToProto(Ljava/io/FileDescriptor;)V

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    const-string p1, "  "

    .line 100
    invoke-virtual {p0, p2, p1}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw p0
.end method

.method public final fillRailDataStats(Lcom/android/internal/os/RailStats;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V

    .line 4
    return-void
.end method

.method public final getAwakeTimeBattery()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 8
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 11
    move-result-wide v0

    .line 12
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 14
    const-wide/16 v2, 0x3e8

    .line 16
    mul-long/2addr v0, v2

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    .line 20
    move-result-wide v0

    .line 21
    return-wide v0
.end method

.method public final getAwakeTimePlugged()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 8
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x3e8

    .line 14
    mul-long/2addr v0, v2

    .line 15
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 17
    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 20
    move-result-wide v4

    .line 21
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 23
    mul-long/2addr v4, v2

    .line 24
    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    .line 27
    move-result-wide v2

    .line 28
    sub-long/2addr v0, v2

    .line 29
    return-wide v0
.end method

.method public final getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryUsageStats_enforcePermission()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-wide v3, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    .line 16
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 21
    add-int/lit8 v2, v2, -0x1

    .line 23
    const-wide v5, 0x7fffffffffffffffL

    .line 28
    :goto_0
    if-ltz v2, :cond_0

    .line 30
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Landroid/os/BatteryUsageStatsQuery;

    .line 36
    invoke-virtual {v7}, Landroid/os/BatteryUsageStatsQuery;->getMaxStatsAge()J

    .line 39
    move-result-wide v7

    .line 40
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 43
    move-result-wide v5

    .line 44
    add-int/lit8 v2, v2, -0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sub-long/2addr v0, v3

    .line 48
    cmp-long v0, v0, v5

    .line 50
    if-lez v0, :cond_1

    .line 52
    const-string/jumbo v0, "get-stats"

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedBatteryStats()Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 66
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->schedulePowerStatsSampleCollection()V

    .line 69
    new-instance v1, Landroid/os/ConditionVariable;

    .line 71
    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 74
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 76
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;

    .line 78
    const/4 v3, 0x2

    .line 79
    invoke-direct {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 90
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 100
    move-result v2

    .line 101
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    monitor-enter p0

    .line 105
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->prepareForDumpLocked()V

    .line 108
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 111
    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    .line 114
    move-result-wide v2

    .line 115
    const/4 v4, 0x0

    .line 116
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 119
    move-result v5

    .line 120
    if-ge v4, v5, :cond_2

    .line 122
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Landroid/os/BatteryUsageStatsQuery;

    .line 128
    invoke-virtual {v0, p0, v5, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v4, v4, 0x1

    .line 137
    goto :goto_1

    .line 138
    :cond_2
    return-object v1

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    throw p1

    .line 142
    :catchall_1
    move-exception p0

    .line 143
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    throw p0
.end method

.method public final getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBluetoothBatteryStats_enforcePermission()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 7
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

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

.method public final getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getCellularBatteryStats_enforcePermission()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 7
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

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

.method public final getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 2

    .line 1
    const-string/jumbo v0, "getDeviceBatteryInfo address: "

    .line 4
    const-string v1, "BatteryStatsService"

    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final getDeviceBatteryInfos()[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 3

    .line 1
    const-string v0, "BatteryStatsService"

    .line 3
    const-string/jumbo v1, "semGetBatteryInfos()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->requirePermissions()V

    .line 14
    const-string v0, "DeviceBatteryInfoService"

    .line 16
    const-string/jumbo v1, "semGetBatteryInfos()"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 27
    if-eqz v1, :cond_0

    .line 29
    new-instance v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda1;

    .line 31
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 39
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 42
    move-result-object v1

    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 45
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 48
    move-result p0

    .line 49
    new-array p0, p0, [Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 51
    invoke-interface {v1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    check-cast p0, [Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const/4 p0, 0x0

    .line 61
    :goto_0
    monitor-exit v0

    .line 62
    return-object p0

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public final getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getGpsBatteryStats_enforcePermission()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 7
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

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

.method public final getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v1, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    .line 5
    invoke-direct {v1}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    .line 8
    new-instance v2, Landroid/os/health/HealthStatsWriter;

    .line 10
    sget-object v3, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    .line 12
    invoke-direct {v2, v3}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 15
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 17
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 19
    move/from16 v4, p1

    .line 21
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/os/BatteryStats$Uid;

    .line 27
    if-eqz v3, :cond_13

    .line 29
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 31
    iget-wide v4, v1, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    .line 33
    const-wide/16 v6, 0x3e8

    .line 35
    mul-long/2addr v4, v6

    .line 36
    const/4 v8, 0x0

    .line 37
    invoke-virtual {v0, v4, v5, v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    .line 40
    move-result-wide v9

    .line 41
    div-long/2addr v9, v6

    .line 42
    const/16 v11, 0x2711

    .line 44
    invoke-virtual {v2, v11, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 47
    iget-wide v9, v1, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    .line 49
    mul-long/2addr v9, v6

    .line 50
    invoke-virtual {v0, v9, v10, v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryUptime(JI)J

    .line 53
    move-result-wide v11

    .line 54
    div-long/2addr v11, v6

    .line 55
    const/16 v13, 0x2712

    .line 57
    invoke-virtual {v2, v13, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 60
    invoke-virtual {v0, v4, v5, v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryScreenOffRealtime(JI)J

    .line 63
    move-result-wide v11

    .line 64
    div-long/2addr v11, v6

    .line 65
    const/16 v13, 0x2713

    .line 67
    invoke-virtual {v2, v13, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 70
    invoke-virtual {v0, v9, v10, v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryScreenOffUptime(JI)J

    .line 73
    move-result-wide v9

    .line 74
    div-long/2addr v9, v6

    .line 75
    const/16 v0, 0x2714

    .line 77
    invoke-virtual {v2, v0, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 80
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v0

    .line 92
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v9

    .line 96
    const/4 v10, 0x1

    .line 97
    const/4 v11, 0x2

    .line 98
    if-eqz v9, :cond_0

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v9

    .line 104
    check-cast v9, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 109
    move-result-object v12

    .line 110
    check-cast v12, Ljava/lang/String;

    .line 112
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 115
    move-result-object v9

    .line 116
    check-cast v9, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 118
    invoke-virtual {v9, v10}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    .line 121
    move-result-object v10

    .line 122
    const/16 v13, 0x2715

    .line 124
    invoke-virtual {v1, v2, v13, v12, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 127
    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    .line 130
    move-result-object v10

    .line 131
    const/16 v13, 0x2716

    .line 133
    invoke-virtual {v1, v2, v13, v12, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 136
    invoke-virtual {v9, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    .line 139
    move-result-object v10

    .line 140
    const/16 v11, 0x2717

    .line 142
    invoke-virtual {v1, v2, v11, v12, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 145
    const/16 v10, 0x12

    .line 147
    invoke-virtual {v9, v10}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    .line 150
    move-result-object v9

    .line 151
    const/16 v10, 0x2718

    .line 153
    invoke-virtual {v1, v2, v10, v12, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 156
    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 164
    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 168
    move-result-object v0

    .line 169
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    move-result v9

    .line 173
    if-eqz v9, :cond_1

    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    move-result-object v9

    .line 179
    check-cast v9, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 184
    move-result-object v12

    .line 185
    check-cast v12, Ljava/lang/String;

    .line 187
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 190
    move-result-object v9

    .line 191
    check-cast v9, Landroid/os/BatteryStats$Timer;

    .line 193
    const/16 v13, 0x2719

    .line 195
    invoke-virtual {v1, v2, v13, v12, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 198
    goto :goto_1

    .line 199
    :cond_1
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 206
    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 210
    move-result-object v0

    .line 211
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    move-result v9

    .line 215
    if-eqz v9, :cond_2

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    move-result-object v9

    .line 221
    check-cast v9, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 226
    move-result-object v12

    .line 227
    check-cast v12, Ljava/lang/String;

    .line 229
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 232
    move-result-object v9

    .line 233
    check-cast v9, Landroid/os/BatteryStats$Timer;

    .line 235
    const/16 v13, 0x271a

    .line 237
    invoke-virtual {v1, v2, v13, v12, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 240
    goto :goto_2

    .line 241
    :cond_2
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 248
    move-result v9

    .line 249
    move v12, v8

    .line 250
    :goto_3
    if-ge v12, v9, :cond_5

    .line 252
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 255
    move-result v13

    .line 256
    const/16 v14, -0x2710

    .line 258
    if-ne v13, v14, :cond_3

    .line 260
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 263
    move-result-object v13

    .line 264
    check-cast v13, Landroid/os/BatteryStats$Uid$Sensor;

    .line 266
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    .line 269
    move-result-object v13

    .line 270
    const/16 v14, 0x271b

    .line 272
    invoke-virtual {v1, v2, v14, v13}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 275
    goto :goto_4

    .line 276
    :cond_3
    const/16 v14, -0x2711

    .line 278
    if-ne v13, v14, :cond_4

    .line 280
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 283
    move-result-object v13

    .line 284
    check-cast v13, Landroid/os/BatteryStats$Uid$Sensor;

    .line 286
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    .line 289
    move-result-object v13

    .line 290
    const/16 v14, 0x2751

    .line 292
    invoke-virtual {v1, v2, v14, v13}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 295
    goto :goto_4

    .line 296
    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 299
    move-result-object v13

    .line 300
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 303
    move-result-object v14

    .line 304
    check-cast v14, Landroid/os/BatteryStats$Uid$Sensor;

    .line 306
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    .line 309
    move-result-object v14

    .line 310
    const/16 v15, 0x271c

    .line 312
    invoke-virtual {v1, v2, v15, v13, v14}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 315
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 317
    goto :goto_3

    .line 318
    :cond_5
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 325
    move-result v9

    .line 326
    move v12, v8

    .line 327
    :goto_5
    if-ge v12, v9, :cond_7

    .line 329
    new-instance v13, Landroid/os/health/HealthStatsWriter;

    .line 331
    sget-object v14, Landroid/os/health/PidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    .line 333
    invoke-direct {v13, v14}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 336
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 339
    move-result-object v14

    .line 340
    check-cast v14, Landroid/os/BatteryStats$Uid$Pid;

    .line 342
    if-nez v14, :cond_6

    .line 344
    goto :goto_6

    .line 345
    :cond_6
    iget v15, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    .line 347
    int-to-long v10, v15

    .line 348
    const/16 v15, 0x4e21

    .line 350
    invoke-virtual {v13, v15, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 353
    iget-wide v10, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    .line 355
    const/16 v15, 0x4e22

    .line 357
    invoke-virtual {v13, v15, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 360
    iget-wide v10, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 362
    invoke-virtual {v13, v15, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 365
    :goto_6
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 368
    move-result v10

    .line 369
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 372
    move-result-object v10

    .line 373
    const/16 v11, 0x271d

    .line 375
    invoke-virtual {v2, v11, v10, v13}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    .line 378
    add-int/lit8 v12, v12, 0x1

    .line 380
    const/4 v10, 0x1

    .line 381
    const/4 v11, 0x2

    .line 382
    goto :goto_5

    .line 383
    :cond_7
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 390
    move-result-object v0

    .line 391
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 394
    move-result-object v0

    .line 395
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    move-result v9

    .line 399
    if-eqz v9, :cond_8

    .line 401
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    move-result-object v9

    .line 405
    check-cast v9, Ljava/util/Map$Entry;

    .line 407
    new-instance v10, Landroid/os/health/HealthStatsWriter;

    .line 409
    sget-object v11, Landroid/os/health/ProcessHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    .line 411
    invoke-direct {v10, v11}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 414
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 417
    move-result-object v11

    .line 418
    check-cast v11, Landroid/os/BatteryStats$Uid$Proc;

    .line 420
    invoke-virtual {v11, v8}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    .line 423
    move-result-wide v12

    .line 424
    const/16 v14, 0x7531

    .line 426
    invoke-virtual {v10, v14, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 429
    const/16 v12, 0x7532

    .line 431
    invoke-virtual {v11, v8}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    .line 434
    move-result-wide v13

    .line 435
    invoke-virtual {v10, v12, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 438
    invoke-virtual {v11, v8}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    .line 441
    move-result v12

    .line 442
    int-to-long v12, v12

    .line 443
    const/16 v14, 0x7533

    .line 445
    invoke-virtual {v10, v14, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 448
    invoke-virtual {v11, v8}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    .line 451
    move-result v12

    .line 452
    int-to-long v12, v12

    .line 453
    const/16 v14, 0x7534

    .line 455
    invoke-virtual {v10, v14, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 458
    invoke-virtual {v11, v8}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    .line 461
    move-result v12

    .line 462
    int-to-long v12, v12

    .line 463
    const/16 v14, 0x7535

    .line 465
    invoke-virtual {v10, v14, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 468
    const/16 v12, 0x7536

    .line 470
    invoke-virtual {v11, v8}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    .line 473
    move-result-wide v13

    .line 474
    invoke-virtual {v10, v12, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 477
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 480
    move-result-object v9

    .line 481
    check-cast v9, Ljava/lang/String;

    .line 483
    const/16 v11, 0x271e

    .line 485
    invoke-virtual {v2, v11, v9, v10}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    .line 488
    goto :goto_7

    .line 489
    :cond_8
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 496
    move-result-object v0

    .line 497
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 500
    move-result-object v0

    .line 501
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 504
    move-result v9

    .line 505
    if-eqz v9, :cond_c

    .line 507
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    move-result-object v9

    .line 511
    check-cast v9, Ljava/util/Map$Entry;

    .line 513
    new-instance v10, Landroid/os/health/HealthStatsWriter;

    .line 515
    sget-object v11, Landroid/os/health/PackageHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    .line 517
    invoke-direct {v10, v11}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 520
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 523
    move-result-object v11

    .line 524
    check-cast v11, Landroid/os/BatteryStats$Uid$Pkg;

    .line 526
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    .line 529
    move-result-object v12

    .line 530
    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 533
    move-result-object v12

    .line 534
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 537
    move-result-object v12

    .line 538
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 541
    move-result v13

    .line 542
    if-eqz v13, :cond_9

    .line 544
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 547
    move-result-object v13

    .line 548
    check-cast v13, Ljava/util/Map$Entry;

    .line 550
    new-instance v14, Landroid/os/health/HealthStatsWriter;

    .line 552
    sget-object v15, Landroid/os/health/ServiceHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    .line 554
    invoke-direct {v14, v15}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 557
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 560
    move-result-object v15

    .line 561
    check-cast v15, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 563
    invoke-virtual {v15, v8}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    .line 566
    move-result v6

    .line 567
    int-to-long v6, v6

    .line 568
    move-object/from16 v16, v0

    .line 570
    const v0, 0xc351

    .line 573
    invoke-virtual {v14, v0, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 576
    invoke-virtual {v15, v8}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    .line 579
    move-result v0

    .line 580
    int-to-long v6, v0

    .line 581
    const v0, 0xc352

    .line 584
    invoke-virtual {v14, v0, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 587
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 590
    move-result-object v0

    .line 591
    check-cast v0, Ljava/lang/String;

    .line 593
    const v6, 0x9c41

    .line 596
    invoke-virtual {v10, v6, v0, v14}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    .line 599
    move-object/from16 v0, v16

    .line 601
    const-wide/16 v6, 0x3e8

    .line 603
    goto :goto_9

    .line 604
    :cond_9
    move-object/from16 v16, v0

    .line 606
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    .line 609
    move-result-object v0

    .line 610
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 613
    move-result-object v0

    .line 614
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 617
    move-result-object v0

    .line 618
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 621
    move-result v6

    .line 622
    if-eqz v6, :cond_b

    .line 624
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 627
    move-result-object v6

    .line 628
    check-cast v6, Ljava/util/Map$Entry;

    .line 630
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 633
    move-result-object v7

    .line 634
    check-cast v7, Landroid/os/BatteryStats$Counter;

    .line 636
    if-eqz v7, :cond_a

    .line 638
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 641
    move-result-object v6

    .line 642
    check-cast v6, Ljava/lang/String;

    .line 644
    invoke-virtual {v7, v8}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    .line 647
    move-result v7

    .line 648
    int-to-long v11, v7

    .line 649
    const v7, 0x9c42

    .line 652
    invoke-virtual {v10, v7, v6, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurements(ILjava/lang/String;J)V

    .line 655
    goto :goto_a

    .line 656
    :cond_b
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 659
    move-result-object v0

    .line 660
    check-cast v0, Ljava/lang/String;

    .line 662
    const/16 v6, 0x271f

    .line 664
    invoke-virtual {v2, v6, v0, v10}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    .line 667
    move-object/from16 v0, v16

    .line 669
    const-wide/16 v6, 0x3e8

    .line 671
    goto/16 :goto_8

    .line 673
    :cond_c
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 676
    move-result-object v0

    .line 677
    const-wide/16 v6, 0x0

    .line 679
    if-eqz v0, :cond_e

    .line 681
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 684
    move-result-object v9

    .line 685
    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 688
    move-result-wide v9

    .line 689
    const/16 v11, 0x2720

    .line 691
    invoke-virtual {v2, v11, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 694
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 697
    move-result-object v9

    .line 698
    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 701
    move-result-wide v9

    .line 702
    const/16 v11, 0x2721

    .line 704
    invoke-virtual {v2, v11, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 707
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 710
    move-result-object v9

    .line 711
    array-length v10, v9

    .line 712
    move-wide v12, v6

    .line 713
    move v11, v8

    .line 714
    :goto_b
    if-ge v11, v10, :cond_d

    .line 716
    aget-object v14, v9, v11

    .line 718
    invoke-virtual {v14, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 721
    move-result-wide v14

    .line 722
    add-long/2addr v12, v14

    .line 723
    add-int/lit8 v11, v11, 0x1

    .line 725
    goto :goto_b

    .line 726
    :cond_d
    const/16 v9, 0x2722

    .line 728
    invoke-virtual {v2, v9, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 731
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    .line 734
    move-result-object v0

    .line 735
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 738
    move-result-wide v9

    .line 739
    const/16 v0, 0x2723

    .line 741
    invoke-virtual {v2, v0, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 744
    :cond_e
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 747
    move-result-object v0

    .line 748
    if-eqz v0, :cond_10

    .line 750
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 753
    move-result-object v9

    .line 754
    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 757
    move-result-wide v9

    .line 758
    const/16 v11, 0x2724

    .line 760
    invoke-virtual {v2, v11, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 763
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 766
    move-result-object v9

    .line 767
    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 770
    move-result-wide v9

    .line 771
    const/16 v11, 0x2725

    .line 773
    invoke-virtual {v2, v11, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 776
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 779
    move-result-object v9

    .line 780
    array-length v10, v9

    .line 781
    move-wide v12, v6

    .line 782
    move v11, v8

    .line 783
    :goto_c
    if-ge v11, v10, :cond_f

    .line 785
    aget-object v14, v9, v11

    .line 787
    invoke-virtual {v14, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 790
    move-result-wide v14

    .line 791
    add-long/2addr v12, v14

    .line 792
    add-int/lit8 v11, v11, 0x1

    .line 794
    goto :goto_c

    .line 795
    :cond_f
    const/16 v9, 0x2726

    .line 797
    invoke-virtual {v2, v9, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 800
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    .line 803
    move-result-object v0

    .line 804
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 807
    move-result-wide v9

    .line 808
    const/16 v0, 0x2727

    .line 810
    invoke-virtual {v2, v0, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 813
    :cond_10
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 816
    move-result-object v0

    .line 817
    if-eqz v0, :cond_12

    .line 819
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 822
    move-result-object v9

    .line 823
    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 826
    move-result-wide v9

    .line 827
    const/16 v11, 0x2728

    .line 829
    invoke-virtual {v2, v11, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 832
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 835
    move-result-object v9

    .line 836
    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 839
    move-result-wide v9

    .line 840
    const/16 v11, 0x2729

    .line 842
    invoke-virtual {v2, v11, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 845
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 848
    move-result-object v9

    .line 849
    array-length v10, v9

    .line 850
    move-wide v12, v6

    .line 851
    move v11, v8

    .line 852
    :goto_d
    if-ge v11, v10, :cond_11

    .line 854
    aget-object v14, v9, v11

    .line 856
    invoke-virtual {v14, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 859
    move-result-wide v14

    .line 860
    add-long/2addr v12, v14

    .line 861
    add-int/lit8 v11, v11, 0x1

    .line 863
    goto :goto_d

    .line 864
    :cond_11
    const/16 v9, 0x272a

    .line 866
    invoke-virtual {v2, v9, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 869
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 876
    move-result-wide v9

    .line 877
    const/16 v0, 0x272b

    .line 879
    invoke-virtual {v2, v0, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 882
    :cond_12
    invoke-virtual {v3, v4, v5, v8}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    .line 885
    move-result-wide v9

    .line 886
    const-wide/16 v11, 0x3e8

    .line 888
    div-long/2addr v9, v11

    .line 889
    const/16 v0, 0x272c

    .line 891
    invoke-virtual {v2, v0, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 894
    invoke-virtual {v3, v4, v5, v8}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    .line 897
    move-result-wide v9

    .line 898
    div-long/2addr v9, v11

    .line 899
    const/16 v0, 0x272d

    .line 901
    invoke-virtual {v2, v0, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 904
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    .line 907
    move-result v0

    .line 908
    invoke-virtual {v3, v4, v5, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    .line 911
    move-result-wide v9

    .line 912
    div-long/2addr v9, v11

    .line 913
    const/16 v13, 0x272e

    .line 915
    invoke-virtual {v2, v13, v0, v9, v10}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    .line 918
    invoke-virtual {v3, v4, v5, v8}, Landroid/os/BatteryStats$Uid;->getWifiMulticastTime(JI)J

    .line 921
    move-result-wide v4

    .line 922
    div-long/2addr v4, v11

    .line 923
    const/16 v0, 0x272f

    .line 925
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 928
    const/16 v0, 0x2730

    .line 930
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    .line 933
    move-result-object v4

    .line 934
    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 937
    const/16 v0, 0x2731

    .line 939
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    .line 942
    move-result-object v4

    .line 943
    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 946
    const/16 v0, 0x2732

    .line 948
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    .line 951
    move-result-object v4

    .line 952
    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 955
    const/16 v0, 0x2733

    .line 957
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    .line 960
    move-result-object v4

    .line 961
    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 964
    const/16 v0, 0x2734

    .line 966
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    .line 969
    move-result-object v4

    .line 970
    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 973
    const/16 v0, 0x2735

    .line 975
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    .line 978
    move-result-object v4

    .line 979
    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 982
    const/16 v0, 0x2736

    .line 984
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    .line 987
    move-result-object v4

    .line 988
    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 991
    const/16 v0, 0x2737

    .line 993
    const/4 v4, 0x1

    .line 994
    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    .line 997
    move-result-object v5

    .line 998
    invoke-virtual {v1, v2, v0, v5}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 1001
    const/4 v0, 0x4

    .line 1002
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    .line 1005
    move-result-object v4

    .line 1006
    const/16 v5, 0x2738

    .line 1008
    invoke-virtual {v1, v2, v5, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 1011
    const/16 v4, 0x2739

    .line 1013
    const/4 v5, 0x2

    .line 1014
    invoke-virtual {v3, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    .line 1017
    move-result-object v9

    .line 1018
    invoke-virtual {v1, v2, v4, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 1021
    const/4 v4, 0x3

    .line 1022
    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    .line 1025
    move-result-object v5

    .line 1026
    const/16 v9, 0x273a

    .line 1028
    invoke-virtual {v1, v2, v9, v5}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 1031
    const/4 v5, 0x6

    .line 1032
    invoke-virtual {v3, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    .line 1035
    move-result-object v5

    .line 1036
    const/16 v9, 0x273b

    .line 1038
    invoke-virtual {v1, v2, v9, v5}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 1041
    const/16 v5, 0x273c

    .line 1043
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    .line 1046
    move-result-object v9

    .line 1047
    invoke-virtual {v1, v2, v5, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 1050
    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    .line 1053
    move-result v1

    .line 1054
    int-to-long v9, v1

    .line 1055
    const/16 v1, 0x273d

    .line 1057
    invoke-virtual {v2, v1, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1060
    const/4 v1, 0x1

    .line 1061
    invoke-virtual {v3, v1, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    .line 1064
    move-result v5

    .line 1065
    int-to-long v9, v5

    .line 1066
    const/16 v1, 0x273e

    .line 1068
    invoke-virtual {v2, v1, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1071
    const/4 v1, 0x2

    .line 1072
    invoke-virtual {v3, v1, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    .line 1075
    move-result v5

    .line 1076
    int-to-long v9, v5

    .line 1077
    const/16 v5, 0x273f

    .line 1079
    invoke-virtual {v2, v5, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1082
    const/16 v5, 0x2740

    .line 1084
    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 1087
    move-result-wide v9

    .line 1088
    invoke-virtual {v2, v5, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1091
    const/16 v5, 0x2741

    .line 1093
    const/4 v9, 0x1

    .line 1094
    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 1097
    move-result-wide v10

    .line 1098
    invoke-virtual {v2, v5, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1101
    const/16 v5, 0x2742

    .line 1103
    invoke-virtual {v3, v1, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 1106
    move-result-wide v9

    .line 1107
    invoke-virtual {v2, v5, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1110
    const/16 v1, 0x2743

    .line 1112
    invoke-virtual {v3, v4, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 1115
    move-result-wide v9

    .line 1116
    invoke-virtual {v2, v1, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1119
    const/16 v1, 0x2744

    .line 1121
    invoke-virtual {v3, v0, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 1124
    move-result-wide v9

    .line 1125
    invoke-virtual {v2, v1, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1128
    const/4 v1, 0x5

    .line 1129
    invoke-virtual {v3, v1, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 1132
    move-result-wide v9

    .line 1133
    const/16 v5, 0x2745

    .line 1135
    invoke-virtual {v2, v5, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1138
    const/16 v5, 0x2746

    .line 1140
    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 1143
    move-result-wide v9

    .line 1144
    invoke-virtual {v2, v5, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1147
    const/16 v5, 0x2747

    .line 1149
    const/4 v9, 0x1

    .line 1150
    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 1153
    move-result-wide v9

    .line 1154
    invoke-virtual {v2, v5, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1157
    const/16 v5, 0x2748

    .line 1159
    const/4 v9, 0x2

    .line 1160
    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 1163
    move-result-wide v9

    .line 1164
    invoke-virtual {v2, v5, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1167
    const/16 v5, 0x2749

    .line 1169
    invoke-virtual {v3, v4, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 1172
    move-result-wide v9

    .line 1173
    invoke-virtual {v2, v5, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1176
    const/16 v4, 0x274a

    .line 1178
    invoke-virtual {v3, v0, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 1181
    move-result-wide v9

    .line 1182
    invoke-virtual {v2, v4, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1185
    const/16 v0, 0x274b

    .line 1187
    invoke-virtual {v3, v1, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 1190
    move-result-wide v4

    .line 1191
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1194
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    .line 1197
    move-result v0

    .line 1198
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    .line 1201
    move-result-wide v4

    .line 1202
    const/16 v1, 0x274d

    .line 1204
    invoke-virtual {v2, v1, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    .line 1207
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    .line 1210
    move-result-wide v0

    .line 1211
    const-wide/16 v4, 0x3e8

    .line 1213
    div-long/2addr v0, v4

    .line 1214
    const/16 v9, 0x274e

    .line 1216
    invoke-virtual {v2, v9, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1219
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    .line 1222
    move-result-wide v0

    .line 1223
    div-long/2addr v0, v4

    .line 1224
    const/16 v3, 0x274f

    .line 1226
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1229
    const/16 v0, 0x2750

    .line 1231
    invoke-virtual {v2, v0, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 1234
    :cond_13
    new-instance v0, Landroid/os/health/HealthStatsParceler;

    .line 1236
    invoke-direct {v0, v2}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    .line 1239
    return-object v0
.end method

.method public final getLatestNetworkStatsCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getLatestNetworkStatsCount_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget p0, Lcom/android/server/power/stats/BatteryStatsImpl;->sModemNetStatsCnt:I

    .line 11
    sget v0, Lcom/android/server/power/stats/BatteryStatsImpl;->sWifiNetStatsCnt:I

    .line 13
    add-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public final getScreenOffDischargeMah()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getScreenOffDischargeMah_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffCounter:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 11
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 13
    const-wide/16 v3, 0x3e8

    .line 15
    div-long/2addr v1, v3

    .line 16
    monitor-exit v0

    .line 17
    return-wide v1

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

.method public final getSemBatteryUsageStats()Landroid/os/SemBatterySipper;
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getSemBatteryUsageStats_enforcePermission()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 7
    move-object/from16 v0, p0

    .line 9
    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mSemBatteryUsageStatsProvider:Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;

    .line 11
    iget-object v0, v8, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 13
    instance-of v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 19
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 21
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 24
    move-result-wide v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    move-result-wide v0

    .line 30
    :goto_0
    const-wide/16 v2, 0x3e8

    .line 32
    mul-long v4, v0, v2

    .line 34
    iget-object v0, v8, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 36
    instance-of v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 38
    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 42
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 44
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 47
    move-result-wide v0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 52
    move-result-wide v0

    .line 53
    :goto_1
    mul-long v6, v0, v2

    .line 55
    new-instance v10, Landroid/os/SemDevicePowerInfo;

    .line 57
    const-wide/16 v0, 0x0

    .line 59
    invoke-direct {v10, v0, v1}, Landroid/os/SemDevicePowerInfo;-><init>(D)V

    .line 62
    new-instance v11, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v12, Ljava/util/ArrayList;

    .line 69
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v13, Ljava/util/ArrayList;

    .line 74
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v14, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object v9, v8, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 84
    monitor-enter v9

    .line 85
    :try_start_0
    iget-object v0, v8, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 87
    iget-object v1, v8, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 89
    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 91
    new-instance v2, Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 93
    invoke-direct {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 96
    move-object/from16 p0, v14

    .line 98
    const-wide/16 v14, 0x0

    .line 100
    invoke-virtual {v2, v14, v15}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    .line 111
    move-result-object v2

    .line 112
    iget-object v3, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 114
    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    .line 117
    move-result-wide v14

    .line 118
    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_2

    .line 124
    move-object v0, v8

    .line 125
    move-wide v2, v4

    .line 126
    move-wide v4, v6

    .line 127
    move-object v6, v10

    .line 128
    move-object v7, v11

    .line 129
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateBatteryUsage(Landroid/os/BatteryUsageStats;JJLandroid/os/SemDevicePowerInfo;Ljava/util/ArrayList;)V

    .line 132
    iget-object v0, v8, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 134
    invoke-virtual {v8, v0, v12}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateWakeupReasonInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V

    .line 137
    iget-object v0, v8, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 139
    invoke-virtual {v8, v0, v13}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateKernelWakelockInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V

    .line 142
    iget-object v0, v8, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 144
    move-object/from16 v1, p0

    .line 146
    invoke-virtual {v8, v0, v1}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateScreenWakeInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V

    .line 149
    goto :goto_2

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    goto :goto_3

    .line 152
    :cond_2
    move-object/from16 v1, p0

    .line 154
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    new-instance v0, Landroid/os/SemBatterySipper;

    .line 157
    move-object v9, v0

    .line 158
    move-object v14, v1

    .line 159
    invoke-direct/range {v9 .. v14}, Landroid/os/SemBatterySipper;-><init>(Landroid/os/SemDevicePowerInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 162
    return-object v0

    .line 163
    :goto_3
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    throw v0
.end method

.method public final getServiceType()I
    .locals 0

    .line 1
    const/16 p0, 0x9

    .line 3
    return p0
.end method

.method public final getWakeLockStats()Landroid/os/WakeLockStats;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWakeLockStats_enforcePermission()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 7
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getWakeLockStats()Landroid/os/WakeLockStats;

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

.method public final getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWifiBatteryStats_enforcePermission()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 7
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

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

.method public final isCharging()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCharging:Z

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final monitor()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_1
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v0

    .line 18
    :catchall_1
    move-exception p0

    .line 19
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    throw p0
.end method

.method public final noteBleDutyScanStarted(Landroid/os/WorkSource;ZI)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleDutyScanStarted_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v6

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v8

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;

    .line 30
    const/4 v10, 0x1

    .line 31
    move-object v1, v11

    .line 32
    move-object v2, p0

    .line 33
    move v4, p2

    .line 34
    move v5, p3

    .line 35
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZIJJI)V

    .line 38
    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    monitor-exit p1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final noteBleDutyScanStopped(Landroid/os/WorkSource;ZI)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleDutyScanStopped_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v6

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v8

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;

    .line 30
    const/4 v10, 0x0

    .line 31
    move-object v1, v11

    .line 32
    move-object v2, p0

    .line 33
    move v4, p2

    .line 34
    move v5, p3

    .line 35
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZIJJI)V

    .line 38
    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    monitor-exit p1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final noteBleScanReset()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanReset_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v5

    .line 15
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    .line 19
    const/4 v7, 0x6

    .line 20
    move-object v1, v9

    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    .line 25
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final noteBleScanResults(Landroid/os/WorkSource;I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanResults_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v5

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v7

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;

    .line 30
    const/4 v9, 0x0

    .line 31
    move-object v1, v10

    .line 32
    move-object v2, p0

    .line 33
    move v4, p2

    .line 34
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJI)V

    .line 37
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    monitor-exit p1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v5

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v7

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;

    .line 30
    const/4 v9, 0x0

    .line 31
    move-object v1, v10

    .line 32
    move-object v2, p0

    .line 33
    move v4, p2

    .line 34
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJI)V

    .line 37
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    monitor-exit p1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v5

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v7

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;

    .line 30
    const/4 v9, 0x1

    .line 31
    move-object v1, v10

    .line 32
    move-object v2, p0

    .line 33
    move v4, p2

    .line 34
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJI)V

    .line 37
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    monitor-exit p1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity_enforcePermission()V

    .line 4
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    move-result-wide v4

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    move-result-wide v6

    .line 24
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;

    .line 28
    move-object v1, v9

    .line 29
    move-object v2, p0

    .line 30
    move-object v3, p1

    .line 31
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    .line 34
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_1
    :goto_0
    const-string p0, "BatteryStatsService"

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v1, "invalid bluetooth data given: "

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public final noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p6

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource_enforcePermission()V

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    new-instance v4, Landroid/os/WorkSource;

    .line 15
    invoke-direct {v4, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v4, v3

    .line 20
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    new-instance v1, Landroid/os/WorkSource;

    .line 24
    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 27
    move-object v8, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v8, v3

    .line 30
    :goto_1
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter v14

    .line 33
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    move-result-wide v15

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    move-result-wide v17

    .line 41
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v12, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    move-object v1, v12

    .line 46
    move-object/from16 v2, p0

    .line 48
    move-object v3, v4

    .line 49
    move/from16 v4, p2

    .line 51
    move-object/from16 v5, p3

    .line 53
    move-object/from16 v6, p4

    .line 55
    move/from16 v7, p5

    .line 57
    move/from16 v9, p7

    .line 59
    move-object/from16 v10, p8

    .line 61
    move-object/from16 v11, p9

    .line 63
    move-object v0, v12

    .line 64
    move/from16 v12, p10

    .line 66
    move-object/from16 v19, v13

    .line 68
    move/from16 v13, p11

    .line 70
    move-object/from16 v20, v14

    .line 72
    move-wide v14, v15

    .line 73
    move-wide/from16 v16, v17

    .line 75
    :try_start_1
    invoke-direct/range {v1 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 78
    move-object/from16 v1, v19

    .line 80
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    monitor-exit v20

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_2

    .line 87
    :catchall_1
    move-exception v0

    .line 88
    move-object/from16 v20, v14

    .line 90
    :goto_2
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw v0
.end method

.method public final noteConnectivityChanged(ILjava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v5

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v7

    .line 15
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    .line 19
    const/16 v9, 0x8

    .line 21
    move-object v1, v11

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    move-object v4, p2

    .line 25
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJI)V

    .line 28
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final varargs noteCpuWakingActivity(J[II)V
    .locals 8

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance v7, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p0

    .line 10
    move v3, p4

    .line 11
    move-wide v4, p1

    .line 12
    move-object v6, p3

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/BatteryStatsService;IJ[I)V

    .line 16
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method

.method public final noteCurrentTimeChanged()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v3

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v5

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v7

    .line 16
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;

    .line 20
    move-object v1, v10

    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/BatteryStatsService;JJJ)V

    .line 25
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final noteDeviceIdleMode(ILjava/lang/String;I)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode_enforcePermission()V

    .line 5
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v11

    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v6

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v8

    .line 16
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;

    .line 20
    const/4 v10, 0x1

    .line 21
    move-object v1, v13

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    move-object/from16 v4, p2

    .line 26
    move/from16 v5, p3

    .line 28
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJI)V

    .line 31
    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    monitor-exit v11

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v0
.end method

.method public final noteDualScreenBrightness(III)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDualScreenBrightness_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v5

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v7

    .line 15
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;

    .line 19
    move-object v1, v11

    .line 20
    move v2, p1

    .line 21
    move v3, p2

    .line 22
    move v4, p3

    .line 23
    move-object v9, p0

    .line 24
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;-><init>(IIIJJLcom/android/server/am/BatteryStatsService;)V

    .line 27
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/16 p0, 0x9

    .line 33
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method public final noteDualScreenState(III)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDualScreenState_enforcePermission()V

    .line 5
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v12

    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v5

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v7

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v9

    .line 20
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 22
    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;

    .line 24
    move-object v1, v14

    .line 25
    move/from16 v2, p1

    .line 27
    move/from16 v3, p2

    .line 29
    move/from16 v4, p3

    .line 31
    move-object v11, p0

    .line 32
    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;-><init>(IIIJJJLcom/android/server/am/BatteryStatsService;)V

    .line 35
    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const/16 v0, 0x1d

    .line 41
    move/from16 v1, p1

    .line 43
    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v0
.end method

.method public final noteEvent(ILjava/lang/String;I)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent_enforcePermission()V

    .line 5
    if-nez p2, :cond_0

    .line 7
    const-string v0, "BatteryStatsService"

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v2, "noteEvent called with null name. code = "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    move v3, p1

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 29
    :cond_0
    move v3, p1

    .line 30
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter v11

    .line 33
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    move-result-wide v6

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    move-result-wide v8

    .line 41
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;

    .line 45
    const/4 v10, 0x2

    .line 46
    move-object v1, v13

    .line 47
    move-object v2, p0

    .line 48
    move v3, p1

    .line 49
    move-object/from16 v4, p2

    .line 51
    move/from16 v5, p3

    .line 53
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJI)V

    .line 56
    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    monitor-exit v11

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw v0
.end method

.method public final noteFlashlightOff(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/16 v8, 0xe

    .line 21
    move-object v1, v10

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 27
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 p0, 0x0

    .line 32
    const/4 v0, 0x0

    .line 33
    const/16 v1, 0x1a

    .line 35
    invoke-static {v1, p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method

.method public final noteFlashlightOn(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/16 v8, 0xc

    .line 21
    move-object v1, v10

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 27
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 p0, 0x0

    .line 32
    const/4 v0, 0x1

    .line 33
    const/16 v1, 0x1a

    .line 35
    invoke-static {v1, p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method

.method public final noteFullWifiLockAcquired(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v1, v10

    .line 21
    move-object v2, p0

    .line 22
    move v3, p1

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 26
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v4

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v6

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    .line 30
    const/4 v8, 0x1

    .line 31
    move-object v1, v9

    .line 32
    move-object v2, p0

    .line 33
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    .line 36
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final noteFullWifiLockReleased(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/16 v8, 0x10

    .line 21
    move-object v1, v10

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 27
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v4

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v6

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    .line 30
    const/4 v8, 0x3

    .line 31
    move-object v1, v9

    .line 32
    move-object v2, p0

    .line 33
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    .line 36
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsChanged_enforcePermission()V

    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 7
    new-instance v1, Landroid/os/WorkSource;

    .line 9
    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 12
    move-object v4, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v4, v0

    .line 15
    :goto_0
    if-eqz p2, :cond_1

    .line 17
    new-instance v0, Landroid/os/WorkSource;

    .line 19
    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 22
    :cond_1
    move-object v5, v0

    .line 23
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    move-result-wide v6

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 33
    move-result-wide v8

    .line 34
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;

    .line 38
    const/4 v10, 0x1

    .line 39
    move-object v2, v0

    .line 40
    move-object v3, p0

    .line 41
    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJI)V

    .line 44
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    monitor-exit p1

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final noteGpsSignalQuality(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsSignalQuality_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/4 v8, 0x3

    .line 20
    move-object v1, v10

    .line 21
    move-object v2, p0

    .line 22
    move v3, p1

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 26
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final noteInteractive(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v1

    .line 11
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 13
    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda120;

    .line 15
    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda120;-><init>(Lcom/android/server/am/BatteryStatsService;ZJ)V

    .line 18
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final noteJobFinish(Ljava/lang/String;II)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v5

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v7

    .line 15
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;

    .line 19
    move-object v1, v11

    .line 20
    move-object v2, p0

    .line 21
    move v3, p2

    .line 22
    move-object v4, p1

    .line 23
    move v9, p3

    .line 24
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJI)V

    .line 27
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final noteJobStart(Ljava/lang/String;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v5

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v7

    .line 15
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    .line 19
    const/4 v9, 0x6

    .line 20
    move-object v1, v11

    .line 21
    move-object v2, p0

    .line 22
    move-object v3, p1

    .line 23
    move v4, p2

    .line 24
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    .line 27
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish_enforcePermission()V

    .line 5
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v11

    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v6

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v8

    .line 16
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    .line 20
    const/4 v10, 0x5

    .line 21
    move-object v1, v13

    .line 22
    move-object v2, p0

    .line 23
    move-object v3, p1

    .line 24
    move-object/from16 v4, p2

    .line 26
    move/from16 v5, p3

    .line 28
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJI)V

    .line 31
    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    monitor-exit v11

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v0
.end method

.method public final noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinishFromSource_enforcePermission()V

    .line 4
    if-eqz p3, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v7, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p3

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v3

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v5

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;

    .line 30
    const/4 v2, 0x1

    .line 31
    move-object v1, v11

    .line 32
    move-object v8, p0

    .line 33
    move-object v9, p1

    .line 34
    move-object v10, p2

    .line 35
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;-><init>(IJJLandroid/os/WorkSource;Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    monitor-exit p3

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart_enforcePermission()V

    .line 5
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v11

    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v6

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v8

    .line 16
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    .line 20
    const/4 v10, 0x3

    .line 21
    move-object v1, v13

    .line 22
    move-object v2, p0

    .line 23
    move-object v3, p1

    .line 24
    move-object/from16 v4, p2

    .line 26
    move/from16 v5, p3

    .line 28
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJI)V

    .line 31
    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    monitor-exit v11

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v0
.end method

.method public final noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStartFromSource_enforcePermission()V

    .line 4
    if-eqz p3, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v7, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p3

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v3

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v5

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;

    .line 30
    const/4 v2, 0x0

    .line 31
    move-object v1, v11

    .line 32
    move-object v8, p0

    .line 33
    move-object v9, p1

    .line 34
    move-object v10, p2

    .line 35
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;-><init>(IJJLandroid/os/WorkSource;Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    monitor-exit p3

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final noteMobileRadioPowerState(IJI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState_enforcePermission()V

    .line 5
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v12

    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v7

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v9

    .line 16
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;

    .line 20
    const/4 v4, 0x1

    .line 21
    move-object v1, v14

    .line 22
    move/from16 v2, p1

    .line 24
    move/from16 v3, p4

    .line 26
    move-wide/from16 v5, p2

    .line 28
    move-object v11, p0

    .line 29
    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;-><init>(IIIJJJLcom/android/server/am/BatteryStatsService;)V

    .line 32
    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/16 v0, 0xc

    .line 38
    const/4 v1, 0x0

    .line 39
    move/from16 v2, p1

    .line 41
    move/from16 v3, p4

    .line 43
    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v0
.end method

.method public final noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity_enforcePermission()V

    .line 4
    if-nez p1, :cond_0

    .line 6
    const-string p0, "BatteryStatsService"

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v1, "invalid modem data given: "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    move-result-wide v4

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 37
    move-result-wide v6

    .line 38
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 40
    const-class v2, Landroid/app/usage/NetworkStatsManager;

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    move-object v8, v1

    .line 47
    check-cast v8, Landroid/app/usage/NetworkStatsManager;

    .line 49
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;

    .line 53
    move-object v1, v10

    .line 54
    move-object v2, p0

    .line 55
    move-object v3, p1

    .line 56
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    .line 59
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceForTransports_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 9
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda107;

    .line 11
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda107;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;[I)V

    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final noteNetworkStatsEnabled()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 9
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;

    .line 11
    const/4 v3, 0x3

    .line 12
    invoke-direct {v2, p0, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final notePackageInstalled(JLjava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v6

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    move-result-wide v8

    .line 12
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;

    .line 16
    move-object v1, v11

    .line 17
    move-object v2, p0

    .line 18
    move-object v3, p3

    .line 19
    move-wide v4, p1

    .line 20
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V

    .line 23
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final notePackageUninstalled(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v4

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    move-result-wide v6

    .line 12
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;

    .line 16
    const/4 v8, 0x4

    .line 17
    move-object v1, v10

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/Object;JJI)V

    .line 23
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final notePhoneDataConnectionState(IZIII)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState_enforcePermission()V

    .line 5
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v12

    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v8

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v10

    .line 16
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda88;

    .line 20
    move-object v1, v14

    .line 21
    move-object v2, p0

    .line 22
    move/from16 v3, p1

    .line 24
    move/from16 v4, p2

    .line 26
    move/from16 v5, p3

    .line 28
    move/from16 v6, p4

    .line 30
    move/from16 v7, p5

    .line 32
    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda88;-><init>(Lcom/android/server/am/BatteryStatsService;IZIIIJJ)V

    .line 35
    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    monitor-exit v12

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v0
.end method

.method public final notePhoneOff()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v5

    .line 15
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    .line 19
    const/16 v7, 0x8

    .line 21
    move-object v1, v9

    .line 22
    move-object v2, p0

    .line 23
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    .line 26
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final notePhoneOn()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v5

    .line 15
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    .line 19
    const/4 v7, 0x7

    .line 20
    move-object v1, v9

    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    .line 25
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;

    .line 19
    move-object v1, v9

    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V

    .line 25
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final notePhoneState(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/16 v8, 0xd

    .line 21
    move-object v1, v10

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 27
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final noteProcessAnr(ILjava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v5

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    move-result-wide v7

    .line 12
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    .line 16
    const/4 v9, 0x2

    .line 17
    move-object v1, v11

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p2

    .line 20
    move v4, p1

    .line 21
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    .line 24
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final noteProcessCrash(ILjava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v5

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    move-result-wide v7

    .line 12
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    .line 16
    const/4 v9, 0x1

    .line 17
    move-object v1, v11

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p2

    .line 20
    move v4, p1

    .line 21
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    .line 24
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const/16 p0, 0x1c

    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
.end method

.method public final noteProcessFinish(ILjava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v5

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    move-result-wide v7

    .line 12
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    .line 16
    const/4 v9, 0x0

    .line 17
    move-object v1, v11

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p2

    .line 20
    move v4, p1

    .line 21
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    .line 24
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const/16 p0, 0x1c

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
.end method

.method public final noteProcessStart(ILjava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v5

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    move-result-wide v7

    .line 12
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    .line 16
    const/4 v9, 0x7

    .line 17
    move-object v1, v11

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p2

    .line 20
    move v4, p1

    .line 21
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    .line 24
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const/16 p0, 0x1c

    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
.end method

.method public final noteResetAudio()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v5

    .line 15
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    .line 19
    const/4 v7, 0x3

    .line 20
    move-object v1, v9

    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    .line 25
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 p0, 0x0

    .line 30
    const/4 v0, 0x2

    .line 31
    const/16 v1, 0x17

    .line 33
    const/4 v2, -0x1

    .line 34
    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final noteResetCamera()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v5

    .line 15
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    .line 19
    const/4 v7, 0x0

    .line 20
    move-object v1, v9

    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    .line 25
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 p0, 0x0

    .line 30
    const/4 v0, 0x2

    .line 31
    const/16 v1, 0x19

    .line 33
    const/4 v2, -0x1

    .line 34
    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final noteResetFlashlight()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v5

    .line 15
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    .line 19
    const/4 v7, 0x1

    .line 20
    move-object v1, v9

    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    .line 25
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 p0, 0x0

    .line 30
    const/4 v0, 0x2

    .line 31
    const/16 v1, 0x1a

    .line 33
    const/4 v2, -0x1

    .line 34
    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final noteResetGps()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetGps_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 11
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 14
    move-result-wide v1

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 22
    move-result v5

    .line 23
    if-ge v4, v5, :cond_1

    .line 25
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 33
    const/16 v6, -0x2711

    .line 35
    invoke-virtual {v5, v6, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 38
    move-result-object v5

    .line 39
    if-eqz v5, :cond_0

    .line 41
    invoke-virtual {v5, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 44
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p0, 0x2

    .line 48
    const v1, 0x186a1

    .line 51
    const/4 v2, -0x1

    .line 52
    invoke-static {v1, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final noteResetVideo()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v5

    .line 15
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    .line 19
    const/4 v7, 0x2

    .line 20
    move-object v1, v9

    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    .line 25
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 p0, 0x0

    .line 30
    const/4 v0, 0x2

    .line 31
    const/16 v1, 0x18

    .line 33
    const/4 v2, -0x1

    .line 34
    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final noteScreenBrightness(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/4 v8, 0x7

    .line 20
    move-object v1, v10

    .line 21
    move-object v2, p0

    .line 22
    move v3, p1

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 26
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/16 p0, 0x9

    .line 32
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
.end method

.method public final noteScreenState(I)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v8

    .line 19
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 21
    new-instance v12, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;

    .line 23
    const/4 v3, 0x0

    .line 24
    move-object v1, v12

    .line 25
    move v2, p1

    .line 26
    move-object v10, p0

    .line 27
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;-><init>(IIJJJLcom/android/server/am/BatteryStatsService;)V

    .line 30
    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const/16 p0, 0x1d

    .line 36
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0
.end method

.method public final noteServiceStartLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 4
    monitor-enter v11

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    move-result-wide v6

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v8

    .line 13
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    .line 17
    const/4 v10, 0x2

    .line 18
    move-object v1, v13

    .line 19
    move-object v2, p0

    .line 20
    move v3, p1

    .line 21
    move-object/from16 v4, p2

    .line 23
    move-object/from16 v5, p3

    .line 25
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJI)V

    .line 28
    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    monitor-exit v11

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v0
.end method

.method public final noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 4
    monitor-enter v11

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    move-result-wide v6

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v8

    .line 13
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    .line 17
    const/4 v10, 0x1

    .line 18
    move-object v1, v13

    .line 19
    move-object v2, p0

    .line 20
    move v3, p1

    .line 21
    move-object/from16 v4, p2

    .line 23
    move-object/from16 v5, p3

    .line 25
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJI)V

    .line 28
    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    monitor-exit v11

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v0
.end method

.method public final noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 4
    monitor-enter v11

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    move-result-wide v6

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v8

    .line 13
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    .line 17
    const/4 v10, 0x0

    .line 18
    move-object v1, v13

    .line 19
    move-object v2, p0

    .line 20
    move v3, p1

    .line 21
    move-object/from16 v4, p2

    .line 23
    move-object/from16 v5, p3

    .line 25
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJI)V

    .line 28
    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    monitor-exit v11

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v0
.end method

.method public final noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 4
    monitor-enter v11

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    move-result-wide v6

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v8

    .line 13
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    .line 17
    const/4 v10, 0x4

    .line 18
    move-object v1, v13

    .line 19
    move-object v2, p0

    .line 20
    move v3, p1

    .line 21
    move-object/from16 v4, p2

    .line 23
    move-object/from16 v5, p3

    .line 25
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJI)V

    .line 28
    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    monitor-exit v11

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v0
.end method

.method public final noteStartAudio(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/16 v8, 0x12

    .line 21
    move-object v1, v10

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 27
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 p0, 0x0

    .line 32
    const/4 v0, 0x1

    .line 33
    const/16 v1, 0x17

    .line 35
    invoke-static {v1, p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method

.method public final noteStartCamera(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/4 v8, 0x1

    .line 20
    move-object v1, v10

    .line 21
    move-object v2, p0

    .line 22
    move v3, p1

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 26
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 32
    const/4 v1, 0x1

    .line 33
    if-eqz v0, :cond_0

    .line 35
    const/16 v0, 0x3e8

    .line 37
    if-eq p1, v0, :cond_0

    .line 39
    const/16 v0, 0x3e9

    .line 41
    if-eq p1, v0, :cond_0

    .line 43
    const/16 v0, 0x139d

    .line 45
    if-eq p1, v0, :cond_0

    .line 47
    const-string v0, "BatteryStatsService"

    .line 49
    const-string/jumbo v2, "set setWirelessPowerSharingExternelEvent"

    .line 52
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 57
    invoke-virtual {p0, v1, v1}, Landroid/os/BatteryManagerInternal;->setWirelessPowerSharingExternelEvent(II)V

    .line 60
    :cond_0
    const/16 p0, 0x19

    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method

.method public final noteStartGps(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartGps_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 15
    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 22
    move-result-object p0

    .line 23
    const/4 v1, 0x1

    .line 24
    const/16 v4, -0x2711

    .line 26
    invoke-virtual {p0, v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 33
    const p0, 0x186a1

    .line 36
    invoke-static {p0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final noteStartSensor(II)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v5

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v7

    .line 15
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v1, v11

    .line 21
    move v2, p1

    .line 22
    move v3, p2

    .line 23
    move-object v9, p0

    .line 24
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;-><init>(IIIJJLcom/android/server/am/BatteryStatsService;)V

    .line 27
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 p0, 0x0

    .line 32
    const/4 v0, 0x1

    .line 33
    const/4 v1, 0x5

    .line 34
    invoke-static {v1, p1, p0, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final noteStartTxPowerSharing()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartTxPowerSharing_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 9
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, p0, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final noteStartVideo(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/16 v8, 0x11

    .line 21
    move-object v1, v10

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 27
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 p0, 0x0

    .line 32
    const/4 v0, 0x1

    .line 33
    const/16 v1, 0x18

    .line 35
    invoke-static {v1, p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method

.method public final noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock_enforcePermission()V

    .line 6
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v13

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v9

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    move-result-wide v11

    .line 17
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 19
    new-instance v15, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;

    .line 21
    move-object v1, v15

    .line 22
    move-object/from16 v2, p0

    .line 24
    move/from16 v3, p1

    .line 26
    move/from16 v4, p2

    .line 28
    move-object/from16 v5, p3

    .line 30
    move-object/from16 v6, p4

    .line 32
    move/from16 v7, p5

    .line 34
    move/from16 v8, p6

    .line 36
    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 39
    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    monitor-exit v13

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v0
.end method

.method public final noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource_enforcePermission()V

    .line 8
    if-eqz v1, :cond_0

    .line 10
    new-instance v2, Landroid/os/WorkSource;

    .line 12
    invoke-direct {v2, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 15
    move-object v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    move-object v3, v1

    .line 19
    :goto_0
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter v13

    .line 22
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    move-result-wide v9

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 29
    move-result-wide v11

    .line 30
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 32
    new-instance v15, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;

    .line 34
    move-object v1, v15

    .line 35
    move-object/from16 v2, p0

    .line 37
    move/from16 v4, p2

    .line 39
    move-object/from16 v5, p3

    .line 41
    move-object/from16 v6, p4

    .line 43
    move/from16 v7, p5

    .line 45
    move/from16 v8, p6

    .line 47
    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 50
    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    monitor-exit v13

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw v0
.end method

.method public final noteStopAudio(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/4 v8, 0x2

    .line 20
    move-object v1, v10

    .line 21
    move-object v2, p0

    .line 22
    move v3, p1

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 26
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/4 p0, 0x0

    .line 31
    const/4 v0, 0x0

    .line 32
    const/16 v1, 0x17

    .line 34
    invoke-static {v1, p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final noteStopCamera(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/16 v8, 0xb

    .line 21
    move-object v1, v10

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 27
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_0

    .line 36
    const/16 v0, 0x3e8

    .line 38
    if-eq p1, v0, :cond_0

    .line 40
    const/16 v0, 0x3e9

    .line 42
    if-eq p1, v0, :cond_0

    .line 44
    const/16 v0, 0x139d

    .line 46
    if-eq p1, v0, :cond_0

    .line 48
    const-string v0, "BatteryStatsService"

    .line 50
    const-string/jumbo v2, "set setWirelessPowerSharingExternelEvent"

    .line 53
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0, v1}, Landroid/os/BatteryManagerInternal;->setWirelessPowerSharingExternelEvent(II)V

    .line 62
    :cond_0
    const/16 p0, 0x19

    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0
.end method

.method public final noteStopGps(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopGps_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 15
    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 22
    move-result-object p0

    .line 23
    const/16 v1, -0x2711

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p0, v1, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 35
    :cond_0
    const p0, 0x186a1

    .line 38
    invoke-static {p0, p1, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 41
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

.method public final noteStopSensor(II)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v5

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v7

    .line 15
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;

    .line 19
    const/4 v4, 0x3

    .line 20
    move-object v1, v11

    .line 21
    move v2, p1

    .line 22
    move v3, p2

    .line 23
    move-object v9, p0

    .line 24
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;-><init>(IIIJJLcom/android/server/am/BatteryStatsService;)V

    .line 27
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 p0, 0x0

    .line 32
    const/4 v0, 0x0

    .line 33
    const/4 v1, 0x5

    .line 34
    invoke-static {v1, p1, p0, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final noteStopTxPowerSharing()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopTxPowerSharing_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 9
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;

    .line 11
    const/4 v3, 0x2

    .line 12
    invoke-direct {v2, p0, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final noteStopVideo(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/4 v8, 0x6

    .line 20
    move-object v1, v10

    .line 21
    move-object v2, p0

    .line 22
    move v3, p1

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 26
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/4 p0, 0x0

    .line 31
    const/4 v0, 0x0

    .line 32
    const/16 v1, 0x18

    .line 34
    invoke-static {v1, p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock_enforcePermission()V

    .line 5
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v12

    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v8

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v10

    .line 16
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;

    .line 20
    move-object v1, v14

    .line 21
    move-object v2, p0

    .line 22
    move/from16 v3, p1

    .line 24
    move/from16 v4, p2

    .line 26
    move-object/from16 v5, p3

    .line 28
    move-object/from16 v6, p4

    .line 30
    move/from16 v7, p5

    .line 32
    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 35
    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    monitor-exit v12

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v0
.end method

.method public final noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource_enforcePermission()V

    .line 7
    if-eqz v1, :cond_0

    .line 9
    new-instance v2, Landroid/os/WorkSource;

    .line 11
    invoke-direct {v2, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 14
    move-object v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    move-object v3, v1

    .line 18
    :goto_0
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v12

    .line 21
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    move-result-wide v8

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 28
    move-result-wide v10

    .line 29
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;

    .line 33
    move-object v1, v14

    .line 34
    move-object v2, p0

    .line 35
    move/from16 v4, p2

    .line 37
    move-object/from16 v5, p3

    .line 39
    move-object/from16 v6, p4

    .line 41
    move/from16 v7, p5

    .line 43
    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 46
    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    monitor-exit v12

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v0
.end method

.method public final noteSyncFinish(Ljava/lang/String;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v5

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v7

    .line 15
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    .line 19
    const/4 v9, 0x5

    .line 20
    move-object v1, v11

    .line 21
    move-object v2, p0

    .line 22
    move-object v3, p1

    .line 23
    move v4, p2

    .line 24
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    .line 27
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 p0, 0x0

    .line 32
    const/4 v0, 0x0

    .line 33
    const/4 v1, 0x7

    .line 34
    invoke-static {v1, p2, p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final noteSyncStart(Ljava/lang/String;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v5

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v7

    .line 15
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    .line 19
    const/4 v9, 0x4

    .line 20
    move-object v1, v11

    .line 21
    move-object v2, p0

    .line 22
    move-object v3, p1

    .line 23
    move v4, p2

    .line 24
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    .line 27
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 p0, 0x0

    .line 32
    const/4 v0, 0x1

    .line 33
    const/4 v1, 0x7

    .line 34
    invoke-static {v1, p2, p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final noteUpdateNetworkStats(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUpdateNetworkStats_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 9
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/Object;I)V

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final noteUserActivity(II)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v5

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v7

    .line 15
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;

    .line 19
    const/4 v4, 0x1

    .line 20
    move-object v1, v11

    .line 21
    move v2, p1

    .line 22
    move v3, p2

    .line 23
    move-object v9, p0

    .line 24
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;-><init>(IIIJJLcom/android/server/am/BatteryStatsService;)V

    .line 27
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final noteVibratorOff(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/4 v8, 0x4

    .line 20
    move-object v1, v10

    .line 21
    move-object v2, p0

    .line 22
    move v3, p1

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 26
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final noteVibratorOn(IJ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn_enforcePermission()V

    .line 5
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v11

    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v6

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v8

    .line 16
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;

    .line 20
    const/4 v3, 0x1

    .line 21
    move-object v1, v13

    .line 22
    move v2, p1

    .line 23
    move-wide/from16 v4, p2

    .line 25
    move-object v10, p0

    .line 26
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;-><init>(IIJJJLcom/android/server/am/BatteryStatsService;)V

    .line 29
    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    monitor-exit v11

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v0
.end method

.method public final noteWakeUp(Ljava/lang/String;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v5

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v7

    .line 15
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    .line 19
    const/16 v9, 0x9

    .line 21
    move-object v1, v11

    .line 22
    move-object v2, p0

    .line 23
    move-object v3, p1

    .line 24
    move v4, p2

    .line 25
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    .line 28
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final noteWakeupSensorEvent(JII)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-ne v0, v1, :cond_2

    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    move-result-wide p1

    .line 15
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 17
    const-class v1, Landroid/hardware/SensorManager;

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/hardware/SensorManager;

    .line 25
    invoke-virtual {v0, p4}, Landroid/hardware/SensorManager;->getSensorByHandle(I)Landroid/hardware/Sensor;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "BatteryStatsService"

    .line 31
    if-nez v0, :cond_0

    .line 33
    const-string p0, "Unknown sensor handle "

    .line 35
    const-string p1, " received in noteWakeupSensorEvent"

    .line 37
    invoke-static {p4, p0, p1, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 41
    :cond_0
    if-gez p3, :cond_1

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    const-string p1, "Invalid uid "

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string p1, " for sensor event with sensor: "

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 69
    :cond_1
    const/4 p4, 0x4

    .line 70
    filled-new-array {p3}, [I

    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(J[II)V

    .line 77
    return-void

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 80
    const-string p1, "Calling uid "

    .line 82
    const-string p2, " is not system uid"

    .line 84
    invoke-static {v0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p0
.end method

.method public final noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v5

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v7

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;

    .line 30
    const/4 v9, 0x1

    .line 31
    move-object v1, v10

    .line 32
    move-object v2, p0

    .line 33
    move v4, p2

    .line 34
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJI)V

    .line 37
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    monitor-exit p1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v4

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v6

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    .line 30
    const/4 v8, 0x0

    .line 31
    move-object v1, v9

    .line 32
    move-object v2, p0

    .line 33
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    .line 36
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity_enforcePermission()V

    .line 4
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    move-result-wide v4

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    move-result-wide v6

    .line 24
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 26
    const-class v2, Landroid/app/usage/NetworkStatsManager;

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    move-object v8, v1

    .line 33
    check-cast v8, Landroid/app/usage/NetworkStatsManager;

    .line 35
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;

    .line 39
    move-object v1, v10

    .line 40
    move-object v2, p0

    .line 41
    move-object v3, p1

    .line 42
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    .line 45
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0

    .line 53
    :cond_1
    :goto_0
    const-string p0, "BatteryStatsService"

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v1, "invalid wifi data given: "

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public final noteWifiMulticastDisabled(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/4 v8, 0x5

    .line 20
    move-object v1, v10

    .line 21
    move-object v2, p0

    .line 22
    move v3, p1

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 26
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final noteWifiMulticastEnabled(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/16 v8, 0xa

    .line 21
    move-object v1, v10

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 27
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final noteWifiOff()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v5

    .line 15
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    .line 19
    const/4 v7, 0x4

    .line 20
    move-object v1, v9

    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    .line 25
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/16 p0, 0x71

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
.end method

.method public final noteWifiOn()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v5

    .line 15
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    .line 19
    const/4 v7, 0x5

    .line 20
    move-object v1, v9

    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    .line 25
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/16 p0, 0x71

    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
.end method

.method public final noteWifiRadioPowerState(IJI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState_enforcePermission()V

    .line 5
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v12

    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v7

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v9

    .line 16
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;

    .line 20
    const/4 v4, 0x0

    .line 21
    move-object v1, v14

    .line 22
    move/from16 v2, p1

    .line 24
    move/from16 v3, p4

    .line 26
    move-wide/from16 v5, p2

    .line 28
    move-object v11, p0

    .line 29
    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;-><init>(IIIJJJLcom/android/server/am/BatteryStatsService;)V

    .line 32
    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/16 v0, 0xd

    .line 38
    const/4 v1, 0x0

    .line 39
    move/from16 v2, p1

    .line 41
    move/from16 v3, p4

    .line 43
    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v0
.end method

.method public final noteWifiRssiChanged(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/16 v8, 0x9

    .line 21
    move-object v1, v10

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 27
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final noteWifiRunning(Landroid/os/WorkSource;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v4

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v6

    .line 26
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    .line 30
    const/4 v8, 0x6

    .line 31
    move-object v1, v10

    .line 32
    move-object v2, p0

    .line 33
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    .line 36
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    const/16 p0, 0x72

    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged_enforcePermission()V

    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 7
    new-instance v1, Landroid/os/WorkSource;

    .line 9
    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 12
    move-object v4, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v4, v0

    .line 15
    :goto_0
    if-eqz p2, :cond_1

    .line 17
    new-instance v0, Landroid/os/WorkSource;

    .line 19
    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 22
    :cond_1
    move-object v5, v0

    .line 23
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    move-result-wide v6

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 33
    move-result-wide v8

    .line 34
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;

    .line 38
    const/4 v10, 0x0

    .line 39
    move-object v2, v11

    .line 40
    move-object v3, p0

    .line 41
    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJI)V

    .line 44
    invoke-virtual {v1, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 p0, 0x1

    .line 49
    const/16 v0, 0x72

    .line 51
    invoke-static {v0, p2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 54
    const/4 p0, 0x0

    .line 55
    invoke-static {v0, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0
.end method

.method public final noteWifiScanStarted(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/16 v8, 0x13

    .line 21
    move-object v1, v10

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 27
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v4

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v6

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    .line 30
    const/4 v8, 0x4

    .line 31
    move-object v1, v9

    .line 32
    move-object v2, p0

    .line 33
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    .line 36
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final noteWifiScanStopped(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v6

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    const/16 v8, 0xf

    .line 21
    move-object v1, v10

    .line 22
    move-object v2, p0

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    .line 27
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v4

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v6

    .line 26
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    .line 30
    const/4 v8, 0x5

    .line 31
    move-object v1, v9

    .line 32
    move-object v2, p0

    .line 33
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    .line 36
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final noteWifiState(ILjava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v5

    .line 11
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 13
    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;

    .line 15
    move-object v1, v8

    .line 16
    move-object v2, p0

    .line 17
    move v3, p1

    .line 18
    move-object v4, p2

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V

    .line 22
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final noteWifiStopped(Landroid/os/WorkSource;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped_enforcePermission()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/os/WorkSource;

    .line 8
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 11
    move-object v3, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v3, p1

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    move-result-wide v4

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    move-result-wide v6

    .line 25
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    .line 29
    const/4 v8, 0x2

    .line 30
    move-object v1, v10

    .line 31
    move-object v2, p0

    .line 32
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    .line 35
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const/16 p0, 0x72

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p0
.end method

.method public final noteWifiSupplicantStateChanged(IZ)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v5

    .line 15
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    .line 19
    move-object v1, v10

    .line 20
    move v2, p1

    .line 21
    move-object v7, p0

    .line 22
    move v8, p2

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(IJJLcom/android/server/am/BatteryStatsService;Z)V

    .line 26
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v4

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    move-result-wide v6

    .line 12
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;

    .line 16
    const/4 v8, 0x1

    .line 17
    move-object v1, v10

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/Object;JJI)V

    .line 23
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final populatePowerEntityMaps()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 3
    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    array-length v3, v0

    .line 19
    if-ge v2, v3, :cond_2

    .line 21
    aget-object v3, v0, v2

    .line 23
    new-instance v4, Ljava/util/HashMap;

    .line 25
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 28
    move v5, v1

    .line 29
    :goto_1
    iget-object v6, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    .line 31
    array-length v7, v6

    .line 32
    if-ge v5, v7, :cond_1

    .line 34
    aget-object v6, v6, v5

    .line 36
    iget v7, v6, Landroid/hardware/power/stats/State;->id:I

    .line 38
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v7

    .line 42
    iget-object v6, v6, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    .line 44
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    .line 52
    iget v6, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v6

    .line 58
    iget-object v7, v3, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    .line 60
    check-cast v5, Ljava/util/HashMap;

    .line 62
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    .line 67
    iget v3, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v3

    .line 73
    check-cast v5, Ljava/util/HashMap;

    .line 75
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return-void
.end method

.method public final registerBatteryStatsCallback(Lcom/android/internal/app/IBatteryStatsCallback;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->registerBatteryStatsCallback_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryStatsCallbacks:Landroid/os/RemoteCallbackList;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 15
    move-result p0

    .line 16
    monitor-exit v0

    .line 17
    return p0

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

.method public final registerDeviceBatteryInfoChanged(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "BatteryStatsService"

    .line 3
    const-string/jumbo v1, "registerDeviceBatteryInfoChanged package: "

    .line 6
    invoke-static {v1, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 11
    const-string/jumbo v0, "registerDeviceBatteryInfoChanged() : "

    .line 14
    const-string/jumbo v1, "mRegisteredPackage size :"

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->requirePermissions()V

    .line 20
    if-eqz p1, :cond_3

    .line 22
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackageLock:Ljava/lang/Object;

    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    const-string v3, "DeviceBatteryInfoService"

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    .line 34
    check-cast v1, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v1

    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    .line 52
    check-cast v1, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 57
    move-result v1

    .line 58
    const/4 v3, 0x1

    .line 59
    if-nez v1, :cond_0

    .line 61
    move v1, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 64
    :goto_0
    const-string v4, "DeviceBatteryInfoService"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    .line 75
    check-cast v0, Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    .line 85
    check-cast v0, Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 97
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/battery/WatchBatteryManager;->notifyPackageRegistered(Z)V

    .line 100
    :cond_2
    monitor-exit v2

    .line 101
    return-void

    .line 102
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p0

    .line 104
    :cond_3
    const-string p0, "DeviceBatteryInfoService"

    .line 106
    const-string/jumbo p1, "registerDeviceBatteryInfoChanged : packageName is null"

    .line 109
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 114
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 117
    throw p0
.end method

.method public final removeIsolatedUid(II)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 3
    const-string v0, "Attempt to remove an isolated UID "

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 12
    move-result v1

    .line 13
    if-eq v1, p2, :cond_0

    .line 15
    const-string v3, "PowerStatsUidResolver"

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, " with the parent UID "

    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string p2, ". The registered parent UID is "

    .line 35
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    invoke-static {v3, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    monitor-exit p0

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    .line 55
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 58
    move-result v0

    .line 59
    add-int/lit8 v0, v0, -0x1

    .line 61
    :goto_0
    if-ltz v0, :cond_1

    .line 63
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;

    .line 69
    invoke-interface {v1, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;->onBeforeIsolatedUidRemoved(I)V

    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->releaseIsolatedUid(I)V

    .line 78
    :goto_1
    const/16 p0, 0x2b

    .line 80
    const/4 p2, 0x0

    .line 81
    invoke-static {p0, v2, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 84
    return-void

    .line 85
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw p1
.end method

.method public final removeUid(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v4

    .line 8
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, v8

    .line 14
    move-object v2, p0

    .line 15
    move v3, p1

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/am/BatteryStatsService;IJI)V

    .line 19
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final resetBattery(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->resetBattery_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/BatteryManagerInternal;->resetBattery(Z)V

    .line 9
    return-void
.end method

.method public final scheduleWriteToDisk()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v2, p0, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final setBatteryLevel(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryLevel_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryManagerInternal;->setBatteryLevel(IZ)V

    .line 9
    return-void
.end method

.method public final setBatteryState(IIIIIIIIJIIIIZ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState_enforcePermission()V

    .line 6
    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v15

    .line 9
    :try_start_0
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    const/16 v18, 0x0

    .line 15
    move-object v1, v13

    .line 16
    move-object/from16 v2, p0

    .line 18
    move/from16 v3, p3

    .line 20
    move/from16 v4, p1

    .line 22
    move/from16 v5, p2

    .line 24
    move/from16 v6, p4

    .line 26
    move/from16 v7, p5

    .line 28
    move/from16 v8, p6

    .line 30
    move/from16 v9, p7

    .line 32
    move/from16 v10, p8

    .line 34
    move-wide/from16 v11, p9

    .line 36
    move-object v0, v13

    .line 37
    move/from16 v13, p11

    .line 39
    move-object/from16 v19, v14

    .line 41
    move/from16 v14, p12

    .line 43
    move-object/from16 v20, v15

    .line 45
    move/from16 v15, p13

    .line 47
    move/from16 v16, p14

    .line 49
    move/from16 v17, p15

    .line 51
    :try_start_1
    invoke-direct/range {v1 .. v18}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZI)V

    .line 54
    move-object/from16 v1, v19

    .line 56
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    monitor-exit v20

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    move-object/from16 v20, v15

    .line 66
    :goto_0
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw v0
.end method

.method public final setChargerAcOnline(ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargerAcOnline_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryManagerInternal;->setChargerAcOnline(ZZ)V

    .line 9
    return-void
.end method

.method public final setChargingStateUpdateDelayMillis(I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargingStateUpdateDelayMillis_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object p0

    .line 14
    const-string v2, "battery_charging_state_update_delay"

    .line 16
    int-to-long v3, p1

    .line 17
    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 20
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    throw p0
.end method

.method public final setDeviceBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .locals 4

    .line 1
    const-string v0, "BatteryStatsService"

    .line 3
    const-string/jumbo v1, "setDeviceBatteryInfo()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string v0, "DeviceBatteryInfoService"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 21
    const-string/jumbo v2, "com.samsung.android.permission.SEM_BATTERY_INFO_PROVIDER"

    .line 24
    const-string v3, "Permission Require"

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->containsBatteryInfo(Ljava/lang/String;)Z

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 40
    move-result v1

    .line 41
    const-string v2, "addBatteryInfo / callingPid :"

    .line 43
    invoke-static {v1, v2, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;

    .line 50
    invoke-direct {v2, p0, p1, p2, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;I)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;

    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string p0, "address is null"

    .line 71
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 76
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 79
    throw p0
.end method

.method public final setTemperatureNCurrent(IIIII)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setTemperatureNCurrent_enforcePermission()V

    .line 5
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v12

    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v8

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v10

    .line 16
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda115;

    .line 20
    move-object v1, v14

    .line 21
    move-object v2, p0

    .line 22
    move/from16 v3, p1

    .line 24
    move/from16 v4, p2

    .line 26
    move/from16 v5, p3

    .line 28
    move/from16 v6, p4

    .line 30
    move/from16 v7, p5

    .line 32
    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda115;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIJJ)V

    .line 35
    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    monitor-exit v12

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v0
.end method

.method public final shouldCollectExternalStats()Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-wide v3, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    .line 10
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sub-long/2addr v0, v3

    .line 12
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    .line 17
    move-result-wide v2

    .line 18
    cmp-long p0, v0, v2

    .line 20
    if-lez p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0
.end method

.method public final shutdown()V
    .locals 9

    .line 1
    const-string v0, "BatteryStats"

    .line 3
    const-string v1, "Writing battery stats before shutdown..."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 11
    const-string/jumbo v0, "shutdown"

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 22
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 24
    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 26
    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 29
    move-result-wide v3

    .line 30
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 32
    invoke-virtual {v5}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 35
    move-result-wide v5

    .line 36
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 38
    invoke-virtual {v7}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    .line 41
    move-result-wide v7

    .line 42
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordShutdownEvent(JJJ)V

    .line 45
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeSyncLocked()V

    .line 48
    const/4 v2, 0x1

    .line 49
    iput-boolean v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mShuttingDown:Z

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 54
    monitor-enter v0

    .line 55
    :try_start_1
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 57
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit v0

    .line 61
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/os/MonotonicClock;->write()V

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0

    .line 69
    throw p0

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    throw p0
.end method

.method public final suspendBatteryInput()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->suspendBatteryInput_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 6
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->suspendBatteryInput()V

    .line 9
    return-void
.end method

.method public final syncStats(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x7f

    .line 3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(ILjava/lang/String;)Ljava/util/concurrent/Future;

    .line 8
    move-result-object p0

    .line 9
    :catch_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_1
    return-void
.end method

.method public final takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 9
    const-string v1, "android.permission.BATTERY_STATS"

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 22
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 28
    const-string/jumbo v2, "get-health-stats-for-uids"

    .line 31
    invoke-virtual {p0, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 41
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    .line 45
    move-result-object p0

    .line 46
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    return-object p0

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :goto_1
    :try_start_4
    const-string v2, "BatteryStatsService"

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string v4, "Crashed while writing for takeUidSnapshot("

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string p1, ")"

    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    throw p0
.end method

.method public final takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    aget v4, p1, v3

    .line 12
    if-eq v4, v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 16
    const-string v1, "android.permission.BATTERY_STATS"

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    move-result-wide v0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 33
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 39
    const-string/jumbo v3, "get-health-stats-for-uids"

    .line 42
    invoke-virtual {p0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_6

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto :goto_5

    .line 50
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 52
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    array-length v4, p1

    .line 54
    new-array v5, v4, [Landroid/os/health/HealthStatsParceler;

    .line 56
    :goto_3
    if-ge v2, v4, :cond_3

    .line 58
    aget v6, p1, v2

    .line 60
    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    .line 63
    move-result-object v6

    .line 64
    aput-object v6, v5, v2

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_3

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    goto :goto_4

    .line 71
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    return-object v5

    .line 76
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :goto_5
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :goto_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    throw p0
.end method

.method public final takeUidSnapshotsAsync([ILandroid/os/ResultReceiver;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    aget v4, p1, v3

    .line 12
    if-eq v4, v0, :cond_0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v2, 0x1

    .line 19
    :goto_1
    const/4 v0, 0x0

    .line 20
    if-nez v2, :cond_2

    .line 22
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 24
    const-string v2, "android.permission.BATTERY_STATS"

    .line 26
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 35
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 37
    const-string/jumbo v1, "get-health-stats-for-uids"

    .line 40
    const/16 v2, 0x7f

    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(ILjava/lang/String;)Ljava/util/concurrent/Future;

    .line 45
    move-result-object v0

    .line 46
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;

    .line 50
    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/util/concurrent/Future;[ILandroid/os/ResultReceiver;)V

    .line 53
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method

.method public final unRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "BatteryStatsService"

    .line 3
    const-string/jumbo v1, "unRegisterDeviceBatteryInfoChanged package: "

    .line 6
    invoke-static {v1, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 11
    const-string/jumbo v0, "mRegisteredPackage size :"

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->requirePermissions()V

    .line 17
    if-eqz p1, :cond_2

    .line 19
    const-string v1, "DeviceBatteryInfoService"

    .line 21
    const-string/jumbo v2, "unRegisterDeviceBatteryInfoChanged() : "

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackageLock:Ljava/lang/Object;

    .line 33
    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    .line 36
    check-cast v2, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    .line 46
    check-cast v2, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    const-string p1, "DeviceBatteryInfoService"

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    .line 63
    check-cast v0, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v0

    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    .line 81
    check-cast p1, Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_1

    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 91
    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->notifyPackageRegistered(Z)V

    .line 95
    :cond_1
    monitor-exit v1

    .line 96
    return-void

    .line 97
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0

    .line 99
    :cond_2
    const-string p0, "DeviceBatteryInfoService"

    .line 101
    const-string/jumbo p1, "unRegisterDeviceBatteryInfoChanged : packageName is null"

    .line 104
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 109
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 112
    throw p0
.end method

.method public final unplugBattery(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->unplugBattery_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/BatteryManagerInternal;->unplugBattery(Z)V

    .line 9
    return-void
.end method

.method public final unregisterBatteryStatsCallback(Lcom/android/internal/app/IBatteryStatsCallback;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->unregisterBatteryStatsCallback_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryStatsCallbacks:Landroid/os/RemoteCallbackList;

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 14
    move-result p0

    .line 15
    monitor-exit v0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final unsetDeviceBatteryInfo(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "BatteryStatsService"

    .line 3
    const-string/jumbo v1, "removeDeviceBatteryInfo()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string/jumbo v0, "unsetDeviceBatteryInfo()"

    .line 17
    const-string v1, "DeviceBatteryInfoService"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 24
    const-string/jumbo v2, "com.samsung.android.permission.SEM_BATTERY_INFO_PROVIDER"

    .line 27
    const-string v3, "Permission Require"

    .line 29
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->containsBatteryInfo(Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 40
    const-string/jumbo p0, "device is not exist"

    .line 43
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;

    .line 55
    invoke-direct {v2, p0, v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;ILjava/lang/String;)V

    .line 58
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string p0, "address is null"

    .line 64
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 69
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 72
    throw p0
.end method

.method public final updateSemModemActivityInfo(Landroid/os/SemModemActivityInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->updateSemModemActivityInfo_enforcePermission()V

    .line 4
    if-nez p1, :cond_0

    .line 6
    const-string p0, "BatteryStatsService"

    .line 8
    const-string p1, "Invalid SemModemActivityInfo, Null"

    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 19
    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/Object;I)V

    .line 25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final updateSpeakerOutEnergyInfo(Landroid/os/SpeakerOutEnergyInfo;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->updateSpeakerOutEnergyInfo_enforcePermission()V

    .line 4
    if-nez p1, :cond_0

    .line 6
    const-string p0, "BatteryStatsService"

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v1, "invalid SpeakerOutEnergyInfo given: "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    move-result-wide v4

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 37
    move-result-wide v6

    .line 38
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;

    .line 42
    move-object v1, v9

    .line 43
    move-object v2, p0

    .line 44
    move-object v3, p1

    .line 45
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/SpeakerOutEnergyInfo;JJ)V

    .line 48
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method
