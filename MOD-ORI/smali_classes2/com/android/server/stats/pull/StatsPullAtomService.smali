.class public Lcom/android/server/stats/pull/StatsPullAtomService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

.field public static final NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

.field public static final RANDOM_SEED:I


# instance fields
.field public mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

.field public final mAppOpsLock:Ljava/lang/Object;

.field public mAppOpsSamplingRate:I

.field public final mAppSizeLock:Ljava/lang/Object;

.field public final mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

.field public final mAttributedAppOpsLock:Ljava/lang/Object;

.field public mBaseDir:Ljava/io/File;

.field public final mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

.field public final mBinderCallsStatsLock:Ljava/lang/Object;

.field public final mBluetoothActivityInfoLock:Ljava/lang/Object;

.field public final mBluetoothBytesTransferLock:Ljava/lang/Object;

.field public final mBuildInformationLock:Ljava/lang/Object;

.field public final mCategorySizeLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mCooldownDeviceLock:Ljava/lang/Object;

.field public final mCpuActiveTimeLock:Ljava/lang/Object;

.field public final mCpuClusterTimeLock:Ljava/lang/Object;

.field public final mCpuTimePerClusterFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerThreadFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerUidFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerUidLock:Ljava/lang/Object;

.field public mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

.field public mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

.field public mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

.field public mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

.field public final mDangerousAppOpsList:Landroid/util/ArraySet;

.field public final mDangerousPermissionStateLock:Ljava/lang/Object;

.field public final mDataBytesTransferLock:Ljava/lang/Object;

.field public final mDebugElapsedClockLock:Ljava/lang/Object;

.field public mDebugElapsedClockPreviousValue:J

.field public mDebugElapsedClockPullCount:J

.field public final mDebugFailingElapsedClockLock:Ljava/lang/Object;

.field public mDebugFailingElapsedClockPreviousValue:J

.field public mDebugFailingElapsedClockPullCount:J

.field public final mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

.field public final mDirectoryUsageLock:Ljava/lang/Object;

.field public final mDiskIoLock:Ljava/lang/Object;

.field public final mDiskStatsLock:Ljava/lang/Object;

.field public final mExternalStorageInfoLock:Ljava/lang/Object;

.field public final mFaceSettingsLock:Ljava/lang/Object;

.field public final mHealthHalLock:Ljava/lang/Object;

.field public mHealthService:Lcom/android/server/health/HealthServiceWrapper;

.field public final mHistoricalSubs:Ljava/util/ArrayList;

.field public mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

.field public final mInstalledIncrementalPackagesLock:Ljava/lang/Object;

.field public final mIonHeapSizeLock:Ljava/lang/Object;

.field public mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

.field public final mKernelWakelockLock:Ljava/lang/Object;

.field public mKernelWakelockReader:Lcom/android/server/power/stats/KernelWakelockReader;

.field public final mKeystoreLock:Ljava/lang/Object;

.field public final mLooperStatsLock:Ljava/lang/Object;

.field public final mModemActivityInfoLock:Ljava/lang/Object;

.field public final mNetworkStatsBaselines:Ljava/util/ArrayList;

.field public mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public mNotificationManagerService:Landroid/app/INotificationManager;

.field public final mNotificationRemoteViewsLock:Ljava/lang/Object;

.field public final mNotificationStatsLock:Ljava/lang/Object;

.field public final mNumBiometricsEnrolledLock:Ljava/lang/Object;

.field public final mPowerProfileLock:Ljava/lang/Object;

.field public final mProcStatsLock:Ljava/lang/Object;

.field public final mProcessCpuTimeLock:Ljava/lang/Object;

.field public mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public final mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

.field public final mProcessMemoryStateLock:Ljava/lang/Object;

.field public mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

.field public final mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

.field public final mRoleHolderLock:Ljava/lang/Object;

.field public final mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

.field public final mSettingsStatsLock:Ljava/lang/Object;

.field public mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

.field public mStatsManager:Landroid/app/StatsManager;

.field public mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

.field public mStorageManager:Landroid/os/storage/StorageManager;

.field public mStorageService:Landroid/os/IStoraged;

.field public final mStoragedLock:Ljava/lang/Object;

.field public mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

.field public final mSystemElapsedRealtimeLock:Ljava/lang/Object;

.field public final mSystemIonHeapSizeLock:Ljava/lang/Object;

.field public final mSystemUptimeLock:Ljava/lang/Object;

.field public mTelephony:Landroid/telephony/TelephonyManager;

.field public final mTemperatureLock:Ljava/lang/Object;

.field public final mThermalLock:Ljava/lang/Object;

.field public mThermalService:Landroid/os/IThermalService;

.field public final mTimeZoneDataInfoLock:Ljava/lang/Object;

.field public final mTimeZoneDetectionInfoLock:Ljava/lang/Object;

.field public mTmpWakelockStats:Lcom/android/server/power/stats/KernelWakelockStats;

.field public final mUwbActivityInfoLock:Ljava/lang/Object;

.field public mUwbManager:Landroid/uwb/UwbManager;

