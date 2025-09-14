.class public final Lcom/android/server/am/ActivityManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sAtm:Lcom/android/server/wm/ActivityTaskManagerService;


# instance fields
.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/android/server/am/ActivityManagerService;

    .line 6
    sget-object v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;->sAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    invoke-direct {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 11
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 13
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iput p1, v0, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    .line 5
    const/16 v1, 0x1f4

    .line 7
    const/4 v2, 0x4

    .line 8
    if-ne p1, v1, :cond_7

    .line 10
    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 12
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedBatteryStats()Z

    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 22
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 24
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedBatteryStats()Z

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->setPowerStatsExporterEnabled(IZ)V

    .line 31
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 33
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedConnectivityBatteryStats()Z

    .line 36
    move-result v1

    .line 37
    const/16 v4, 0x8

    .line 39
    invoke-virtual {v0, v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 42
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 44
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedConnectivityBatteryStats()Z

    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v4, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->setPowerStatsExporterEnabled(IZ)V

    .line 51
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 53
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedConnectivityBatteryStats()Z

    .line 56
    move-result v1

    .line 57
    const/16 v4, 0xb

    .line 59
    invoke-virtual {v0, v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 62
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 64
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedConnectivityBatteryStats()Z

    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v4, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->setPowerStatsExporterEnabled(IZ)V

    .line 71
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 73
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedConnectivityBatteryStats()Z

    .line 76
    move-result v1

    .line 77
    const/4 v4, 0x2

    .line 78
    invoke-virtual {v0, v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 81
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 83
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedConnectivityBatteryStats()Z

    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, v4, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->setPowerStatsExporterEnabled(IZ)V

    .line 90
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 92
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedMiscBatteryStats()Z

    .line 95
    move-result v1

    .line 96
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 99
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 101
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedMiscBatteryStats()Z

    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->setPowerStatsExporterEnabled(IZ)V

    .line 108
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 110
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedMiscBatteryStats()Z

    .line 113
    move-result v1

    .line 114
    const/4 v2, 0x5

    .line 115
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 118
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 120
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedMiscBatteryStats()Z

    .line 123
    move-result v1

    .line 124
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->setPowerStatsExporterEnabled(IZ)V

    .line 127
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 129
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedMiscBatteryStats()Z

    .line 132
    move-result v1

    .line 133
    const/4 v2, 0x6

    .line 134
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 137
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 139
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedMiscBatteryStats()Z

    .line 142
    move-result v1

    .line 143
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->setPowerStatsExporterEnabled(IZ)V

    .line 146
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 148
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedMiscBatteryStats()Z

    .line 151
    move-result v1

    .line 152
    const/4 v2, 0x3

    .line 153
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 156
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 158
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedMiscBatteryStats()Z

    .line 161
    move-result v1

    .line 162
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->setPowerStatsExporterEnabled(IZ)V

    .line 165
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 167
    const/4 v1, -0x1

    .line 168
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->streamlinedMiscBatteryStats()Z

    .line 171
    move-result v2

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 175
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 177
    const-string/jumbo v1, "timeout or interrupt reading initial getEnergyConsumedAsync: "

    .line 180
    const-string/jumbo v2, "exception reading initial getEnergyConsumedAsync: "

    .line 183
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    .line 185
    const-class v5, Landroid/net/wifi/WifiManager;

    .line 187
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->mContext:Landroid/content/Context;

    .line 189
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 192
    move-result-object v4

    .line 193
    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 195
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    .line 197
    const-class v6, Landroid/telephony/TelephonyManager;

    .line 199
    iget-object v5, v5, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 204
    move-result-object v5

    .line 205
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 207
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    .line 209
    const-class v7, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 211
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 217
    move-result-object v6

    .line 218
    check-cast v6, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 220
    iget-object v7, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 222
    monitor-enter v7

    .line 223
    :try_start_0
    iget-object v8, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 225
    iget v8, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryVoltageMv:I

    .line 227
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 228
    iget-object v9, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 230
    monitor-enter v9

    .line 231
    :try_start_1
    iput-object v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 233
    iput-object v5, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 235
    iput-object v6, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 237
    const/4 v4, 0x0

    .line 238
    const/4 v5, 0x0

    .line 239
    if-eqz v6, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;

    .line 244
    move-result-object v6

    .line 245
    if-eqz v6, :cond_0

    .line 247
    new-instance v7, Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    .line 249
    invoke-direct {v7, v6}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;-><init>(Landroid/util/SparseArray;)V

    .line 252
    iput-object v7, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :try_start_2
    new-array v7, v4, [I

    .line 256
    iget-object v10, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 258
    invoke-virtual {v10, v7}, Lcom/android/server/powerstats/PowerStatsService$LocalService;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    .line 261
    move-result-object v7

    .line 262
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 264
    const-wide/16 v11, 0x7d0

    .line 266
    invoke-virtual {v7, v11, v12, v10}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 269
    move-result-object v7

    .line 270
    check-cast v7, [Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 272
    iget-object v10, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    .line 274
    invoke-virtual {v10, v7, v8}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    goto :goto_2

    .line 278
    :catchall_0
    move-exception p0

    .line 279
    goto/16 :goto_9

    .line 281
    :catch_0
    move-exception v1

    .line 282
    goto :goto_0

    .line 283
    :catch_1
    move-exception v2

    .line 284
    goto :goto_1

    .line 285
    :goto_0
    :try_start_3
    const-string v7, "BatteryExternalStatsWorker"

    .line 287
    new-instance v8, Ljava/lang/StringBuilder;

    .line 289
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    move-result-object v1

    .line 303
    invoke-static {v7, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    goto :goto_2

    .line 307
    :goto_1
    const-string v7, "BatteryExternalStatsWorker"

    .line 309
    new-instance v8, Ljava/lang/StringBuilder;

    .line 311
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object v1

    .line 321
    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_2
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    .line 326
    invoke-virtual {v1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->getOtherOrdinalNames()[Ljava/lang/String;

    .line 329
    move-result-object v1

    .line 330
    invoke-static {v6}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z

    .line 333
    move-result-object v2

    .line 334
    goto :goto_3

    .line 335
    :cond_0
    move-object v1, v5

    .line 336
    move-object v2, v1

    .line 337
    :goto_3
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 339
    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 340
    :try_start_4
    iget-object v7, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 342
    invoke-virtual {v7, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->initEnergyConsumerStatsLocked([Z[Ljava/lang/String;)V

    .line 345
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 347
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    .line 349
    array-length v1, v1

    .line 350
    new-array v1, v1, [I

    .line 352
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    .line 354
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 355
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 356
    iput-boolean v3, p1, Lcom/android/server/am/BatteryStatsService;->mSystemServicesReady:Z

    .line 358
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 360
    iget-object v1, p1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 362
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    .line 365
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 367
    invoke-virtual {v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->systemServicesReady()V

    .line 370
    const-string/jumbo v0, "network_management"

    .line 373
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 376
    move-result-object v0

    .line 377
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 380
    move-result-object v0

    .line 381
    iget-object v1, p1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 383
    const-class v2, Landroid/net/ConnectivityManager;

    .line 385
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 388
    move-result-object v1

    .line 389
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 391
    :try_start_6
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    .line 394
    move-result v2

    .line 395
    if-nez v2, :cond_1

    .line 397
    iget-object v2, p1, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Lcom/android/server/am/BatteryStatsService$1;

    .line 399
    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 402
    goto :goto_4

    .line 403
    :catch_2
    move-exception v0

    .line 404
    goto :goto_5

    .line 405
    :cond_1
    :goto_4
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Lcom/android/server/am/BatteryStatsService$2;

    .line 407
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 410
    goto :goto_6

    .line 411
    :goto_5
    const-string v1, "BatteryStatsService"

    .line 413
    const-string v2, "Could not register INetworkManagement event observer "

    .line 415
    invoke-static {v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 418
    :goto_6
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    .line 420
    monitor-enter v0

    .line 421
    :try_start_7
    const-class v1, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 423
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 426
    move-result-object v1

    .line 427
    check-cast v1, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 429
    iput-object v1, p1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 431
    if-eqz v1, :cond_2

    .line 433
    invoke-virtual {p1}, Lcom/android/server/am/BatteryStatsService;->populatePowerEntityMaps()V

    .line 436
    goto :goto_7

    .line 437
    :catchall_1
    move-exception p0

    .line 438
    goto/16 :goto_8

    .line 440
    :cond_2
    const-string v1, "BatteryStatsService"

    .line 442
    const-string v2, "Could not register PowerStatsInternal"

    .line 444
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 448
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 450
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 453
    move-result-object v0

    .line 454
    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 456
    iput-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 458
    const-class v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 460
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 463
    move-result-object v0

    .line 464
    check-cast v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 466
    iput-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 468
    iget-object v1, p1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 470
    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 472
    const-string v1, "DeviceBatteryInfoService"

    .line 474
    const-string/jumbo v2, "systemServicesReady()"

    .line 477
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v1, Landroid/os/HandlerThread;

    .line 482
    const-string/jumbo v2, "sembatteryservice-handler"

    .line 485
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 488
    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 490
    new-instance v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda3;

    .line 492
    invoke-direct {v2, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)V

    .line 495
    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 498
    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 500
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 503
    new-instance v1, Landroid/os/Handler;

    .line 505
    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 507
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 510
    move-result-object v2

    .line 511
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 514
    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    .line 516
    new-instance v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 518
    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 520
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object v3, v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mContext:Landroid/content/Context;

    .line 525
    iput-object v1, v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mHandler:Landroid/os/Handler;

    .line 527
    iput-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBluetoothDeviceBatteryManager:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 529
    new-instance v2, Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 531
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-boolean v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 536
    iput-boolean v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    .line 538
    iput v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 540
    iput-boolean v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    .line 542
    iput v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    .line 544
    new-instance v6, Ljava/util/HashMap;

    .line 546
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 549
    iput-object v6, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    .line 551
    new-instance v6, Ljava/util/HashMap;

    .line 553
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 556
    iput-object v6, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    .line 558
    iput-object v5, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    .line 560
    iput-boolean v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    .line 562
    iput-object v3, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    .line 564
    iput-object v1, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    .line 566
    iput-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 568
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 570
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 573
    move-result-object v1

    .line 574
    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 576
    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 578
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 580
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 582
    invoke-static {v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 585
    move-result-object v1

    .line 586
    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 588
    new-instance v3, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;

    .line 590
    const/4 v6, 0x0

    .line 591
    invoke-direct {v3, v0, v6}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;I)V

    .line 594
    iget-object v6, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    .line 596
    invoke-virtual {v2, v3, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 599
    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBluetoothDeviceBatteryManager:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 601
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    const-class v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 606
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 609
    move-result-object v2

    .line 610
    check-cast v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 612
    iput-object v2, v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 614
    const-string v2, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 616
    const-string/jumbo v3, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 619
    const-string/jumbo v6, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    .line 622
    const-string v7, "android.bluetooth.device.action.ALIAS_CHANGED"

    .line 624
    const-string v8, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 626
    invoke-static {v2, v3, v6, v7, v8}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 629
    move-result-object v2

    .line 630
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 632
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    iget-object v3, v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mContext:Landroid/content/Context;

    .line 637
    new-instance v6, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;

    .line 639
    invoke-direct {v6, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;-><init>(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;)V

    .line 642
    iget-object v1, v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mHandler:Landroid/os/Handler;

    .line 644
    invoke-virtual {v3, v6, v2, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 647
    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 649
    iget-object v2, v1, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    .line 651
    const-class v3, Landroid/app/AlarmManager;

    .line 653
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 656
    move-result-object v2

    .line 657
    check-cast v2, Landroid/app/AlarmManager;

    .line 659
    iput-object v2, v1, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 661
    new-instance v2, Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    .line 663
    invoke-direct {v2, v1}, Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;)V

    .line 666
    iput-object v2, v1, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    .line 668
    new-instance v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    .line 670
    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    .line 672
    const/4 v3, 0x0

    .line 673
    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Landroid/os/Handler;I)V

    .line 676
    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mDeviceNameObserver:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    .line 678
    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 680
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 683
    move-result-object v1

    .line 684
    const-string/jumbo v2, "device_name"

    .line 687
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 690
    move-result-object v2

    .line 691
    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mDeviceNameObserver:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    .line 693
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 696
    new-instance v1, Landroid/os/HandlerThread;

    .line 698
    const-string/jumbo v2, "broadcastreceiver-handler"

    .line 701
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 704
    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBroadcastHandlerThread:Landroid/os/HandlerThread;

    .line 706
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 709
    new-instance v1, Landroid/os/Handler;

    .line 711
    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBroadcastHandlerThread:Landroid/os/HandlerThread;

    .line 713
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 716
    move-result-object v2

    .line 717
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 720
    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBroadcastHandler:Landroid/os/Handler;

    .line 722
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 724
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 726
    invoke-static {v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 729
    move-result-object v1

    .line 730
    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 732
    new-instance v3, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;

    .line 734
    const/4 v6, 0x2

    .line 735
    invoke-direct {v3, v0, v6}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;I)V

    .line 738
    iget-object v6, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBroadcastHandler:Landroid/os/Handler;

    .line 740
    invoke-virtual {v2, v3, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 743
    new-instance v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    .line 745
    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    .line 747
    const/4 v3, 0x1

    .line 748
    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Landroid/os/Handler;I)V

    .line 751
    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mAodObserver:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    .line 753
    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 755
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 758
    move-result-object v1

    .line 759
    const-string v2, "aod_show_state"

    .line 761
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 764
    move-result-object v2

    .line 765
    iget-object v0, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mAodObserver:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    .line 767
    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 770
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 773
    move-result-object v0

    .line 774
    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 777
    new-instance v0, Lcom/android/server/am/DataConnectionStats;

    .line 779
    iget-object v1, p1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 781
    iget-object v2, p1, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 783
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/DataConnectionStats;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 786
    iget-object v1, v0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 788
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 790
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 793
    move-result-object v1

    .line 794
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 796
    iget-object v2, v0, Lcom/android/server/am/DataConnectionStats;->mPhoneStateListener:Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;

    .line 798
    const/16 v3, 0x1c1

    .line 800
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 803
    new-instance v1, Landroid/content/IntentFilter;

    .line 805
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 808
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 810
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    iget-object v2, v0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 815
    iget-object v3, v0, Lcom/android/server/am/DataConnectionStats;->mListenerHandler:Landroid/os/Handler;

    .line 817
    invoke-virtual {v2, v0, v1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 820
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 822
    const-class v1, Landroid/app/StatsManager;

    .line 824
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 827
    move-result-object v0

    .line 828
    check-cast v0, Landroid/app/StatsManager;

    .line 830
    new-instance v1, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;

    .line 832
    invoke-direct {v1, p1}, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    .line 835
    sget-object p1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 837
    const/16 v2, 0x2780

    .line 839
    invoke-virtual {v0, v2, v5, p1, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 842
    const/16 v2, 0x2781

    .line 844
    invoke-virtual {v0, v2, v5, p1, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 847
    const/16 v2, 0x277f

    .line 849
    invoke-virtual {v0, v2, v5, p1, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 852
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 854
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 856
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 858
    if-nez p1, :cond_3

    .line 860
    const-class p1, Lcom/android/server/AppStateTracker;

    .line 862
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 865
    move-result-object p1

    .line 866
    check-cast p1, Lcom/android/server/AppStateTracker;

    .line 868
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 870
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 872
    new-instance v0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;

    .line 874
    invoke-direct {v0, p0}, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;-><init>(Lcom/android/server/am/ActiveServices;)V

    .line 877
    invoke-interface {p1, v0}, Lcom/android/server/AppStateTracker;->addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    .line 880
    const-class p1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 882
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 885
    move-result-object p1

    .line 886
    check-cast p1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 888
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 890
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 892
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 895
    move-result-object v0

    .line 896
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    .line 899
    move-result-object v0

    .line 900
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 903
    move-result v1

    .line 904
    if-nez v1, :cond_4

    .line 906
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    .line 908
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 911
    :cond_4
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 913
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 916
    move-result-object p1

    .line 917
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    .line 920
    move-result-object p1

    .line 921
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 924
    move-result v0

    .line 925
    if-nez v0, :cond_5

    .line 927
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    .line 929
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_5
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;

    .line 935
    move-result-object p1

    .line 936
    const/16 v0, 0x400

    .line 938
    invoke-virtual {p1, v0, v4}, Landroid/app/ForegroundServiceTypePolicy;->getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 941
    move-result-object p1

    .line 942
    if-eqz p1, :cond_6

    .line 944
    new-instance v0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;

    .line 946
    const/4 v1, 0x0

    .line 947
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;-><init>(Lcom/android/server/am/ActiveServices;I)V

    .line 950
    invoke-virtual {p1, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->setCustomPermission(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;)V

    .line 953
    :cond_6
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;

    .line 956
    move-result-object p1

    .line 957
    const/16 v0, 0x20

    .line 959
    invoke-virtual {p1, v0, v4}, Landroid/app/ForegroundServiceTypePolicy;->getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 962
    move-result-object p1

    .line 963
    if-eqz p1, :cond_9

    .line 965
    new-instance v0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;

    .line 967
    const/4 v1, 0x1

    .line 968
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;-><init>(Lcom/android/server/am/ActiveServices;I)V

    .line 971
    invoke-virtual {p1, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->setCustomPermission(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;)V

    .line 974
    goto :goto_a

    .line 975
    :goto_8
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 976
    throw p0

    .line 977
    :catchall_2
    move-exception p0

    .line 978
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 979
    :try_start_a
    throw p0

    .line 980
    :goto_9
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 981
    throw p0

    .line 982
    :catchall_3
    move-exception p0

    .line 983
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 984
    throw p0

    .line 985
    :cond_7
    const/16 v1, 0x226

    .line 987
    if-ne p1, v1, :cond_8

    .line 989
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 991
    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 993
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 996
    move-result-object p1

    .line 997
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 999
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    .line 1001
    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 1004
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 1006
    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 1009
    new-instance v4, Lcom/android/server/am/BroadcastQueueModernImpl$1;

    .line 1011
    invoke-direct {v4, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$1;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;)V

    .line 1014
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1016
    const-string v7, "android"

    .line 1018
    const/4 v5, 0x1

    .line 1019
    const/4 v8, 0x0

    .line 1020
    const/4 v6, 0x2

    .line 1021
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    .line 1024
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 1026
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1029
    goto :goto_a

    .line 1030
    :cond_8
    const/16 v1, 0x258

    .line 1032
    if-ne p1, v1, :cond_9

    .line 1034
    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 1036
    invoke-virtual {p1}, Lcom/android/server/PackageWatchdog;->onPackagesReady()V

    .line 1039
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1041
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1044
    invoke-static {}, Lcom/android/systemui/shared/Flags;->enableHomeDelay()Z

    .line 1047
    const-string p0, "ActivityManager"

    .line 1049
    const-string p1, "ThemeHomeDelay: Home launch is not delayable, skipping timeout creation"

    .line 1051
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_9
    :goto_a
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Lcom/android/server/am/BatteryStatsService$LocalService;

    .line 10
    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    .line 13
    const-class v2, Landroid/os/BatteryStatsInternal;

    .line 15
    invoke-static {v2, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    const-string v1, "batterystats"

    .line 20
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asBinder()Landroid/os/IBinder;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 27
    new-instance v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 29
    invoke-direct {v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;-><init>()V

    .line 32
    const-class v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 34
    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 39
    const-string v1, "appops"

    .line 41
    invoke-virtual {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asBinder()Landroid/os/IBinder;

    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    const-class v1, Landroid/app/AppOpsManagerInternal;

    .line 50
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    .line 52
    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 55
    new-instance v1, Lcom/android/server/appop/AppOpsService$6;

    .line 57
    invoke-direct {v1, v0}, Lcom/android/server/appop/AppOpsService$6;-><init>(Lcom/android/server/appop/AppOpsService;)V

    .line 60
    const-class v0, Lcom/android/server/appop/AppOpsManagerLocal;

    .line 62
    invoke-static {v0, v1}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    const-class v1, Lcom/android/internal/app/procstats/ProcessStatsInternal;

    .line 72
    new-instance v2, Lcom/android/server/am/ProcessStatsService$LocalService;

    .line 74
    invoke-direct {v2, v0}, Lcom/android/server/am/ProcessStatsService$LocalService;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    .line 77
    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 80
    const-string v0, "AppOps"

    .line 82
    const-string v1, "AppOpsService published"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 89
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 91
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 94
    const-class v0, Lcom/android/server/am/ActivityManagerLocal;

    .line 96
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 98
    check-cast v1, Lcom/android/server/am/ActivityManagerLocal;

    .line 100
    invoke-static {v0, v1}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 105
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 107
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 110
    monitor-enter v1

    .line 111
    :try_start_0
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 113
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 119
    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 121
    const-class v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 123
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 129
    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 135
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    .line 137
    iget-object v2, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 139
    monitor-enter v2

    .line 140
    :try_start_1
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 142
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 148
    iput-object v1, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 150
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 153
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 160
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 166
    return-void

    .line 167
    :catch_0
    move-exception p0

    .line 168
    const-string v0, "ActivityManager"

    .line 170
    const-string v1, "Interrupted wait during start"

    .line 172
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 182
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 184
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 187
    throw p0

    .line 188
    :catchall_0
    move-exception p0

    .line 189
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    throw p0

    .line 191
    :catchall_1
    move-exception p0

    .line 192
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 193
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 196
    throw p0
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 5
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 8
    move-result v3

    .line 9
    iget-object v0, v2, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v4

    .line 16
    iget-object v7, v2, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;

    .line 20
    const/4 v6, 0x1

    .line 21
    move-object v1, v8

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/am/BatteryStatsService;IJI)V

    .line 25
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 41
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 43
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 49
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 52
    move-result p1

    .line 53
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 67
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 70
    monitor-enter p1

    .line 71
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 73
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPrivateSpaceBootCompletedPackages:Landroid/util/ArraySet;

    .line 75
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 78
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 88
    throw p0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    throw p0
.end method
