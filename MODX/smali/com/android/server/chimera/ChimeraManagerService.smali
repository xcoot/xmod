.class public final Lcom/android/server/chimera/ChimeraManagerService;
.super Lcom/samsung/android/chimera/IChimera$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;


# instance fields
.field public final mChimeraManager:Lcom/android/server/chimera/ChimeraManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/chimera/IChimera$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    .line 7
    const-string v1, ""

    .line 9
    const-string/jumbo v2, "persist.config.chimera.enable"

    .line 12
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v3

    .line 20
    const-string/jumbo v4, "true"

    .line 23
    if-nez v3, :cond_0

    .line 25
    const-string/jumbo v3, "false"

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 34
    :cond_0
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    move-object v1, v4

    .line 38
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x1

    .line 44
    if-eqz v1, :cond_7

    .line 46
    new-instance v1, Lcom/android/server/chimera/ChimeraManager;

    .line 48
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, v1, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 53
    iput-object v0, v1, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 55
    iput-object v0, v1, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 57
    iput-object v0, v1, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 59
    iput-object v0, v1, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    .line 61
    iput-object v0, v1, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 63
    iput-object v0, v1, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 65
    iput-object v0, v1, Lcom/android/server/chimera/ChimeraManager;->mGenieUnloadPolicyHandler:Lcom/android/server/chimera/GenieUnloadPolicyHandler;

    .line 67
    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    .line 70
    move-result-object v4

    .line 71
    monitor-enter v4

    .line 72
    :try_start_0
    iget-object v5, v4, Lcom/android/server/chimera/RepositoryFactory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 74
    if-nez v5, :cond_2

    .line 76
    new-instance v5, Lcom/android/server/chimera/SystemRepository;

    .line 78
    invoke-direct {v5, p1, p2}, Lcom/android/server/chimera/SystemRepository;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 81
    iput-object v5, v4, Lcom/android/server/chimera/RepositoryFactory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto/16 :goto_5

    .line 87
    :cond_2
    :goto_0
    iget-object v5, v4, Lcom/android/server/chimera/RepositoryFactory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit v4

    .line 90
    iput-object v5, v1, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 92
    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    .line 95
    move-result-object v4

    .line 96
    monitor-enter v4

    .line 97
    :try_start_1
    iget-object v6, v4, Lcom/android/server/chimera/RepositoryFactory;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 99
    if-nez v6, :cond_3

    .line 101
    new-instance v6, Lcom/android/server/chimera/SettingRepository;

    .line 103
    invoke-direct {v6, v5}, Lcom/android/server/chimera/SettingRepository;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 106
    iput-object v6, v4, Lcom/android/server/chimera/RepositoryFactory;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 108
    goto :goto_1

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    goto/16 :goto_4

    .line 112
    :cond_3
    :goto_1
    iget-object v6, v4, Lcom/android/server/chimera/RepositoryFactory;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    monitor-exit v4

    .line 115
    iput-object v6, v1, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 117
    new-instance v4, Landroid/os/HandlerThread;

    .line 119
    const-string v7, "ObserverHandler"

    .line 121
    invoke-direct {v4, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 124
    iput-object v4, v1, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 126
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v7, Lcom/android/server/chimera/ChimeraRecentAppManager;

    .line 131
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 134
    move-result-object v8

    .line 135
    invoke-direct {v7, v5, v6, v8}, Lcom/android/server/chimera/ChimeraRecentAppManager;-><init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Landroid/os/Looper;)V

    .line 138
    new-instance v7, Lcom/android/server/chimera/ChimeraStrategy;

    .line 140
    invoke-direct {v7, v5, v6}, Lcom/android/server/chimera/ChimeraStrategy;-><init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V

    .line 143
    iput-object v7, v1, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 145
    new-instance v6, Lcom/android/server/chimera/ChimeraAppManager;

    .line 147
    invoke-direct {v6, v5}, Lcom/android/server/chimera/ChimeraAppManager;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 150
    iput-object v6, v1, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 152
    iput-object p1, v1, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    .line 154
    new-instance v6, Lcom/android/server/chimera/SystemEventListener;

    .line 156
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 159
    move-result-object v7

    .line 160
    invoke-direct {v6, p1, v7, v5}, Lcom/android/server/chimera/SystemEventListener;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/chimera/SystemRepository;)V

    .line 163
    iput-object v6, v1, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    .line 165
    new-instance v6, Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 167
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v7, Ljava/util/ArrayList;

    .line 172
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iput-object v7, v6, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    .line 177
    new-instance v7, Ljava/util/ArrayList;

    .line 179
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iput-object v7, v6, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    .line 184
    new-instance v7, Ljava/util/ArrayList;

    .line 186
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 189
    iput-object v7, v6, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 191
    new-instance v7, Ljava/util/ArrayList;

    .line 193
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iput-object v7, v6, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    .line 198
    sget-object v7, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 200
    if-nez v7, :cond_4

    .line 202
    sput-object v5, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 204
    :cond_4
    iput-object v6, v1, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 206
    new-instance v6, Lcom/android/server/chimera/heimdall/Heimdall;

    .line 208
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 211
    move-result-object v4

    .line 212
    invoke-direct {v6, v4, p1, p2}, Lcom/android/server/chimera/heimdall/Heimdall;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 215
    iput-object v6, v1, Lcom/android/server/chimera/ChimeraManager;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 217
    sget-object v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 219
    iget-boolean v7, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mIsInit:Z

    .line 221
    if-eqz v7, :cond_5

    .line 223
    goto :goto_3

    .line 224
    :cond_5
    iput-object p1, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mContext:Landroid/content/Context;

    .line 226
    iput-object v6, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 228
    iput-object v5, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 230
    new-instance v5, Lcom/android/server/ServiceThread;

    .line 232
    const-string v6, "HeimdallAlwaysRunningMonitor"

    .line 234
    const/16 v7, 0xa

    .line 236
    invoke-direct {v5, v7, v6, v3}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 239
    iput-object v5, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 241
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 244
    new-instance v5, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    .line 246
    invoke-direct {v5, v4}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;-><init>(Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;)V

    .line 249
    iput-object v5, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    .line 251
    :try_start_2
    iget-object v5, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mContext:Landroid/content/Context;

    .line 253
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 256
    move-result-object v5

    .line 257
    const-string/jumbo v6, "com.salab.issuetracker"

    .line 260
    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 263
    move-result-object v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 264
    if-eqz v5, :cond_6

    .line 266
    move v5, v3

    .line 267
    goto :goto_2

    .line 268
    :catch_0
    :cond_6
    move v5, v2

    .line 269
    :goto_2
    iput-boolean v5, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mIsIssueTrackerInstalled:Z

    .line 271
    iput-boolean v3, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mIsInit:Z

    .line 273
    :goto_3
    iget-object v4, v1, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    .line 275
    iget-object v4, v4, Lcom/android/server/chimera/SystemEventListener;->mMediaScanFinishedListeners:Ljava/util/List;

    .line 277
    check-cast v4, Ljava/util/ArrayList;

    .line 279
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    .line 284
    goto :goto_6

    .line 285
    :goto_4
    monitor-exit v4

    .line 286
    throw p0

    .line 287
    :goto_5
    monitor-exit v4

    .line 288
    throw p0

    .line 289
    :cond_7
    :goto_6
    sget-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    .line 291
    const-string/jumbo p0, "init: CORERUNE_UMR_ENABLED = true, MODEL_UMR_ENABLED = "

    .line 294
    :try_start_3
    const-string/jumbo v1, "init: UnifiedMemoryReclaimer is disabled by config"

    .line 297
    invoke-static {v1, v3}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    .line 302
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    sget-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    .line 307
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    move-result-object p0

    .line 314
    invoke-static {p0, v3}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 317
    goto :goto_7

    .line 318
    :catch_1
    move-exception p0

    .line 319
    const-string/jumbo v1, "init: failed by exception"

    .line 322
    invoke-static {v1, v3}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 325
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    :goto_7
    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 330
    if-nez p0, :cond_f

    .line 332
    new-instance p0, Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 334
    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    .line 337
    move-result-object v1

    .line 338
    monitor-enter v1

    .line 339
    :try_start_4
    iget-object v4, v1, Lcom/android/server/chimera/RepositoryFactory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 341
    if-nez v4, :cond_8

    .line 343
    new-instance v4, Lcom/android/server/chimera/SystemRepository;

    .line 345
    invoke-direct {v4, p1, p2}, Lcom/android/server/chimera/SystemRepository;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 348
    iput-object v4, v1, Lcom/android/server/chimera/RepositoryFactory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 350
    goto :goto_8

    .line 351
    :catchall_2
    move-exception p0

    .line 352
    goto/16 :goto_d

    .line 354
    :cond_8
    :goto_8
    iget-object p2, v1, Lcom/android/server/chimera/RepositoryFactory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 356
    monitor-exit v1

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v1, Ljava/lang/Object;

    .line 362
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    .line 367
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mGenieConfigurations:Lcom/android/server/chimera/genie/GenieConfigurations;

    .line 369
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    .line 371
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 373
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 375
    iput v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSessionStatus:I

    .line 377
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

    .line 379
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 381
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mRbinManager:Lcom/android/server/chimera/genie/RbinManager;

    .line 383
    const-wide/32 v0, 0x1d4c0

    .line 386
    iput-wide v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLastReclaimTime:J

    .line 388
    iput-boolean v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mHasReclaimed:Z

    .line 390
    iput-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mContext:Landroid/content/Context;

    .line 392
    new-instance v0, Lcom/android/server/chimera/genie/GenieConfigurations;

    .line 394
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mGenieConfigurations:Lcom/android/server/chimera/genie/GenieConfigurations;

    .line 399
    new-instance v0, Lcom/android/server/chimera/genie/MemoryReclaimer;

    .line 401
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    .line 406
    iput-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 408
    new-instance v0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;

    .line 410
    invoke-direct {v0, p0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;-><init>(Lcom/android/server/chimera/genie/GenieMemoryManager;)V

    .line 413
    new-instance v1, Landroid/content/IntentFilter;

    .line 415
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 418
    const-string/jumbo v4, "com.samsung.GEN_AI_RECLAIM"

    .line 421
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    const-string v4, "AICORE_BROADCAST_ACTION_MODEL_LOADING"

    .line 426
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    const-string/jumbo v4, "com.samsung.GEN_AI_RECLAIM_END"

    .line 432
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    const-string v4, "AICORE_BROADCAST_ACTION_MODEL_UNLOADED"

    .line 437
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    iget-object p2, p2, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 442
    const/4 v4, 0x2

    .line 443
    invoke-virtual {p2, v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->startReclaimerHandlerCheck()Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 449
    new-instance p2, Lcom/android/server/chimera/genie/RbinManager;

    .line 451
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-boolean v2, p2, Lcom/android/server/chimera/genie/RbinManager;->mFeatureEnabled:Z

    .line 456
    new-instance v0, Ljava/lang/Object;

    .line 458
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object v0, p2, Lcom/android/server/chimera/genie/RbinManager;->mLock:Ljava/lang/Object;

    .line 463
    iput v2, p2, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    .line 465
    new-instance v0, Ljava/io/File;

    .line 467
    const-string v1, "/sys/kernel/rbin/refill_mode"

    .line 469
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 475
    move-result v1

    .line 476
    if-eqz v1, :cond_9

    .line 478
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_9

    .line 484
    move v0, v3

    .line 485
    goto :goto_9

    .line 486
    :cond_9
    move v0, v2

    .line 487
    :goto_9
    iput-boolean v0, p2, Lcom/android/server/chimera/genie/RbinManager;->mFeatureEnabled:Z

    .line 489
    if-nez v0, :cond_a

    .line 491
    const-string v0, "RbinManager"

    .line 493
    const-string v1, "__setRbinBlockModePath failed"

    .line 495
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_a
    iput-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mRbinManager:Lcom/android/server/chimera/genie/RbinManager;

    .line 500
    const-string/jumbo p2, "ro.csc.country_code"

    .line 503
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    move-result-object p2

    .line 507
    if-eqz p2, :cond_b

    .line 509
    const-string v0, "China"

    .line 511
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 514
    move-result p2

    .line 515
    if-eqz p2, :cond_b

    .line 517
    move p2, v3

    .line 518
    goto :goto_a

    .line 519
    :cond_b
    move p2, v2

    .line 520
    :goto_a
    sput-boolean p2, Lcom/android/server/chimera/genie/GenieConfigurations;->sIsChinaDevice:Z

    .line 522
    if-nez p2, :cond_c

    .line 524
    goto :goto_b

    .line 525
    :cond_c
    sget-object p2, Lcom/android/server/chimera/genie/GenieConfigurations;->sAllowedPackages:Ljava/util/List;

    .line 527
    check-cast p2, Ljava/util/ArrayList;

    .line 529
    const-string/jumbo v0, "com.samsung.android.offline.languagemodel"

    .line 532
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 535
    const-string/jumbo v0, "com.samsung.android.offline.languagemodel.chn"

    .line 538
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :goto_b
    sget-boolean p2, Lcom/android/server/chimera/genie/GenieConfigurations;->sIsChinaDevice:Z

    .line 543
    xor-int/2addr p2, v3

    .line 544
    if-eqz p2, :cond_e

    .line 546
    const-string p2, "GenieMemoryManager"

    .line 548
    const-string v0, "Genie registerLLMStatusObserver"

    .line 550
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    if-nez p1, :cond_d

    .line 555
    const-string/jumbo p1, "mContext is NULL "

    .line 558
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    goto :goto_c

    .line 562
    :cond_d
    invoke-static {}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->getInstance()Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    .line 565
    move-result-object p2

    .line 566
    iput-object p1, p2, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mContext:Landroid/content/Context;

    .line 568
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 571
    move-result-object p1

    .line 572
    const-string/jumbo p2, "is_llm_running"

    .line 575
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 578
    move-result-object p2

    .line 579
    invoke-static {}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->getInstance()Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    .line 582
    move-result-object v0

    .line 583
    invoke-virtual {p1, p2, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 586
    :cond_e
    :goto_c
    sput-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 588
    goto :goto_e

    .line 589
    :goto_d
    monitor-exit v1

    .line 590
    throw p0

    .line 591
    :cond_f
    :goto_e
    return-void
.end method


# virtual methods
.method public final checkProcessInHeimdall(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    .line 3
    if-eqz p0, :cond_1

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 7
    iget-boolean v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 9
    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    if-eqz p3, :cond_1

    .line 21
    if-eqz p4, :cond_1

    .line 23
    iget p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 25
    and-int/lit8 v1, p0, 0x10

    .line 27
    if-nez v1, :cond_0

    .line 29
    and-int/lit8 p0, p0, 0x8

    .line 31
    if-eqz p0, :cond_1

    .line 33
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->obtainData()Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 36
    move-result-object p0

    .line 37
    iput p2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->uid:I

    .line 39
    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 41
    iput-object p3, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 49
    move-result-object p1

    .line 50
    iget-object p2, v0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 55
    iget-wide p2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    .line 57
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15

    .line 1
    move-object/from16 v7, p2

    .line 3
    move-object/from16 v8, p3

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v9, 0x0

    .line 7
    if-eqz v8, :cond_7

    .line 9
    array-length v1, v8

    .line 10
    if-eqz v1, :cond_7

    .line 12
    array-length v1, v8

    .line 13
    if-eqz v1, :cond_7

    .line 15
    move v1, v9

    .line 16
    :goto_0
    array-length v2, v8

    .line 17
    if-ge v1, v2, :cond_7

    .line 19
    aget-object v2, v8, v1

    .line 21
    const-string v3, "-enable_chimera"

    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 29
    const-string/jumbo v3, "persist.config.chimera.enable"

    .line 32
    const-string/jumbo v4, "true"

    .line 35
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    const-string v3, "-disable_chimera"

    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 46
    const-string/jumbo v3, "persist.config.chimera.enable"

    .line 49
    const-string/jumbo v4, "forcestop"

    .line 52
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    const-string/jumbo v3, "genie"

    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_6

    .line 64
    sget-object v2, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 66
    if-eqz v2, :cond_5

    .line 68
    const-string v2, "GenieMemoryManager Config"

    .line 70
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string v2, "Timeout: 5000"

    .line 75
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v2, "ThrottleTime: 60000"

    .line 80
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    const-string v3, "Default Size Request: Samsung : "

    .line 87
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    sget v3, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_SAMSUNG_MODEL_SIZE:I

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string v3, " kB Google : "

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget v3, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_GOOGLE_MODEL_SIZE:I

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v3, " kB"

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    sget-object v2, Lcom/android/server/chimera/genie/GenieLogger;->sLock:Ljava/lang/Object;

    .line 119
    monitor-enter v2

    .line 120
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 123
    const-string v3, "====================================="

    .line 125
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string v3, "------------ GenieLogger ------------"

    .line 130
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    const-string v3, "====================================="

    .line 135
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 140
    if-nez v3, :cond_2

    .line 142
    monitor-exit v2

    .line 143
    goto :goto_4

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    goto :goto_3

    .line 146
    :cond_2
    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v3

    .line 150
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_4

    .line 156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 165
    move-result-object v4

    .line 166
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_3

    .line 172
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    move-result-object v5

    .line 176
    check-cast v5, Ljava/lang/String;

    .line 178
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    goto :goto_2

    .line 182
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 185
    goto :goto_1

    .line 186
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const-string v4, "Total Requests : "

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    sget v4, Lcom/android/server/chimera/genie/GenieLogger;->sRequestCount:I

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v4, " | Reclaimed Requests"

    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    sget v4, Lcom/android/server/chimera/genie/GenieLogger;->sReclaimedRequests:I

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    monitor-exit v2

    .line 222
    goto :goto_4

    .line 223
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    throw v0

    .line 225
    :cond_5
    const-string v2, "Genie Disabled"

    .line 227
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    :cond_6
    :goto_4
    add-int/2addr v1, v0

    .line 231
    goto/16 :goto_0

    .line 233
    :cond_7
    move-object v1, p0

    .line 234
    iget-object v10, v1, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    .line 236
    if-eqz v10, :cond_29

    .line 238
    if-eqz v8, :cond_29

    .line 240
    array-length v1, v8

    .line 241
    if-nez v1, :cond_8

    .line 243
    goto/16 :goto_c

    .line 245
    :cond_8
    aget-object v1, v8, v9

    .line 247
    const-string v11, "-a"

    .line 249
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    move-result v1

    .line 253
    iget-object v12, v10, Lcom/android/server/chimera/ChimeraManager;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 255
    const-string/jumbo v13, "info"

    .line 258
    const-string v2, "Chimera enabled: true"

    .line 260
    iget-object v3, v10, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 262
    if-eqz v1, :cond_a

    .line 264
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v2, "[Chimera Stats]"

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    iget-boolean v1, v3, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 293
    if-eqz v1, :cond_9

    .line 295
    const-string v1, "Using Conservative mode"

    .line 297
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    goto/16 :goto_7

    .line 302
    :cond_9
    const-string v1, "Using Aggressive mode"

    .line 304
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    goto/16 :goto_7

    .line 309
    :cond_a
    array-length v1, v8

    .line 310
    if-lez v1, :cond_1c

    .line 312
    aget-object v1, v8, v9

    .line 314
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    move-result v4

    .line 318
    if-eqz v4, :cond_b

    .line 320
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    goto/16 :goto_7

    .line 325
    :cond_b
    const-string/jumbo v2, "standby"

    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    move-result v2

    .line 332
    if-eqz v2, :cond_d

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    .line 336
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    .line 341
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    iget-object v3, v10, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 346
    iget-object v4, v3, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 348
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 351
    move-result v4

    .line 352
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    const-string v4, " apps in mStandbyInfoMap: \n"

    .line 357
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v2, v3, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 369
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 372
    move-result-object v2

    .line 373
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 376
    move-result-object v2

    .line 377
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    move-result v4

    .line 381
    if-eqz v4, :cond_c

    .line 383
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    move-result-object v4

    .line 387
    check-cast v4, Ljava/lang/String;

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    .line 391
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v6, ": "

    .line 399
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object v5

    .line 406
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v5, v3, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 411
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    move-result-object v4

    .line 415
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    const-string v4, "\n"

    .line 420
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    goto :goto_5

    .line 424
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    goto/16 :goto_7

    .line 433
    :cond_d
    const-string/jumbo v2, "use_bg_keeping_policy"

    .line 436
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    move-result v2

    .line 440
    const-string/jumbo v4, "true"

    .line 443
    if-eqz v2, :cond_e

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    .line 447
    const-string v2, "Chimera set ConservativePolicy mode: "

    .line 449
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    aget-object v2, v8, v0

    .line 454
    invoke-static {v1, v2, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 457
    aget-object v1, v8, v0

    .line 459
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 462
    move-result-object v1

    .line 463
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    move-result v1

    .line 467
    iget-boolean v2, v3, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 469
    if-eq v1, v2, :cond_1c

    .line 471
    iput-boolean v1, v3, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 473
    invoke-virtual {v10, v1}, Lcom/android/server/chimera/ChimeraManager;->unRegisterSystemEventListener(Z)V

    .line 476
    invoke-virtual {v10}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    .line 479
    goto/16 :goto_7

    .line 481
    :cond_e
    const-string/jumbo v2, "enable_quick_reclaim"

    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    move-result v2

    .line 488
    if-eqz v2, :cond_10

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    .line 492
    const-string v2, "Chimera enable quick reclaim: "

    .line 494
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    aget-object v2, v8, v0

    .line 499
    invoke-static {v1, v2, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 502
    aget-object v1, v8, v0

    .line 504
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 507
    move-result v1

    .line 508
    iget-boolean v2, v3, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 510
    if-eq v1, v2, :cond_1c

    .line 512
    iput-boolean v1, v3, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 514
    iget-object v2, v10, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    .line 516
    if-eqz v1, :cond_f

    .line 518
    iget-object v1, v10, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    .line 520
    invoke-virtual {v2, v1}, Lcom/android/server/chimera/SystemEventListener;->addCameraDeviceStateCallback(Landroid/content/Context;)V

    .line 523
    iget-object v1, v10, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 525
    iget-object v3, v2, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    .line 527
    check-cast v3, Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-virtual {v2}, Lcom/android/server/chimera/SystemEventListener;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    .line 535
    move-result-object v1

    .line 536
    iget-object v3, v2, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    .line 538
    check-cast v1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 540
    iget-object v4, v1, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 542
    new-instance v5, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;

    .line 544
    invoke-direct {v5, v0}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 547
    invoke-static {v5, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 550
    move-result-object v1

    .line 551
    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 556
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 558
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 564
    move-result v1

    .line 565
    if-nez v1, :cond_1c

    .line 567
    iget-object v1, v10, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    .line 569
    invoke-virtual {v2, v1}, Lcom/android/server/chimera/SystemEventListener;->addCameraDeviceStateCallback(Landroid/content/Context;)V

    .line 572
    goto/16 :goto_7

    .line 574
    :cond_f
    iget-object v1, v10, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    .line 576
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    const-string/jumbo v3, "camera"

    .line 582
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 585
    move-result-object v1

    .line 586
    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 588
    iget-object v3, v2, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 590
    iget-object v3, v3, Lcom/android/server/chimera/SystemRepository;->mCameraDeviceStateCallback:Lcom/android/server/chimera/SystemRepository$3;

    .line 592
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    .line 595
    iget-object v1, v10, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 597
    iget-object v3, v2, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    .line 599
    check-cast v3, Ljava/util/ArrayList;

    .line 601
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {v2}, Lcom/android/server/chimera/SystemEventListener;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    .line 607
    move-result-object v1

    .line 608
    iget-object v3, v2, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    .line 610
    check-cast v1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 612
    iget-object v4, v1, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 614
    new-instance v5, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;

    .line 616
    invoke-direct {v5, v9}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 619
    invoke-static {v5, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 622
    move-result-object v1

    .line 623
    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 626
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 628
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 630
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 636
    move-result v1

    .line 637
    if-nez v1, :cond_1c

    .line 639
    iget-object v1, v10, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    .line 641
    invoke-virtual {v2, v1}, Lcom/android/server/chimera/SystemEventListener;->addCameraDeviceStateCallback(Landroid/content/Context;)V

    .line 644
    goto/16 :goto_7

    .line 646
    :cond_10
    const-string/jumbo v2, "gmr"

    .line 649
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 652
    move-result v2

    .line 653
    if-eqz v2, :cond_11

    .line 655
    iget-object v1, v10, Lcom/android/server/chimera/ChimeraManager;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 657
    if-eqz v1, :cond_1c

    .line 659
    invoke-virtual {v1, v7, v8}, Lcom/android/server/chimera/GPUMemoryReclaimer;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 662
    goto/16 :goto_7

    .line 664
    :cond_11
    const-string/jumbo v2, "ppnandswap"

    .line 667
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    move-result v2

    .line 671
    if-eqz v2, :cond_12

    .line 673
    iget-object v1, v10, Lcom/android/server/chimera/ChimeraManager;->mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 675
    if-eqz v1, :cond_1c

    .line 677
    invoke-virtual {v1, v7, v8}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 680
    goto/16 :goto_7

    .line 682
    :cond_12
    const-string/jumbo v2, "psitracker"

    .line 685
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 688
    move-result v2

    .line 689
    if-eqz v2, :cond_16

    .line 691
    iget-object v14, v10, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 693
    if-eqz v14, :cond_1c

    .line 695
    array-length v1, v8

    .line 696
    const/4 v2, 0x3

    .line 697
    if-ne v1, v2, :cond_15

    .line 699
    aget-object v1, v8, v0

    .line 701
    const/4 v2, 0x2

    .line 702
    aget-object v2, v8, v2

    .line 704
    const-string v3, "0"

    .line 706
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 709
    move-result v4

    .line 710
    if-nez v4, :cond_14

    .line 712
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 715
    move-result v3

    .line 716
    if-eqz v3, :cond_13

    .line 718
    goto :goto_6

    .line 719
    :cond_13
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 722
    move-result-wide v3

    .line 723
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 726
    move-result-wide v5

    .line 727
    move-object v1, v14

    .line 728
    move-object/from16 v2, p2

    .line 730
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/chimera/psitracker/PSITracker;->getPSIValueListDump(Ljava/io/PrintWriter;JJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 733
    goto/16 :goto_7

    .line 735
    :catch_0
    const-wide/16 v3, 0x0

    .line 737
    const-wide/16 v5, 0x0

    .line 739
    move-object v1, v14

    .line 740
    move-object/from16 v2, p2

    .line 742
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/chimera/psitracker/PSITracker;->getPSIValueListDump(Ljava/io/PrintWriter;JJ)V

    .line 745
    goto/16 :goto_7

    .line 747
    :cond_14
    :goto_6
    const-wide/16 v3, 0x0

    .line 749
    const-wide/16 v5, 0x0

    .line 751
    move-object v1, v14

    .line 752
    move-object/from16 v2, p2

    .line 754
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/chimera/psitracker/PSITracker;->getPSIValueListDump(Ljava/io/PrintWriter;JJ)V

    .line 757
    goto/16 :goto_7

    .line 759
    :cond_15
    const-wide/16 v3, 0x0

    .line 761
    const-wide/16 v5, 0x0

    .line 763
    move-object v1, v14

    .line 764
    move-object/from16 v2, p2

    .line 766
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/chimera/psitracker/PSITracker;->getPSIValueListDump(Ljava/io/PrintWriter;JJ)V

    .line 769
    goto/16 :goto_7

    .line 771
    :cond_16
    const-string/jumbo v2, "enable_app_cache_reclaim"

    .line 774
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 777
    move-result v2

    .line 778
    if-eqz v2, :cond_18

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    .line 782
    const-string v2, "Chimera enable app cache reclaim: "

    .line 784
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 787
    aget-object v2, v8, v0

    .line 789
    invoke-static {v1, v2, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 792
    aget-object v1, v8, v0

    .line 794
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 797
    move-result v1

    .line 798
    iget-boolean v2, v3, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    .line 800
    if-eq v1, v2, :cond_1c

    .line 802
    iput-boolean v1, v3, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    .line 804
    if-eqz v1, :cond_17

    .line 806
    const-string v1, "Chimera app cache reclaim enabled."

    .line 808
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    goto :goto_7

    .line 812
    :cond_17
    const-string v1, "Chimera app cache reclaim disabled."

    .line 814
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    goto :goto_7

    .line 818
    :cond_18
    const-string/jumbo v2, "heimdall"

    .line 821
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 824
    move-result v2

    .line 825
    if-eqz v2, :cond_19

    .line 827
    invoke-virtual {v12, v7, v8}, Lcom/android/server/chimera/heimdall/Heimdall;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 830
    goto/16 :goto_c

    .line 832
    :cond_19
    const-string/jumbo v2, "set_quota"

    .line 835
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 838
    move-result v2

    .line 839
    if-eqz v2, :cond_1a

    .line 841
    goto :goto_7

    .line 842
    :cond_1a
    const-string/jumbo v2, "umr"

    .line 845
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 848
    move-result v2

    .line 849
    if-eqz v2, :cond_1b

    .line 851
    invoke-static/range {p2 .. p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->dumpInfo(Ljava/io/PrintWriter;)V

    .line 854
    goto :goto_7

    .line 855
    :cond_1b
    const-string/jumbo v2, "set_subprockill"

    .line 858
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 861
    move-result v1

    .line 862
    if-eqz v1, :cond_1c

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    .line 866
    const-string v2, "Chimera enable sub process kill: "

    .line 868
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 871
    aget-object v2, v8, v0

    .line 873
    invoke-static {v1, v2, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 876
    aget-object v1, v8, v0

    .line 878
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 881
    move-result-object v1

    .line 882
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 885
    move-result v1

    .line 886
    iget-boolean v2, v3, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    .line 888
    if-eq v1, v2, :cond_1c

    .line 890
    iput-boolean v1, v3, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    .line 892
    :cond_1c
    :goto_7
    iget-object v1, v10, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 894
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 897
    const-string v2, "Target mem : "

    .line 899
    array-length v3, v8

    .line 900
    if-nez v3, :cond_1d

    .line 902
    goto/16 :goto_a

    .line 904
    :cond_1d
    aget-object v3, v8, v9

    .line 906
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 909
    move-result v3

    .line 910
    if-eqz v3, :cond_1e

    .line 912
    invoke-virtual {v1, v7}, Lcom/android/server/chimera/ChimeraStrategy;->dumpInfo(Ljava/io/PrintWriter;)V

    .line 915
    goto/16 :goto_a

    .line 917
    :cond_1e
    array-length v3, v8

    .line 918
    if-lez v3, :cond_22

    .line 920
    aget-object v3, v8, v9

    .line 922
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 925
    move-result v4

    .line 926
    if-eqz v4, :cond_1f

    .line 928
    invoke-virtual {v1, v7}, Lcom/android/server/chimera/ChimeraStrategy;->dumpInfo(Ljava/io/PrintWriter;)V

    .line 931
    goto/16 :goto_a

    .line 933
    :cond_1f
    const-string/jumbo v4, "mem"

    .line 936
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 939
    move-result v4

    .line 940
    if-eqz v4, :cond_20

    .line 942
    array-length v4, v8

    .line 943
    if-le v4, v0, :cond_20

    .line 945
    :try_start_2
    aget-object v0, v8, v0

    .line 947
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 950
    move-result-wide v3

    .line 951
    iput-wide v3, v1, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 953
    iget-object v0, v1, Lcom/android/server/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 955
    iput-boolean v9, v0, Lcom/android/server/chimera/SettingRepository;->mIsDynamicTargetFreeEnabled:Z

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    .line 959
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 968
    move-result-object v0

    .line 969
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 972
    goto :goto_a

    .line 973
    :catch_1
    move-exception v0

    .line 974
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 977
    move-result-object v0

    .line 978
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    goto :goto_a

    .line 982
    :cond_20
    const-string/jumbo v2, "set_protected_count_on_lmkd"

    .line 985
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 988
    move-result v2

    .line 989
    if-eqz v2, :cond_21

    .line 991
    array-length v2, v8

    .line 992
    if-le v2, v0, :cond_21

    .line 994
    :try_start_3
    aget-object v0, v8, v0

    .line 996
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 999
    move-result v0

    .line 1000
    iput v0, v1, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1002
    goto :goto_8

    .line 1003
    :catch_2
    move-exception v0

    .line 1004
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 1007
    move-result-object v0

    .line 1008
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1013
    const-string v2, "ProtectedCount On Lmkd : "

    .line 1015
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1018
    iget v1, v1, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 1020
    invoke-static {v0, v1, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 1023
    goto :goto_a

    .line 1024
    :cond_21
    const-string/jumbo v2, "set_protected_count_on_home"

    .line 1027
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1030
    move-result v2

    .line 1031
    if-eqz v2, :cond_22

    .line 1033
    array-length v2, v8

    .line 1034
    if-le v2, v0, :cond_22

    .line 1036
    :try_start_4
    aget-object v0, v8, v0

    .line 1038
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1041
    move-result v0

    .line 1042
    iput v0, v1, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1044
    goto :goto_9

    .line 1045
    :catch_3
    move-exception v0

    .line 1046
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 1049
    move-result-object v0

    .line 1050
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1055
    const-string v2, "ProtectedCount On Home : "

    .line 1057
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1060
    iget v1, v1, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 1062
    invoke-static {v0, v1, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 1065
    :cond_22
    :goto_a
    iget-object v0, v10, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 1067
    if-eqz v0, :cond_23

    .line 1069
    invoke-virtual {v0, v7, v8}, Lcom/android/server/chimera/PolicyHandler;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1072
    :cond_23
    aget-object v0, v8, v9

    .line 1074
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1077
    move-result v0

    .line 1078
    if-eqz v0, :cond_29

    .line 1080
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1083
    iget-object v0, v10, Lcom/android/server/chimera/ChimeraManager;->mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 1085
    if-eqz v0, :cond_24

    .line 1087
    invoke-virtual {v0, v7, v8}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1090
    :cond_24
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1093
    iget-object v0, v10, Lcom/android/server/chimera/ChimeraManager;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 1095
    if-eqz v0, :cond_25

    .line 1097
    invoke-virtual {v0, v7, v8}, Lcom/android/server/chimera/GPUMemoryReclaimer;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1100
    :cond_25
    iget-object v0, v10, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 1102
    if-eqz v0, :cond_27

    .line 1104
    array-length v1, v8

    .line 1105
    if-nez v1, :cond_26

    .line 1107
    goto :goto_b

    .line 1108
    :cond_26
    const-string v1, "AbnormalFgsDetector"

    .line 1110
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1113
    const-string v1, "HeavyApps : ["

    .line 1115
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    iget-object v1, v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    .line 1120
    invoke-static {v7, v1}, Lcom/android/server/chimera/AbnormalFgsDetector;->printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1123
    const-string v1, "]"

    .line 1125
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1128
    const-string v2, "KillableHeavyApps : ["

    .line 1130
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    iget-object v2, v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    .line 1135
    invoke-static {v7, v2}, Lcom/android/server/chimera/AbnormalFgsDetector;->printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1138
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1141
    const-string v2, "AbnormalHeavyApps : [Current "

    .line 1143
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    iget-object v2, v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 1148
    invoke-static {v7, v2}, Lcom/android/server/chimera/AbnormalFgsDetector;->printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1151
    const-string v2, " Reported "

    .line 1153
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1156
    iget-object v0, v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    .line 1158
    invoke-static {v7, v0}, Lcom/android/server/chimera/AbnormalFgsDetector;->printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1161
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    :cond_27
    :goto_b
    if-eqz v12, :cond_28

    .line 1166
    invoke-virtual {v12, v7, v8}, Lcom/android/server/chimera/heimdall/Heimdall;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1169
    :cond_28
    invoke-static/range {p2 .. p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->dumpInfo(Ljava/io/PrintWriter;)V

    .line 1172
    :cond_29
    :goto_c
    return-void
.end method

.method public final getAvailableMemInfo(JJ)Ljava/util/List;
    .locals 19

    .line 1
    move-wide/from16 v0, p1

    .line 3
    move-wide/from16 v2, p3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    move-object/from16 v5, p0

    .line 12
    iget-object v5, v5, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    .line 14
    if-eqz v5, :cond_7

    .line 16
    iget-object v5, v5, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 18
    if-eqz v5, :cond_7

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v6, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v7, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v8, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v9, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {}, Lcom/android/server/chimera/psitracker/PSIDBManager;->getInstance()Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 48
    move-result-object v10

    .line 49
    iput-object v10, v5, Lcom/android/server/chimera/psitracker/PSITracker;->db:Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 51
    invoke-virtual {v10}, Lcom/android/server/chimera/psitracker/PSIDBManager;->isDBClosed()Z

    .line 54
    move-result v10

    .line 55
    if-eqz v10, :cond_0

    .line 57
    const-string v10, "PSITracker"

    .line 59
    const-string/jumbo v11, "getAvailableMemInfo failed! db is closed!"

    .line 62
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    const-wide/16 v10, 0x0

    .line 67
    cmp-long v12, v0, v10

    .line 69
    if-nez v12, :cond_2

    .line 71
    cmp-long v10, v2, v10

    .line 73
    if-eqz v10, :cond_1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, v5, Lcom/android/server/chimera/psitracker/PSITracker;->db:Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    const-string v0, "SELECT id,availMem,running,cached,checkTime FROM psi_Available_Mem ORDER BY id"

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 86
    const-string v11, "SELECT id,availMem,running,cached,checkTime FROM psi_Available_Mem WHERE checkTime <= "

    .line 88
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v11, v5, Lcom/android/server/chimera/psitracker/PSITracker;->db:Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 93
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, " AND checkTime > "

    .line 101
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, " ORDER BY id"

    .line 106
    invoke-static {v10, v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    :goto_1
    const/4 v1, 0x0

    .line 111
    :try_start_0
    iget-object v2, v5, Lcom/android/server/chimera/psitracker/PSITracker;->db:Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 113
    invoke-virtual {v2, v0}, Lcom/android/server/chimera/psitracker/PSIDBManager;->rawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_3

    .line 119
    const-string/jumbo v0, "id"

    .line 122
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 125
    move-result v0

    .line 126
    const-string v2, "availMem"

    .line 128
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 131
    move-result v2

    .line 132
    const-string/jumbo v3, "running"

    .line 135
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 138
    move-result v3

    .line 139
    const-string/jumbo v5, "cached"

    .line 142
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 145
    move-result v5

    .line 146
    const-string/jumbo v10, "checkTime"

    .line 149
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 152
    move-result v10

    .line 153
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 156
    move-result v11

    .line 157
    if-eqz v11, :cond_3

    .line 159
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 162
    move-result v11

    .line 163
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    move-result-object v11

    .line 167
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 173
    move-result-wide v11

    .line 174
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    move-result-object v11

    .line 178
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 184
    move-result-wide v11

    .line 185
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    move-result-object v11

    .line 189
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 195
    move-result-wide v11

    .line 196
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    move-result-object v11

    .line 200
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 206
    move-result-wide v11

    .line 207
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 210
    move-result-object v11

    .line 211
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    goto :goto_2

    .line 215
    :catchall_0
    move-exception v0

    .line 216
    goto :goto_7

    .line 217
    :catch_0
    move-exception v0

    .line 218
    goto :goto_4

    .line 219
    :cond_3
    if-eqz v1, :cond_4

    .line 221
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    goto :goto_5

    .line 225
    :goto_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    if-eqz v1, :cond_4

    .line 230
    goto :goto_3

    .line 231
    :cond_4
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    .line 233
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    const/4 v1, 0x0

    .line 237
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 240
    move-result v2

    .line 241
    if-ge v1, v2, :cond_5

    .line 243
    new-instance v2, Lcom/samsung/android/chimera/PSIAvailableMem;

    .line 245
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Ljava/lang/Long;

    .line 251
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 254
    move-result-wide v11

    .line 255
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Ljava/lang/Long;

    .line 261
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 264
    move-result-wide v13

    .line 265
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Ljava/lang/Long;

    .line 271
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 274
    move-result-wide v15

    .line 275
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    move-result-object v3

    .line 279
    check-cast v3, Ljava/lang/Long;

    .line 281
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 284
    move-result-wide v17

    .line 285
    move-object v10, v2

    .line 286
    invoke-direct/range {v10 .. v18}, Lcom/samsung/android/chimera/PSIAvailableMem;-><init>(JJJJ)V

    .line 289
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v1, v1, 0x1

    .line 294
    goto :goto_6

    .line 295
    :cond_5
    move-object v4, v0

    .line 296
    goto :goto_8

    .line 297
    :goto_7
    if-eqz v1, :cond_6

    .line 299
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_6
    throw v0

    .line 303
    :cond_7
    :goto_8
    return-object v4
.end method

.method public final getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 7
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Lcom/android/server/chimera/ChimeraManager$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    .line 22
    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    .line 25
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/server/chimera/ChimeraDataInfo;

    .line 31
    return-object p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v0, "prepareMemory "

    .line 10
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/chimera/genie/MemRequest;->getSize()I

    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    const-string v0, "ChimeraManagerService"

    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public final setGenieSessionEnd()V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const-string p0, "ChimeraManagerService"

    .line 7
    const-string/jumbo v0, "setGenieSessionEnd "

    .line 10
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    .line 18
    sget-boolean p0, Lcom/android/server/chimera/genie/GenieConfigurations;->sIsChinaDevice:Z

    .line 20
    xor-int/lit8 p0, p0, 0x1

    .line 22
    if-eqz p0, :cond_0

    .line 24
    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x0

    .line 44
    aget-object v0, v0, v1

    .line 46
    sget-object v1, Lcom/android/server/chimera/genie/GenieConfigurations;->sGenAIPackageMap:Ljava/util/Map;

    .line 48
    check-cast v1, Ljava/util/HashMap;

    .line 50
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->startUnloadTimerLocked(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public final setGenieSessionStart()V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const-string p0, "ChimeraManagerService"

    .line 7
    const-string/jumbo v0, "setGenieSessionStart "

    .line 10
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string p0, "GenieMemoryManager"

    .line 20
    const-string/jumbo v0, "setGenieSessionStart"

    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    return-void
.end method