.field public final mWifiActivityInfoLock:Ljava/lang/Object;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static $r8$lambda$qb74jErDmbpYjoDRKkDDIHHyoHk(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x6

    .line 4
    const/4 v3, 0x4

    .line 5
    const/4 v4, 0x5

    .line 6
    const/4 v5, 0x3

    .line 7
    const/4 v6, 0x2

    .line 8
    const/4 v7, 0x1

    .line 9
    const/16 v8, 0x9

    .line 10
    .line 11
    const/16 v9, 0x8

    .line 12
    .line 13
    const/4 v10, 0x7

    .line 14
    const-string v11, "StatsPullAtomService"

    .line 15
    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializeNativePullers()V

    .line 17
    .line 18
    .line 19
    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string/jumbo v13, "stats"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v12

    .line 28
    check-cast v12, Landroid/app/StatsManager;

    .line 29
    .line 30
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 31
    .line 32
    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-string/jumbo v13, "wifi"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v12

    .line 41
    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 42
    .line 43
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 44
    .line 45
    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-string/jumbo v13, "phone"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 55
    .line 56
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 57
    .line 58
    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-string/jumbo v13, "telephony_subscription_service"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    check-cast v12, Landroid/telephony/SubscriptionManager;

    .line 68
    .line 69
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 70
    .line 71
    new-instance v12, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 72
    .line 73
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 74
    .line 75
    invoke-direct {v12, v0, v13}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/telephony/SubscriptionManager;)V

    .line 76
    .line 77
    .line 78
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 79
    .line 80
    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    const-class v13, Landroid/os/storage/StorageManager;

    .line 83
    .line 84
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    check-cast v12, Landroid/os/storage/StorageManager;

    .line 89
    .line 90
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 91
    .line 92
    new-instance v12, Lcom/android/internal/os/StoragedUidIoStatsReader;

    .line 93
    .line 94
    invoke-direct {v12}, Lcom/android/internal/os/StoragedUidIoStatsReader;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    .line 98
    .line 99
    new-instance v12, Ljava/io/File;

    .line 100
    .line 101
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    const-string/jumbo v14, "stats_pull"

    .line 106
    .line 107
    .line 108
    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 112
    .line 113
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 114
    .line 115
    .line 116
    new-instance v12, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    .line 117
    .line 118
    const/4 v13, 0x0

    .line 119
    invoke-direct {v12, v13}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(Z)V

    .line 120
    .line 121
    .line 122
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    .line 123
    .line 124
    new-instance v12, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 125
    .line 126
    invoke-direct {v12, v13}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Z)V

    .line 127
    .line 128
    .line 129
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 130
    .line 131
    new-instance v12, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    .line 132
    .line 133
    invoke-direct {v12, v13}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;-><init>(Z)V

    .line 134
    .line 135
    .line 136
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    .line 137
    .line 138
    new-instance v12, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    .line 139
    .line 140
    invoke-direct {v12, v13}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(Z)V

    .line 141
    .line 142
    .line 143
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    .line 144
    .line 145
    new-instance v12, Lcom/android/server/power/stats/KernelWakelockReader;

    .line 146
    .line 147
    invoke-direct {v12}, Lcom/android/server/power/stats/KernelWakelockReader;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/server/power/stats/KernelWakelockReader;

    .line 151
    .line 152
    new-instance v12, Lcom/android/server/power/stats/KernelWakelockStats;

    .line 153
    .line 154
    invoke-direct {v12}, Lcom/android/server/power/stats/KernelWakelockStats;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/server/power/stats/KernelWakelockStats;

    .line 158
    .line 159
    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    invoke-static {v12}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    iput-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    .line 166
    .line 167
    const/4 v12, 0x0

    .line 168
    :try_start_0
    invoke-static {v12}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;)Lcom/android/server/health/HealthServiceWrapper;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    iput-object v14, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :catch_0
    const-string v14, "failed to initialize healthHalWrapper"

    .line 176
    .line 177
    invoke-static {v11, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    :goto_0
    iget-object v14, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    move v15, v13

    .line 187
    :goto_1
    const/16 v1, 0x95

    .line 188
    .line 189
    if-ge v15, v1, :cond_2

    .line 190
    .line 191
    invoke-static {v15}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-nez v1, :cond_0

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_0
    :try_start_1
    invoke-virtual {v14, v1, v13}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-ne v1, v7, :cond_1

    .line 207
    .line 208
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    .line 209
    .line 210
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    invoke-virtual {v1, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    .line 216
    .line 217
    :catch_1
    :cond_1
    :goto_2
    add-int/2addr v15, v7

    .line 218
    const/4 v13, 0x0

    .line 219
    goto :goto_1

    .line 220
    :cond_2
    new-instance v1, Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    .line 221
    .line 222
    const-string v13, "/system/bin/surfaceflinger"

    .line 223
    .line 224
    invoke-direct {v1, v13}, Lcom/android/internal/os/SelectedProcessCpuThreadReader;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iput-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    .line 228
    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    .line 230
    .line 231
    .line 232
    const-string v1, "Registering pullers with statsd"

    .line 233
    .line 234
    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 238
    .line 239
    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    .line 240
    .line 241
    .line 242
    iput-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 243
    .line 244
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 245
    .line 246
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 247
    .line 248
    .line 249
    filled-new-array {v6, v5}, [I

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    invoke-virtual {v1, v13}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 262
    .line 263
    sget-object v14, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 264
    .line 265
    iget-object v15, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 266
    .line 267
    const/16 v7, 0x2716

    .line 268
    .line 269
    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 273
    .line 274
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 275
    .line 276
    const/16 v13, 0x2714

    .line 277
    .line 278
    invoke-virtual {v1, v13, v12, v14, v7}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 279
    .line 280
    .line 281
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_3

    .line 286
    .line 287
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 288
    .line 289
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 290
    .line 291
    .line 292
    filled-new-array {v5}, [I

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    invoke-virtual {v1, v7}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 305
    .line 306
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 307
    .line 308
    const/16 v15, 0x276f

    .line 309
    .line 310
    invoke-virtual {v7, v15, v1, v14, v13}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 311
    .line 312
    .line 313
    :cond_3
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 314
    .line 315
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 316
    .line 317
    .line 318
    filled-new-array {v6, v5}, [I

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    invoke-virtual {v1, v7}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 331
    .line 332
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 333
    .line 334
    const/16 v15, 0x2719

    .line 335
    .line 336
    invoke-virtual {v7, v15, v1, v14, v13}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 337
    .line 338
    .line 339
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-nez v1, :cond_4

    .line 344
    .line 345
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-lez v1, :cond_5

    .line 350
    .line 351
    :cond_4
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 352
    .line 353
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 354
    .line 355
    .line 356
    filled-new-array {v5, v3, v4}, [I

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    invoke-virtual {v1, v7}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 369
    .line 370
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 371
    .line 372
    const/16 v15, 0x2770

    .line 373
    .line 374
    invoke-virtual {v7, v15, v1, v14, v13}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 375
    .line 376
    .line 377
    :cond_5
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 378
    .line 379
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 380
    .line 381
    .line 382
    filled-new-array {v5}, [I

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    invoke-virtual {v1, v7}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 395
    .line 396
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 397
    .line 398
    const/16 v15, 0x271a

    .line 399
    .line 400
    invoke-virtual {v7, v15, v1, v14, v13}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 401
    .line 402
    .line 403
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_6

    .line 408
    .line 409
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->disableSystemServicePowerAttr()Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-nez v1, :cond_6

    .line 414
    .line 415
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 416
    .line 417
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 418
    .line 419
    .line 420
    filled-new-array {v5, v3}, [I

    .line 421
    .line 422
    .line 423
    move-result-object v7

    .line 424
    invoke-virtual {v1, v7}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 433
    .line 434
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 435
    .line 436
    const/16 v15, 0x2772

    .line 437
    .line 438
    invoke-virtual {v7, v15, v1, v14, v13}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 439
    .line 440
    .line 441
    :cond_6
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 442
    .line 443
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 444
    .line 445
    .line 446
    filled-new-array {v6}, [I

    .line 447
    .line 448
    .line 449
    move-result-object v7

    .line 450
    invoke-virtual {v1, v7}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 459
    .line 460
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 461
    .line 462
    const/16 v15, 0x2720

    .line 463
    .line 464
    invoke-virtual {v7, v15, v1, v14, v13}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 465
    .line 466
    .line 467
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 468
    .line 469
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 470
    .line 471
    .line 472
    filled-new-array {v5}, [I

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    invoke-virtual {v1, v7}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 485
    .line 486
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 487
    .line 488
    const/16 v15, 0x2721

    .line 489
    .line 490
    invoke-virtual {v7, v15, v1, v14, v13}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 491
    .line 492
    .line 493
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 494
    .line 495
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 496
    .line 497
    const/16 v13, 0x271b

    .line 498
    .line 499
    invoke-virtual {v1, v13, v12, v14, v7}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 500
    .line 501
    .line 502
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 503
    .line 504
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 505
    .line 506
    const/16 v13, 0x271c

    .line 507
    .line 508
    invoke-virtual {v1, v13, v12, v14, v7}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 509
    .line 510
    .line 511
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 512
    .line 513
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 514
    .line 515
    const/16 v13, 0x2717

    .line 516
    .line 517
    invoke-virtual {v1, v13, v12, v14, v7}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 518
    .line 519
    .line 520
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 521
    .line 522
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 523
    .line 524
    .line 525
    const-wide/16 v5, 0x3e8

    .line 526
    .line 527
    invoke-virtual {v1, v5, v6}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    const-wide/16 v5, 0x1f4

    .line 532
    .line 533
    invoke-virtual {v1, v5, v6}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 542
    .line 543
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 544
    .line 545
    const/16 v15, 0x271e

    .line 546
    .line 547
    invoke-virtual {v5, v15, v1, v14, v6}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 548
    .line 549
    .line 550
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 551
    .line 552
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 553
    .line 554
    const/16 v6, 0x271f

    .line 555
    .line 556
    invoke-virtual {v1, v6, v12, v14, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 557
    .line 558
    .line 559
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 560
    .line 561
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 562
    .line 563
    .line 564
    filled-new-array {v3, v4, v2, v10, v9}, [I

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    invoke-virtual {v1, v5}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 577
    .line 578
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 579
    .line 580
    const/16 v15, 0x271d

    .line 581
    .line 582
    invoke-virtual {v5, v15, v1, v14, v6}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 583
    .line 584
    .line 585
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 586
    .line 587
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 588
    .line 589
    const/16 v6, 0x273a

    .line 590
    .line 591
    invoke-virtual {v1, v6, v12, v14, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 592
    .line 593
    .line 594
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 595
    .line 596
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 597
    .line 598
    const/16 v6, 0x2750

    .line 599
    .line 600
    invoke-virtual {v1, v6, v12, v14, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 601
    .line 602
    .line 603
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 604
    .line 605
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 606
    .line 607
    const/16 v6, 0x2748

    .line 608
    .line 609
    invoke-virtual {v1, v6, v12, v14, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 610
    .line 611
    .line 612
    const-string v1, "/sys/kernel/ion/total_heaps_kb"

    .line 613
    .line 614
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    if-nez v1, :cond_7

    .line 619
    .line 620
    goto :goto_3

    .line 621
    :cond_7
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 622
    .line 623
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 624
    .line 625
    const/16 v6, 0x2756

    .line 626
    .line 627
    invoke-virtual {v1, v6, v12, v14, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 628
    .line 629
    .line 630
    :goto_3
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 631
    .line 632
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 633
    .line 634
    const/16 v6, 0x274d

    .line 635
    .line 636
    invoke-virtual {v1, v6, v12, v14, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 637
    .line 638
    .line 639
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 640
    .line 641
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 642
    .line 643
    const/16 v6, 0x276c

    .line 644
    .line 645
    invoke-virtual {v1, v6, v12, v14, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 646
    .line 647
    .line 648
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 649
    .line 650
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 651
    .line 652
    const/16 v6, 0x2779

    .line 653
    .line 654
    invoke-virtual {v1, v6, v12, v14, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 655
    .line 656
    .line 657
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 658
    .line 659
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 660
    .line 661
    const/16 v6, 0x2785

    .line 662
    .line 663
    invoke-virtual {v1, v6, v12, v14, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 664
    .line 665
    .line 666
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 667
    .line 668
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 669
    .line 670
    const/16 v6, 0x2725

    .line 671
    .line 672
    invoke-virtual {v1, v6, v12, v14, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 673
    .line 674
    .line 675
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 676
    .line 677
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 678
    .line 679
    const/16 v6, 0x274b

    .line 680
    .line 681
    invoke-virtual {v1, v6, v12, v14, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 682
    .line 683
    .line 684
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 685
    .line 686
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 687
    .line 688
    .line 689
    const/16 v5, 0xc

    .line 690
    .line 691
    filled-new-array {v3, v4, v2, v9, v5}, [I

    .line 692
    .line 693
    .line 694
    move-result-object v5

    .line 695
    invoke-virtual {v1, v5}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 704
    .line 705
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 706
    .line 707
    const/16 v15, 0x2726

    .line 708
    .line 709
    invoke-virtual {v5, v15, v1, v14, v6}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 710
    .line 711
    .line 712
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 713
    .line 714
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 715
    .line 716
    const/16 v6, 0x2727

    .line 717
    .line 718
    invoke-virtual {v1, v6, v12, v14, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 719
    .line 720
    .line 721
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 722
    .line 723
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 724
    .line 725
    .line 726
    filled-new-array {v4, v2, v10, v9, v8}, [I

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 739
    .line 740
    iget-object v4, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 741
    .line 742
    const/16 v5, 0x2728

    .line 743
    .line 744
    invoke-virtual {v2, v5, v1, v14, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 745
    .line 746
    .line 747
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 748
    .line 749
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 750
    .line 751
    const/16 v4, 0x2729

    .line 752
    .line 753
    invoke-virtual {v1, v4, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 754
    .line 755
    .line 756
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 757
    .line 758
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 759
    .line 760
    const/16 v4, 0x272a

    .line 761
    .line 762
    invoke-virtual {v1, v4, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 763
    .line 764
    .line 765
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 766
    .line 767
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 768
    .line 769
    const/16 v4, 0x272b

    .line 770
    .line 771
    invoke-virtual {v1, v4, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 772
    .line 773
    .line 774
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 775
    .line 776
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 777
    .line 778
    const/16 v4, 0x272c

    .line 779
    .line 780
    invoke-virtual {v1, v4, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 781
    .line 782
    .line 783
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 784
    .line 785
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 786
    .line 787
    const/16 v4, 0x272f

    .line 788
    .line 789
    invoke-virtual {v1, v4, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 790
    .line 791
    .line 792
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 793
    .line 794
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 795
    .line 796
    const/16 v4, 0x2740

    .line 797
    .line 798
    invoke-virtual {v1, v4, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 799
    .line 800
    .line 801
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 802
    .line 803
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 804
    .line 805
    const/16 v4, 0x272d

    .line 806
    .line 807
    invoke-virtual {v1, v4, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 808
    .line 809
    .line 810
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 811
    .line 812
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 813
    .line 814
    const/16 v4, 0x2732

    .line 815
    .line 816
    invoke-virtual {v1, v4, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 817
    .line 818
    .line 819
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 820
    .line 821
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 822
    .line 823
    const/16 v4, 0x27bb

    .line 824
    .line 825
    invoke-virtual {v1, v4, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 826
    .line 827
    .line 828
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 829
    .line 830
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 831
    .line 832
    const/16 v4, 0x27bc

    .line 833
    .line 834
    invoke-virtual {v1, v4, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 835
    .line 836
    .line 837
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 838
    .line 839
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 840
    .line 841
    .line 842
    const/16 v2, 0xa

    .line 843
    .line 844
    new-array v2, v2, [I

    .line 845
    .line 846
    fill-array-data v2, :array_0

    .line 847
    .line 848
    .line 849
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    const-wide/16 v4, 0xbb8

    .line 854
    .line 855
    invoke-virtual {v1, v4, v5}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 864
    .line 865
    iget-object v4, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 866
    .line 867
    const/16 v5, 0x2730

    .line 868
    .line 869
    invoke-virtual {v2, v5, v1, v14, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 870
    .line 871
    .line 872
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 873
    .line 874
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 875
    .line 876
    const/16 v4, 0x2731

    .line 877
    .line 878
    invoke-virtual {v1, v4, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 879
    .line 880
    .line 881
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 882
    .line 883
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 884
    .line 885
    .line 886
    const-wide/16 v4, 0x1388

    .line 887
    .line 888
    invoke-virtual {v1, v4, v5}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 889
    .line 890
    .line 891
    move-result-object v1

    .line 892
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 897
    .line 898
    iget-object v4, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 899
    .line 900
    const/16 v5, 0x2733

    .line 901
    .line 902
    invoke-virtual {v2, v5, v1, v14, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 903
    .line 904
    .line 905
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 906
    .line 907
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 908
    .line 909
    .line 910
    new-array v2, v9, [I

    .line 911
    .line 912
    fill-array-data v2, :array_1

    .line 913
    .line 914
    .line 915
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 924
    .line 925
    iget-object v4, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 926
    .line 927
    const/16 v5, 0x2735

    .line 928
    .line 929
    invoke-virtual {v2, v5, v1, v14, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 930
    .line 931
    .line 932
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 933
    .line 934
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 935
    .line 936
    const/16 v4, 0x2737

    .line 937
    .line 938
    invoke-virtual {v1, v4, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 939
    .line 940
    .line 941
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 942
    .line 943
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 944
    .line 945
    .line 946
    const/4 v2, 0x1

    .line 947
    const/4 v4, 0x2

    .line 948
    const/4 v5, 0x3

    .line 949
    filled-new-array {v2, v4, v5, v3}, [I

    .line 950
    .line 951
    .line 952
    move-result-object v6

    .line 953
    invoke-virtual {v1, v6}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 962
    .line 963
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 964
    .line 965
    const/16 v8, 0x273e

    .line 966
    .line 967
    invoke-virtual {v6, v8, v1, v14, v7}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 968
    .line 969
    .line 970
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 971
    .line 972
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 973
    .line 974
    .line 975
    filled-new-array {v2, v4, v5, v3}, [I

    .line 976
    .line 977
    .line 978
    move-result-object v2

    .line 979
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 980
    .line 981
    .line 982
    move-result-object v1

    .line 983
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 988
    .line 989
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 990
    .line 991
    const/16 v4, 0x273f

    .line 992
    .line 993
    invoke-virtual {v2, v4, v1, v14, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 994
    .line 995
    .line 996
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 997
    .line 998
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 999
    .line 1000
    const/16 v3, 0x273c

    .line 1001
    .line 1002
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1003
    .line 1004
    .line 1005
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1006
    .line 1007
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1008
    .line 1009
    const/16 v3, 0x2741

    .line 1010
    .line 1011
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1012
    .line 1013
    .line 1014
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1015
    .line 1016
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1017
    .line 1018
    const/16 v3, 0x2744

    .line 1019
    .line 1020
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1021
    .line 1022
    .line 1023
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1024
    .line 1025
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1026
    .line 1027
    const/16 v3, 0x2776

    .line 1028
    .line 1029
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1030
    .line 1031
    .line 1032
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1033
    .line 1034
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1035
    .line 1036
    const/16 v3, 0x2745

    .line 1037
    .line 1038
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1039
    .line 1040
    .line 1041
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1042
    .line 1043
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1044
    .line 1045
    const/16 v3, 0x2749

    .line 1046
    .line 1047
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1048
    .line 1049
    .line 1050
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1051
    .line 1052
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1053
    .line 1054
    const/16 v3, 0x274a

    .line 1055
    .line 1056
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1057
    .line 1058
    .line 1059
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1060
    .line 1061
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1062
    .line 1063
    const/16 v3, 0x274c

    .line 1064
    .line 1065
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1066
    .line 1067
    .line 1068
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1069
    .line 1070
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1071
    .line 1072
    const/16 v3, 0x275b

    .line 1073
    .line 1074
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1075
    .line 1076
    .line 1077
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1078
    .line 1079
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1080
    .line 1081
    const/16 v3, 0x2755

    .line 1082
    .line 1083
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1084
    .line 1085
    .line 1086
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1087
    .line 1088
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1089
    .line 1090
    const/16 v3, 0x2752

    .line 1091
    .line 1092
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1093
    .line 1094
    .line 1095
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1096
    .line 1097
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1098
    .line 1099
    const/16 v3, 0x2742

    .line 1100
    .line 1101
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1102
    .line 1103
    .line 1104
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1105
    .line 1106
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1107
    .line 1108
    const/16 v3, 0x2753

    .line 1109
    .line 1110
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1111
    .line 1112
    .line 1113
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1114
    .line 1115
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1116
    .line 1117
    const/16 v3, 0x273b

    .line 1118
    .line 1119
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1120
    .line 1121
    .line 1122
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1123
    .line 1124
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1125
    .line 1126
    const/16 v3, 0x2723

    .line 1127
    .line 1128
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1129
    .line 1130
    .line 1131
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1132
    .line 1133
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1134
    .line 1135
    const/16 v3, 0x2724

    .line 1136
    .line 1137
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1138
    .line 1139
    .line 1140
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1141
    .line 1142
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1143
    .line 1144
    const/16 v3, 0x272e

    .line 1145
    .line 1146
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1147
    .line 1148
    .line 1149
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1150
    .line 1151
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1152
    .line 1153
    const/16 v3, 0x273d

    .line 1154
    .line 1155
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1156
    .line 1157
    .line 1158
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1159
    .line 1160
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1161
    .line 1162
    const/16 v3, 0x2760

    .line 1163
    .line 1164
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1165
    .line 1166
    .line 1167
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1168
    .line 1169
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1170
    .line 1171
    const/16 v3, 0x2782

    .line 1172
    .line 1173
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1174
    .line 1175
    .line 1176
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1177
    .line 1178
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1179
    .line 1180
    const/16 v3, 0x2777

    .line 1181
    .line 1182
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1183
    .line 1184
    .line 1185
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1186
    .line 1187
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1188
    .line 1189
    const/16 v3, 0x2786

    .line 1190
    .line 1191
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1192
    .line 1193
    .line 1194
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1195
    .line 1196
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1197
    .line 1198
    const/16 v3, 0x2787

    .line 1199
    .line 1200
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1204
    .line 1205
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1206
    .line 1207
    const/16 v3, 0x2788

    .line 1208
    .line 1209
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1210
    .line 1211
    .line 1212
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1213
    .line 1214
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1215
    .line 1216
    const/16 v3, 0x2789

    .line 1217
    .line 1218
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1219
    .line 1220
    .line 1221
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1222
    .line 1223
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1224
    .line 1225
    const/16 v3, 0x278a

    .line 1226
    .line 1227
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1228
    .line 1229
    .line 1230
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1231
    .line 1232
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1233
    .line 1234
    const/16 v3, 0x278b

    .line 1235
    .line 1236
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1237
    .line 1238
    .line 1239
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1240
    .line 1241
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1242
    .line 1243
    const/16 v3, 0x278c

    .line 1244
    .line 1245
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1246
    .line 1247
    .line 1248
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1249
    .line 1250
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1251
    .line 1252
    const/16 v3, 0x278d

    .line 1253
    .line 1254
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1255
    .line 1256
    .line 1257
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1258
    .line 1259
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1260
    .line 1261
    const/16 v3, 0x278f

    .line 1262
    .line 1263
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1264
    .line 1265
    .line 1266
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1267
    .line 1268
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1269
    .line 1270
    const/16 v3, 0x2790

    .line 1271
    .line 1272
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1273
    .line 1274
    .line 1275
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1276
    .line 1277
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1278
    .line 1279
    const/16 v3, 0x2792

    .line 1280
    .line 1281
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1282
    .line 1283
    .line 1284
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1285
    .line 1286
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1287
    .line 1288
    const/16 v3, 0x27a7

    .line 1289
    .line 1290
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1291
    .line 1292
    .line 1293
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1294
    .line 1295
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1296
    .line 1297
    const/16 v3, 0x27a6

    .line 1298
    .line 1299
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1300
    .line 1301
    .line 1302
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1303
    .line 1304
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1305
    .line 1306
    const/16 v3, 0x27bf

    .line 1307
    .line 1308
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1309
    .line 1310
    .line 1311
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1312
    .line 1313
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1314
    .line 1315
    const/16 v3, 0x27cd

    .line 1316
    .line 1317
    invoke-virtual {v1, v3, v12, v14, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1318
    .line 1319
    .line 1320
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 1321
    .line 1322
    const-string v2, "connectivity"

    .line 1323
    .line 1324
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v1

    .line 1328
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1329
    .line 1330
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    .line 1331
    .line 1332
    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v2

    .line 1339
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;

    .line 1340
    .line 1341
    invoke-direct {v3}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v0

    .line 1351
    if-eqz v0, :cond_8

    .line 1352
    .line 1353
    :try_start_2
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;

    .line 1354
    .line 1355
    invoke-direct {v1}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 1356
    .line 1357
    .line 1358
    invoke-interface {v0, v1}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 1359
    .line 1360
    .line 1361
    const-string/jumbo v0, "register thermal listener successfully"

    .line 1362
    .line 1363
    .line 1364
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1365
    .line 1366
    .line 1367
    goto :goto_4

    .line 1368
    :catch_2
    const-string v0, "failed to register thermal listener"

    .line 1369
    .line 1370
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    .line 1372
    .line 1373
    :cond_8
    :goto_4
    return-void

    .line 1374
    nop

    .line 1375
    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    :array_1
    .array-data 4
        0x7
        0x9
        0xb
        0xd
        0xf
        0x11
        0x13
        0x15
    .end array-data
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessMemoryStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUwbActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbActivityInfoLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static -$$Nest$mestimateAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "permissions"

    .line 5
    .line 6
    .line 7
    const-string v1, "app_ops_target_collection_size"

    .line 8
    .line 9
    const/16 v2, 0x7d0

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-class v2, Landroid/app/AppOpsManager;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/app/AppOpsManager;

    .line 24
    .line 25
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v3, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 31
    .line 32
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-wide/16 v5, 0x1

    .line 37
    .line 38
    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 39
    .line 40
    invoke-virtual {v4, v5, v6, v7}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    const-wide/16 v6, 0x0

    .line 49
    .line 50
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    const-wide v8, 0x7fffffffffffffffL

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    invoke-direct {v3, v4, v5, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 60
    .line 61
    .line 62
    const/16 v4, 0x9

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 73
    .line 74
    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;

    .line 75
    .line 76
    const/4 v8, 0x1

    .line 77
    invoke-direct {v5, v8, v2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 81
    .line 82
    .line 83
    const-wide/16 v3, 0x7d0

    .line 84
    .line 85
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 86
    .line 87
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 92
    .line 93
    const/16 v2, 0x275b

    .line 94
    .line 95
    const/16 v3, 0x64

    .line 96
    .line 97
    invoke-static {v1, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const/4 v4, 0x0

    .line 108
    :goto_0
    if-ge v4, v2, :cond_1

    .line 109
    .line 110
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 115
    .line 116
    iget-object v8, v5, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    add-int/lit8 v8, v8, 0x20

    .line 123
    .line 124
    iget-object v5, v5, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    .line 125
    .line 126
    if-nez v5, :cond_0

    .line 127
    .line 128
    const/4 v5, 0x1

    .line 129
    goto :goto_1

    .line 130
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    :goto_1
    add-int/2addr v8, v5

    .line 135
    int-to-long v8, v8

    .line 136
    add-long/2addr v6, v8

    .line 137
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    mul-int/2addr v0, v3

    .line 141
    int-to-long v0, v0

    .line 142
    div-long v8, v0, v6

    .line 143
    .line 144
    const-wide/16 v10, 0x0

    .line 145
    .line 146
    const-wide/16 v12, 0x64

    .line 147
    .line 148
    invoke-static/range {v8 .. v13}, Landroid/util/MathUtils;->constrain(JJJ)J

    .line 149
    .line 150
    .line 151
    move-result-wide v0

    .line 152
    long-to-int v0, v0

    .line 153
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    .line 154
    .line 155
    monitor-enter v1

    .line 156
    :try_start_0
    iget v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 157
    .line 158
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iput v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 163
    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 166
    :catchall_0
    move-exception p0

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    throw p0
.end method

.method public static -$$Nest$mpullCachedAppsHighWatermark(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManagerInternal;->getCachedAppsHighWatermarkStats(IZ)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/util/StatsEvent;

    .line 18
    .line 19
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static -$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 35

    .line 1
    move/from16 v11, p1

    .line 2
    .line 3
    move-object/from16 v12, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v13

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 20
    .line 21
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v15, v0

    .line 26
    check-cast v15, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 27
    .line 28
    move-object/from16 v9, p0

    .line 29
    .line 30
    iget-object v0, v9, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v1, v2, v15}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 43
    .line 44
    const/4 v10, 0x1

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    const-string v0, "baseline is null for "

    .line 48
    .line 49
    const-string v1, ", return."

    .line 50
    .line 51
    const-string v2, "StatsPullAtomService"

    .line 52
    .line 53
    invoke-static {v11, v0, v1, v2}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move v14, v10

    .line 57
    goto/16 :goto_12

    .line 58
    .line 59
    :cond_1
    iget-object v1, v15, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Landroid/net/NetworkStats;

    .line 68
    .line 69
    const-wide/16 v2, 0x0

    .line 70
    .line 71
    invoke-direct {v1, v2, v3, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_4

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Landroid/net/NetworkStats$Entry;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    cmp-long v5, v5, v2

    .line 95
    .line 96
    if-nez v5, :cond_3

    .line 97
    .line 98
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    cmp-long v5, v5, v2

    .line 103
    .line 104
    if-nez v5, :cond_3

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    .line 107
    .line 108
    .line 109
    move-result-wide v5

    .line 110
    cmp-long v5, v5, v2

    .line 111
    .line 112
    if-nez v5, :cond_3

    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 115
    .line 116
    .line 117
    move-result-wide v5

    .line 118
    cmp-long v5, v5, v2

    .line 119
    .line 120
    if-nez v5, :cond_3

    .line 121
    .line 122
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getOperations()J

    .line 123
    .line 124
    .line 125
    move-result-wide v5

    .line 126
    cmp-long v5, v5, v2

    .line 127
    .line 128
    if-eqz v5, :cond_2

    .line 129
    .line 130
    :cond_3
    invoke-virtual {v1, v4}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    iget-object v0, v15, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    .line 136
    .line 137
    array-length v2, v0

    .line 138
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_5

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_5
    const/16 v2, 0x2762

    .line 158
    .line 159
    const/16 v3, 0xd

    .line 160
    .line 161
    const/4 v4, -0x2

    .line 162
    iget v5, v15, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    .line 163
    .line 164
    if-eq v11, v2, :cond_f

    .line 165
    .line 166
    const/16 v2, 0x2763

    .line 167
    .line 168
    if-eq v11, v2, :cond_b

    .line 169
    .line 170
    const/16 v2, 0x2774

    .line 171
    .line 172
    if-eq v11, v2, :cond_8

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v16

    .line 178
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    .line 184
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 189
    .line 190
    iget-boolean v1, v15, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    .line 191
    .line 192
    if-eqz v1, :cond_7

    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getUid()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getSet()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-lez v2, :cond_6

    .line 203
    .line 204
    move v2, v10

    .line 205
    goto :goto_3

    .line 206
    :cond_6
    const/4 v2, 0x0

    .line 207
    :goto_3
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    .line 208
    .line 209
    .line 210
    move-result-wide v3

    .line 211
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    .line 216
    .line 217
    .line 218
    move-result-wide v7

    .line 219
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 220
    .line 221
    .line 222
    move-result-wide v17

    .line 223
    move/from16 v0, p1

    .line 224
    .line 225
    move v14, v10

    .line 226
    move-wide/from16 v9, v17

    .line 227
    .line 228
    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZJJJJ)Landroid/util/StatsEvent;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    goto :goto_4

    .line 233
    :cond_7
    move v14, v10

    .line 234
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getUid()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    .line 239
    .line 240
    .line 241
    move-result-wide v2

    .line 242
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 243
    .line 244
    .line 245
    move-result-wide v4

    .line 246
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    .line 247
    .line 248
    .line 249
    move-result-wide v6

    .line 250
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 251
    .line 252
    .line 253
    move-result-wide v8

    .line 254
    move/from16 v0, p1

    .line 255
    .line 256
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJ)Landroid/util/StatsEvent;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    :goto_4
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-object/from16 v9, p0

    .line 264
    .line 265
    move v10, v14

    .line 266
    goto :goto_2

    .line 267
    :cond_8
    move v14, v10

    .line 268
    array-length v2, v0

    .line 269
    const/4 v3, 0x0

    .line 270
    :goto_5
    if-ge v3, v2, :cond_0

    .line 271
    .line 272
    aget v4, v0, v3

    .line 273
    .line 274
    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-eqz v6, :cond_a

    .line 283
    .line 284
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    check-cast v6, Landroid/net/NetworkStats$Entry;

    .line 289
    .line 290
    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->getUid()I

    .line 291
    .line 292
    .line 293
    move-result v20

    .line 294
    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->getSet()I

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    if-lez v7, :cond_9

    .line 299
    .line 300
    move/from16 v21, v14

    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_9
    const/16 v21, 0x0

    .line 304
    .line 305
    :goto_7
    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    .line 306
    .line 307
    .line 308
    move-result-wide v24

    .line 309
    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 310
    .line 311
    .line 312
    move-result-wide v26

    .line 313
    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    .line 314
    .line 315
    .line 316
    move-result-wide v28

    .line 317
    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 318
    .line 319
    .line 320
    move-result-wide v30

    .line 321
    const/16 v19, 0x2774

    .line 322
    .line 323
    iget v6, v15, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    .line 324
    .line 325
    move/from16 v22, v6

    .line 326
    .line 327
    move/from16 v23, v4

    .line 328
    .line 329
    invoke-static/range {v19 .. v31}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIIJJJJ)Landroid/util/StatsEvent;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_b
    move v14, v10

    .line 341
    if-ne v5, v4, :cond_c

    .line 342
    .line 343
    move v10, v14

    .line 344
    goto :goto_8

    .line 345
    :cond_c
    const/4 v10, 0x0

    .line 346
    :goto_8
    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_0

    .line 355
    .line 356
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    check-cast v1, Landroid/net/NetworkStats$Entry;

    .line 361
    .line 362
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getUid()I

    .line 363
    .line 364
    .line 365
    move-result v20

    .line 366
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getMetered()I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-ne v2, v14, :cond_d

    .line 371
    .line 372
    move/from16 v21, v14

    .line 373
    .line 374
    goto :goto_a

    .line 375
    :cond_d
    const/16 v21, 0x0

    .line 376
    .line 377
    :goto_a
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTag()I

    .line 378
    .line 379
    .line 380
    move-result v22

    .line 381
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    .line 382
    .line 383
    .line 384
    move-result-wide v23

    .line 385
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 386
    .line 387
    .line 388
    move-result-wide v25

    .line 389
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    .line 390
    .line 391
    .line 392
    move-result-wide v27

    .line 393
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 394
    .line 395
    .line 396
    move-result-wide v29

    .line 397
    if-eqz v10, :cond_e

    .line 398
    .line 399
    move/from16 v31, v3

    .line 400
    .line 401
    goto :goto_b

    .line 402
    :cond_e
    move/from16 v31, v5

    .line 403
    .line 404
    :goto_b
    const/16 v19, 0x2763

    .line 405
    .line 406
    invoke-static/range {v19 .. v31}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIJJJJI)Landroid/util/StatsEvent;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    goto :goto_9

    .line 414
    :cond_f
    move v14, v10

    .line 415
    if-ne v5, v4, :cond_10

    .line 416
    .line 417
    move v10, v14

    .line 418
    goto :goto_c

    .line 419
    :cond_10
    const/4 v10, 0x0

    .line 420
    :goto_c
    if-nez v10, :cond_12

    .line 421
    .line 422
    const/16 v0, 0x14

    .line 423
    .line 424
    if-ne v5, v0, :cond_11

    .line 425
    .line 426
    goto :goto_d

    .line 427
    :cond_11
    const/4 v14, 0x0

    .line 428
    :cond_12
    :goto_d
    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-eqz v1, :cond_0

    .line 437
    .line 438
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    check-cast v1, Landroid/net/NetworkStats$Entry;

    .line 443
    .line 444
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getSet()I

    .line 445
    .line 446
    .line 447
    move-result v20

    .line 448
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    .line 449
    .line 450
    .line 451
    move-result-wide v21

    .line 452
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    .line 453
    .line 454
    .line 455
    move-result-wide v23

    .line 456
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    .line 457
    .line 458
    .line 459
    move-result-wide v25

    .line 460
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    .line 461
    .line 462
    .line 463
    move-result-wide v27

    .line 464
    if-eqz v10, :cond_13

    .line 465
    .line 466
    move/from16 v29, v3

    .line 467
    .line 468
    goto :goto_f

    .line 469
    :cond_13
    move/from16 v29, v5

    .line 470
    .line 471
    :goto_f
    iget-object v1, v15, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 472
    .line 473
    iget-object v2, v1, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    .line 474
    .line 475
    iget-boolean v4, v1, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    .line 476
    .line 477
    if-eqz v4, :cond_14

    .line 478
    .line 479
    const/4 v4, 0x2

    .line 480
    :goto_10
    move/from16 v33, v4

    .line 481
    .line 482
    goto :goto_11

    .line 483
    :cond_14
    const/4 v4, 0x3

    .line 484
    goto :goto_10

    .line 485
    :goto_11
    iget-object v4, v1, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    .line 486
    .line 487
    iget v1, v1, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    .line 488
    .line 489
    const/16 v19, 0x2762

    .line 490
    .line 491
    move-object/from16 v30, v2

    .line 492
    .line 493
    move-object/from16 v31, v4

    .line 494
    .line 495
    move/from16 v32, v1

    .line 496
    .line 497
    move/from16 v34, v14

    .line 498
    .line 499
    invoke-static/range {v19 .. v34}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJILjava/lang/String;Ljava/lang/String;IIZ)Landroid/util/StatsEvent;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    goto :goto_e

    .line 507
    :cond_15
    const/4 v14, 0x0

    .line 508
    :goto_12
    return v14
.end method

.method public static -$$Nest$mpullHdrCapabilities(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x1

    .line 33
    if-ne v2, v4, :cond_0

    .line 34
    .line 35
    move v7, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v7, v0

    .line 38
    :goto_0
    const/4 v5, -0x1

    .line 39
    if-ne v3, v5, :cond_1

    .line 40
    .line 41
    move v8, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v8, v3

    .line 44
    :goto_1
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    .line 58
    .line 59
    const/4 v9, 0x4

    .line 60
    invoke-direct {v6, v9}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;

    .line 68
    .line 69
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    invoke-direct {v6, v9, v3}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_2

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-virtual {v1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    array-length v1, v1

    .line 100
    if-ge v3, v1, :cond_2

    .line 101
    .line 102
    move v9, v4

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move v9, v0

    .line 105
    :goto_2
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getSupportedHdrOutputTypes()[I

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    move v10, v4

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    move v10, v0

    .line 118
    :goto_3
    move v5, p1

    .line 119
    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BZIZZ)Landroid/util/StatsEvent;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public static -$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.hardware.fingerprint"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    const-string v3, "android.hardware.biometrics.face"

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const-class v2, Landroid/hardware/face/FaceManager;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-object v2, v0

    .line 45
    check-cast v2, Landroid/hardware/face/FaceManager;

    .line 46
    .line 47
    :cond_1
    const/4 v0, 0x1

    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    const/4 v3, 0x4

    .line 54
    if-ne p1, v3, :cond_3

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    const-class v4, Landroid/os/UserManager;

    .line 62
    .line 63
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Landroid/os/UserManager;

    .line 68
    .line 69
    if-nez p0, :cond_4

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_7

    .line 89
    .line 90
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 95
    .line 96
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-ne p1, v0, :cond_5

    .line 105
    .line 106
    invoke-virtual {v1, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    goto :goto_2

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    goto :goto_4

    .line 117
    :cond_5
    if-ne p1, v3, :cond_6

    .line 118
    .line 119
    invoke-virtual {v2, v6}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    :goto_2
    invoke-static {p2, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    :goto_3
    return v0

    .line 144
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    .line 146
    .line 147
    throw p0
.end method

.method public static -$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getPendingIntentStats()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/app/PendingIntentStats;

    .line 31
    .line 32
    iget v1, v0, Landroid/app/PendingIntentStats;->uid:I

    .line 33
    .line 34
    iget v2, v0, Landroid/app/PendingIntentStats;->count:I

    .line 35
    .line 36
    iget v0, v0, Landroid/app/PendingIntentStats;->sizeKb:I

    .line 37
    .line 38
    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public static -$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getStatsFromProcessStatsService(I)Lcom/android/internal/app/procstats/ProcessStats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_2

    .line 9
    :cond_0
    const/4 v0, 0x5

    .line 10
    new-array v1, v0, [Landroid/util/proto/ProtoOutputStream;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v0, :cond_1

    .line 15
    .line 16
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    .line 17
    .line 18
    invoke-direct {v4}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 19
    .line 20
    .line 21
    aput-object v4, v1, v3

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-wide/32 v3, 0xe666

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    .line 30
    .line 31
    .line 32
    move p0, v2

    .line 33
    :goto_1
    if-ge p0, v0, :cond_3

    .line 34
    .line 35
    aget-object v3, v1, p0

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    array-length v4, v3

    .line 42
    if-lez v4, :cond_2

    .line 43
    .line 44
    invoke-static {p1, v3, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BI)Landroid/util/StatsEvent;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move p0, v2

    .line 55
    :goto_2
    return p0
.end method

.method public static -$$Nest$mpullProcessAssociationLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getStatsFromProcessStatsService(I)Lcom/android/internal/app/procstats/ProcessStats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/StatsEventOutput;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Lcom/android/internal/app/procstats/StatsEventOutput;-><init>(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProcessAssociation(ILcom/android/internal/app/procstats/StatsEventOutput;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public static -$$Nest$mpullProcessStateLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getStatsFromProcessStatsService(I)Lcom/android/internal/app/procstats/ProcessStats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/StatsEventOutput;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Lcom/android/internal/app/procstats/StatsEventOutput;-><init>(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProcessState(ILcom/android/internal/app/procstats/StatsEventOutput;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 11
    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    const-wide/16 v1, 0x2

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sput-wide v0, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/stats/Flags;->addMobileBytesTransferByProcStatePuller()Z

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 40
    .line 41
    new-instance v1, Landroid/util/ArraySet;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    .line 47
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/Object;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/Object;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/Object;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/Object;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    .line 91
    .line 92
    new-instance v0, Ljava/lang/Object;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    .line 98
    .line 99
    new-instance v0, Ljava/lang/Object;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    .line 105
    .line 106
    new-instance v0, Ljava/lang/Object;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    .line 112
    .line 113
    new-instance v0, Ljava/lang/Object;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    .line 119
    .line 120
    new-instance v0, Ljava/lang/Object;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    .line 126
    .line 127
    new-instance v0, Ljava/lang/Object;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    .line 133
    .line 134
    new-instance v0, Ljava/lang/Object;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    .line 140
    .line 141
    new-instance v0, Ljava/lang/Object;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbActivityInfoLock:Ljava/lang/Object;

    .line 147
    .line 148
    new-instance v0, Ljava/lang/Object;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    .line 154
    .line 155
    new-instance v0, Ljava/lang/Object;

    .line 156
    .line 157
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    .line 161
    .line 162
    new-instance v0, Ljava/lang/Object;

    .line 163
    .line 164
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    .line 168
    .line 169
    new-instance v0, Ljava/lang/Object;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    .line 175
    .line 176
    new-instance v0, Ljava/lang/Object;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 182
    .line 183
    new-instance v0, Ljava/lang/Object;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 186
    .line 187
    .line 188
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    .line 189
    .line 190
    new-instance v0, Ljava/lang/Object;

    .line 191
    .line 192
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 196
    .line 197
    new-instance v0, Ljava/lang/Object;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 200
    .line 201
    .line 202
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    .line 203
    .line 204
    new-instance v0, Ljava/lang/Object;

    .line 205
    .line 206
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 207
    .line 208
    .line 209
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    .line 210
    .line 211
    new-instance v0, Ljava/lang/Object;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 214
    .line 215
    .line 216
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    .line 217
    .line 218
    new-instance v0, Ljava/lang/Object;

    .line 219
    .line 220
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 221
    .line 222
    .line 223
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    .line 224
    .line 225
    new-instance v0, Ljava/lang/Object;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 228
    .line 229
    .line 230
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    .line 231
    .line 232
    new-instance v0, Ljava/lang/Object;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 235
    .line 236
    .line 237
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    .line 238
    .line 239
    new-instance v0, Ljava/lang/Object;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 242
    .line 243
    .line 244
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    .line 245
    .line 246
    new-instance v0, Ljava/lang/Object;

    .line 247
    .line 248
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 249
    .line 250
    .line 251
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    .line 252
    .line 253
    new-instance v0, Ljava/lang/Object;

    .line 254
    .line 255
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 256
    .line 257
    .line 258
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    .line 259
    .line 260
    new-instance v0, Ljava/lang/Object;

    .line 261
    .line 262
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 263
    .line 264
    .line 265
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    .line 266
    .line 267
    new-instance v0, Ljava/lang/Object;

    .line 268
    .line 269
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 270
    .line 271
    .line 272
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 273
    .line 274
    new-instance v0, Ljava/lang/Object;

    .line 275
    .line 276
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 277
    .line 278
    .line 279
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    .line 280
    .line 281
    new-instance v0, Ljava/lang/Object;

    .line 282
    .line 283
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 284
    .line 285
    .line 286
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    .line 287
    .line 288
    new-instance v0, Ljava/lang/Object;

    .line 289
    .line 290
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 291
    .line 292
    .line 293
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    .line 294
    .line 295
    new-instance v0, Ljava/lang/Object;

    .line 296
    .line 297
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 298
    .line 299
    .line 300
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    .line 301
    .line 302
    new-instance v0, Ljava/lang/Object;

    .line 303
    .line 304
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 305
    .line 306
    .line 307
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    .line 308
    .line 309
    new-instance v0, Ljava/lang/Object;

    .line 310
    .line 311
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 312
    .line 313
    .line 314
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    .line 315
    .line 316
    new-instance v0, Ljava/lang/Object;

    .line 317
    .line 318
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 319
    .line 320
    .line 321
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    .line 322
    .line 323
    new-instance v0, Ljava/lang/Object;

    .line 324
    .line 325
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 326
    .line 327
    .line 328
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    .line 329
    .line 330
    new-instance v0, Ljava/lang/Object;

    .line 331
    .line 332
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 333
    .line 334
    .line 335
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    .line 336
    .line 337
    new-instance v0, Ljava/lang/Object;

    .line 338
    .line 339
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 340
    .line 341
    .line 342
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    .line 343
    .line 344
    new-instance v0, Ljava/lang/Object;

    .line 345
    .line 346
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 347
    .line 348
    .line 349
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    .line 350
    .line 351
    new-instance v0, Ljava/lang/Object;

    .line 352
    .line 353
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 354
    .line 355
    .line 356
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    .line 357
    .line 358
    new-instance v0, Ljava/lang/Object;

    .line 359
    .line 360
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 361
    .line 362
    .line 363
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    .line 364
    .line 365
    new-instance v0, Ljava/lang/Object;

    .line 366
    .line 367
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 368
    .line 369
    .line 370
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    .line 371
    .line 372
    new-instance v0, Ljava/lang/Object;

    .line 373
    .line 374
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 375
    .line 376
    .line 377
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    .line 378
    .line 379
    new-instance v0, Ljava/lang/Object;

    .line 380
    .line 381
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 382
    .line 383
    .line 384
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    .line 385
    .line 386
    new-instance v0, Ljava/lang/Object;

    .line 387
    .line 388
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 389
    .line 390
    .line 391
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    .line 392
    .line 393
    new-instance v0, Ljava/lang/Object;

    .line 394
    .line 395
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 396
    .line 397
    .line 398
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    .line 399
    .line 400
    new-instance v0, Ljava/lang/Object;

    .line 401
    .line 402
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 403
    .line 404
    .line 405
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    .line 406
    .line 407
    new-instance v0, Ljava/lang/Object;

    .line 408
    .line 409
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 410
    .line 411
    .line 412
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    .line 413
    .line 414
    new-instance v0, Ljava/lang/Object;

    .line 415
    .line 416
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 417
    .line 418
    .line 419
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    .line 420
    .line 421
    new-instance v0, Ljava/lang/Object;

    .line 422
    .line 423
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 424
    .line 425
    .line 426
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    .line 427
    .line 428
    new-instance v0, Ljava/lang/Object;

    .line 429
    .line 430
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 431
    .line 432
    .line 433
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    .line 434
    .line 435
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 436
    .line 437
    return-void
.end method

.method public static addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V
    .locals 18

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-array v4, v2, [J

    .line 16
    .line 17
    new-array v5, v2, [J

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    move v7, v6

    .line 21
    :goto_0
    array-length v8, v0

    .line 22
    const-wide/16 v9, 0x3e8

    .line 23
    .line 24
    if-ge v7, v8, :cond_0

    .line 25
    .line 26
    aget v8, v1, v7

    .line 27
    .line 28
    aget-wide v11, v4, v8

    .line 29
    .line 30
    aget-wide v13, v3, v7

    .line 31
    .line 32
    aget-wide v15, v0, v7

    .line 33
    .line 34
    mul-long/2addr v13, v15

    .line 35
    div-long/2addr v13, v9

    .line 36
    add-long/2addr v13, v11

    .line 37
    aput-wide v13, v4, v8

    .line 38
    .line 39
    aget-wide v9, v5, v8

    .line 40
    .line 41
    aget-wide v11, v0, v7

    .line 42
    .line 43
    add-long/2addr v9, v11

    .line 44
    aput-wide v9, v5, v8

    .line 45
    .line 46
    add-int/lit8 v7, v7, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    :goto_1
    if-ge v6, v2, :cond_1

    .line 50
    .line 51
    aget-wide v0, v4, v6

    .line 52
    .line 53
    const-wide/32 v7, 0xf4240

    .line 54
    .line 55
    .line 56
    div-long v14, v0, v7

    .line 57
    .line 58
    aget-wide v0, v5, v6

    .line 59
    .line 60
    div-long v16, v0, v9

    .line 61
    .line 62
    move/from16 v11, p0

    .line 63
    .line 64
    move/from16 v12, p2

    .line 65
    .line 66
    move v13, v6

    .line 67
    invoke-static/range {v11 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJ)Landroid/util/StatsEvent;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object/from16 v1, p1

    .line 72
    .line 73
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    return-void
.end method

.method public static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 3

    .line 1
    const-wide/16 v0, 0x7d0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    .line 16
    .line 17
    const-string v1, "controller_activity"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    return-object p0

    .line 26
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v1, "timeout reading "

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p0, " stats"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v0, "StatsPullAtomService"

    .line 51
    .line 52
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public static convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B
    .locals 9

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->mZoneIdOrdinals:[I

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v3, 0x2

    .line 22
    :goto_0
    const-wide v4, 0x10e00000001L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 28
    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    array-length v3, v2

    .line 33
    const/4 v4, 0x0

    .line 34
    move v5, v4

    .line 35
    :goto_1
    if-ge v5, v3, :cond_2

    .line 36
    .line 37
    aget v6, v2, v5

    .line 38
    .line 39
    const-wide v7, 0x20500000002L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->mZoneIds:[Ljava/lang/String;

    .line 51
    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    array-length v2, p0

    .line 55
    :goto_2
    if-ge v4, v2, :cond_3

    .line 56
    .line 57
    aget-object v3, p0, v4

    .line 58
    .line 59
    const-wide v5, 0x20900000003L

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public static countAccessibilityServices(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/stream/IntStream;->count()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    long-to-int v0, v2

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 36
    .line 37
    :goto_0
    return v1
.end method

.method public static fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 4

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroid/os/SynchronousResultReceiver;

    .line 8
    .line 9
    const-string v2, "bluetooth"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$1;

    .line 20
    .line 21
    invoke-direct {v3, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$1;-><init>(Landroid/os/SynchronousResultReceiver;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_0
    const-string v0, "StatsPullAtomService"

    .line 35
    .line 36
    const-string v1, "Failed to get bluetooth adapter!"

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method

.method public static highWaterMarkFilePrefix(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x272d

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x1f

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/16 v0, 0x2732

    .line 13
    .line 14
    if-ne p0, v0, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x2

    .line 17
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string v0, "atom-"

    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method private native initializeNativePullers()V
.end method

.method public static isAccessibilityShortcutUser(Landroid/content/Context;I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "accessibility_button_targets"

    .line 6
    .line 7
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "accessibility_shortcut_target_service"

    .line 12
    .line 13
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "accessibility_qs_targets"

    .line 18
    .line 19
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "accessibility_shortcut_dialog_shown"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {p0, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v5, 0x1

    .line 31
    if-ne v3, v5, :cond_0

    .line 32
    .line 33
    move v3, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v3, v4

    .line 36
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    xor-int/2addr v0, v5

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    move v1, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v1, v4

    .line 52
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    xor-int/2addr v2, v5

    .line 57
    const-string v3, "accessibility_display_magnification_enabled"

    .line 58
    .line 59
    invoke-static {p0, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-ne p0, v5, :cond_2

    .line 64
    .line 65
    move p0, v5

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move p0, v4

    .line 68
    :goto_2
    if-nez v0, :cond_3

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    if-nez p0, :cond_3

    .line 73
    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    :cond_3
    move v4, v5

    .line 77
    :cond_4
    return v4
.end method

.method public static parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 9
    .line 10
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x4

    .line 15
    if-eq v4, v5, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget v4, v4, Landroid/security/metrics/Keystore2AtomWithOverflow;->atom_id:I

    .line 26
    .line 27
    iget v3, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    .line 28
    .line 29
    const/16 v5, 0x2789

    .line 30
    .line 31
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return v1
.end method

.method public static parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 9
    .line 10
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/16 v5, 0x8

    .line 15
    .line 16
    if-eq v4, v5, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    iget-object v3, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/16 v4, 0x278d

    .line 27
    .line 28
    iget v3, v3, Landroid/security/metrics/CrashStats;->count_of_crash_events:I

    .line 29
    .line 30
    invoke-static {v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return v1
.end method

.method public static parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 9
    .line 10
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x2

    .line 15
    if-eq v4, v5, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget v5, v4, Landroid/security/metrics/KeyCreationWithAuthInfo;->user_auth_type:I

    .line 26
    .line 27
    iget v6, v4, Landroid/security/metrics/KeyCreationWithAuthInfo;->log10_auth_key_timeout_seconds:I

    .line 28
    .line 29
    iget v4, v4, Landroid/security/metrics/KeyCreationWithAuthInfo;->security_level:I

    .line 30
    .line 31
    iget v3, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    .line 32
    .line 33
    const/16 v7, 0x2787

    .line 34
    .line 35
    invoke-static {v7, v5, v6, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIII)Landroid/util/StatsEvent;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return v1
.end method

.method public static parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 13

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 9
    .line 10
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eq v4, v5, :cond_0

    .line 16
    .line 17
    return v5

    .line 18
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget v6, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->algorithm:I

    .line 25
    .line 26
    iget v7, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    .line 27
    .line 28
    iget v8, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->ec_curve:I

    .line 29
    .line 30
    iget v9, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_origin:I

    .line 31
    .line 32
    iget v10, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    .line 33
    .line 34
    iget-boolean v11, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z

    .line 35
    .line 36
    iget v12, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    .line 37
    .line 38
    const/16 v5, 0x2786

    .line 39
    .line 40
    invoke-static/range {v5 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIZI)Landroid/util/StatsEvent;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return v1
.end method

.method public static parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 12

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 9
    .line 10
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x3

    .line 15
    if-eq v4, v5, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget v6, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->algorithm:I

    .line 26
    .line 27
    iget v7, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->purpose_bitmap:I

    .line 28
    .line 29
    iget v8, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    .line 30
    .line 31
    iget v9, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->digest_bitmap:I

    .line 32
    .line 33
    iget v10, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->block_mode_bitmap:I

    .line 34
    .line 35
    iget v11, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    .line 36
    .line 37
    const/16 v5, 0x2788

    .line 38
    .line 39
    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIII)Landroid/util/StatsEvent;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return v1
.end method

.method public static parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 9
    .line 10
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x6

    .line 15
    if-eq v4, v5, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget v6, v4, Landroid/security/metrics/KeyOperationWithGeneralInfo;->outcome:I

    .line 26
    .line 27
    iget v7, v4, Landroid/security/metrics/KeyOperationWithGeneralInfo;->error_code:I

    .line 28
    .line 29
    iget-boolean v8, v4, Landroid/security/metrics/KeyOperationWithGeneralInfo;->key_upgraded:Z

    .line 30
    .line 31
    iget v9, v4, Landroid/security/metrics/KeyOperationWithGeneralInfo;->security_level:I

    .line 32
    .line 33
    iget v10, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    .line 34
    .line 35
    const/16 v5, 0x278b

    .line 36
    .line 37
    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZII)Landroid/util/StatsEvent;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return v1
.end method

.method public static parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 9
    .line 10
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x5

    .line 15
    if-eq v4, v5, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget v6, v4, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->purpose:I

    .line 26
    .line 27
    iget v7, v4, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    .line 28
    .line 29
    iget v8, v4, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->digest_bitmap:I

    .line 30
    .line 31
    iget v9, v4, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->block_mode_bitmap:I

    .line 32
    .line 33
    iget v10, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    .line 34
    .line 35
    const/16 v5, 0x278a

    .line 36
    .line 37
    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return v1
.end method

.method public static parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 9
    .line 10
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v3, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget v4, v3, Landroid/security/metrics/StorageStats;->storage_type:I

    .line 25
    .line 26
    iget v5, v3, Landroid/security/metrics/StorageStats;->size:I

    .line 27
    .line 28
    iget v3, v3, Landroid/security/metrics/StorageStats;->unused_size:I

    .line 29
    .line 30
    const/16 v6, 0x2777

    .line 31
    .line 32
    invoke-static {v6, v4, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return v1
.end method

.method public static parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 9
    .line 10
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x7

    .line 15
    if-eq v4, v5, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget v5, v4, Landroid/security/metrics/RkpErrorStats;->rkpError:I

    .line 26
    .line 27
    iget v3, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    .line 28
    .line 29
    iget v4, v4, Landroid/security/metrics/RkpErrorStats;->security_level:I

    .line 30
    .line 31
    const/16 v6, 0x278c

    .line 32
    .line 33
    invoke-static {v6, v5, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return v1
.end method

.method public static processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    invoke-virtual {p5, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p5, v0}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x2e

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 32
    .line 33
    if-nez p5, :cond_2

    .line 34
    .line 35
    const/4 p5, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p5

    .line 41
    :goto_1
    invoke-direct {v1, p4, p5, p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;I)V

    .line 42
    .line 43
    .line 44
    iget p0, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    .line 45
    .line 46
    if-ge p0, p3, :cond_3

    .line 47
    .line 48
    check-cast p1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public static processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;
    .locals 19

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    new-instance v7, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    move v9, v8

    .line 10
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v9, v1, :cond_4

    .line 15
    .line 16
    move-object/from16 v10, p0

    .line 17
    .line 18
    invoke-virtual {v10, v9}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 19
    .line 20
    .line 21
    move-result-object v11

    .line 22
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    .line 23
    .line 24
    .line 25
    move-result v12

    .line 26
    move v13, v8

    .line 27
    :goto_1
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ge v13, v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v11, v13}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 34
    .line 35
    .line 36
    move-result-object v14

    .line 37
    const/16 v1, 0x275b

    .line 38
    .line 39
    if-ne v0, v1, :cond_1

    .line 40
    .line 41
    move v15, v8

    .line 42
    :goto_2
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-ge v15, v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v14, v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    move v5, v8

    .line 53
    :goto_3
    invoke-virtual {v6}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ge v5, v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {v6, v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v16

    .line 67
    invoke-virtual {v6}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v17

    .line 71
    move-object v2, v7

    .line 72
    move v3, v12

    .line 73
    move/from16 v4, p2

    .line 74
    .line 75
    move/from16 v18, v5

    .line 76
    .line 77
    move-object/from16 v5, v16

    .line 78
    .line 79
    move-object/from16 v16, v6

    .line 80
    .line 81
    move-object/from16 v6, v17

    .line 82
    .line 83
    invoke-static/range {v1 .. v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v5, v18, 0x1

    .line 87
    .line 88
    move-object/from16 v6, v16

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_1
    const/16 v1, 0x274c

    .line 95
    .line 96
    if-ne v0, v1, :cond_2

    .line 97
    .line 98
    move v15, v8

    .line 99
    :goto_4
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-ge v15, v1, :cond_2

    .line 104
    .line 105
    invoke-virtual {v14, v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    const/4 v6, 0x0

    .line 114
    move-object v2, v7

    .line 115
    move v3, v12

    .line 116
    move/from16 v4, p2

    .line 117
    .line 118
    invoke-static/range {v1 .. v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v15, v15, 0x1

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    return-object v7
.end method

.method public static pullAppSizeLocked(ILjava/util/List;)I
    .locals 23

    .line 1
    const-string v0, "StatsPullAtomService"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    const-string v2, "/data/system/diskstats_cache.json"

    .line 5
    .line 6
    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "queryTime"

    .line 16
    .line 17
    .line 18
    const-wide/16 v4, -0x1

    .line 19
    .line 20
    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v16

    .line 24
    const-string/jumbo v2, "packageNames"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v6, "appSizes"

    .line 32
    .line 33
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 34
    .line 35
    .line 36
    move-result-object v14

    .line 37
    const-string v6, "appDataSizes"

    .line 38
    .line 39
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 40
    .line 41
    .line 42
    move-result-object v15

    .line 43
    const-string v6, "cacheSizes"

    .line 44
    .line 45
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ne v6, v12, :cond_2

    .line 58
    .line 59
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-ne v6, v12, :cond_2

    .line 64
    .line 65
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eq v6, v12, :cond_0

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    const/16 v18, 0x0

    .line 73
    .line 74
    move/from16 v13, v18

    .line 75
    .line 76
    :goto_0
    if-ge v13, v12, :cond_1

    .line 77
    .line 78
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v14, v13, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    invoke-virtual {v15, v13, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    .line 87
    .line 88
    .line 89
    move-result-wide v10

    .line 90
    invoke-virtual {v3, v13, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    .line 91
    .line 92
    .line 93
    move-result-wide v19

    .line 94
    move/from16 v6, p0

    .line 95
    .line 96
    move/from16 v21, v12

    .line 97
    .line 98
    move/from16 v22, v13

    .line 99
    .line 100
    move-wide/from16 v12, v19

    .line 101
    .line 102
    move-object/from16 v19, v14

    .line 103
    .line 104
    move-object/from16 v20, v15

    .line 105
    .line 106
    move-wide/from16 v14, v16

    .line 107
    .line 108
    invoke-static/range {v6 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;JJJJ)Landroid/util/StatsEvent;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    move-object/from16 v7, p1

    .line 113
    .line 114
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    add-int/lit8 v13, v22, 0x1

    .line 118
    .line 119
    move-object/from16 v14, v19

    .line 120
    .line 121
    move-object/from16 v15, v20

    .line 122
    .line 123
    move/from16 v12, v21

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    return v18

    .line 127
    :cond_2
    :goto_1
    const-string v2, "formatting error in diskstats cache file!"

    .line 128
    .line 129
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    return v1

    .line 133
    :catch_0
    const-string v2, "Unable to read diskstats cache file within pullAppSize"

    .line 134
    .line 135
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    return v1
.end method

.method public static pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "StatsPullAtomService"

    .line 12
    .line 13
    const-string p1, "failed to get binderStats"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    iget-object v0, v0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedExceptionStats()Landroid/util/ArrayMap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    int-to-long v3, v1

    .line 63
    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;J)Landroid/util/StatsEvent;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 p0, 0x0

    .line 72
    return p0
.end method

.method public static pullBinderCallsStatsLocked(ILjava/util/List;)I
    .locals 27

    .line 1
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "StatsPullAtomService"

    .line 12
    .line 13
    const-string v1, "failed to get binderStats"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v0, v0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    new-array v3, v2, [Z

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 49
    .line 50
    iget v4, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 51
    .line 52
    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v6, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 55
    .line 56
    iget-wide v7, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 57
    .line 58
    iget-wide v9, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    .line 59
    .line 60
    iget-wide v11, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 61
    .line 62
    iget-wide v13, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 63
    .line 64
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 65
    .line 66
    move-wide v15, v2

    .line 67
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 68
    .line 69
    move-wide/from16 v17, v2

    .line 70
    .line 71
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 72
    .line 73
    move-wide/from16 v19, v2

    .line 74
    .line 75
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 76
    .line 77
    move-wide/from16 v21, v2

    .line 78
    .line 79
    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 80
    .line 81
    move-wide/from16 v23, v2

    .line 82
    .line 83
    iget-boolean v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    .line 84
    .line 85
    move/from16 v25, v2

    .line 86
    .line 87
    iget v1, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 88
    .line 89
    move/from16 v26, v1

    .line 90
    .line 91
    move/from16 v3, p0

    .line 92
    .line 93
    invoke-static/range {v3 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;JJJJJJJJJZI)Landroid/util/StatsEvent;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    move-object/from16 v2, p1

    .line 98
    .line 99
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    move v1, v2

    .line 105
    return v1
.end method

.method public static pullBluetoothActivityInfoLocked(ILjava/util/List;)I
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimestampMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v8

    .line 29
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    .line 30
    .line 31
    .line 32
    move-result-wide v10

    .line 33
    move v0, p0

    .line 34
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public static pullBluetoothBytesTransferLocked(ILjava/util/List;)I
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/bluetooth/UidTraffic;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/bluetooth/UidTraffic;->getUid()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v1}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-virtual {v1}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    move v2, p0

    .line 42
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    return p0
.end method

.method public static pullBuildInformationLocked(ILjava/util/List;)V
    .locals 10

    .line 1
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v9, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 18
    .line 19
    move v0, p0

    .line 20
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static pullCategorySizeLocked(ILjava/util/List;)I
    .locals 12

    .line 1
    :try_start_0
    const-string v0, "/data/system/diskstats_cache.json"

    .line 2
    .line 3
    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "queryTime"

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, -0x1

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v10

    .line 21
    const-string v0, "appSize"

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    const/4 v5, 0x1

    .line 28
    move v4, p0

    .line 29
    move-wide v8, v10

    .line 30
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    const-string v0, "appDataSize"

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    const/4 v5, 0x2

    .line 44
    move v4, p0

    .line 45
    move-wide v8, v10

    .line 46
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    const-string v0, "cacheSize"

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    const/4 v5, 0x3

    .line 60
    move v4, p0

    .line 61
    move-wide v8, v10

    .line 62
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    const-string/jumbo v0, "photosSize"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    const/4 v5, 0x4

    .line 77
    move v4, p0

    .line 78
    move-wide v8, v10

    .line 79
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string/jumbo v0, "videosSize"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v6

    .line 93
    const/4 v5, 0x5

    .line 94
    move v4, p0

    .line 95
    move-wide v8, v10

    .line 96
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    const-string v0, "audioSize"

    .line 104
    .line 105
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v6

    .line 109
    const/4 v5, 0x6

    .line 110
    move v4, p0

    .line 111
    move-wide v8, v10

    .line 112
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    const-string v0, "downloadsSize"

    .line 120
    .line 121
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 122
    .line 123
    .line 124
    move-result-wide v6

    .line 125
    const/4 v5, 0x7

    .line 126
    move v4, p0

    .line 127
    move-wide v8, v10

    .line 128
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    const-string/jumbo v0, "systemSize"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 139
    .line 140
    .line 141
    move-result-wide v6

    .line 142
    const/16 v5, 0x8

    .line 143
    .line 144
    move v4, p0

    .line 145
    move-wide v8, v10

    .line 146
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    const-string/jumbo v0, "otherSize"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 157
    .line 158
    .line 159
    move-result-wide v6

    .line 160
    const/16 v5, 0x9

    .line 161
    .line 162
    move v4, p0

    .line 163
    move-wide v8, v10

    .line 164
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    const/4 p0, 0x0

    .line 172
    return p0

    .line 173
    :catch_0
    const-string p0, "StatsPullAtomService"

    .line 174
    .line 175
    const-string p1, "Unable to read diskstats cache file within pullCategorySize"

    .line 176
    .line 177
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    const/4 p0, 0x1

    .line 181
    return p0
.end method

.method public static pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Lcom/android/internal/os/KernelCpuTotalBpfMapReader;->read()[J

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    array-length v5, v2

    .line 20
    if-ge v4, v5, :cond_1

    .line 21
    .line 22
    aget v5, v0, v4

    .line 23
    .line 24
    aget-wide v6, v1, v4

    .line 25
    .line 26
    long-to-int v6, v6

    .line 27
    aget-wide v7, v2, v4

    .line 28
    .line 29
    invoke-static {p0, v5, v6, v7, v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return v3
.end method

.method public static pullDirectoryUsageLocked(ILjava/util/List;)V
    .locals 11

    .line 1
    new-instance v0, Landroid/os/StatFs;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/os/StatFs;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroid/os/StatFs;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Landroid/os/StatFs;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    .line 58
    .line 59
    .line 60
    move-result-wide v9

    .line 61
    const/4 v6, 0x1

    .line 62
    move v5, p0

    .line 63
    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    .line 75
    .line 76
    .line 77
    move-result-wide v8

    .line 78
    const/4 v5, 0x2

    .line 79
    move v4, p0

    .line 80
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    .line 92
    .line 93
    .line 94
    move-result-wide v8

    .line 95
    const/4 v5, 0x3

    .line 96
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 104
    .line 105
    .line 106
    move-result-wide v6

    .line 107
    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    .line 108
    .line 109
    .line 110
    move-result-wide v8

    .line 111
    const/4 v5, 0x4

    .line 112
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public static pullIonHeapSizeLocked(ILjava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int v0, v0

    .line 6
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static pullLooperStatsLocked(ILjava/util/List;)I
    .locals 29

    .line 1
    const-class v0, Lcom/android/internal/os/LooperStats;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/internal/os/LooperStats;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 35
    .line 36
    iget v3, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    .line 37
    .line 38
    iget-object v4, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v5, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v6, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    .line 43
    .line 44
    iget-wide v7, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    .line 45
    .line 46
    iget-wide v9, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    .line 47
    .line 48
    iget-wide v11, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    .line 49
    .line 50
    iget-wide v13, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    .line 51
    .line 52
    move/from16 v28, v3

    .line 53
    .line 54
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    .line 55
    .line 56
    move-wide v15, v2

    .line 57
    iget-boolean v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    .line 58
    .line 59
    move/from16 v17, v2

    .line 60
    .line 61
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    .line 62
    .line 63
    move-wide/from16 v18, v2

    .line 64
    .line 65
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    .line 66
    .line 67
    move-wide/from16 v20, v2

    .line 68
    .line 69
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    .line 70
    .line 71
    move-wide/from16 v22, v2

    .line 72
    .line 73
    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    .line 74
    .line 75
    move-wide/from16 v24, v2

    .line 76
    .line 77
    iget-wide v1, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    .line 78
    .line 79
    move-wide/from16 v26, v1

    .line 80
    .line 81
    move/from16 v2, p0

    .line 82
    .line 83
    move/from16 v3, v28

    .line 84
    .line 85
    invoke-static/range {v2 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJZJJJJJ)Landroid/util/StatsEvent;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    move-object/from16 v2, p1

    .line 90
    .line 91
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x0

    .line 96
    return v0
.end method

.method public static pullProcessDmabufMemory(ILjava/util/List;)I
    .locals 15

    .line 1
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getDmabufAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    iget v6, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->uid:I

    .line 17
    .line 18
    iget-object v7, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    .line 19
    .line 20
    iget v8, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->oomScore:I

    .line 21
    .line 22
    iget v9, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    .line 23
    .line 24
    iget v10, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedBuffersCount:I

    .line 25
    .line 26
    iget v13, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerSizeKb:I

    .line 27
    .line 28
    iget v14, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerCount:I

    .line 29
    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v12, 0x0

    .line 32
    move v5, p0

    .line 33
    invoke-static/range {v5 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIII)Landroid/util/StatsEvent;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    move-object/from16 v5, p1

    .line 38
    .line 39
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return v2
.end method

.method public static pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)V
    .locals 12

    .line 1
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-wide/16 v3, 0x400

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/app/ProcessMemoryState;

    .line 30
    .line 31
    iget v5, v2, Landroid/app/ProcessMemoryState;->pid:I

    .line 32
    .line 33
    invoke-static {v5}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget v7, v2, Landroid/app/ProcessMemoryState;->uid:I

    .line 41
    .line 42
    iget-object v8, v2, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    .line 43
    .line 44
    iget v11, v5, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    .line 45
    .line 46
    int-to-long v5, v11

    .line 47
    mul-long v9, v5, v3

    .line 48
    .line 49
    move v6, p0

    .line 50
    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JI)Landroid/util/StatsEvent;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-direct {v2, v5, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;-><init>(ILandroid/util/SparseArray;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v2, 0x0

    .line 76
    :goto_1
    if-ge v2, v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-static {v5}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    if-nez v5, :cond_2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    iget v7, v5, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    move-object v8, v6

    .line 96
    check-cast v8, Ljava/lang/String;

    .line 97
    .line 98
    iget v11, v5, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    .line 99
    .line 100
    int-to-long v5, v11

    .line 101
    mul-long v9, v5, v3

    .line 102
    .line 103
    move v6, p0

    .line 104
    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JI)Landroid/util/StatsEvent;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const-string/jumbo p0, "sys.rss_hwm_reset.on"

    .line 115
    .line 116
    .line 117
    const-string p1, "1"

    .line 118
    .line 119
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public static pullProcessMemorySnapshot(ILjava/util/List;)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getGpuAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Landroid/util/SparseIntArray;

    .line 20
    .line 21
    array-length v4, v2

    .line 22
    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 23
    .line 24
    .line 25
    array-length v4, v2

    .line 26
    const/4 v6, 0x0

    .line 27
    :goto_0
    if-ge v6, v4, :cond_0

    .line 28
    .line 29
    aget-object v7, v2, v6

    .line 30
    .line 31
    iget v8, v7, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->pid:I

    .line 32
    .line 33
    iget v7, v7, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->gpuMemoryKb:I

    .line 34
    .line 35
    invoke-virtual {v3, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroid/app/ProcessMemoryState;

    .line 56
    .line 57
    iget v6, v4, Landroid/app/ProcessMemoryState;->pid:I

    .line 58
    .line 59
    invoke-static {v6}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    if-nez v6, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget v8, v4, Landroid/app/ProcessMemoryState;->uid:I

    .line 67
    .line 68
    iget-object v9, v4, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    .line 69
    .line 70
    iget v10, v4, Landroid/app/ProcessMemoryState;->pid:I

    .line 71
    .line 72
    iget v11, v4, Landroid/app/ProcessMemoryState;->oomScore:I

    .line 73
    .line 74
    iget v12, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    .line 75
    .line 76
    iget v13, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    .line 77
    .line 78
    iget v14, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    .line 79
    .line 80
    add-int v15, v13, v14

    .line 81
    .line 82
    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    .line 83
    .line 84
    .line 85
    move-result v16

    .line 86
    iget-boolean v7, v4, Landroid/app/ProcessMemoryState;->hasForegroundServices:Z

    .line 87
    .line 88
    iget v6, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    .line 89
    .line 90
    iget v5, v4, Landroid/app/ProcessMemoryState;->mHostingComponentTypes:I

    .line 91
    .line 92
    iget v4, v4, Landroid/app/ProcessMemoryState;->mHistoricalHostingComponentTypes:I

    .line 93
    .line 94
    move/from16 v17, v7

    .line 95
    .line 96
    move/from16 v7, p0

    .line 97
    .line 98
    move/from16 v18, v6

    .line 99
    .line 100
    move/from16 v19, v5

    .line 101
    .line 102
    move/from16 v20, v4

    .line 103
    .line 104
    invoke-static/range {v7 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIZIII)Landroid/util/StatsEvent;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;

    .line 117
    .line 118
    const/4 v5, 0x1

    .line 119
    invoke-direct {v4, v5, v2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;-><init>(ILandroid/util/SparseArray;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v1, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const/4 v5, 0x0

    .line 130
    :goto_2
    if-ge v5, v1, :cond_4

    .line 131
    .line 132
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    invoke-static {v9}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    if-nez v4, :cond_3

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_3
    iget v7, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 144
    .line 145
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    move-object v8, v6

    .line 150
    check-cast v8, Ljava/lang/String;

    .line 151
    .line 152
    iget v11, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    .line 153
    .line 154
    iget v12, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    .line 155
    .line 156
    iget v13, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    .line 157
    .line 158
    add-int v14, v12, v13

    .line 159
    .line 160
    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 161
    .line 162
    .line 163
    move-result v15

    .line 164
    iget v4, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    .line 165
    .line 166
    const/16 v10, -0x3e9

    .line 167
    .line 168
    const/16 v16, 0x0

    .line 169
    .line 170
    const/16 v18, 0x0

    .line 171
    .line 172
    const/16 v19, 0x0

    .line 173
    .line 174
    move/from16 v6, p0

    .line 175
    .line 176
    move/from16 v17, v4

    .line 177
    .line 178
    invoke-static/range {v6 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIZIII)Landroid/util/StatsEvent;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_4
    return-void
.end method

.method public static pullProcessMemoryStateLocked(ILjava/util/List;)V
    .locals 22

    .line 1
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/app/ProcessMemoryState;

    .line 28
    .line 29
    iget v2, v1, Landroid/app/ProcessMemoryState;->uid:I

    .line 30
    .line 31
    iget v3, v1, Landroid/app/ProcessMemoryState;->pid:I

    .line 32
    .line 33
    invoke-static {v2, v3}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget v4, v1, Landroid/app/ProcessMemoryState;->uid:I

    .line 41
    .line 42
    iget-object v5, v1, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    .line 43
    .line 44
    iget v6, v1, Landroid/app/ProcessMemoryState;->oomScore:I

    .line 45
    .line 46
    iget-wide v7, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 47
    .line 48
    iget-wide v9, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 49
    .line 50
    iget-wide v11, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    .line 51
    .line 52
    iget-wide v13, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    .line 53
    .line 54
    iget-wide v1, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 55
    .line 56
    move-wide v15, v1

    .line 57
    const/16 v21, -0x1

    .line 58
    .line 59
    const-wide/16 v17, -0x1

    .line 60
    .line 61
    const-wide/16 v19, -0x1

    .line 62
    .line 63
    move/from16 v3, p0

    .line 64
    .line 65
    invoke-static/range {v3 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IJJJJJJJI)Landroid/util/StatsEvent;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    move-object/from16 v2, p1

    .line 70
    .line 71
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method public static pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-string v0, "/sys/kernel/debug/ion/heaps/system"

    .line 4
    .line 5
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string v1, "IonMemoryUtil"

    .line 19
    .line 20
    const-string v2, "Failed to read file"

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    :goto_0
    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->parseProcessIonHeapSizesFromDebugfs(Ljava/lang/String;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    .line 46
    .line 47
    iget v2, v1, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    .line 48
    .line 49
    invoke-static {v2}, Landroid/os/Process;->getUidForPid(I)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    iget v2, v1, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    .line 54
    .line 55
    invoke-static {v2}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-wide v2, v1, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    .line 60
    .line 61
    const-wide/16 v6, 0x400

    .line 62
    .line 63
    div-long/2addr v2, v6

    .line 64
    long-to-int v2, v2

    .line 65
    iget v8, v1, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    .line 66
    .line 67
    iget-wide v9, v1, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    .line 68
    .line 69
    div-long/2addr v9, v6

    .line 70
    long-to-int v1, v9

    .line 71
    move v3, p0

    .line 72
    move v6, v2

    .line 73
    move v7, v8

    .line 74
    move v8, v1

    .line 75
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;III)Landroid/util/StatsEvent;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    return-void
.end method

.method public static pullSystemElapsedRealtimeLocked(ILjava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static pullSystemIonHeapSizeLocked(ILjava/util/List;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-string v0, "/sys/kernel/debug/ion/heaps/system"

    .line 4
    .line 5
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string v1, "IonMemoryUtil"

    .line 19
    .line 20
    const-string v2, "Failed to read file"

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    :goto_0
    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->parseIonHeapSizeFromDebugfs(Ljava/lang/String;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static pullSystemMemory(ILjava/util/List;)V
    .locals 29

    .line 1
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int v7, v0

    .line 6
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    long-to-int v9, v0

    .line 11
    invoke-static {}, Landroid/os/Debug;->getGpuPrivateMemoryKb()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    long-to-int v10, v0

    .line 16
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    long-to-int v11, v0

    .line 21
    const/16 v0, 0x24

    .line 22
    .line 23
    new-array v0, v0, [J

    .line 24
    .line 25
    invoke-static {v0}, Landroid/os/Debug;->getMemInfo([J)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x13

    .line 29
    .line 30
    aget-wide v1, v0, v1

    .line 31
    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    cmp-long v3, v1, v3

    .line 35
    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    const/16 v1, 0xa

    .line 39
    .line 40
    aget-wide v1, v0, v1

    .line 41
    .line 42
    :cond_0
    const/4 v3, 0x1

    .line 43
    aget-wide v4, v0, v3

    .line 44
    .line 45
    const/16 v6, 0xe

    .line 46
    .line 47
    aget-wide v12, v0, v6

    .line 48
    .line 49
    add-long/2addr v4, v12

    .line 50
    const/4 v6, 0x2

    .line 51
    aget-wide v12, v0, v6

    .line 52
    .line 53
    add-long/2addr v4, v12

    .line 54
    const/16 v6, 0x14

    .line 55
    .line 56
    aget-wide v12, v0, v6

    .line 57
    .line 58
    add-long/2addr v4, v12

    .line 59
    const/16 v8, 0x15

    .line 60
    .line 61
    aget-wide v12, v0, v8

    .line 62
    .line 63
    add-long/2addr v4, v12

    .line 64
    const/16 v12, 0x16

    .line 65
    .line 66
    aget-wide v12, v0, v12

    .line 67
    .line 68
    add-long/2addr v4, v12

    .line 69
    const/16 v12, 0xb

    .line 70
    .line 71
    aget-wide v13, v0, v12

    .line 72
    .line 73
    add-long/2addr v4, v13

    .line 74
    add-long/2addr v4, v1

    .line 75
    const/16 v1, 0x10

    .line 76
    .line 77
    aget-wide v13, v0, v1

    .line 78
    .line 79
    add-long/2addr v4, v13

    .line 80
    const/16 v2, 0x11

    .line 81
    .line 82
    aget-wide v13, v0, v2

    .line 83
    .line 84
    add-long/2addr v4, v13

    .line 85
    invoke-static {}, Landroid/os/Debug;->isVmapStack()Z

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    const/16 v14, 0x12

    .line 90
    .line 91
    if-nez v13, :cond_1

    .line 92
    .line 93
    aget-wide v15, v0, v14

    .line 94
    .line 95
    add-long/2addr v4, v15

    .line 96
    :cond_1
    const/4 v13, 0x0

    .line 97
    if-ltz v11, :cond_2

    .line 98
    .line 99
    if-ltz v10, :cond_2

    .line 100
    .line 101
    add-int v15, v11, v10

    .line 102
    .line 103
    int-to-long v14, v15

    .line 104
    :goto_0
    add-long/2addr v4, v14

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    int-to-long v14, v14

    .line 111
    add-long/2addr v4, v14

    .line 112
    if-ltz v11, :cond_3

    .line 113
    .line 114
    int-to-long v14, v11

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    if-ltz v7, :cond_4

    .line 117
    .line 118
    int-to-long v14, v7

    .line 119
    goto :goto_0

    .line 120
    :cond_4
    :goto_1
    aget-wide v14, v0, v12

    .line 121
    .line 122
    long-to-int v12, v14

    .line 123
    aget-wide v14, v0, v1

    .line 124
    .line 125
    long-to-int v1, v14

    .line 126
    aget-wide v14, v0, v2

    .line 127
    .line 128
    long-to-int v14, v14

    .line 129
    move v15, v9

    .line 130
    const/16 v2, 0x12

    .line 131
    .line 132
    aget-wide v8, v0, v2

    .line 133
    .line 134
    long-to-int v8, v8

    .line 135
    const/16 v2, 0x8

    .line 136
    .line 137
    move v9, v7

    .line 138
    aget-wide v6, v0, v2

    .line 139
    .line 140
    long-to-int v7, v6

    .line 141
    move/from16 v18, v7

    .line 142
    .line 143
    aget-wide v6, v0, v13

    .line 144
    .line 145
    long-to-int v13, v6

    .line 146
    aget-wide v2, v0, v3

    .line 147
    .line 148
    long-to-int v3, v2

    .line 149
    const/16 v2, 0x17

    .line 150
    .line 151
    move/from16 v19, v3

    .line 152
    .line 153
    aget-wide v2, v0, v2

    .line 154
    .line 155
    long-to-int v3, v2

    .line 156
    move/from16 v17, v3

    .line 157
    .line 158
    const/16 v2, 0x14

    .line 159
    .line 160
    aget-wide v2, v0, v2

    .line 161
    .line 162
    long-to-int v3, v2

    .line 163
    move/from16 v16, v3

    .line 164
    .line 165
    const/16 v2, 0x15

    .line 166
    .line 167
    aget-wide v2, v0, v2

    .line 168
    .line 169
    long-to-int v3, v2

    .line 170
    const/16 v2, 0x18

    .line 171
    .line 172
    move/from16 v20, v3

    .line 173
    .line 174
    aget-wide v2, v0, v2

    .line 175
    .line 176
    long-to-int v3, v2

    .line 177
    const/16 v2, 0x19

    .line 178
    .line 179
    move/from16 v21, v3

    .line 180
    .line 181
    aget-wide v2, v0, v2

    .line 182
    .line 183
    long-to-int v3, v2

    .line 184
    const/16 v2, 0x1a

    .line 185
    .line 186
    move/from16 v22, v3

    .line 187
    .line 188
    aget-wide v2, v0, v2

    .line 189
    .line 190
    long-to-int v3, v2

    .line 191
    const/16 v2, 0x1b

    .line 192
    .line 193
    move/from16 v23, v3

    .line 194
    .line 195
    aget-wide v2, v0, v2

    .line 196
    .line 197
    long-to-int v3, v2

    .line 198
    const/16 v2, 0xc

    .line 199
    .line 200
    move/from16 v24, v3

    .line 201
    .line 202
    aget-wide v2, v0, v2

    .line 203
    .line 204
    long-to-int v3, v2

    .line 205
    const/16 v2, 0xd

    .line 206
    .line 207
    move/from16 v25, v3

    .line 208
    .line 209
    aget-wide v2, v0, v2

    .line 210
    .line 211
    long-to-int v3, v2

    .line 212
    const/16 v2, 0x1c

    .line 213
    .line 214
    move/from16 v26, v3

    .line 215
    .line 216
    aget-wide v2, v0, v2

    .line 217
    .line 218
    long-to-int v3, v2

    .line 219
    const/16 v2, 0x1d

    .line 220
    .line 221
    move/from16 v27, v3

    .line 222
    .line 223
    aget-wide v2, v0, v2

    .line 224
    .line 225
    long-to-int v0, v2

    .line 226
    sub-long/2addr v6, v4

    .line 227
    long-to-int v7, v6

    .line 228
    move/from16 v2, p0

    .line 229
    .line 230
    move/from16 v28, v19

    .line 231
    .line 232
    move/from16 v19, v16

    .line 233
    .line 234
    move/from16 v16, v28

    .line 235
    .line 236
    move v3, v12

    .line 237
    move v4, v1

    .line 238
    move v5, v14

    .line 239
    move v6, v8

    .line 240
    move v8, v7

    .line 241
    move/from16 v1, v18

    .line 242
    .line 243
    move v7, v9

    .line 244
    move v9, v15

    .line 245
    move v12, v1

    .line 246
    move/from16 v14, v16

    .line 247
    .line 248
    move/from16 v15, v17

    .line 249
    .line 250
    move/from16 v16, v19

    .line 251
    .line 252
    move/from16 v17, v20

    .line 253
    .line 254
    move/from16 v18, v21

    .line 255
    .line 256
    move/from16 v19, v22

    .line 257
    .line 258
    move/from16 v20, v23

    .line 259
    .line 260
    move/from16 v21, v24

    .line 261
    .line 262
    move/from16 v22, v25

    .line 263
    .line 264
    move/from16 v23, v26

    .line 265
    .line 266
    move/from16 v24, v27

    .line 267
    .line 268
    move/from16 v25, v0

    .line 269
    .line 270
    invoke-static/range {v2 .. v25}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    move-object/from16 v1, p1

    .line 275
    .line 276
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    return-void
.end method

.method public static pullSystemServerPinnerStats(ILjava/util/List;)V
    .locals 8

    .line 1
    const-class v0, Lcom/android/server/PinnerService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/PinnerService;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v2, v0, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/server/PinnerService$PinnedFile;

    .line 39
    .line 40
    new-instance v4, Lcom/android/server/PinnerService$PinnedFileStats;

    .line 41
    .line 42
    const/16 v5, 0x3e8

    .line 43
    .line 44
    invoke-direct {v4, v5, v3}, Lcom/android/server/PinnerService$PinnedFileStats;-><init>(ILcom/android/server/PinnerService$PinnedFile;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_3

    .line 53
    :cond_0
    iget-object v2, v0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object v4, v0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Lcom/android/server/PinnerService$PinnedApp;

    .line 85
    .line 86
    iget-object v5, v0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 87
    .line 88
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Lcom/android/server/PinnerService$PinnedApp;

    .line 93
    .line 94
    iget-object v3, v3, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_1

    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Lcom/android/server/PinnerService$PinnedFile;

    .line 111
    .line 112
    new-instance v6, Lcom/android/server/PinnerService$PinnedFileStats;

    .line 113
    .line 114
    iget v7, v4, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    .line 115
    .line 116
    invoke-direct {v6, v7, v5}, Lcom/android/server/PinnerService$PinnedFileStats;-><init>(ILcom/android/server/PinnerService$PinnedFile;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_3

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lcom/android/server/PinnerService$PinnedFileStats;

    .line 139
    .line 140
    iget v2, v1, Lcom/android/server/PinnerService$PinnedFileStats;->uid:I

    .line 141
    .line 142
    iget-object v3, v1, Lcom/android/server/PinnerService$PinnedFileStats;->filename:Ljava/lang/String;

    .line 143
    .line 144
    iget v1, v1, Lcom/android/server/PinnerService$PinnedFileStats;->sizeKb:I

    .line 145
    .line 146
    invoke-static {p0, v2, v3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    return-void

    .line 155
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    throw p0
.end method

.method public static pullSystemUptimeLocked(ILjava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static pullTimeZoneDataInfoLocked(ILjava/util/List;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;)Landroid/util/StatsEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string p1, "StatsPullAtomService"

    .line 16
    .line 17
    const-string v0, "Getting tzdb version failed: "

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public static pullTimeZoneDetectorStateLocked(ILjava/util/List;)I
    .locals 21

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    const/4 v3, 0x1

    .line 6
    :try_start_0
    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 15
    .line 16
    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v4, v0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 23
    .line 24
    :try_start_1
    iget-boolean v6, v4, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 25
    .line 26
    iget-boolean v7, v4, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 27
    .line 28
    iget-boolean v8, v4, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    .line 29
    .line 30
    iget-boolean v9, v4, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 31
    .line 32
    iget-boolean v10, v4, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getDetectionMode()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v11, 0x3

    .line 39
    const/4 v12, 0x2

    .line 40
    const/16 v20, 0x0

    .line 41
    .line 42
    if-eq v5, v3, :cond_2

    .line 43
    .line 44
    if-eq v5, v12, :cond_1

    .line 45
    .line 46
    if-eq v5, v11, :cond_0

    .line 47
    .line 48
    move/from16 v5, v20

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v5, v11

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v5, v12

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move v5, v3

    .line 56
    :goto_0
    if-eq v5, v3, :cond_4

    .line 57
    .line 58
    if-eq v5, v12, :cond_5

    .line 59
    .line 60
    if-eq v5, v11, :cond_3

    .line 61
    .line 62
    move/from16 v11, v20

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move v11, v12

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    move v11, v3

    .line 68
    :cond_5
    :goto_1
    iget v12, v0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    .line 69
    .line 70
    iget-object v5, v0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 71
    .line 72
    invoke-static {v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    iget-object v5, v0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 77
    .line 78
    invoke-static {v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    iget-object v5, v0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 83
    .line 84
    invoke-static {v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    .line 85
    .line 86
    .line 87
    move-result-object v15

    .line 88
    iget-boolean v5, v4, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    .line 91
    .line 92
    iget-boolean v3, v4, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    .line 93
    .line 94
    iget-boolean v4, v4, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 95
    .line 96
    move/from16 v16, v5

    .line 97
    .line 98
    move/from16 v5, p0

    .line 99
    .line 100
    move-object/from16 v17, v0

    .line 101
    .line 102
    move/from16 v18, v3

    .line 103
    .line 104
    move/from16 v19, v4

    .line 105
    .line 106
    invoke-static/range {v5 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZII[B[B[BZLjava/lang/String;ZZ)Landroid/util/StatsEvent;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    move-object/from16 v3, p1

    .line 111
    .line 112
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    return v20

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    goto :goto_2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    :try_start_2
    const-string v3, "StatsPullAtomService"

    .line 123
    .line 124
    const-string v4, "Getting time zone detection state failed: "

    .line 125
    .line 126
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    .line 131
    .line 132
    const/4 v1, 0x1

    .line 133
    return v1

    .line 134
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    throw v0
.end method

.method public static pullVmStat(ILjava/util/List;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, -0x1

    .line 3
    .line 4
    const/4 v3, 0x1

    .line 5
    new-array v3, v3, [J

    .line 6
    .line 7
    aput-wide v1, v3, v0

    .line 8
    .line 9
    sget-object v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->VMSTAT_KEYS:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, "/proc/vmstat"

    .line 12
    .line 13
    invoke-static {v5, v4, v3}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 14
    .line 15
    .line 16
    aget-wide v3, v3, v0

    .line 17
    .line 18
    cmp-long v0, v3, v1

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    long-to-int v1, v3

    .line 30
    iput v1, v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;->oomKillCount:I

    .line 31
    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget v0, v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;->oomKillCount:I

    .line 35
    .line 36
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public static sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;
    .locals 4

    .line 1
    new-instance v0, Landroid/net/NetworkStats;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/net/NetworkStats$Entry;

    .line 24
    .line 25
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/net/NetworkStats$Entry;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v0
.end method

.method public static toBytes(Ljava/util/List;)[B
    .locals 4

    .line 1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide v2, 0x20e00000001L

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static toBytes([I)[B
    .locals 6

    .line 5
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    const-wide v4, 0x20e00000001L

    .line 7
    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 2
    .line 3
    check-cast p2, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-lez p2, :cond_0

    .line 20
    .line 21
    add-int/lit8 p2, p2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 p2, 0x4000

    .line 25
    .line 26
    :goto_0
    new-array p2, p2, [B

    .line 27
    .line 28
    move v2, v1

    .line 29
    :cond_1
    :goto_1
    array-length v3, p2

    .line 30
    sub-int/2addr v3, v2

    .line 31
    invoke-virtual {v0, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const-string v4, "Read "

    .line 36
    .line 37
    const-string v5, " bytes at "

    .line 38
    .line 39
    const-string v6, " of avail "

    .line 40
    .line 41
    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    array-length v5, p2

    .line 46
    const-string v6, "StatsPullAtomService"

    .line 47
    .line 48
    invoke-static {v4, v5, v6}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-gez v3, :cond_2

    .line 52
    .line 53
    const-string v0, "**** FINISHED READING: pos="

    .line 54
    .line 55
    const-string v3, " len="

    .line 56
    .line 57
    invoke-static {v2, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    array-length v3, p2

    .line 62
    invoke-static {v0, v3, v6}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    filled-new-array {v2}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aget v0, v0, v1

    .line 70
    .line 71
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-static {p0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    add-int/2addr v2, v3

    .line 84
    array-length v3, p2

    .line 85
    if-lt v2, v3, :cond_1

    .line 86
    .line 87
    add-int/lit16 v3, v2, 0x4000

    .line 88
    .line 89
    new-array v4, v3, [B

    .line 90
    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v7, "Copying "

    .line 94
    .line 95
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v7, " bytes to new array len "

    .line 102
    .line 103
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    invoke-static {p2, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    .line 118
    .line 119
    move-object p2, v4

    .line 120
    goto :goto_1
.end method


# virtual methods
.method public final collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v3, 0x2762

    .line 11
    .line 12
    if-eq v1, v3, :cond_6

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/16 v4, 0x2763

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    if-eq v1, v4, :cond_5

    .line 20
    .line 21
    const/16 v4, 0x2774

    .line 22
    .line 23
    const/4 v7, 0x2

    .line 24
    if-eq v1, v4, :cond_1

    .line 25
    .line 26
    const/16 v4, 0x27d8

    .line 27
    .line 28
    if-eq v1, v4, :cond_0

    .line 29
    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string v2, "Unknown atomTag "

    .line 36
    .line 37
    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :pswitch_0
    invoke-virtual {v0, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_7

    .line 50
    .line 51
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 52
    .line 53
    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    .line 54
    .line 55
    const/4 v5, 0x3

    .line 56
    invoke-direct {v4, v5}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    filled-new-array {v6}, [I

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-direct {v1, v0, v4, v3}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :pswitch_1
    invoke-virtual {v0, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 82
    .line 83
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-direct {v3, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    filled-new-array {v6}, [I

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-direct {v1, v0, v3, v6}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :pswitch_2
    invoke-virtual {v0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 112
    .line 113
    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    .line 114
    .line 115
    const/4 v5, 0x3

    .line 116
    invoke-direct {v4, v5}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    filled-new-array {v3}, [I

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-direct {v1, v0, v4, v3}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto/16 :goto_2

    .line 134
    .line 135
    :pswitch_3
    invoke-virtual {v0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_7

    .line 140
    .line 141
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 142
    .line 143
    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    invoke-direct {v4, v5}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    filled-new-array {v3}, [I

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-direct {v1, v0, v3, v6}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto/16 :goto_2

    .line 164
    .line 165
    :cond_0
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    .line 166
    .line 167
    const/16 v4, 0x9

    .line 168
    .line 169
    invoke-direct {v1, v4}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eqz v0, :cond_7

    .line 181
    .line 182
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 183
    .line 184
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    .line 185
    .line 186
    const/4 v4, 0x1

    .line 187
    invoke-direct {v3, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    filled-new-array {v7}, [I

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    const/4 v14, 0x0

    .line 199
    const/4 v15, 0x0

    .line 200
    const/4 v11, 0x1

    .line 201
    const/4 v12, 0x0

    .line 202
    const/4 v13, 0x0

    .line 203
    const/16 v16, -0x1

    .line 204
    .line 205
    const/16 v17, 0x1

    .line 206
    .line 207
    move-object v8, v1

    .line 208
    invoke-direct/range {v8 .. v17}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto/16 :goto_2

    .line 215
    .line 216
    :cond_1
    new-instance v1, Landroid/util/Pair;

    .line 217
    .line 218
    const/4 v4, 0x5

    .line 219
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    const/4 v8, 0x3

    .line 224
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-direct {v1, v4, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    new-instance v4, Landroid/util/Pair;

    .line 232
    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    invoke-direct {v4, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    new-instance v10, Landroid/util/Pair;

    .line 245
    .line 246
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-direct {v10, v5, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v1, v4, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    filled-new-array {v8, v3, v7}, [I

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    new-instance v4, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_4

    .line 275
    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    check-cast v5, Landroid/util/Pair;

    .line 281
    .line 282
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v7, Ljava/lang/Integer;

    .line 285
    .line 286
    move v9, v6

    .line 287
    :goto_0
    if-ge v9, v8, :cond_2

    .line 288
    .line 289
    aget v15, v3, v9

    .line 290
    .line 291
    new-instance v10, Landroid/net/NetworkTemplate$Builder;

    .line 292
    .line 293
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 294
    .line 295
    .line 296
    move-result v11

    .line 297
    invoke-direct {v10, v11}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10, v15}, Landroid/net/NetworkTemplate$Builder;->setOemManaged(I)Landroid/net/NetworkTemplate$Builder;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    invoke-virtual {v10}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-virtual {v0, v10, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    iget-object v11, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v11, Ljava/lang/Integer;

    .line 315
    .line 316
    if-eqz v10, :cond_3

    .line 317
    .line 318
    new-instance v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 319
    .line 320
    new-instance v12, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    .line 321
    .line 322
    const/4 v13, 0x3

    .line 323
    invoke-direct {v12, v13}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 324
    .line 325
    .line 326
    invoke-static {v10, v12}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    .line 327
    .line 328
    .line 329
    move-result-object v12

    .line 330
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 331
    .line 332
    .line 333
    move-result v10

    .line 334
    filled-new-array {v10}, [I

    .line 335
    .line 336
    .line 337
    move-result-object v13

    .line 338
    const/16 v17, 0x0

    .line 339
    .line 340
    const/16 v19, 0x0

    .line 341
    .line 342
    const/16 v16, 0x1

    .line 343
    .line 344
    const/16 v18, 0x0

    .line 345
    .line 346
    const/16 v20, 0x0

    .line 347
    .line 348
    const/16 v21, 0x0

    .line 349
    .line 350
    move-object v10, v14

    .line 351
    move-object v11, v12

    .line 352
    move-object v12, v13

    .line 353
    move/from16 v13, v16

    .line 354
    .line 355
    move-object v8, v14

    .line 356
    move/from16 v14, v18

    .line 357
    .line 358
    move/from16 v18, v15

    .line 359
    .line 360
    move/from16 v15, v20

    .line 361
    .line 362
    move/from16 v16, v21

    .line 363
    .line 364
    invoke-direct/range {v10 .. v19}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 371
    .line 372
    const/4 v8, 0x3

    .line 373
    goto :goto_0

    .line 374
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 375
    .line 376
    .line 377
    goto :goto_2

    .line 378
    :cond_5
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    .line 379
    .line 380
    invoke-direct {v1, v5}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v0, v1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    new-instance v4, Landroid/net/NetworkTemplate$Builder;

    .line 392
    .line 393
    invoke-direct {v4, v3}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4, v3}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v4}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {v0, v4, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    if-eqz v1, :cond_7

    .line 409
    .line 410
    if-eqz v0, :cond_7

    .line 411
    .line 412
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 417
    .line 418
    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    .line 419
    .line 420
    const/4 v5, 0x1

    .line 421
    invoke-direct {v4, v5}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 422
    .line 423
    .line 424
    invoke-static {v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    .line 425
    .line 426
    .line 427
    move-result-object v8

    .line 428
    filled-new-array {v3, v6}, [I

    .line 429
    .line 430
    .line 431
    move-result-object v9

    .line 432
    const/4 v13, 0x0

    .line 433
    const/4 v14, 0x0

    .line 434
    const/4 v10, 0x0

    .line 435
    const/4 v11, 0x1

    .line 436
    const/4 v12, 0x1

    .line 437
    const/4 v15, -0x1

    .line 438
    const/16 v16, 0x0

    .line 439
    .line 440
    move-object v7, v1

    .line 441
    invoke-direct/range {v7 .. v16}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    goto :goto_2

    .line 448
    :cond_6
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    if-eqz v3, :cond_7

    .line 459
    .line 460
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    check-cast v3, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 465
    .line 466
    invoke-virtual {v0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 471
    .line 472
    .line 473
    goto :goto_1

    .line 474
    :cond_7
    :goto_2
    return-object v2

    .line 475
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .locals 18

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    array-length v3, v1

    .line 16
    const/4 v4, 0x0

    .line 17
    move v5, v4

    .line 18
    :goto_0
    if-ge v5, v3, :cond_0

    .line 19
    .line 20
    aget v6, v1, v5

    .line 21
    .line 22
    invoke-static {v6}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, -0x2

    .line 37
    invoke-static {v1}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Lcom/android/net/module/util/CollectionUtils;->toIntArray(Ljava/util/Collection;)[I

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    array-length v2, v1

    .line 60
    move v3, v4

    .line 61
    :goto_1
    if-ge v3, v2, :cond_2

    .line 62
    .line 63
    aget v11, v1, v3

    .line 64
    .line 65
    new-instance v5, Landroid/net/NetworkTemplate$Builder;

    .line 66
    .line 67
    const/4 v6, 0x1

    .line 68
    invoke-direct {v5, v6}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 69
    .line 70
    .line 71
    move-object/from16 v15, p1

    .line 72
    .line 73
    iget-object v7, v15, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v7}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {v5, v7}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v5, v11}, Landroid/net/NetworkTemplate$Builder;->setRatType(I)Landroid/net/NetworkTemplate$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5, v6}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    move-object/from16 v14, p0

    .line 96
    .line 97
    invoke-virtual {v14, v5, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-eqz v5, :cond_1

    .line 102
    .line 103
    new-instance v13, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 104
    .line 105
    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    .line 106
    .line 107
    const/4 v7, 0x2

    .line 108
    invoke-direct {v6, v7}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v5, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    filled-new-array {v4}, [I

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    const/4 v9, 0x0

    .line 120
    const/4 v10, 0x0

    .line 121
    const/4 v8, 0x1

    .line 122
    const/16 v16, -0x1

    .line 123
    .line 124
    const/16 v17, 0x0

    .line 125
    .line 126
    move-object v5, v13

    .line 127
    move-object/from16 v12, p1

    .line 128
    .line 129
    move-object v4, v13

    .line 130
    move/from16 v13, v16

    .line 131
    .line 132
    move/from16 v14, v17

    .line 133
    .line 134
    invoke-direct/range {v5 .. v14}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 141
    .line 142
    const/4 v4, 0x0

    .line 143
    goto :goto_1

    .line 144
    :cond_2
    return-object v0
.end method

.method public final getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "android.security.metrics"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/security/metrics/IKeystoreMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/metrics/IKeystoreMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    :try_start_1
    invoke-interface {v1}, Landroid/security/metrics/IKeystoreMetrics;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v1

    .line 40
    :try_start_2
    const-string v2, "StatsPullAtomService"

    .line 41
    .line 42
    const-string v3, "linkToDeath with IKeystoreMetrics failed"

    .line 43
    .line 44
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 49
    .line 50
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-object p0

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw p0
.end method

.method public final getIThermalService()Landroid/os/IThermalService;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string/jumbo v1, "thermalservice"

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    :try_start_1
    invoke-interface {v1}, Landroid/os/IThermalService;->asBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-direct {v2, p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v1

    .line 41
    :try_start_2
    const-string v2, "StatsPullAtomService"

    .line 42
    .line 43
    const-string v3, "linkToDeath with thermalService failed"

    .line 44
    .line 45
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 50
    .line 51
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-object p0

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw p0
.end method

.method public final getStatsFromProcessStatsService(I)Lcom/android/internal/app/procstats/ProcessStats;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string/jumbo v1, "procstats"

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/app/procstats/IProcessStats;->asBinder()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    .line 36
    .line 37
    const/4 v5, 0x4

    .line 38
    invoke-direct {v4, p0, v5}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v4, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception v1

    .line 46
    :try_start_2
    const-string v4, "StatsPullAtomService"

    .line 47
    .line 48
    const-string v5, "linkToDeath with ProcessStats failed"

    .line 49
    .line 50
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    iput-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 54
    .line 55
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 57
    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    return-object v3

    .line 61
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->readProcStatsHighWaterMark(I)J

    .line 66
    .line 67
    .line 68
    move-result-wide v11

    .line 69
    new-instance v13, Lcom/android/internal/app/procstats/ProcessStats;

    .line 70
    .line 71
    invoke-direct {v13, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 72
    .line 73
    .line 74
    const/4 v9, 0x0

    .line 75
    const/16 v7, 0x1f

    .line 76
    .line 77
    const/4 v8, 0x1

    .line 78
    move-wide v5, v11

    .line 79
    move-object v10, v13

    .line 80
    invoke-interface/range {v4 .. v10}, Lcom/android/internal/app/procstats/IProcessStats;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    new-instance v2, Ljava/io/File;

    .line 85
    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    iget-object v7, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 92
    .line 93
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v7, "/"

    .line 101
    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->highWaterMarkFilePrefix(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v7, "_"

    .line 113
    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 128
    .line 129
    .line 130
    new-instance v2, Ljava/io/File;

    .line 131
    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p0, "/"

    .line 147
    .line 148
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-static {p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->highWaterMarkFilePrefix(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string p0, "_"

    .line 159
    .line 160
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    .line 178
    .line 179
    return-object v13

    .line 180
    :catchall_1
    move-exception p0

    .line 181
    goto :goto_2

    .line 182
    :catch_1
    move-exception p0

    .line 183
    :try_start_4
    const-string p1, "StatsPullAtomService"

    .line 184
    .line 185
    const-string v2, "Getting procstats failed: "

    .line 186
    .line 187
    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    .line 192
    .line 193
    return-object v3

    .line 194
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    .line 196
    .line 197
    throw p0

    .line 198
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 199
    throw p0
.end method

.method public final getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;
    .locals 13

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string/jumbo v5, "netstats_uid_bucket_duration"

    .line 22
    .line 23
    .line 24
    sget-wide v6, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    .line 25
    .line 26
    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v7, 0x4

    .line 35
    const-string v11, "NetworkStatsManager is not ready"

    .line 36
    .line 37
    if-ne v6, v7, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 50
    .line 51
    if-eqz v6, :cond_0

    .line 52
    .line 53
    invoke-virtual {v6}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    invoke-direct {p0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 64
    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    sub-long v0, v2, v0

    .line 68
    .line 69
    sub-long/2addr v0, v4

    .line 70
    move-object v5, v6

    .line 71
    move-object v6, p1

    .line 72
    move-wide v7, v0

    .line 73
    move-wide v9, v2

    .line 74
    invoke-virtual/range {v5 .. v10}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v4}, Lcom/android/net/module/util/NetworkStatsUtils;->fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    invoke-virtual {v4}, Landroid/app/usage/NetworkStats;->close()V

    .line 83
    .line 84
    .line 85
    if-nez p2, :cond_2

    .line 86
    .line 87
    return-object v12

    .line 88
    :cond_2
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 89
    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    move-object v6, p1

    .line 93
    move-wide v7, v0

    .line 94
    move-wide v9, v2

    .line 95
    invoke-virtual/range {v5 .. v10}, Landroid/app/usage/NetworkStatsManager;->queryTaggedSummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lcom/android/net/module/util/NetworkStatsUtils;->fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v12, p1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    invoke-direct {p0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    invoke-direct {p0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0
.end method

.method public final getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const-string p1, "StatsPullAtomService"

    .line 7
    .line 8
    const-string v0, "Unexpected transport."

    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    invoke-direct {p1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1f4

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v0, 0x258

    .line 23
    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 37
    .line 38
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    .line 8
    .line 9
    .line 10
    const-class p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;

    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/os/UserManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/UserManager;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    :try_start_0
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v6, 0x0

    .line 38
    if-eqz v5, :cond_3

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    iget-object v7, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const-string v8, "accessibility_button_mode"

    .line 61
    .line 62
    invoke-static {v7, v8, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    const-string v9, "accessibility_button_targets"

    .line 67
    .line 68
    invoke-static {v7, v9, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    if-ne v8, v1, :cond_1

    .line 73
    .line 74
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_1

    .line 79
    .line 80
    const-string v7, "accessibility_floating_menu_size"

    .line 81
    .line 82
    invoke-static {v4, v7, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    const-string v8, "accessibility_floating_menu_icon_type"

    .line 87
    .line 88
    invoke-static {v4, v8, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    const-string v9, "accessibility_floating_menu_fade_enabled"

    .line 93
    .line 94
    invoke-static {v4, v9, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-ne v9, v1, :cond_2

    .line 99
    .line 100
    move v6, v1

    .line 101
    :cond_2
    const-string v9, "accessibility_floating_menu_opacity"

    .line 102
    .line 103
    const v10, 0x3f0ccccd    # 0.55f

    .line 104
    .line 105
    .line 106
    invoke-static {v4, v9, v10, v5}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-static {p1, v7, v8, v6, v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZF)Landroid/util/StatsEvent;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    goto :goto_2

    .line 120
    :catch_0
    move-exception p0

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    .line 124
    .line 125
    return v6

    .line 126
    :goto_1
    :try_start_1
    const-string p1, "StatsPullAtomService"

    .line 127
    .line 128
    const-string/jumbo p2, "pulling accessibility floating menu stats failed at getUsers"

    .line 129
    .line 130
    .line 131
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    .line 134
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    return v1

    .line 138
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    throw p0
.end method

.method public final pullAccessibilityShortcutStatsLocked(Ljava/util/List;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Landroid/os/UserManager;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/os/UserManager;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    :try_start_0
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/4 v7, 0x0

    .line 40
    if-eqz v6, :cond_5

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 47
    .line 48
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    iget-object v8, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v8, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->isAccessibilityShortcutUser(Landroid/content/Context;I)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_4

    .line 63
    .line 64
    const-string v8, "accessibility_button_mode"

    .line 65
    .line 66
    invoke-static {v5, v8, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_3

    .line 71
    .line 72
    if-eq v8, v2, :cond_2

    .line 73
    .line 74
    const/4 v9, 0x2

    .line 75
    if-eq v8, v9, :cond_1

    .line 76
    .line 77
    move v10, v7

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    const/4 v8, 0x6

    .line 80
    :goto_1
    move v10, v8

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    const/4 v8, 0x5

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v10, v2

    .line 85
    :goto_2
    const-string v8, "accessibility_button_targets"

    .line 86
    .line 87
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-static {v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->countAccessibilityServices(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    const-string v8, "accessibility_shortcut_target_service"

    .line 96
    .line 97
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-static {v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->countAccessibilityServices(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    const-string v8, "accessibility_qs_targets"

    .line 106
    .line 107
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    xor-int/lit8 v17, v8, 0x1

    .line 116
    .line 117
    const-string v8, "accessibility_display_magnification_enabled"

    .line 118
    .line 119
    invoke-static {v5, v8, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    const/16 v9, 0x278f

    .line 124
    .line 125
    const/4 v12, 0x2

    .line 126
    const/4 v14, 0x3

    .line 127
    const/16 v16, 0x9

    .line 128
    .line 129
    invoke-static/range {v9 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIZ)Landroid/util/StatsEvent;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    move-object/from16 v7, p1

    .line 134
    .line 135
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    goto :goto_4

    .line 141
    :catch_0
    move-exception v0

    .line 142
    goto :goto_3

    .line 143
    :cond_4
    move-object/from16 v7, p1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    .line 148
    .line 149
    return v7

    .line 150
    :goto_3
    :try_start_1
    const-string v1, "StatsPullAtomService"

    .line 151
    .line 152
    const-string/jumbo v5, "pulling accessibility shortcuts stats failed at getUsers"

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .line 157
    .line 158
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    .line 160
    .line 161
    return v2

    .line 162
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    .line 164
    .line 165
    throw v0
.end method

.method public final pullAppOpsLocked(ILjava/util/List;)I
    .locals 10

    .line 1
    const-string v0, "StatsPullAtomService"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v4, Landroid/app/AppOpsManager;

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/app/AppOpsManager;

    .line 16
    .line 17
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 23
    .line 24
    const-wide/16 v6, 0x0

    .line 25
    .line 26
    const-wide v8, 0x7fffffffffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 32
    .line 33
    .line 34
    const/16 v6, 0x9

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 45
    .line 46
    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;

    .line 47
    .line 48
    const/4 v8, 0x1

    .line 49
    invoke-direct {v7, v8, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v5, v6, v7}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 53
    .line 54
    .line 55
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 56
    .line 57
    const-wide/16 v5, 0x7d0

    .line 58
    .line 59
    invoke-virtual {v4, v5, v6, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 64
    .line 65
    const/16 v4, 0x64

    .line 66
    .line 67
    invoke-static {v3, p1, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(ILjava/util/List;Ljava/util/List;I)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eq p0, v4, :cond_0

    .line 76
    .line 77
    const-string p0, "Atom 10060 downsampled - too many dimensions"

    .line 78
    .line 79
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x0

    .line 89
    return p0

    .line 90
    :goto_1
    :try_start_1
    const-string p1, "Could not read appops"

    .line 91
    .line 92
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    const/4 p0, 0x1

    .line 99
    return p0

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public final pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_8

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 33
    .line 34
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 35
    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v5, v4}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-nez v4, :cond_4

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v6, -0x1

    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    move v4, v1

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_6

    .line 73
    .line 74
    const/4 v4, 0x2

    .line 75
    goto :goto_1

    .line 76
    :cond_6
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_7

    .line 81
    .line 82
    const/4 v4, 0x3

    .line 83
    goto :goto_1

    .line 84
    :cond_7
    move v4, v6

    .line 85
    :goto_1
    if-eq v4, v6, :cond_1

    .line 86
    .line 87
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p1, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;)Landroid/util/StatsEvent;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_8
    return v2
.end method

.method public final pullAttributedAppOpsLocked(ILjava/util/List;)I
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v3, Landroid/app/AppOpsManager;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/app/AppOpsManager;

    .line 14
    .line 15
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 21
    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    const-wide v7, 0x7fffffffffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 30
    .line 31
    .line 32
    const/16 v5, 0x9

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;

    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    invoke-direct {v6, v7, v3}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v4, v5, v6}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 51
    .line 52
    .line 53
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    const-wide/16 v4, 0x7d0

    .line 56
    .line 57
    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 62
    .line 63
    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 64
    .line 65
    if-nez v3, :cond_0

    .line 66
    .line 67
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$4;

    .line 74
    .line 75
    invoke-direct {v4, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$4;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    .line 76
    .line 77
    .line 78
    const-wide/32 v5, 0xafc8

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    .line 83
    .line 84
    const/16 v3, 0x64

    .line 85
    .line 86
    iput v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 92
    .line 93
    invoke-static {v2, p1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 98
    .line 99
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(ILjava/util/List;Ljava/util/List;I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iget p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 104
    .line 105
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    .line 113
    .line 114
    const/4 p0, 0x0

    .line 115
    return p0

    .line 116
    :goto_1
    :try_start_1
    const-string p1, "StatsPullAtomService"

    .line 117
    .line 118
    const-string p2, "Could not read appops"

    .line 119
    .line 120
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    const/4 p0, 0x1

    .line 127
    return p0

    .line 128
    :catchall_1
    move-exception p0

    .line 129
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method public final pullCooldownDeviceLocked(ILjava/util/List;)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    :try_start_0
    invoke-interface {p0}, Landroid/os/IThermalService;->getCurrentCoolingDevices()[Landroid/os/CoolingDevice;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v3, p0

    .line 18
    const/4 v4, 0x0

    .line 19
    move v5, v4

    .line 20
    :goto_0
    if-ge v5, v3, :cond_1

    .line 21
    .line 22
    aget-object v6, p0, v5

    .line 23
    .line 24
    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    long-to-int v6, v9

    .line 37
    invoke-static {p1, v7, v8, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    return v4

    .line 53
    :catch_0
    :try_start_1
    const-string p0, "StatsPullAtomService"

    .line 54
    .line 55
    const-string p1, "Disconnected from thermal service. Cannot pull temperatures."

    .line 56
    .line 57
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    return v0

    .line 64
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final pullCpuActiveTimeLocked(ILjava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;-><init>(IILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final pullCpuClusterTimeLocked(ILjava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;-><init>(IILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final pullCpuCyclesPerThreadGroupCluster(ILjava/util/List;)I
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->disableSystemServicePowerAttr()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-class v0, Landroid/os/BatteryStatsInternal;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/BatteryStatsInternal;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/BatteryStatsInternal;->getSystemServiceCpuThreadTimes()Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    const/4 v2, 0x2

    .line 25
    iget-object v3, v0, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    .line 26
    .line 27
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    .line 31
    .line 32
    invoke-static {p1, p2, v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->readAbsolute()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const/4 v0, 0x0

    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    array-length v1, v1

    .line 49
    new-array v2, v1, [J

    .line 50
    .line 51
    move v3, v0

    .line 52
    :goto_0
    if-ge v3, v1, :cond_2

    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    .line 55
    .line 56
    aget-wide v4, v4, v3

    .line 57
    .line 58
    const-wide/16 v6, 0x3e8

    .line 59
    .line 60
    mul-long/2addr v4, v6

    .line 61
    aput-wide v4, v2, v3

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p0, 0x3

    .line 67
    invoke-static {p1, p2, p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return v0
.end method

.method public final pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    array-length v3, v7

    .line 23
    new-array v8, v3, [D

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v3, -0x1

    .line 27
    move v4, v9

    .line 28
    move v5, v4

    .line 29
    :goto_0
    array-length v10, v7

    .line 30
    if-ge v4, v10, :cond_1

    .line 31
    .line 32
    aget v10, v6, v4

    .line 33
    .line 34
    if-eq v10, v3, :cond_0

    .line 35
    .line 36
    move v5, v9

    .line 37
    :cond_0
    invoke-virtual {v1, v10, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    .line 38
    .line 39
    .line 40
    move-result-wide v11

    .line 41
    aput-wide v11, v8, v4

    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    move v3, v10

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 55
    .line 56
    new-instance v10, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;

    .line 57
    .line 58
    move-object v3, v10

    .line 59
    move-object v4, v1

    .line 60
    move v5, v2

    .line 61
    invoke-direct/range {v3 .. v8}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;-><init>(Landroid/util/SparseArray;I[I[J[D)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v10}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    move v3, v9

    .line 72
    :goto_1
    if-ge v3, v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, [D

    .line 83
    .line 84
    move v6, v9

    .line 85
    :goto_2
    if-ge v6, v2, :cond_2

    .line 86
    .line 87
    mul-int/lit8 v7, v6, 0x3

    .line 88
    .line 89
    aget-wide v10, v5, v7

    .line 90
    .line 91
    const-wide v12, 0x412e848000000000L    # 1000000.0

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    div-double/2addr v10, v12

    .line 97
    double-to-long v13, v10

    .line 98
    add-int/lit8 v8, v7, 0x1

    .line 99
    .line 100
    aget-wide v10, v5, v8

    .line 101
    .line 102
    double-to-long v11, v10

    .line 103
    add-int/lit8 v7, v7, 0x2

    .line 104
    .line 105
    aget-wide v7, v5, v7

    .line 106
    .line 107
    const-wide v15, 0x408f400000000000L    # 1000.0

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    div-double/2addr v7, v15

    .line 113
    double-to-long v7, v7

    .line 114
    move/from16 v10, p1

    .line 115
    .line 116
    move-wide v15, v11

    .line 117
    move v11, v4

    .line 118
    move v12, v6

    .line 119
    move-wide/from16 v17, v7

    .line 120
    .line 121
    invoke-static/range {v10 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJJ)Landroid/util/StatsEvent;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    move-object/from16 v8, p2

    .line 126
    .line 127
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    add-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_2
    move-object/from16 v8, p2

    .line 134
    .line 135
    add-int/lit8 v3, v3, 0x1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    return-void
.end method

.method public final pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    .line 4
    .line 5
    const-string v2, "StatsPullAtomService"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v0, "mKernelCpuThreadReader is null"

    .line 11
    .line 12
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v3

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getProcessCpuUsageDiffed()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const-string/jumbo v0, "processCpuUsages is null"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v3

    .line 29
    :cond_1
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getCpuFrequenciesKhz()[I

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    array-length v4, v0

    .line 36
    const/16 v5, 0x8

    .line 37
    .line 38
    if-le v4, v5, :cond_2

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v4, "Expected maximum 8 frequencies, but got "

    .line 43
    .line 44
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    array-length v0, v0

    .line 48
    invoke-static {v1, v0, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v3

    .line 52
    :cond_2
    const/4 v4, 0x0

    .line 53
    move v6, v4

    .line 54
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-ge v6, v7, :cond_7

    .line 59
    .line 60
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 65
    .line 66
    iget-object v8, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 67
    .line 68
    move v9, v4

    .line 69
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-ge v9, v10, :cond_6

    .line 74
    .line 75
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    check-cast v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 80
    .line 81
    iget-object v11, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    .line 82
    .line 83
    array-length v11, v11

    .line 84
    array-length v12, v0

    .line 85
    if-eq v11, v12, :cond_3

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v4, "Unexpected number of usage times, expected "

    .line 90
    .line 91
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    array-length v0, v0

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " but got "

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v0, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    .line 104
    .line 105
    array-length v0, v0

    .line 106
    invoke-static {v1, v0, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return v3

    .line 110
    :cond_3
    new-array v11, v5, [I

    .line 111
    .line 112
    new-array v12, v5, [I

    .line 113
    .line 114
    move v13, v4

    .line 115
    :goto_2
    if-ge v13, v5, :cond_5

    .line 116
    .line 117
    array-length v14, v0

    .line 118
    if-ge v13, v14, :cond_4

    .line 119
    .line 120
    aget v14, v0, v13

    .line 121
    .line 122
    aput v14, v11, v13

    .line 123
    .line 124
    iget-object v14, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    .line 125
    .line 126
    aget v14, v14, v13

    .line 127
    .line 128
    aput v14, v12, v13

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    aput v4, v11, v13

    .line 132
    .line 133
    aput v4, v12, v13

    .line 134
    .line 135
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    iget v15, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->uid:I

    .line 139
    .line 140
    iget v13, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    .line 141
    .line 142
    move/from16 v16, v13

    .line 143
    .line 144
    iget v13, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    .line 145
    .line 146
    move/from16 v17, v13

    .line 147
    .line 148
    iget-object v13, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    .line 149
    .line 150
    move-object/from16 v18, v13

    .line 151
    .line 152
    iget-object v10, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    .line 153
    .line 154
    move-object/from16 v19, v10

    .line 155
    .line 156
    aget v20, v11, v4

    .line 157
    .line 158
    aget v21, v12, v4

    .line 159
    .line 160
    aget v22, v11, v3

    .line 161
    .line 162
    aget v23, v12, v3

    .line 163
    .line 164
    const/4 v10, 0x2

    .line 165
    aget v24, v11, v10

    .line 166
    .line 167
    aget v25, v12, v10

    .line 168
    .line 169
    const/4 v10, 0x3

    .line 170
    aget v26, v11, v10

    .line 171
    .line 172
    aget v27, v12, v10

    .line 173
    .line 174
    const/4 v10, 0x4

    .line 175
    aget v28, v11, v10

    .line 176
    .line 177
    aget v29, v12, v10

    .line 178
    .line 179
    const/4 v10, 0x5

    .line 180
    aget v30, v11, v10

    .line 181
    .line 182
    aget v31, v12, v10

    .line 183
    .line 184
    const/4 v10, 0x6

    .line 185
    aget v32, v11, v10

    .line 186
    .line 187
    aget v33, v12, v10

    .line 188
    .line 189
    const/4 v10, 0x7

    .line 190
    aget v34, v11, v10

    .line 191
    .line 192
    aget v35, v12, v10

    .line 193
    .line 194
    move/from16 v14, p1

    .line 195
    .line 196
    invoke-static/range {v14 .. v35}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    move-object/from16 v11, p2

    .line 201
    .line 202
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    add-int/lit8 v9, v9, 0x1

    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :cond_6
    move-object/from16 v11, p2

    .line 210
    .line 211
    add-int/lit8 v6, v6, 0x1

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_7
    return v4
.end method

.method public final pullCpuTimePerUidFreqLocked(ILjava/util/List;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;-><init>(Landroid/util/SparseArray;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    if-ge v2, p0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, [J

    .line 33
    .line 34
    move v5, v1

    .line 35
    :goto_1
    array-length v6, v4

    .line 36
    if-ge v5, v6, :cond_1

    .line 37
    .line 38
    aget-wide v6, v4, v5

    .line 39
    .line 40
    const-wide/16 v8, 0xa

    .line 41
    .line 42
    cmp-long v8, v6, v8

    .line 43
    .line 44
    if-ltz v8, :cond_0

    .line 45
    .line 46
    invoke-static {p1, v3, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method

.method public final pullCpuTimePerUidLocked(ILjava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;-><init>(IILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final pullDangerousPermissionStateLocked(ILjava/util/List;)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v8

    .line 9
    const-string v1, "dangerous_permission_state_sample_rate"

    .line 10
    .line 11
    const v2, 0x3c75c28f    # 0.015f

    .line 12
    .line 13
    .line 14
    const-string/jumbo v3, "permissions"

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 18
    .line 19
    .line 20
    move-result v10

    .line 21
    new-instance v11, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v13

    .line 32
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-class v1, Landroid/os/UserManager;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/os/UserManager;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v14

    .line 46
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v15

    .line 50
    const/4 v5, 0x0

    .line 51
    :goto_0
    if-ge v5, v15, :cond_9

    .line 52
    .line 53
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/16 v1, 0x1000

    .line 68
    .line 69
    invoke-virtual {v13, v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const/4 v1, 0x0

    .line 78
    :goto_1
    if-ge v1, v2, :cond_8

    .line 79
    .line 80
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 85
    .line 86
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 87
    .line 88
    if-nez v12, :cond_1

    .line 89
    .line 90
    :cond_0
    :goto_2
    move/from16 v16, v1

    .line 91
    .line 92
    move/from16 v19, v2

    .line 93
    .line 94
    move-object/from16 v21, v3

    .line 95
    .line 96
    move-object/from16 v20, v4

    .line 97
    .line 98
    move/from16 v22, v5

    .line 99
    .line 100
    move/from16 v17, v10

    .line 101
    .line 102
    const/16 v23, 0x0

    .line 103
    .line 104
    move-object/from16 v1, p2

    .line 105
    .line 106
    goto/16 :goto_9

    .line 107
    .line 108
    :cond_1
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 109
    .line 110
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 111
    .line 112
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-eqz v12, :cond_2

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 124
    .line 125
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 126
    .line 127
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    const/16 v12, 0x2753

    .line 135
    .line 136
    if-ne v7, v12, :cond_3

    .line 137
    .line 138
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    invoke-virtual {v12}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    cmpl-float v12, v12, v10

    .line 147
    .line 148
    if-lez v12, :cond_3

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    goto/16 :goto_a

    .line 153
    .line 154
    :cond_3
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 155
    .line 156
    array-length v12, v12

    .line 157
    const/4 v6, 0x0

    .line 158
    :goto_3
    if-ge v6, v12, :cond_0

    .line 159
    .line 160
    move/from16 v16, v1

    .line 161
    .line 162
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 163
    .line 164
    aget-object v1, v1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    move/from16 v17, v10

    .line 167
    .line 168
    const/4 v10, 0x0

    .line 169
    :try_start_1
    invoke-virtual {v13, v1, v10}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 170
    .line 171
    .line 172
    move-result-object v18
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v13, v1, v10, v4}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 176
    .line 177
    .line 178
    move-result v10
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    move/from16 v19, v2

    .line 180
    .line 181
    :try_start_3
    const-string v2, "android.permission."

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_4

    .line 188
    .line 189
    const/16 v2, 0x13

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    :cond_4
    const/16 v2, 0x2742

    .line 196
    .line 197
    if-ne v7, v2, :cond_6

    .line 198
    .line 199
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 200
    .line 201
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 202
    .line 203
    const-string v20, ""

    .line 204
    .line 205
    move-object/from16 v21, v3

    .line 206
    .line 207
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 208
    .line 209
    aget v3, v3, v6

    .line 210
    .line 211
    and-int/lit8 v3, v3, 0x2

    .line 212
    .line 213
    if-eqz v3, :cond_5

    .line 214
    .line 215
    const/16 v22, 0x1

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_5
    const/16 v22, 0x0

    .line 219
    .line 220
    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 225
    .line 226
    .line 227
    move-result v18

    .line 228
    or-int v18, v3, v18

    .line 229
    .line 230
    move-object v3, v0

    .line 231
    move/from16 v0, p1

    .line 232
    .line 233
    move-object v7, v3

    .line 234
    move-object/from16 v3, v20

    .line 235
    .line 236
    move-object/from16 v20, v4

    .line 237
    .line 238
    move/from16 v4, v22

    .line 239
    .line 240
    move/from16 v22, v5

    .line 241
    .line 242
    move v5, v10

    .line 243
    move/from16 v24, v6

    .line 244
    .line 245
    const/16 v23, 0x0

    .line 246
    .line 247
    move/from16 v6, v18

    .line 248
    .line 249
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;ILjava/lang/String;ZII)Landroid/util/StatsEvent;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    :goto_5
    move-object/from16 v1, p2

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_6
    move-object v7, v0

    .line 257
    move-object/from16 v21, v3

    .line 258
    .line 259
    move-object/from16 v20, v4

    .line 260
    .line 261
    move/from16 v22, v5

    .line 262
    .line 263
    move/from16 v24, v6

    .line 264
    .line 265
    const/16 v23, 0x0

    .line 266
    .line 267
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 268
    .line 269
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 270
    .line 271
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 272
    .line 273
    aget v0, v0, v24

    .line 274
    .line 275
    and-int/lit8 v0, v0, 0x2

    .line 276
    .line 277
    if-eqz v0, :cond_7

    .line 278
    .line 279
    const/4 v3, 0x1

    .line 280
    goto :goto_6

    .line 281
    :cond_7
    move/from16 v3, v23

    .line 282
    .line 283
    :goto_6
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    or-int v5, v0, v4

    .line 292
    .line 293
    move/from16 v0, p1

    .line 294
    .line 295
    move v4, v10

    .line 296
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IZII)Landroid/util/StatsEvent;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    goto :goto_5

    .line 301
    :goto_7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    .line 303
    .line 304
    goto :goto_8

    .line 305
    :catch_0
    move-object/from16 v1, p2

    .line 306
    .line 307
    move-object v7, v0

    .line 308
    move/from16 v19, v2

    .line 309
    .line 310
    move-object/from16 v21, v3

    .line 311
    .line 312
    move-object/from16 v20, v4

    .line 313
    .line 314
    move/from16 v22, v5

    .line 315
    .line 316
    move/from16 v24, v6

    .line 317
    .line 318
    const/16 v23, 0x0

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :catch_1
    move-object/from16 v1, p2

    .line 322
    .line 323
    move-object v7, v0

    .line 324
    move/from16 v19, v2

    .line 325
    .line 326
    move-object/from16 v21, v3

    .line 327
    .line 328
    move-object/from16 v20, v4

    .line 329
    .line 330
    move/from16 v22, v5

    .line 331
    .line 332
    move/from16 v24, v6

    .line 333
    .line 334
    move/from16 v23, v10

    .line 335
    .line 336
    :goto_8
    add-int/lit8 v6, v24, 0x1

    .line 337
    .line 338
    move-object v0, v7

    .line 339
    move/from16 v1, v16

    .line 340
    .line 341
    move/from16 v10, v17

    .line 342
    .line 343
    move/from16 v2, v19

    .line 344
    .line 345
    move-object/from16 v4, v20

    .line 346
    .line 347
    move-object/from16 v3, v21

    .line 348
    .line 349
    move/from16 v5, v22

    .line 350
    .line 351
    move/from16 v7, p1

    .line 352
    .line 353
    goto/16 :goto_3

    .line 354
    .line 355
    :goto_9
    add-int/lit8 v0, v16, 0x1

    .line 356
    .line 357
    move/from16 v7, p1

    .line 358
    .line 359
    move v1, v0

    .line 360
    move/from16 v10, v17

    .line 361
    .line 362
    move/from16 v2, v19

    .line 363
    .line 364
    move-object/from16 v4, v20

    .line 365
    .line 366
    move-object/from16 v3, v21

    .line 367
    .line 368
    move/from16 v5, v22

    .line 369
    .line 370
    goto/16 :goto_1

    .line 371
    .line 372
    :cond_8
    move-object/from16 v1, p2

    .line 373
    .line 374
    move/from16 v22, v5

    .line 375
    .line 376
    move/from16 v17, v10

    .line 377
    .line 378
    const/16 v23, 0x0

    .line 379
    .line 380
    add-int/lit8 v5, v22, 0x1

    .line 381
    .line 382
    move/from16 v7, p1

    .line 383
    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :cond_9
    const/16 v23, 0x0

    .line 387
    .line 388
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    .line 390
    .line 391
    return v23

    .line 392
    :goto_a
    :try_start_4
    const-string v1, "StatsPullAtomService"

    .line 393
    .line 394
    const-string v2, "Could not read permissions"

    .line 395
    .line 396
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 397
    .line 398
    .line 399
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    .line 401
    .line 402
    const/4 v1, 0x1

    .line 403
    return v1

    .line 404
    :catchall_1
    move-exception v0

    .line 405
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    .line 407
    .line 408
    throw v0
.end method

.method public final pullDebugElapsedClockLocked(ILjava/util/List;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v12

    .line 9
    iget-wide v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v6, v2, v4

    .line 14
    .line 15
    if-nez v6, :cond_0

    .line 16
    .line 17
    move-wide v14, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sub-long v2, v12, v2

    .line 20
    .line 21
    move-wide v14, v2

    .line 22
    :goto_0
    iget-wide v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 23
    .line 24
    const/4 v11, 0x1

    .line 25
    move/from16 v2, p1

    .line 26
    .line 27
    move-wide v5, v12

    .line 28
    move-wide v7, v12

    .line 29
    move-wide v9, v14

    .line 30
    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-wide v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 38
    .line 39
    const-wide/16 v5, 0x2

    .line 40
    .line 41
    rem-long v5, v3, v5

    .line 42
    .line 43
    const-wide/16 v16, 0x1

    .line 44
    .line 45
    cmp-long v2, v5, v16

    .line 46
    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    const/4 v11, 0x2

    .line 50
    move/from16 v2, p1

    .line 51
    .line 52
    move-wide v5, v12

    .line 53
    move-wide v7, v12

    .line 54
    move-wide v9, v14

    .line 55
    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-wide v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 63
    .line 64
    add-long v1, v1, v16

    .line 65
    .line 66
    iput-wide v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 67
    .line 68
    iput-wide v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    .line 69
    .line 70
    return-void
.end method

.method public final pullDebugFailingElapsedClockLocked(ILjava/util/List;)I
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v9

    .line 5
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    .line 6
    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    add-long/2addr v2, v0

    .line 10
    iput-wide v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    .line 11
    .line 12
    const-wide/16 v4, 0x5

    .line 13
    .line 14
    rem-long/2addr v0, v4

    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    cmp-long v0, v0, v4

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iput-wide v9, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 22
    .line 23
    const-string p0, "StatsPullAtomService"

    .line 24
    .line 25
    const-string p1, "Failing debug elapsed clock"

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 33
    .line 34
    cmp-long v6, v0, v4

    .line 35
    .line 36
    if-nez v6, :cond_1

    .line 37
    .line 38
    move-wide v7, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sub-long v0, v9, v0

    .line 41
    .line 42
    move-wide v7, v0

    .line 43
    :goto_0
    move v0, p1

    .line 44
    move-wide v1, v2

    .line 45
    move-wide v3, v9

    .line 46
    move-wide v5, v9

    .line 47
    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJ)Landroid/util/StatsEvent;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iput-wide v9, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return p0
.end method

.method public final pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/os/BatteryStatsManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/os/BatteryStatsManager;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide v2, 0x41ead27480000000L    # 3.6E9

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    mul-double/2addr v0, v2

    .line 25
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 26
    .line 27
    add-double/2addr v0, v2

    .line 28
    double-to-long v0, v0

    .line 29
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string p1, "StatsPullAtomService"

    .line 40
    .line 41
    const-string p2, "Could not obtain battery usage stats"

    .line 42
    .line 43
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    return p0
.end method

.method public final pullDiskIOLocked(ILjava/util/List;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;-><init>(ILjava/util/List;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final pullDiskStatsLocked(ILjava/util/List;)I
    .locals 9

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_0

    .line 8
    .line 9
    int-to-byte v4, v3

    .line 10
    aput-byte v4, v1, v3

    .line 11
    .line 12
    add-int/lit8 v3, v3, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string/jumbo v4, "system/statsdperftest.tmp"

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    const/4 v5, 0x0

    .line 32
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    .line 33
    .line 34
    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    .line 36
    .line 37
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    move-object v1, v5

    .line 44
    goto :goto_3

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    move-object v5, v6

    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception v1

    .line 49
    goto :goto_2

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :catch_2
    move-exception v1

    .line 53
    move-object v6, v5

    .line 54
    goto :goto_2

    .line 55
    :goto_1
    if-eqz v5, :cond_1

    .line 56
    .line 57
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 58
    .line 59
    .line 60
    :catch_3
    :cond_1
    throw p0

    .line 61
    :goto_2
    if-eqz v6, :cond_2

    .line 62
    .line 63
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 64
    .line 65
    .line 66
    :catch_4
    :cond_2
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v6

    .line 70
    sub-long/2addr v6, v3

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 78
    .line 79
    .line 80
    :cond_3
    if-eqz v1, :cond_4

    .line 81
    .line 82
    const-string v0, "StatsPullAtomService"

    .line 83
    .line 84
    const-string v1, "Error performing diskstats latency test"

    .line 85
    .line 86
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    const-wide/16 v6, -0x1

    .line 90
    .line 91
    :cond_4
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    .line 96
    .line 97
    monitor-enter v1

    .line 98
    :try_start_5
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 99
    .line 100
    if-nez v3, :cond_5

    .line 101
    .line 102
    const-string/jumbo v3, "storaged"

    .line 103
    .line 104
    .line 105
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {v3}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    iput-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :catchall_2
    move-exception p0

    .line 117
    goto :goto_7

    .line 118
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 119
    .line 120
    if-eqz v3, :cond_6

    .line 121
    .line 122
    :try_start_6
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    .line 127
    .line 128
    const/4 v8, 0x2

    .line 129
    invoke-direct {v4, p0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v3, v4, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :catch_5
    move-exception v3

    .line 137
    :try_start_7
    const-string v4, "StatsPullAtomService"

    .line 138
    .line 139
    const-string v8, "linkToDeath with storagedService failed"

    .line 140
    .line 141
    invoke-static {v4, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .line 143
    .line 144
    iput-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 145
    .line 146
    :cond_6
    :goto_5
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 147
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 148
    .line 149
    if-nez p0, :cond_7

    .line 150
    .line 151
    const/4 p0, 0x1

    .line 152
    return p0

    .line 153
    :cond_7
    :try_start_8
    invoke-interface {p0}, Landroid/os/IStoraged;->getRecentPerf()I

    .line 154
    .line 155
    .line 156
    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    .line 157
    goto :goto_6

    .line 158
    :catch_6
    const-string p0, "StatsPullAtomService"

    .line 159
    .line 160
    const-string/jumbo v1, "storaged not found"

    .line 161
    .line 162
    .line 163
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    const/4 p0, -0x1

    .line 167
    :goto_6
    invoke-static {p1, v6, v7, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJZI)Landroid/util/StatsEvent;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    return v2

    .line 175
    :goto_7
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 176
    throw p0
.end method

.method public final pullExternalStorageInfoLocked(ILjava/util/List;)I
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_6

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    const-string/jumbo v4, "mounted"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/4 v4, 0x2

    .line 55
    const/4 v5, 0x3

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    move v1, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ne v1, v0, :cond_3

    .line 65
    .line 66
    move v1, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move v1, v5

    .line 69
    :goto_1
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    move v4, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    move v4, v5

    .line 85
    :goto_2
    iget-wide v2, v3, Landroid/os/storage/DiskInfo;->size:J

    .line 86
    .line 87
    invoke-static {p1, v4, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    const/4 p0, 0x0

    .line 96
    return p0
.end method

.method public final pullFaceSettingsLocked(ILjava/util/List;)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v4, Landroid/os/UserManager;

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    return v4

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x0

    .line 33
    move v7, v6

    .line 34
    :goto_0
    if-ge v7, v5, :cond_7

    .line 35
    .line 36
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    check-cast v8, Landroid/content/pm/UserInfo;

    .line 41
    .line 42
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    iget-object v9, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-string v10, "face_unlock_keyguard_enabled"

    .line 57
    .line 58
    invoke-static {v9, v10, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    iget-object v10, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    const-string v11, "face_unlock_dismisses_keyguard"

    .line 69
    .line 70
    invoke-static {v10, v11, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    iget-object v11, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    const-string v12, "face_unlock_attention_required"

    .line 81
    .line 82
    invoke-static {v11, v12, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    const-string v13, "face_unlock_app_enabled"

    .line 93
    .line 94
    invoke-static {v12, v13, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    const-string v14, "face_unlock_always_require_confirmation"

    .line 105
    .line 106
    invoke-static {v13, v14, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    iget-object v14, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 113
    .line 114
    .line 115
    move-result-object v14

    .line 116
    const-string v15, "face_unlock_diversity_required"

    .line 117
    .line 118
    invoke-static {v14, v15, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v9, :cond_1

    .line 123
    .line 124
    move v15, v4

    .line 125
    goto :goto_1

    .line 126
    :cond_1
    move v15, v6

    .line 127
    :goto_1
    if-eqz v10, :cond_2

    .line 128
    .line 129
    move/from16 v16, v4

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    move/from16 v16, v6

    .line 133
    .line 134
    :goto_2
    if-eqz v11, :cond_3

    .line 135
    .line 136
    move/from16 v17, v4

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_3
    move/from16 v17, v6

    .line 140
    .line 141
    :goto_3
    if-eqz v12, :cond_4

    .line 142
    .line 143
    move/from16 v18, v4

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_4
    move/from16 v18, v6

    .line 147
    .line 148
    :goto_4
    if-eqz v13, :cond_5

    .line 149
    .line 150
    move/from16 v19, v4

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_5
    move/from16 v19, v6

    .line 154
    .line 155
    :goto_5
    if-eqz v8, :cond_6

    .line 156
    .line 157
    move/from16 v20, v4

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_6
    move/from16 v20, v6

    .line 161
    .line 162
    :goto_6
    move/from16 v14, p1

    .line 163
    .line 164
    invoke-static/range {v14 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZZ)Landroid/util/StatsEvent;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    move-object/from16 v9, p2

    .line 169
    .line 170
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    .line 173
    add-int/lit8 v7, v7, 0x1

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :catchall_0
    move-exception v0

    .line 178
    goto :goto_7

    .line 179
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    .line 181
    .line 182
    return v6

    .line 183
    :goto_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    .line 185
    .line 186
    throw v0
.end method

.method public final pullHealthHalLocked(ILjava/util/List;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapper;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    const/16 v1, 0x2723

    .line 15
    .line 16
    if-eq p1, v1, :cond_6

    .line 17
    .line 18
    const/16 v1, 0x2724

    .line 19
    .line 20
    if-eq p1, v1, :cond_5

    .line 21
    .line 22
    const/16 v1, 0x272e

    .line 23
    .line 24
    if-eq p1, v1, :cond_4

    .line 25
    .line 26
    const/16 v1, 0x273b

    .line 27
    .line 28
    if-eq p1, v1, :cond_3

    .line 29
    .line 30
    const/16 v1, 0x273d

    .line 31
    .line 32
    if-eq p1, v1, :cond_2

    .line 33
    .line 34
    return v0

    .line 35
    :cond_2
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_5
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_6
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 48
    .line 49
    :goto_0
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :catch_0
    return v0
.end method

.method public final pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 15
    .line 16
    const-string v2, "android.software.incremental_delivery"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    return v3

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    :try_start_0
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    array-length v6, v2

    .line 43
    move v7, v3

    .line 44
    :goto_0
    if-ge v7, v6, :cond_3

    .line 45
    .line 46
    aget v8, v2, v7

    .line 47
    .line 48
    invoke-virtual {v0, v3, v8}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-eqz v10, :cond_2

    .line 61
    .line 62
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 67
    .line 68
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 69
    .line 70
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-static {v11}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    if-eqz v11, :cond_1

    .line 79
    .line 80
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    const/16 v12, 0x3e8

    .line 83
    .line 84
    invoke-virtual {v1, v12, v8, v11}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(IILjava/lang/String;)Landroid/content/pm/IncrementalStatesInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 89
    .line 90
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 91
    .line 92
    invoke-virtual {v11}, Landroid/content/pm/IncrementalStatesInfo;->isLoading()Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    invoke-virtual {v11}, Landroid/content/pm/IncrementalStatesInfo;->getLoadingCompletedTime()J

    .line 97
    .line 98
    .line 99
    move-result-wide v13

    .line 100
    move/from16 v11, p1

    .line 101
    .line 102
    invoke-static {v11, v10, v12, v13, v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZJ)Landroid/util/StatsEvent;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    move-object/from16 v12, p2

    .line 107
    .line 108
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    goto :goto_3

    .line 114
    :catch_0
    move-exception v0

    .line 115
    goto :goto_2

    .line 116
    :cond_1
    move/from16 v11, p1

    .line 117
    .line 118
    move-object/from16 v12, p2

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    move/from16 v11, p1

    .line 122
    .line 123
    move-object/from16 v12, p2

    .line 124
    .line 125
    add-int/lit8 v7, v7, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    .line 130
    .line 131
    return v3

    .line 132
    :goto_2
    :try_start_1
    const-string v1, "StatsPullAtomService"

    .line 133
    .line 134
    const-string v2, "failed to pullInstalledIncrementalPackagesLocked"

    .line 135
    .line 136
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .line 138
    .line 139
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    .line 141
    .line 142
    const/4 v0, 0x1

    .line 143
    return v0

    .line 144
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    .line 146
    .line 147
    throw v0
.end method

.method public final pullKernelWakelockLocked(ILjava/util/List;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/server/power/stats/KernelWakelockReader;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/server/power/stats/KernelWakelockStats;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v3, v1

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    .line 41
    .line 42
    iget v4, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    .line 43
    .line 44
    iget v5, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    .line 45
    .line 46
    iget-wide v6, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    .line 47
    .line 48
    move v2, p1

    .line 49
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IIJ)Landroid/util/StatsEvent;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public final pullKeystoreAtoms(ILjava/util/List;)I
    .locals 6

    .line 1
    const-string v0, "Unsupported keystore atom: "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x1

    .line 8
    const-string v2, "StatsPullAtomService"

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "Keystore service is null"

    .line 13
    .line 14
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    :try_start_0
    invoke-interface {p0, p1}, Landroid/security/metrics/IKeystoreMetrics;->pullMetrics(I)[Landroid/security/metrics/KeystoreAtom;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/16 v5, 0x2777

    .line 27
    .line 28
    if-eq p1, v5, :cond_1

    .line 29
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :pswitch_0
    :try_start_1
    invoke-static {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    .line 59
    .line 60
    .line 61
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    return p0

    .line 66
    :pswitch_1
    :try_start_2
    invoke-static {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    .line 67
    .line 68
    .line 69
    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    return p0

    .line 74
    :pswitch_2
    :try_start_3
    invoke-static {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    .line 75
    .line 76
    .line 77
    move-result p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    return p0

    .line 82
    :pswitch_3
    :try_start_4
    invoke-static {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    .line 83
    .line 84
    .line 85
    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    return p0

    .line 90
    :pswitch_4
    :try_start_5
    invoke-static {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    .line 91
    .line 92
    .line 93
    move-result p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    return p0

    .line 98
    :pswitch_5
    :try_start_6
    invoke-static {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    .line 99
    .line 100
    .line 101
    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 102
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    .line 104
    .line 105
    return p0

    .line 106
    :pswitch_6
    :try_start_7
    invoke-static {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    .line 107
    .line 108
    .line 109
    move-result p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 110
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    .line 112
    .line 113
    return p0

    .line 114
    :pswitch_7
    :try_start_8
    invoke-static {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    .line 115
    .line 116
    .line 117
    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 118
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    return p0

    .line 122
    :cond_1
    :try_start_9
    invoke-static {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    .line 123
    .line 124
    .line 125
    move-result p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 126
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    return p0

    .line 130
    :goto_0
    :try_start_a
    const-string/jumbo p1, "pulling keystore metrics failed"

    .line 131
    .line 132
    .line 133
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 134
    .line 135
    .line 136
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    .line 138
    .line 139
    return v1

    .line 140
    :goto_1
    :try_start_b
    const-string p1, "Disconnected from keystore service. Cannot pull."

    .line 141
    .line 142
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 143
    .line 144
    .line 145
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    return v1

    .line 149
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :pswitch_data_0
    .packed-switch 0x2786
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final pullMediaCapabilitiesStats(ILjava/util/List;)I
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "StatsPullAtomService"

    .line 4
    .line 5
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v3, "android.software.leanback"

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-class v4, Landroid/media/AudioManager;

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/media/AudioManager;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return v3

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getSurroundFormats()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-instance v5, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v0}, Landroid/media/AudioManager;->getReportedSurroundFormats()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v6, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_3

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    check-cast v7, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->isSurroundFormatEnabled(I)Z

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    if-nez v10, :cond_2

    .line 98
    .line 99
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-static {v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-static {v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    invoke-virtual {v0}, Landroid/media/AudioManager;->getEncodedSurroundMode()I

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    const-class v4, Landroid/hardware/display/DisplayManager;

    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    move-object v4, v0

    .line 128
    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    new-array v7, v5, [B

    .line 140
    .line 141
    if-eqz v6, :cond_4

    .line 142
    .line 143
    invoke-virtual {v6}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-static {v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    move-object v13, v6

    .line 152
    goto :goto_1

    .line 153
    :cond_4
    move-object v13, v7

    .line 154
    :goto_1
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v6, Landroid/util/ArrayMap;

    .line 159
    .line 160
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 161
    .line 162
    .line 163
    array-length v7, v0

    .line 164
    move v15, v3

    .line 165
    move v14, v5

    .line 166
    :goto_2
    if-ge v14, v7, :cond_a

    .line 167
    .line 168
    aget-object v17, v0, v14

    .line 169
    .line 170
    invoke-virtual/range {v17 .. v17}, Landroid/view/Display$Mode;->getModeId()I

    .line 171
    .line 172
    .line 173
    move-result v18

    .line 174
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_5

    .line 183
    .line 184
    move/from16 v19, v7

    .line 185
    .line 186
    move-object/from16 v24, v11

    .line 187
    .line 188
    move/from16 v23, v12

    .line 189
    .line 190
    move-object/from16 v22, v13

    .line 191
    .line 192
    goto/16 :goto_7

    .line 193
    .line 194
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/view/Display$Mode;->getModeId()I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v6, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {v17 .. v17}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    array-length v5, v3

    .line 214
    move/from16 v19, v7

    .line 215
    .line 216
    const/4 v7, 0x0

    .line 217
    :goto_3
    if-ge v7, v5, :cond_9

    .line 218
    .line 219
    move/from16 v20, v5

    .line 220
    .line 221
    aget v5, v3, v7

    .line 222
    .line 223
    move-object/from16 v21, v3

    .line 224
    .line 225
    invoke-virtual/range {v17 .. v17}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    move-object/from16 v22, v13

    .line 230
    .line 231
    invoke-virtual/range {v17 .. v17}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    move/from16 v23, v12

    .line 236
    .line 237
    array-length v12, v0

    .line 238
    move-object/from16 v24, v11

    .line 239
    .line 240
    const/4 v11, 0x0

    .line 241
    :goto_4
    if-ge v11, v12, :cond_7

    .line 242
    .line 243
    move/from16 v25, v12

    .line 244
    .line 245
    aget-object v12, v0, v11

    .line 246
    .line 247
    invoke-virtual {v12, v3, v13, v5}, Landroid/view/Display$Mode;->matches(IIF)Z

    .line 248
    .line 249
    .line 250
    move-result v26

    .line 251
    if-eqz v26, :cond_6

    .line 252
    .line 253
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    :goto_5
    const/4 v5, -0x1

    .line 258
    goto :goto_6

    .line 259
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 260
    .line 261
    move/from16 v12, v25

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_7
    const/4 v3, -0x1

    .line 265
    goto :goto_5

    .line 266
    :goto_6
    if-eq v3, v5, :cond_8

    .line 267
    .line 268
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v11

    .line 276
    if-nez v11, :cond_8

    .line 277
    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    invoke-virtual {v6, v3, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 290
    .line 291
    move/from16 v5, v20

    .line 292
    .line 293
    move-object/from16 v3, v21

    .line 294
    .line 295
    move-object/from16 v13, v22

    .line 296
    .line 297
    move/from16 v12, v23

    .line 298
    .line 299
    move-object/from16 v11, v24

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_9
    move-object/from16 v24, v11

    .line 303
    .line 304
    move/from16 v23, v12

    .line 305
    .line 306
    move-object/from16 v22, v13

    .line 307
    .line 308
    add-int/lit8 v15, v15, 0x1

    .line 309
    .line 310
    :goto_7
    add-int/lit8 v14, v14, 0x1

    .line 311
    .line 312
    move/from16 v7, v19

    .line 313
    .line 314
    move-object/from16 v13, v22

    .line 315
    .line 316
    move/from16 v12, v23

    .line 317
    .line 318
    move-object/from16 v11, v24

    .line 319
    .line 320
    const/4 v5, 0x0

    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :cond_a
    move-object/from16 v24, v11

    .line 324
    .line 325
    move/from16 v23, v12

    .line 326
    .line 327
    move-object/from16 v22, v13

    .line 328
    .line 329
    const/4 v5, -0x1

    .line 330
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    .line 331
    .line 332
    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 333
    .line 334
    .line 335
    array-length v7, v0

    .line 336
    const/4 v11, 0x0

    .line 337
    :goto_8
    if-ge v11, v7, :cond_b

    .line 338
    .line 339
    aget-object v12, v0, v11

    .line 340
    .line 341
    new-instance v13, Landroid/util/proto/ProtoOutputStream;

    .line 342
    .line 343
    invoke-direct {v13}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 347
    .line 348
    .line 349
    move-result v14

    .line 350
    move-object v15, v6

    .line 351
    const-wide v5, 0x10500000001L

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    invoke-virtual {v13, v5, v6, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 357
    .line 358
    .line 359
    const-wide v5, 0x10500000002L

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 365
    .line 366
    .line 367
    move-result v14

    .line 368
    invoke-virtual {v13, v5, v6, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 369
    .line 370
    .line 371
    const-wide v5, 0x10200000003L

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 377
    .line 378
    .line 379
    move-result v14

    .line 380
    invoke-virtual {v13, v5, v6, v14}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    move-object v6, v15

    .line 392
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    check-cast v5, Ljava/lang/Integer;

    .line 397
    .line 398
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    const-wide v14, 0x10500000004L

    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    invoke-virtual {v13, v14, v15, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 408
    .line 409
    .line 410
    const-wide v14, 0x20b00000001L

    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    invoke-virtual {v13}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-virtual {v3, v14, v15, v5}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 420
    .line 421
    .line 422
    add-int/lit8 v11, v11, 0x1

    .line 423
    .line 424
    const/4 v5, -0x1

    .line 425
    goto :goto_8

    .line 426
    :cond_b
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 427
    .line 428
    .line 429
    move-result-object v14

    .line 430
    invoke-static {}, Landroid/media/MediaDrm;->getSupportedCryptoSchemes()Ljava/util/List;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    if-nez v3, :cond_c

    .line 439
    .line 440
    new-instance v3, Landroid/media/MediaDrm;

    .line 441
    .line 442
    const/4 v5, 0x0

    .line 443
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    check-cast v0, Ljava/util/UUID;

    .line 448
    .line 449
    invoke-direct {v3, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3}, Landroid/media/MediaDrm;->getConnectedHdcpLevel()I

    .line 453
    .line 454
    .line 455
    move-result v0
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    goto :goto_9

    .line 457
    :catch_0
    move-exception v0

    .line 458
    goto :goto_a

    .line 459
    :cond_c
    const/4 v0, -0x1

    .line 460
    :goto_9
    move v15, v0

    .line 461
    goto :goto_b

    .line 462
    :goto_a
    const-string/jumbo v3, "pulling hdcp level failed."

    .line 463
    .line 464
    .line 465
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    .line 467
    .line 468
    const/4 v15, -0x1

    .line 469
    :goto_b
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getMatchContentFrameRateUserPreference()I

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getUserDisabledHdrTypes()[I

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    .line 478
    .line 479
    .line 480
    move-result-object v17

    .line 481
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getGlobalUserPreferredDisplayMode()Landroid/view/Display$Mode;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    if-eqz v0, :cond_d

    .line 486
    .line 487
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    goto :goto_c

    .line 492
    :cond_d
    const/4 v4, -0x1

    .line 493
    :goto_c
    if-eqz v0, :cond_e

    .line 494
    .line 495
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    move/from16 v19, v5

    .line 500
    .line 501
    goto :goto_d

    .line 502
    :cond_e
    const/16 v19, -0x1

    .line 503
    .line 504
    :goto_d
    if-eqz v0, :cond_f

    .line 505
    .line 506
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 507
    .line 508
    .line 509
    move-result v0

    .line 510
    :goto_e
    move/from16 v20, v0

    .line 511
    .line 512
    goto :goto_f

    .line 513
    :cond_f
    const/4 v0, 0x0

    .line 514
    goto :goto_e

    .line 515
    :goto_f
    :try_start_1
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 516
    .line 517
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    const-string/jumbo v1, "minimal_post_processing_allowed"

    .line 522
    .line 523
    .line 524
    const/4 v5, 0x1

    .line 525
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 526
    .line 527
    .line 528
    move-result v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 529
    if-nez v0, :cond_10

    .line 530
    .line 531
    goto :goto_10

    .line 532
    :cond_10
    const/4 v5, 0x0

    .line 533
    :goto_10
    move/from16 v21, v5

    .line 534
    .line 535
    goto :goto_11

    .line 536
    :catch_1
    move-exception v0

    .line 537
    const-string/jumbo v1, "unable to find setting for MINIMAL_POST_PROCESSING_ALLOWED."

    .line 538
    .line 539
    .line 540
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    .line 542
    .line 543
    const/16 v21, 0x0

    .line 544
    .line 545
    :goto_11
    move/from16 v7, p1

    .line 546
    .line 547
    move-object/from16 v11, v24

    .line 548
    .line 549
    move/from16 v12, v23

    .line 550
    .line 551
    move-object/from16 v13, v22

    .line 552
    .line 553
    move/from16 v16, v3

    .line 554
    .line 555
    move/from16 v18, v4

    .line 556
    .line 557
    invoke-static/range {v7 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B[B[B[BI[B[BII[BIIFZ)Landroid/util/StatsEvent;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    move-object/from16 v1, p2

    .line 562
    .line 563
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    const/4 v1, 0x0

    .line 567
    return v1
.end method

.method public final pullModemActivityInfoLocked(ILjava/util/List;)I
    .locals 28

    .line 1
    const-string v1, "StatsPullAtomService"

    .line 2
    .line 3
    const-string/jumbo v2, "timeout or interrupt reading modem stats: "

    .line 4
    .line 5
    .line 6
    const-string v3, "exception reading modem stats: "

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v4

    .line 12
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 15
    .line 16
    .line 17
    move-object/from16 v6, p0

    .line 18
    .line 19
    iget-object v6, v6, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 20
    .line 21
    new-instance v7, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v8, Lcom/android/server/stats/pull/StatsPullAtomService$3;

    .line 27
    .line 28
    invoke-direct {v8, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$3;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    :try_start_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    .line 37
    const-wide/16 v8, 0x7d0

    .line 38
    .line 39
    invoke-virtual {v0, v8, v9, v7}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return v6

    .line 51
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v8

    .line 55
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v10

    .line 59
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v12

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v14

    .line 68
    invoke-virtual {v0, v6}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    .line 69
    .line 70
    .line 71
    move-result-wide v16

    .line 72
    const/4 v2, 0x2

    .line 73
    invoke-virtual {v0, v2}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v18

    .line 77
    const/4 v2, 0x3

    .line 78
    invoke-virtual {v0, v2}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    .line 79
    .line 80
    .line 81
    move-result-wide v20

    .line 82
    const/4 v2, 0x4

    .line 83
    invoke-virtual {v0, v2}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    .line 84
    .line 85
    .line 86
    move-result-wide v22

    .line 87
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v24

    .line 91
    const-wide/16 v26, -0x1

    .line 92
    .line 93
    move/from16 v7, p1

    .line 94
    .line 95
    invoke-static/range {v7 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJ)Landroid/util/StatsEvent;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    move-object/from16 v2, p2

    .line 100
    .line 101
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    .line 104
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    .line 106
    .line 107
    return v1

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto :goto_2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    goto :goto_1

    .line 114
    :goto_0
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .line 132
    .line 133
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    return v6

    .line 137
    :goto_1
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    .line 151
    .line 152
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    .line 154
    .line 155
    return v6

    .line 156
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    .line 158
    .line 159
    throw v0
.end method

.method public final pullNotificationRemoteViewsLocked(ILjava/util/List;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string/jumbo v1, "notification"

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    :try_start_1
    invoke-interface {v1}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    invoke-direct {v3, p0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v1

    .line 45
    :try_start_2
    const-string v3, "StatsPullAtomService"

    .line 46
    .line 47
    const-string v4, "linkToDeath with notificationManager failed"

    .line 48
    .line 49
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 54
    .line 55
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    return p0

    .line 62
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    const-wide/16 v6, 0x3e8

    .line 71
    .line 72
    mul-long/2addr v4, v6

    .line 73
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    .line 75
    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 76
    .line 77
    const-wide/16 v8, 0x1

    .line 78
    .line 79
    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    sub-long/2addr v4, v6

    .line 84
    new-instance v9, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    const/4 v6, 0x1

    .line 90
    const/4 v7, 0x1

    .line 91
    move-object v8, v9

    .line 92
    invoke-interface/range {v3 .. v8}, Landroid/app/INotificationManager;->pullStats(JIZLjava/util/List;)J

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    if-eq v3, p0, :cond_3

    .line 100
    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    return p0

    .line 105
    :cond_3
    :try_start_4
    invoke-static {p1, p2, v9}, Lcom/android/server/stats/pull/StatsPullAtomService;->unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    .line 111
    return v2

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_5

    .line 114
    :catch_1
    move-exception p1

    .line 115
    goto :goto_2

    .line 116
    :catch_2
    move-exception p1

    .line 117
    goto :goto_3

    .line 118
    :catch_3
    move-exception p1

    .line 119
    goto :goto_4

    .line 120
    :goto_2
    :try_start_5
    const-string p2, "StatsPullAtomService"

    .line 121
    .line 122
    const-string v2, "Getting notistats failed: "

    .line 123
    .line 124
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    .line 129
    .line 130
    return p0

    .line 131
    :goto_3
    :try_start_6
    const-string p2, "StatsPullAtomService"

    .line 132
    .line 133
    const-string v2, "Getting notistats failed: "

    .line 134
    .line 135
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    return p0

    .line 142
    :goto_4
    :try_start_7
    const-string p2, "StatsPullAtomService"

    .line 143
    .line 144
    const-string v2, "Getting notistats failed: "

    .line 145
    .line 146
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    .line 151
    .line 152
    return p0

    .line 153
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :goto_6
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 158
    throw p0
.end method

.method public final pullPowerProfileLocked(ILjava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/android/internal/os/PowerProfile;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final pullProcessCpuTimeLocked(ILjava/util/List;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ge v1, v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 36
    .line 37
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 38
    .line 39
    iget-wide v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 40
    .line 41
    iget-wide v7, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 42
    .line 43
    move v2, p1

    .line 44
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JJ)Landroid/util/StatsEvent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public final pullRoleHolderLocked(ILjava/util/List;)I
    .locals 13

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-class v3, Lcom/android/role/RoleManagerLocal;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/role/RoleManagerLocal;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-class v4, Landroid/os/UserManager;

    .line 22
    .line 23
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/os/UserManager;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x0

    .line 38
    move v6, v5

    .line 39
    :goto_0
    if-ge v6, v4, :cond_3

    .line 40
    .line 41
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Landroid/content/pm/UserInfo;

    .line 46
    .line 47
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    invoke-interface {v3, v7}, Lcom/android/role/RoleManagerLocal;->getRolesAndHolders(I)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_2

    .line 72
    .line 73
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Ljava/util/Map$Entry;

    .line 78
    .line 79
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    check-cast v10, Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    check-cast v9, Ljava/util/Set;

    .line 90
    .line 91
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-nez v11, :cond_1

    .line 96
    .line 97
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    if-eqz v11, :cond_0

    .line 106
    .line 107
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    check-cast v11, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    :try_start_1
    invoke-virtual {v2, v11, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v12
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    iget-object v12, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 118
    .line 119
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 120
    .line 121
    invoke-static {p1, v12, v11, v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    invoke-interface {p2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    goto :goto_3

    .line 131
    :catch_0
    const-string p0, "StatsPullAtomService"

    .line 132
    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p2, "Role holder "

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p2, " not found"

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    .line 160
    .line 161
    const/4 p0, 0x1

    .line 162
    return p0

    .line 163
    :cond_1
    :try_start_3
    const-string v9, ""

    .line 164
    .line 165
    const/4 v11, -0x1

    .line 166
    invoke-static {p1, v11, v9, v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    .line 180
    .line 181
    return v5

    .line 182
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    .line 184
    .line 185
    throw p0
.end method

.method public final pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I
    .locals 12

    .line 1
    const-string v0, "StatsPullAtomService"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v3, Landroid/app/AppOpsManager;

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/AppOpsManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/AppOpsManager;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    const-string p0, "No runtime appop access message collected"

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return v3

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getUid()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v7, ""

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    const-string v4, ""

    .line 52
    .line 53
    :goto_0
    move-object v8, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    goto :goto_0

    .line 60
    :goto_1
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getSamplingStrategy()I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getOp()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    move v4, p1

    .line 77
    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    return v3

    .line 88
    :goto_2
    :try_start_2
    const-string p1, "Could not read runtime appop access message"

    .line 89
    .line 90
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    const/4 p0, 0x1

    .line 97
    return p0

    .line 98
    :catchall_1
    move-exception p0

    .line 99
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public final pullSettingsStatsLocked(ILjava/util/List;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/os/UserManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/UserManager;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    :try_start_0
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v6, p1, v5}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_3

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v5, p1, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSystemSettings(Landroid/content/Context;II)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v5, p1, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSecureSettings(Landroid/content/Context;II)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    return v5

    .line 87
    :goto_2
    :try_start_1
    const-string p1, "StatsPullAtomService"

    .line 88
    .line 89
    const-string p2, "failed to pullSettingsStats"

    .line 90
    .line 91
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    return v1

    .line 98
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    throw p0
.end method

.method public final pullTemperatureLocked(ILjava/util/List;)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    :try_start_0
    invoke-interface {p0}, Landroid/os/IThermalService;->getCurrentTemperatures()[Landroid/os/Temperature;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v3, p0

    .line 18
    const/4 v4, 0x0

    .line 19
    move v5, v4

    .line 20
    :goto_0
    if-ge v5, v3, :cond_1

    .line 21
    .line 22
    aget-object v6, p0, v5

    .line 23
    .line 24
    invoke-virtual {v6}, Landroid/os/Temperature;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-virtual {v6}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-virtual {v6}, Landroid/os/Temperature;->getValue()F

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    const/high16 v10, 0x41200000    # 10.0f

    .line 37
    .line 38
    mul-float/2addr v9, v10

    .line 39
    float-to-int v9, v9

    .line 40
    invoke-virtual {v6}, Landroid/os/Temperature;->getStatus()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-static {p1, v7, v8, v9, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;II)Landroid/util/StatsEvent;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    return v4

    .line 60
    :catch_0
    :try_start_1
    const-string p0, "StatsPullAtomService"

    .line 61
    .line 62
    const-string p1, "Disconnected from thermal service. Cannot pull temperatures."

    .line 63
    .line 64
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    return v0

    .line 71
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public final pullUwbActivityInfoLocked(ILjava/util/List;)I
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    new-instance v3, Landroid/os/SynchronousResultReceiver;

    .line 7
    .line 8
    const-string/jumbo v4, "uwb"

    .line 9
    .line 10
    .line 11
    invoke-direct {v3, v4}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbManager:Landroid/uwb/UwbManager;

    .line 15
    .line 16
    new-instance v4, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v5, v6, v3}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v4, v5}, Landroid/uwb/UwbManager;->getUwbActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Landroid/uwb/UwbActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerTxDurationMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    invoke-virtual {p0}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerRxDurationMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    invoke-virtual {p0}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerIdleDurationMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v8

    .line 54
    invoke-virtual {p0}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerWakeCount()J

    .line 55
    .line 56
    .line 57
    move-result-wide v10

    .line 58
    move v3, p1

    .line 59
    invoke-static/range {v3 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJ)Landroid/util/StatsEvent;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    return p0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    :try_start_2
    const-string p1, "StatsPullAtomService"

    .line 75
    .line 76
    const-string p2, "failed to getUwbActivityEnergyInfoAsync"

    .line 77
    .line 78
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    return v2

    .line 85
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public final pullWifiActivityInfoLocked(ILjava/util/List;)I
    .locals 16

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    const/4 v3, 0x1

    .line 6
    :try_start_0
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    .line 7
    .line 8
    const-string/jumbo v4, "wifi"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v4}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object/from16 v4, p0

    .line 15
    .line 16
    iget-object v4, v4, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$2;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;

    .line 24
    .line 25
    invoke-direct {v6, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;-><init>(Landroid/os/SynchronousResultReceiver;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    return v3

    .line 43
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v8

    .line 55
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v10

    .line 59
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v12

    .line 63
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    .line 64
    .line 65
    .line 66
    move-result-wide v14

    .line 67
    move/from16 v4, p1

    .line 68
    .line 69
    invoke-static/range {v4 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object/from16 v4, p2

    .line 74
    .line 75
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    return v0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    :try_start_2
    const-string v4, "StatsPullAtomService"

    .line 87
    .line 88
    const-string v5, "failed to getWifiActivityEnergyInfoAsync"

    .line 89
    .line 90
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    return v3

    .line 97
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    throw v0
.end method

.method public final readProcStatsHighWaterMark(I)J
    .locals 6

    .line 1
    const-string v0, "StatsPullAtomService"

    .line 2
    .line 3
    const-string v1, "Only 1 file expected for high water mark. Found "

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    :try_start_0
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 8
    .line 9
    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;

    .line 10
    .line 11
    invoke-direct {v5, p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

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
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    array-length p1, p0

    .line 25
    const/4 v4, 0x1

    .line 26
    if-le p1, v4, :cond_1

    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    array-length v1, p0

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :catch_1
    move-exception p0

    .line 48
    goto :goto_3

    .line 49
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 50
    aget-object p0, p0, p1

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p1, "_"

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    aget-object p0, p0, v4

    .line 63
    .line 64
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-wide p0

    .line 73
    :cond_2
    :goto_1
    return-wide v2

    .line 74
    :goto_2
    const-string p1, "Failed to parse file name."

    .line 75
    .line 76
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    goto :goto_4

    .line 80
    :goto_3
    const-string p1, "Failed to get procstats high watermark file."

    .line 81
    .line 82
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :goto_4
    return-wide v2
.end method

.method public final sampleAppOps(ILjava/util/List;Ljava/util/List;I)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move/from16 v3, p4

    .line 10
    .line 11
    move-object v14, v4

    .line 12
    check-cast v14, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v15

    .line 18
    const/4 v13, 0x0

    .line 19
    :goto_0
    if-ge v13, v15, :cond_2

    .line 20
    .line 21
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    move-object v10, v5

    .line 26
    check-cast v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 27
    .line 28
    iget v5, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    .line 29
    .line 30
    if-lt v5, v3, :cond_0

    .line 31
    .line 32
    move/from16 v20, v13

    .line 33
    .line 34
    move-object/from16 v21, v14

    .line 35
    .line 36
    move/from16 v22, v15

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_0
    const/16 v5, 0x275b

    .line 41
    .line 42
    const/16 v11, 0x9

    .line 43
    .line 44
    if-ne v1, v5, :cond_1

    .line 45
    .line 46
    iget-object v5, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    iget-object v6, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 53
    .line 54
    invoke-virtual {v6, v11}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    iget-object v8, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 59
    .line 60
    invoke-virtual {v8, v11}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    .line 61
    .line 62
    .line 63
    move-result-wide v8

    .line 64
    iget-object v12, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 65
    .line 66
    invoke-virtual {v12, v11}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    .line 67
    .line 68
    .line 69
    move-result-wide v17

    .line 70
    move-object v12, v10

    .line 71
    move v1, v11

    .line 72
    move-wide/from16 v10, v17

    .line 73
    .line 74
    iget-object v2, v12, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v17

    .line 80
    move-object v1, v12

    .line 81
    move/from16 v20, v13

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    move-wide/from16 v12, v17

    .line 85
    .line 86
    iget-object v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 87
    .line 88
    const/16 v3, 0x9

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    .line 91
    .line 92
    .line 93
    move-result-wide v16

    .line 94
    move-object/from16 v21, v14

    .line 95
    .line 96
    move/from16 v22, v15

    .line 97
    .line 98
    move-wide/from16 v14, v16

    .line 99
    .line 100
    iget-object v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    .line 103
    .line 104
    .line 105
    move-result-wide v16

    .line 106
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    .line 107
    .line 108
    iget-object v3, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v18

    .line 122
    iget-object v3, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    .line 123
    .line 124
    move/from16 v2, p4

    .line 125
    .line 126
    iget-object v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    .line 127
    .line 128
    move-object v4, v2

    .line 129
    iget v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    .line 130
    .line 131
    move-object/from16 v1, p2

    .line 132
    .line 133
    move/from16 v1, p1

    .line 134
    .line 135
    move/from16 v19, p4

    .line 136
    .line 137
    invoke-static/range {v1 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;IJJJJJJZI)Landroid/util/StatsEvent;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :goto_1
    move-object/from16 v2, p2

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_1
    move-object v1, v10

    .line 145
    move/from16 v20, v13

    .line 146
    .line 147
    move-object/from16 v21, v14

    .line 148
    .line 149
    move/from16 v22, v15

    .line 150
    .line 151
    iget-object v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    iget-object v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 158
    .line 159
    const/16 v3, 0x9

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    .line 162
    .line 163
    .line 164
    move-result-wide v5

    .line 165
    iget-object v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    .line 168
    .line 169
    .line 170
    move-result-wide v7

    .line 171
    iget-object v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    .line 174
    .line 175
    .line 176
    move-result-wide v9

    .line 177
    iget-object v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 178
    .line 179
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    .line 180
    .line 181
    .line 182
    move-result-wide v11

    .line 183
    iget-object v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    .line 186
    .line 187
    .line 188
    move-result-wide v13

    .line 189
    iget-object v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 190
    .line 191
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    .line 192
    .line 193
    .line 194
    move-result-wide v15

    .line 195
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    .line 196
    .line 197
    iget-object v3, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 198
    .line 199
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v17

    .line 211
    iget v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    .line 212
    .line 213
    iget-object v3, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    .line 214
    .line 215
    move/from16 v1, p1

    .line 216
    .line 217
    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IJJJJJJZ)Landroid/util/StatsEvent;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    goto :goto_1

    .line 222
    :goto_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    :goto_3
    add-int/lit8 v13, v20, 0x1

    .line 226
    .line 227
    move/from16 v1, p1

    .line 228
    .line 229
    move-object/from16 v4, p3

    .line 230
    .line 231
    move/from16 v3, p4

    .line 232
    .line 233
    move-object/from16 v14, v21

    .line 234
    .line 235
    move/from16 v15, v22

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    const/16 v3, 0x320

    .line 244
    .line 245
    if-le v1, v3, :cond_3

    .line 246
    .line 247
    move/from16 v1, p4

    .line 248
    .line 249
    mul-int/lit16 v3, v1, 0x1f4

    .line 250
    .line 251
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    div-int/2addr v3, v4

    .line 256
    add-int/lit8 v1, v1, -0x1

    .line 257
    .line 258
    const/4 v4, 0x0

    .line 259
    invoke-static {v3, v4, v1}, Landroid/util/MathUtils;->constrain(III)I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 264
    .line 265
    .line 266
    move/from16 v3, p1

    .line 267
    .line 268
    move-object/from16 v4, p3

    .line 269
    .line 270
    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(ILjava/util/List;Ljava/util/List;I)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    return v0

    .line 275
    :cond_3
    move/from16 v1, p4

    .line 276
    .line 277
    return v1
.end method
