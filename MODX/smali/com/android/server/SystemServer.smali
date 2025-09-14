.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final HEAP_DUMP_PATH:Ljava/io/File;

.field public static sPendingWtfs:Ljava/util/LinkedList;


# instance fields
.field public enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

.field public knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field public mDualAppService:Lcom/android/server/DualAppManagerService;

.field public final mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

.field public final mFactoryTestMode:I

.field public mFirstBoot:Z

.field public mIncrementalServiceHandle:J

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field public final mRuntimeRestart:Z

.field public final mRuntimeStartElapsedTime:J

.field public final mRuntimeStartUptime:J

.field public final mStartCount:I

.field public mSystemContext:Landroid/content/Context;

.field public mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field public mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field public mZygotePreload:Ljava/util/concurrent/Future;

.field public sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public static synthetic $r8$lambda$0ek3wX68xKbgZMUwZfiBRkUNTFs()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "StartHidlServices"

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 13
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 16
    return-void
.end method

.method public static $r8$lambda$2PdG6KuU0ZTvilD515PGrttj0sk(III)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 4
    move v3, v0

    .line 5
    :catch_0
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    .line 8
    move-result v4

    .line 9
    if-le v4, p0, :cond_0

    .line 11
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 14
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 17
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    .line 20
    move-result v4

    .line 21
    :cond_0
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x2

    .line 23
    const/16 v7, 0x16c

    .line 25
    const-string v8, "System"

    .line 27
    if-le v4, p0, :cond_1

    .line 29
    if-nez v3, :cond_1

    .line 31
    const-string/jumbo v3, "fdtrack enable threshold reached, enabling"

    .line 34
    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {v7, v6, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 40
    const-string/jumbo v3, "fdtrack"

    .line 43
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    move v3, v5

    .line 47
    goto/16 :goto_5

    .line 49
    :cond_1
    if-le v4, p1, :cond_7

    .line 51
    const-string/jumbo v5, "fdtrack abort threshold reached, dumping and aborting"

    .line 54
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v5, 0x3

    .line 58
    invoke-static {v7, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 61
    new-instance v4, Ljava/util/TreeSet;

    .line 63
    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 66
    sget-object v5, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    .line 68
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 71
    move-result-object v5

    .line 72
    array-length v7, v5

    .line 73
    move v9, v0

    .line 74
    :goto_1
    if-ge v9, v7, :cond_4

    .line 76
    aget-object v10, v5, v9

    .line 78
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    .line 81
    move-result v11

    .line 82
    if-nez v11, :cond_2

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 88
    move-result-object v11

    .line 89
    const-string/jumbo v12, "fdtrack-"

    .line 92
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 95
    move-result v11

    .line 96
    if-nez v11, :cond_3

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    invoke-virtual {v4, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    .line 108
    move-result v5

    .line 109
    if-lt v5, v6, :cond_6

    .line 111
    invoke-virtual {v4}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 114
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object v4

    .line 118
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_6

    .line 124
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Ljava/io/File;

    .line 130
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 133
    move-result v6

    .line 134
    if-nez v6, :cond_5

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    .line 138
    const-string v7, "Failed to clean up hprof "

    .line 140
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v5

    .line 150
    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    goto :goto_3

    .line 154
    :cond_6
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 156
    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    .line 159
    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 162
    new-instance v5, Ljava/util/Date;

    .line 164
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 167
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 170
    move-result-object v4

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    const-string v6, "/data/system/heapdump/fdtrack-"

    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v4, ".hprof"

    .line 186
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v4

    .line 193
    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    goto :goto_4

    .line 197
    :catch_1
    move-exception v4

    .line 198
    const-string v5, "Failed to dump fdtrack hprof"

    .line 200
    invoke-static {v8, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    :goto_4
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    .line 206
    goto :goto_5

    .line 207
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 210
    move-result-wide v8

    .line 211
    cmp-long v10, v8, v1

    .line 213
    if-lez v10, :cond_9

    .line 215
    const-wide/32 v1, 0x36ee80

    .line 218
    add-long/2addr v8, v1

    .line 219
    if-eqz v3, :cond_8

    .line 221
    move v5, v6

    .line 222
    :cond_8
    invoke-static {v7, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 225
    move-wide v1, v8

    .line 226
    :cond_9
    :goto_5
    mul-int/lit16 v4, p2, 0x3e8

    .line 228
    int-to-long v4, v4

    .line 229
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    goto/16 :goto_0
.end method

.method public static synthetic $r8$lambda$CJLFlg8wnqihjN12r-2Qq_1qSd8()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "StartISensorManagerService"

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/server/SystemServer;->startISensorManagerService()V

    .line 13
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 16
    return-void
.end method

.method public static $r8$lambda$Djmghhk0H4gEPRWdl1V39kc2N1M(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/net/UrspService;Lcom/android/server/HsumBootUserInitializer;Landroid/os/IBinder;Lcom/samsung/accessory/manager/SAccessoryManager;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Z)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    move-object/from16 v11, p19

    const-string v12, "HsumBootUserInitializer"

    const-string/jumbo v13, "device_provisioned"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string v0, "Making services ready"

    const-string v14, "SystemServer"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3
    const-string v0, "!@Boot_EBS_D: PHASE_ACTIVITY_MANAGER_READY"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v15, 0x226

    invoke-virtual {v0, v2, v15}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v15, Lcom/android/server/am/NativeCrashListener;

    invoke-direct {v15, v0}, Lcom/android/server/am/NativeCrashListener;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 9
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    const-string/jumbo v15, "observing native crashes"

    invoke-static {v15, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 12
    const-string v0, "RegisterAppOpsPolicy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 13
    :try_start_1
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v15, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v15, v11}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    .line 14
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 15
    iget-object v11, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    if-eqz v11, :cond_0

    .line 16
    iget-object v11, v11, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    .line 17
    :goto_1
    new-instance v10, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v10, v0, v15, v11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v10, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 18
    const-string/jumbo v10, "registering app ops policy"

    invoke-static {v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 20
    iget-object v0, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    const-string v10, "WebViewFactoryPreparation"

    if-eqz v0, :cond_1

    .line 21
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v10, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v11, v0

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    .line 22
    :goto_3
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 23
    const-string v15, "android.hardware.type.automotive"

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    const-string v0, "StartCarServiceHelperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 25
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v9, "com.android.internal.car.CarServiceHelperService"

    .line 26
    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    .line 27
    instance-of v9, v0, Landroid/util/Dumpable;

    if-eqz v9, :cond_2

    .line 28
    iget-object v9, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v8, v0

    check-cast v8, Landroid/util/Dumpable;

    invoke-static {v9, v8}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 29
    :cond_2
    instance-of v8, v0, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v8, :cond_5

    .line 30
    check-cast v0, Landroid/app/admin/DevicePolicySafetyChecker;

    move-object/from16 v8, p2

    .line 31
    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v9, 0x0

    .line 32
    invoke-virtual {v8, v9, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCallerIdentity(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/devicepolicy/CallerIdentity;

    move-result-object v16

    .line 33
    iget-boolean v9, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIsAutomotive:Z

    if-nez v9, :cond_4

    invoke-static/range {v16 .. v16}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdb(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v17, v15

    const/4 v9, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    move-object/from16 v17, v15

    const/4 v9, 0x1

    :goto_5
    const-string/jumbo v15, "can only set DevicePolicySafetyChecker on automotive builds or from ADB (but caller is %s)"

    move-object/from16 v18, v12

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9, v15, v12}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v8, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDevicePolicySafetyCheckerUnchecked(Landroid/app/admin/DevicePolicySafetyChecker;)V

    goto :goto_6

    :cond_5
    move-object/from16 v18, v12

    move-object/from16 v17, v15

    .line 35
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_7

    :cond_6
    move-object/from16 v18, v12

    move-object/from16 v17, v15

    :goto_7
    if-eqz p3, :cond_9

    .line 36
    const-string v0, "StartWearService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const v0, 0x10403d5

    .line 37
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 39
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 40
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 41
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v0, 0x100

    .line 42
    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v8, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_8

    .line 44
    :cond_7
    const-string v0, "Null wear service component name."

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_8
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 46
    :cond_9
    const-string/jumbo v0, "startResourceOverlayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 47
    :try_start_2
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 48
    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    :try_start_3
    iget-object v8, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_a

    .line 50
    invoke-static {v8}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 51
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string/jumbo v9, "safeMode"

    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v8, 0x0

    .line 52
    invoke-virtual {v0, v8, v8}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->init(ZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    :catch_0
    move-exception v0

    .line 53
    :try_start_4
    const-string v8, "Error while starting LOM: "

    const-string v9, "SystemServer"

    .line 54
    invoke-static {v0, v8, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    .line 55
    const-string/jumbo v8, "starting Resource Overlay Service"

    invoke-static {v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_a
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 57
    const-string/jumbo v0, "startThemeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 58
    :try_start_5
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 59
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 60
    new-instance v9, Landroid/content/ComponentName;

    const-string/jumbo v12, "com.samsung.android.themecenter"

    const-string/jumbo v15, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v9, v12, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    const-string/jumbo v9, "safeMode"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const-string/jumbo v9, "isStartedBySystemServer"

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    .line 64
    const-string/jumbo v8, "starting Theme Service"

    invoke-static {v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v4, :cond_b

    .line 66
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 67
    :try_start_6
    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v4, v0

    .line 68
    const-string/jumbo v0, "enabling Airplane Mode during Safe Mode bootup"

    invoke-static {v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 70
    :cond_b
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p7, :cond_d

    .line 71
    :try_start_7
    const-string v0, "!@Boot_DEBUG: start networkManagement"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "!@Boot_EBS_D: start networkManagement"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_c

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 75
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/net/NetworkManagementService;->prepareNativeDaemon()V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v8, v19, v8

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Prepared in "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NetworkManagement"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 78
    :cond_c
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/net/NetworkManagementService;->prepareNativeDaemon()V

    .line 79
    :goto_c
    const-string v0, "!@Boot_DEBUG: end networkManagement"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "!@Boot_EBS_D: end networkManagement"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_d

    :catchall_5
    move-exception v0

    .line 81
    const-string/jumbo v4, "making Network Managment Service ready"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_d
    if-eqz v6, :cond_e

    const/4 v4, 0x1

    .line 82
    iput-boolean v4, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    .line 83
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 84
    iget-object v4, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v8, v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v4, v0

    goto :goto_e

    :cond_e
    const/4 v4, 0x0

    .line 85
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 86
    const-string v0, "MakeConnectivityServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v5, :cond_f

    .line 87
    :try_start_8
    invoke-virtual/range {p6 .. p6}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_f

    :catchall_6
    move-exception v0

    move-object v5, v0

    .line 88
    const-string/jumbo v0, "making Connectivity Service ready"

    invoke-static {v0, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    :cond_f
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 90
    const-string v0, "MakeVpnManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p9, :cond_10

    .line 91
    :try_start_9
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception v0

    move-object v5, v0

    .line 92
    const-string/jumbo v0, "making VpnManagerService ready"

    invoke-static {v0, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_10
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 94
    const-string v0, "MakeVcnManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p10, :cond_11

    .line 95
    :try_start_a
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/VcnManagementService;->systemReady()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception v0

    move-object v5, v0

    .line 96
    const-string/jumbo v0, "making VcnManagementService ready"

    invoke-static {v0, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :cond_11
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 98
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v6, :cond_12

    .line 99
    :try_start_b
    invoke-virtual {v6, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v0

    move-object v4, v0

    .line 100
    const-string/jumbo v0, "making Network Policy Service ready"

    invoke-static {v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :cond_12
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 102
    const-string v0, "MakeUrspServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p11, :cond_13

    .line 103
    :try_start_c
    const-string v0, "UrspService"

    const-string/jumbo v4, "systemReady()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_13

    :catchall_a
    move-exception v0

    .line 104
    const-string/jumbo v4, "making ursp Service ready"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_13
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 106
    const-string v0, "WaitForAppDataPrepared"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 107
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 109
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v11, :cond_14

    .line 110
    invoke-static {v11, v10}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    :cond_14
    const-string v0, "!@Boot_EBS_D: PHASE_THIRD_PARTY_APPS_CAN_START"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x258

    invoke-virtual {v0, v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v7, :cond_18

    .line 114
    const-string v0, "HsumBootUserInitializer.systemRunning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 115
    iget-object v4, v7, Lcom/android/server/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "switchToBootUser-"

    .line 116
    :try_start_d
    iget-object v0, v7, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    const/4 v6, 0x1

    move-object/from16 v8, v18

    if-ne v0, v6, :cond_15

    const/4 v10, 0x0

    goto :goto_14

    :catch_1
    move-exception v0

    .line 117
    const-string v6, "DEVICE_PROVISIONED setting not found."

    move-object/from16 v8, v18

    invoke-static {v8, v6, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :cond_15
    iget-object v0, v7, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    .line 119
    invoke-static {v13}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v9, v7, Lcom/android/server/HsumBootUserInitializer;->mDeviceProvisionedObserver:Lcom/android/server/HsumBootUserInitializer$1;

    const/4 v10, 0x0

    .line 120
    invoke-virtual {v0, v6, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    :goto_14
    const-string v0, "Unlocking system user"

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string/jumbo v0, "unlock-system-user"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 123
    :try_start_e
    const-string v0, "am.startUser"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 124
    invoke-virtual {v4, v10, v6}, Lcom/android/server/am/ActivityManagerService;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v0

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v0, :cond_16

    .line 126
    const-string/jumbo v0, "could not restart system user in background; trying unlock instead"

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "am.unlockUser"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 128
    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 129
    invoke-virtual {v0, v9, v6}, Lcom/android/server/am/UserController;->unlockUser(ILandroid/os/IProgressListener;)Z

    move-result v0

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v0, :cond_16

    .line 131
    const-string/jumbo v0, "could not unlock system user either"

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception v0

    goto :goto_17

    .line 132
    :cond_16
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 133
    :try_start_f
    const-string/jumbo v0, "getBootUser"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 134
    iget-object v0, v7, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    iget-object v6, v7, Lcom/android/server/HsumBootUserInitializer;->mPms:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v7, v17

    const/4 v9, 0x0

    .line 135
    invoke-virtual {v6, v7, v9}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v6

    .line 136
    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerInternal;->getBootUser(Z)I

    move-result v0

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Switching to boot user %d"

    invoke-static {v8, v6, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 140
    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "Failed to start user %d in foreground"

    invoke-static {v8, v4, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_f
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_16

    .line 143
    :catch_2
    const-string v0, "Failed to switch to boot user since there isn\'t one."

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_18

    .line 145
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 146
    throw v0

    .line 147
    :cond_18
    :goto_18
    const-string v0, "StartNetworkStack"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 148
    :try_start_10
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    goto :goto_19

    :catchall_c
    move-exception v0

    .line 149
    const-string/jumbo v4, "starting Network Stack"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 151
    const-string v0, "StartTethering"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 152
    :try_start_11
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string v4, "android.net.ITetheringConnector"

    const-string v5, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v6, Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    goto :goto_1a

    :catchall_d
    move-exception v0

    .line 153
    const-string/jumbo v4, "starting Tethering"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 155
    const-string v0, "SLocationServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v4, p13

    if-eqz v4, :cond_19

    .line 156
    :try_start_12
    const-string/jumbo v0, "com.samsung.android.location.SLocationLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 157
    const-string/jumbo v5, "systemReady"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    const/4 v8, 0x1

    :try_start_13
    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 158
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    goto :goto_1c

    :catchall_e
    move-exception v0

    goto :goto_1b

    :catchall_f
    move-exception v0

    const/4 v8, 0x1

    .line 159
    :goto_1b
    const-string/jumbo v4, "making SLocation Service ready : "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    :cond_19
    const/4 v8, 0x1

    .line 160
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 161
    const-string v0, "SAccessoryManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v4, p14

    move v5, v8

    if-eqz v4, :cond_1b

    .line 162
    :try_start_14
    iget-object v0, v4, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    goto :goto_1e

    .line 163
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 164
    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->systemReady()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto :goto_1d

    :catch_3
    move-exception v0

    .line 165
    const-string v4, "Notifying SAccessoryManager running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    :cond_1b
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 167
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v4, p15

    if-eqz v4, :cond_1c

    .line 168
    :try_start_15
    iget-object v0, v4, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/CountryDetectorService;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    goto :goto_1f

    :catchall_10
    move-exception v0

    .line 169
    const-string v4, "Notifying CountryDetectorService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    :cond_1c
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 171
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p16, :cond_1d

    .line 172
    :try_start_16
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->systemRunning()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    goto :goto_20

    :catchall_11
    move-exception v0

    move-object v4, v0

    .line 173
    const-string v0, "Notifying NetworkTimeService running"

    invoke-static {v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    :cond_1d
    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 175
    const-string v0, "MakeInputManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 176
    :try_start_17
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_12

    goto :goto_21

    :catchall_12
    move-exception v0

    move-object v4, v0

    .line 177
    const-string v0, "Notifying InputManagerService running"

    invoke-static {v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 179
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 180
    :try_start_18
    invoke-virtual/range {p18 .. p18}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_13

    goto :goto_22

    :catchall_13
    move-exception v0

    move-object v4, v0

    .line 181
    const-string v0, "Notifying TelephonyRegistry running"

    invoke-static {v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 183
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v4, p19

    if-eqz v4, :cond_1e

    .line 184
    :try_start_19
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v6, Lcom/android/server/media/MediaRouterService$1;

    invoke-direct {v6, v4}, Lcom/android/server/media/MediaRouterService$1;-><init>(Lcom/android/server/media/MediaRouterService;)V

    const-string v7, "MediaRouterService"

    .line 185
    invoke-interface {v0, v6, v7}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/server/media/MediaRouterService;->updateRunningUserAndProfiles(I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_14

    goto :goto_23

    :catchall_14
    move-exception v0

    .line 187
    const-string v4, "Notifying MediaRouterService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    :cond_1e
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 189
    :try_start_1a
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 190
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->readyEmergencyMode()V

    goto :goto_25

    :catch_4
    move-exception v0

    goto :goto_24

    .line 191
    :cond_1f
    const-string v0, "Starting emergency service failed: emMgr is null"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4

    goto :goto_25

    .line 192
    :goto_24
    :try_start_1b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Starting emergency service failed: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    goto :goto_25

    :catch_5
    move-exception v0

    .line 193
    const-string v4, "Notifying EmergencyModeService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    :goto_25
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 195
    const-string v0, "MakeMmsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p20, :cond_20

    .line 196
    :try_start_1c
    const-string v0, "MmsServiceBroker"

    const-string v4, "Delay connecting to MmsService until an API is called"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_15

    goto :goto_26

    :catchall_15
    move-exception v0

    .line 197
    const-string v4, "Notifying MmsService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    :cond_20
    :goto_26
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 199
    :cond_21
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 200
    :try_start_1d
    const-string/jumbo v0, "incident"

    .line 201
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 202
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 203
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_16

    goto :goto_27

    :catchall_16
    move-exception v0

    .line 204
    const-string v4, "Notifying incident daemon running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    :cond_22
    :goto_27
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 206
    iget-wide v6, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_23

    .line 207
    const-string v0, "MakeIncrementalServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 208
    iget-wide v6, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v6, v7}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 210
    :cond_23
    :try_start_1e
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x111016e

    .line 211
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6

    goto :goto_28

    :catch_6
    move-exception v0

    .line 212
    const-string v4, "Not starting ExynosDisplaySolutionService"

    invoke-static {v14, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_24

    .line 213
    const-string v0, "ExynosDisplaySolution"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 214
    :try_start_1f
    const-string v0, "ExynosDisplaySolution Service"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string/jumbo v0, "exynos_display"

    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-direct {v4, v3}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_17

    goto :goto_29

    :catchall_17
    move-exception v0

    .line 216
    const-string v4, "Failed To Start ExynosDisplaySolution Service "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    :goto_29
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 218
    :cond_24
    const-string v0, "OdsignStatsLogger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 219
    :try_start_20
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v4, Lcom/android/server/pm/dex/OdsignStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_18

    goto :goto_2a

    :catchall_18
    move-exception v0

    .line 220
    const-string v4, "Triggering OdsignStatsLogger"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    :goto_2a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "SemDisplayQualityFeature.ENABLED:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",PLATFORM:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    .line 223
    invoke-static {v0, v6, v14}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_25

    .line 224
    const-string v0, "SemDisplayQuality"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 225
    :try_start_21
    const-string v0, "SemDisplayQuality Service"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string/jumbo v0, "com.samsung.android.displayquality.SemDisplayQualityManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 227
    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 228
    filled-new-array/range {p4 .. p4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 229
    const-string v4, "DisplayQuality"

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_19

    goto :goto_2b

    :catchall_19
    move-exception v0

    .line 230
    const-string v4, "Failed To Start SemDisplayQuality Service "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 232
    :cond_25
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;

    move/from16 v4, p21

    invoke-direct {v0, v1, v4}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/SystemServer;Z)V

    const-string v1, "Load of Classes of Lazy Services"

    invoke-static {v1, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 233
    const-string v0, "Mobile Payment Service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 234
    :try_start_22
    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v4, Landroid/content/ComponentName;

    const-class v6, Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {v4, v3, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 236
    const-string/jumbo v0, "mobile_payment"

    new-instance v4, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v4, v3}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1a

    goto :goto_2c

    :catchall_1a
    move-exception v0

    .line 237
    const-string v4, "Failure starting Payment Manager Service"

    invoke-static {v14, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :goto_2c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 239
    const-string v0, "StartVoiceNoteService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 240
    new-instance v0, Lcom/android/server/voicenote/VoiceNoteService;

    .line 241
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    const-string/jumbo v4, "package"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 244
    const-string/jumbo v5, "com.sec.android.app.voicenote"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 245
    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v7, 0x3e8

    .line 247
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 248
    new-instance v8, Lcom/android/server/voicenote/VoiceNoteService$UpdateReceiver;

    .line 249
    invoke-direct {v8}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 250
    invoke-virtual {v3, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    invoke-static/range {p4 .. p4}, Lcom/android/server/voicenote/VoiceNoteService;->backgroundAllowlist(Landroid/content/Context;)V

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 253
    const-string v0, "StartSamsungHealthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 254
    new-instance v0, Lcom/android/server/shealth/SamsungHealthService;

    .line 255
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v4, "com.sec.android.app.shealth"

    const/4 v8, 0x0

    invoke-virtual {v0, v4, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 259
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 262
    new-instance v4, Lcom/android/server/shealth/SamsungHealthService$UpdateReceiver;

    .line 263
    invoke-direct {v4}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 264
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    invoke-static/range {p4 .. p4}, Lcom/android/server/shealth/SamsungHealthService;->backgroundAllowlist(Landroid/content/Context;)V

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 267
    const-string v0, "LazyService Wait Here"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 268
    const-string v0, "Lazy Service"

    invoke-static {v1, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/data/system/heapdump/"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 7
    iput-object v0, p0, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 13
    iput-object v0, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 15
    iput-object v0, p0, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 17
    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    .line 19
    invoke-direct {v0}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 24
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 30
    const-string/jumbo v0, "sys.system_server.start_count"

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x1

    .line 39
    add-int/2addr v0, v2

    .line 40
    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 45
    move-result-wide v7

    .line 46
    iput-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 51
    move-result-wide v9

    .line 52
    iput-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 54
    move-wide v3, v7

    .line 55
    move-wide v5, v9

    .line 56
    invoke-static/range {v3 .. v10}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 59
    if-le v0, v2, :cond_0

    .line 61
    move v1, v2

    .line 62
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 64
    return-void
.end method

.method public static deviceHasConfigString(Landroid/content/Context;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 11
    return p0
.end method

.method private static native fdtrackAbort()V
.end method

.method public static getMaxFd()I
    .locals 5

    .line 1
    const-string v0, "Failed to get maximum fd: "

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "/dev/null"

    .line 6
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    .line 8
    sget v4, Landroid/system/OsConstants;->O_CLOEXEC:I

    .line 10
    or-int/2addr v3, v4

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v2, v3, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    .line 19
    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    return v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/RuntimeException;

    .line 27
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    throw v1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception v2

    .line 34
    :try_start_2
    const-string v3, "System"

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    if-eqz v1, :cond_0

    .line 53
    :try_start_3
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2

    .line 56
    goto :goto_0

    .line 57
    :catch_2
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    .line 60
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    throw v1

    .line 64
    :cond_0
    :goto_0
    const v0, 0x7fffffff

    .line 67
    return v0

    .line 68
    :goto_1
    if-eqz v1, :cond_1

    .line 70
    :try_start_4
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_3

    .line 73
    goto :goto_2

    .line 74
    :catch_3
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    .line 77
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 80
    throw v1

    .line 81
    :cond_1
    :goto_2
    throw v0
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13

    .line 1
    new-instance p0, Lcom/android/server/SystemServer;

    .line 3
    invoke-direct {p0}, Lcom/android/server/SystemServer;-><init>()V

    .line 6
    const-string v0, "********** Failed to load jvmti plugin: "

    .line 8
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 10
    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 13
    :try_start_0
    const-string v2, "InitBeforeStartServices"

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v2, "sys.system_server.start_count"

    .line 21
    iget v3, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 23
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string/jumbo v2, "sys.system_server.start_elapsed"

    .line 33
    iget-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 35
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v2, "sys.system_server.start_uptime"

    .line 45
    iget-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 47
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v2, "sys.system_server.pid"

    .line 57
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 60
    move-result v3

    .line 61
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "SystemServer"

    .line 70
    const-string v3, "!@Boot_EBS_F: SYSTEM_SERVER_START"

    .line 72
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget v2, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v2

    .line 81
    iget-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 83
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    move-result-object v3

    .line 87
    iget-wide v4, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    move-result-object v4

    .line 93
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 96
    move-result-object v2

    .line 97
    const/16 v3, 0xbc3

    .line 99
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 102
    invoke-static {}, Lcom/android/server/SystemTimeZone;->initializeTimeZoneSettingsIfRequired()V

    .line 105
    const-string/jumbo v2, "persist.sys.language"

    .line 108
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_0

    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    const-string/jumbo v3, "persist.sys.locale"

    .line 129
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v2, "persist.sys.language"

    .line 135
    const-string v3, ""

    .line 137
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v2, "persist.sys.country"

    .line 143
    const-string v3, ""

    .line 145
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v2, "persist.sys.localevar"

    .line 151
    const-string v3, ""

    .line 153
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    goto :goto_0

    .line 157
    :catchall_0
    move-exception p0

    .line 158
    goto/16 :goto_6

    .line 160
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->setSystemServerProcess()V

    .line 163
    const/4 v2, 0x1

    .line 164
    invoke-static {v2}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 167
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 170
    const-string v3, "FULL"

    .line 172
    sput-object v3, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 174
    const/4 v3, 0x0

    .line 175
    invoke-static {v3}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 178
    const-string v4, "SystemServer"

    .line 180
    const-string v5, "Entered the Android system server!"

    .line 182
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v4, "SystemServer"

    .line 187
    const-string v5, "!@Boot: Entered the Android system server!"

    .line 189
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v4, "SystemServer"

    .line 194
    const-string v5, "!@Boot_EBS_F: BOOT_PROGRESS_SYSTEM_RUN"

    .line 196
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 202
    move-result-wide v4

    .line 203
    const/16 v6, 0xbc2

    .line 205
    invoke-static {v6, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 208
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 210
    const/16 v7, 0xf0

    .line 212
    if-nez v6, :cond_1

    .line 214
    const/16 v6, 0x13

    .line 216
    invoke-static {v7, v6, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 219
    :cond_1
    const-string/jumbo v4, "persist.sys.dalvik.vm.lib.2"

    .line 222
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    .line 229
    move-result-object v5

    .line 230
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 240
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 243
    invoke-static {v2}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 246
    invoke-static {v2}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 249
    invoke-static {v2}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 252
    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 255
    const/16 v4, 0x1f

    .line 257
    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 260
    const/4 v4, -0x2

    .line 261
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 264
    const/4 v4, 0x0

    .line 265
    invoke-static {v4}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 268
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 271
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 274
    move-result-object v5

    .line 275
    const-wide/16 v8, 0x64

    .line 277
    const-wide/16 v10, 0xc8

    .line 279
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 282
    sput-boolean v2, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 284
    const-string v5, "android_servers"

    .line 286
    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 292
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 294
    if-eqz v5, :cond_2

    .line 296
    const-string/jumbo v6, "persist.sys.debug.fdtrack_enable_threshold"

    .line 299
    const/16 v8, 0x640

    .line 301
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 304
    move-result v6

    .line 305
    const-string/jumbo v8, "persist.sys.debug.fdtrack_abort_threshold"

    .line 308
    const/16 v9, 0xbb8

    .line 310
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 313
    move-result v8

    .line 314
    const-string/jumbo v9, "persist.sys.debug.fdtrack_interval"

    .line 317
    const/16 v10, 0x78

    .line 319
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 322
    move-result v9

    .line 323
    new-instance v10, Ljava/lang/Thread;

    .line 325
    new-instance v11, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    .line 327
    invoke-direct {v11, v6, v8, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>(III)V

    .line 330
    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 333
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 336
    :cond_2
    invoke-static {}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 339
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    .line 342
    move-result-object v6

    .line 343
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    .line 346
    move-result-object v8

    .line 347
    iput-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 349
    const v9, 0x1030453

    .line 352
    invoke-virtual {v8, v9}, Landroid/content/Context;->setTheme(I)V

    .line 355
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 358
    move-result-object v6

    .line 359
    invoke-virtual {v6, v9}, Landroid/content/Context;->setTheme(I)V

    .line 362
    invoke-static {}, Landroid/os/Trace;->registerWithPerfetto()V

    .line 365
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 368
    const-string/jumbo v6, "system_server_dumper"

    .line 371
    iget-object v8, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 373
    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 376
    iget-object v6, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 378
    invoke-static {v6, p0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 381
    new-instance v6, Lcom/android/server/SystemServiceManager;

    .line 383
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 385
    invoke-direct {v6, v8}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    .line 388
    iput-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 390
    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 392
    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 394
    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 396
    iput-boolean v8, v6, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 398
    iput-wide v9, v6, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    .line 400
    iput-wide v11, v6, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    .line 402
    iget-object v8, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 404
    invoke-static {v8, v6}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 407
    const-class v6, Lcom/android/server/SystemServiceManager;

    .line 409
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 411
    invoke-static {v6, v8}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 414
    sget-object v6, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    .line 416
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :try_start_1
    sget-object v8, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 419
    if-nez v8, :cond_3

    .line 421
    move v8, v2

    .line 422
    goto :goto_1

    .line 423
    :cond_3
    move v8, v4

    .line 424
    :goto_1
    const-string v9, "SystemServerInitThreadPool already started"

    .line 426
    invoke-static {v8, v9}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 429
    new-instance v8, Lcom/android/server/SystemServerInitThreadPool;

    .line 431
    invoke-direct {v8}, Lcom/android/server/SystemServerInitThreadPool;-><init>()V

    .line 434
    sput-object v8, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 436
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 437
    :try_start_2
    iget-object v6, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 439
    invoke-static {v6, v8}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 442
    const-string v6, "SystemServer"

    .line 444
    const-string v8, "Loading pre-installed system font map."

    .line 446
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 452
    if-eqz v5, :cond_4

    .line 454
    const-string/jumbo v5, "persist.sys.dalvik.jvmtiagent"

    .line 457
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 460
    move-result-object v5

    .line 461
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 464
    move-result v6

    .line 465
    if-nez v6, :cond_4

    .line 467
    const/16 v6, 0x3d

    .line 469
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 472
    move-result v6

    .line 473
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 476
    move-result-object v8

    .line 477
    add-int/2addr v6, v2

    .line 478
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 481
    move-result v2

    .line 482
    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 485
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    :try_start_3
    invoke-static {v8, v2, v3}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 489
    goto :goto_2

    .line 490
    :catch_0
    :try_start_4
    const-string v2, "System"

    .line 492
    const-string v6, "*************************************************"

    .line 494
    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v2, "System"

    .line 499
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 502
    move-result-object v0

    .line 503
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 506
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 509
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    .line 511
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 514
    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 517
    :try_start_5
    const-string v0, "StartServices"

    .line 519
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 522
    const-string v0, "SystemServer"

    .line 524
    const-string v2, "!@Boot_EBS_F: startBootstrapServices"

    .line 526
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 532
    const-string v0, "SystemServer"

    .line 534
    const-string v2, "!@Boot_EBS_F: startCoreServices"

    .line 536
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 542
    const-string v0, "SystemServer"

    .line 544
    const-string v2, "!@Boot_EBS_F: startOtherServices"

    .line 546
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 552
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 555
    const-string v0, "UpdateWatchdogTimeout"

    .line 557
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 560
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 563
    move-result-object v0

    .line 564
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 566
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 572
    move-result-object v5

    .line 573
    const-string/jumbo v6, "system_server_watchdog_timeout_ms"

    .line 576
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 579
    move-result-object v6

    .line 580
    new-instance v8, Lcom/android/server/Watchdog$SettingsObserver;

    .line 582
    invoke-direct {v8, v2, v0}, Lcom/android/server/Watchdog$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V

    .line 585
    invoke-virtual {v5, v6, v4, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 588
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 591
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 594
    move-result-object v0

    .line 595
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    new-instance v2, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 600
    invoke-direct {v2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 603
    new-instance v5, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    .line 605
    invoke-direct {v5}, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;-><init>()V

    .line 608
    invoke-virtual {v2, v5}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setSystemServerStarted(Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 611
    invoke-virtual {v0, v2}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 614
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 617
    invoke-static {v3}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 620
    const-wide/16 v0, 0x80

    .line 622
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 625
    move-result-object v2

    .line 626
    const-string/jumbo v3, "com.samsung.android.voc"

    .line 629
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 632
    move-result v5

    .line 633
    invoke-interface {v2, v3, v0, v1, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 636
    move-result-object v2

    .line 637
    if-eqz v2, :cond_5

    .line 639
    const-string/jumbo v2, "sys.members.installed"

    .line 642
    const-string/jumbo v3, "true"

    .line 645
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 648
    :catch_1
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 650
    if-nez v2, :cond_7

    .line 652
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 654
    iget-boolean v3, v2, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 656
    if-nez v3, :cond_7

    .line 658
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 661
    move-result v2

    .line 662
    if-eqz v2, :cond_6

    .line 664
    goto :goto_3

    .line 665
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 668
    move-result-wide v2

    .line 669
    const/16 v5, 0x14

    .line 671
    invoke-static {v7, v5, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 674
    const-wide/32 v5, 0xea60

    .line 677
    cmp-long v5, v2, v5

    .line 679
    if-lez v5, :cond_7

    .line 681
    const-string v5, "SystemServerTiming"

    .line 683
    new-instance v6, Ljava/lang/StringBuilder;

    .line 685
    const-string v7, "SystemServer init took too long. uptimeMillis="

    .line 687
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    move-result-object v2

    .line 697
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_7
    :goto_3
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 702
    if-eqz v2, :cond_8

    .line 704
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 707
    move-result v2

    .line 708
    new-instance v3, Lcom/android/server/SystemServer$1;

    .line 710
    invoke-direct {v3, v2}, Lcom/android/server/SystemServer$1;-><init>(I)V

    .line 713
    new-instance v2, Ljava/util/Timer;

    .line 715
    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 718
    const-wide/16 v5, 0x7530

    .line 720
    invoke-virtual {v2, v3, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 723
    :cond_8
    new-instance v2, Lcom/android/server/SystemServer$2;

    .line 725
    invoke-direct {v2, p0}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;)V

    .line 728
    invoke-static {v2}, Landroid/os/Binder;->setTransactionCallback(Landroid/os/IBinderCallback;)V

    .line 731
    :try_start_7
    const-string/jumbo p0, "persist.sys.is_usertrial"

    .line 734
    invoke-static {p0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 737
    move-result p0

    .line 738
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 741
    move-result-object v2

    .line 742
    const-string/jumbo v3, "com.salab.issuetracker"

    .line 745
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 748
    move-result v4

    .line 749
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 752
    move-result-object v0

    .line 753
    if-nez p0, :cond_a

    .line 755
    if-nez v0, :cond_9

    .line 757
    goto :goto_4

    .line 758
    :cond_9
    const-string/jumbo p0, "persist.sys.is_usertrial"

    .line 761
    const-string/jumbo v0, "true"

    .line 764
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    goto :goto_5

    .line 768
    :cond_a
    :goto_4
    if-eqz p0, :cond_b

    .line 770
    if-nez v0, :cond_b

    .line 772
    const-string/jumbo p0, "persist.sys.is_usertrial"

    .line 775
    const-string/jumbo v0, "false"

    .line 778
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 781
    :catch_2
    :cond_b
    :goto_5
    const-string p0, "SystemServer"

    .line 783
    const-string v0, "!@Boot: Loop forever"

    .line 785
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string p0, "SystemServer"

    .line 790
    const-string v0, "!@Boot_EBS_D: Loop forever"

    .line 792
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 798
    new-instance p0, Ljava/lang/RuntimeException;

    .line 800
    const-string v0, "Main thread loop unexpectedly exited"

    .line 802
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 805
    throw p0

    .line 806
    :catchall_1
    move-exception p0

    .line 807
    :try_start_8
    const-string v0, "System"

    .line 809
    const-string v2, "******************************************"

    .line 811
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v0, "System"

    .line 816
    const-string v2, "************ Failure starting system services"

    .line 818
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 822
    :catchall_2
    move-exception p0

    .line 823
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 826
    throw p0

    .line 827
    :catchall_3
    move-exception p0

    .line 828
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 829
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 830
    :goto_6
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 833
    throw p0
.end method

.method public static performPendingShutdown()V
    .locals 8

    .line 1
    const-string v0, "SystemServer"

    .line 3
    const-string/jumbo v1, "sys.shutdown.requested"

    .line 6
    const-string v2, ""

    .line 8
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    move-result v2

    .line 18
    if-lez v2, :cond_3

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    move-result v3

    .line 25
    const/16 v4, 0x31

    .line 27
    const/4 v5, 0x1

    .line 28
    if-ne v3, v4, :cond_0

    .line 30
    move v3, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v2

    .line 33
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 36
    move-result v4

    .line 37
    const/4 v6, 0x0

    .line 38
    if-le v4, v5, :cond_1

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 43
    move-result v4

    .line 44
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v1, v6

    .line 50
    :goto_1
    if-eqz v1, :cond_2

    .line 52
    const-string/jumbo v4, "recovery-update"

    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 61
    new-instance v4, Ljava/io/File;

    .line 63
    const-string v7, "/cache/recovery/uncrypt_file"

    .line 65
    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_2

    .line 74
    :try_start_0
    invoke-static {v4, v2, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception v2

    .line 80
    const-string v4, "Error reading uncrypt package file"

    .line 82
    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :goto_2
    if-eqz v6, :cond_2

    .line 87
    const-string v2, "/data"

    .line 89
    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_2

    .line 95
    const-string v2, "/cache/recovery/block.map"

    .line 97
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_2

    .line 103
    const-string v1, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 109
    :cond_2
    new-instance v0, Lcom/android/server/SystemServer$3;

    .line 111
    invoke-direct {v0, v1, v3}, Lcom/android/server/SystemServer$3;-><init>(Ljava/lang/String;Z)V

    .line 114
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 117
    move-result-object v1

    .line 118
    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 125
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    :cond_3
    return-void
.end method

.method public static reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const-string v0, "SystemServer"

    .line 3
    const-string v1, "***********************************************"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "BOOT FAILURE "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    return-void
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static native startHidlServices()V
.end method

.method private static native startISensorManagerService()V
.end method

.method private static native startIStatsService()V
.end method

.method private static native startIncrementalService()J
.end method

.method private static native startMemtrackProxyService()V
.end method

.method public static startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V
    .locals 7

    .line 1
    const-string/jumbo v0, "startRCPService | Fail to start service"

    .line 4
    const-string/jumbo v1, "startRCPService | context is null"

    .line 7
    const-string/jumbo v2, "persist.sys.knox.userinfo"

    .line 10
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 21
    move-result v2

    .line 22
    if-lez v2, :cond_0

    .line 24
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v3

    .line 27
    :goto_0
    const-string/jumbo v5, "persist.sys.knox.device_owner"

    .line 30
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_1

    .line 36
    const-string/jumbo v6, "true"

    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 45
    move v3, v4

    .line 46
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v5, "startRCPService | KnoxPresentInDevice : "

    .line 51
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    const-string v5, ", DoEnabled : "

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    const-string v5, "SystemServer"

    .line 71
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :try_start_0
    const-string v4, "RCPManagerService"

    .line 76
    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    const-string/jumbo v4, "rcp"

    .line 82
    if-nez p2, :cond_4

    .line 84
    if-nez v2, :cond_2

    .line 86
    if-eqz v3, :cond_4

    .line 88
    :cond_2
    :try_start_1
    const-string/jumbo p2, "startRCPService | add Service : RCPManagerService , rcp"

    .line 91
    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-nez p0, :cond_3

    .line 96
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception p2

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    :try_start_2
    new-instance p2, Lcom/android/server/RCPManagerService;

    .line 107
    invoke-direct {p2, p0}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-static {v4, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    if-eqz p2, :cond_5

    .line 116
    if-nez v2, :cond_5

    .line 118
    if-nez v3, :cond_5

    .line 120
    const-string/jumbo p2, "startRCPService | add Lazy Service : RCPManagerService , rcp"

    .line 123
    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-class p2, Lcom/android/server/RCPManagerService;

    .line 128
    invoke-static {v4, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 134
    goto :goto_3

    .line 135
    :goto_2
    :try_start_3
    invoke-static {v5, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 138
    goto :goto_1

    .line 139
    :goto_3
    :try_start_4
    const-string p2, "KnoxMUMRCPPolicyService"

    .line 141
    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    const-string/jumbo p2, "mum_container_rcp_policy"

    .line 147
    if-nez v2, :cond_7

    .line 149
    if-eqz v3, :cond_6

    .line 151
    goto :goto_4

    .line 152
    :cond_6
    :try_start_5
    const-string/jumbo p0, "startRCPService | add Lazy Service : KnoxMUMRCPPolicyService , mumrcppolicy"

    .line 155
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance p0, Lcom/android/server/SystemServer$4;

    .line 160
    const/4 v1, 0x2

    .line 161
    invoke-direct {p0, v1}, Lcom/android/server/SystemServer$4;-><init>(I)V

    .line 164
    invoke-static {p2, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V

    .line 167
    goto :goto_5

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    goto :goto_6

    .line 170
    :cond_7
    :goto_4
    const-string/jumbo v2, "startRCPService | add Service : KnoxMUMRCPPolicyService , mumrcppolicy"

    .line 173
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-nez p0, :cond_8

    .line 178
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 181
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 184
    return-void

    .line 185
    :cond_8
    :try_start_6
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .line 187
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-static {p2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 193
    :goto_5
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 196
    goto :goto_7

    .line 197
    :goto_6
    :try_start_7
    invoke-static {v5, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 200
    goto :goto_5

    .line 201
    :goto_7
    return-void

    .line 202
    :catchall_2
    move-exception p0

    .line 203
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 206
    throw p0

    .line 207
    :catchall_3
    move-exception p0

    .line 208
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 211
    throw p0
.end method

.method public static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 11
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 14
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21
    const/16 v0, 0x100

    .line 23
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 34
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p2

    .line 7
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    const-string v0, "Runtime restart: %b\n"

    .line 13
    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 16
    iget p2, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p2

    .line 22
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 26
    const-string v0, "Start count: %d\n"

    .line 28
    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 31
    const-string p2, "Runtime start-up time: "

    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 38
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 41
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 44
    const-string p2, "Runtime start-elapsed time: "

    .line 46
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 51
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 54
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 57
    return-void
.end method

.method public final getDumpableName()Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lcom/android/server/SystemServer;

    .line 3
    const-string p0, "SystemServer"

    .line 5
    return-object p0
.end method

.method public final startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 8
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    const-string/jumbo v0, "debug.crash_system"

    .line 15
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 24
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_0
    const-string/jumbo v0, "startApexServices"

    .line 31
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 40
    iget-object v2, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 42
    monitor-enter v2

    .line 43
    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 45
    if-eqz v3, :cond_2

    .line 47
    const/4 v1, 0x1

    .line 48
    :cond_2
    const-string v3, "APEX packages have not been scanned"

    .line 50
    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 53
    iget-object v0, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 55
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    check-cast v0, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v0

    .line 62
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 74
    iget-object v2, v1, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    .line 76
    iget-object v1, v1, Lcom/android/server/pm/ApexSystemServiceInfo;->mJarPath:Ljava/lang/String;

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v4, "starting "

    .line 83
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_3

    .line 102
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 104
    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 110
    invoke-virtual {v3, v2, v1}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_2
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    .line 128
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 130
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 136
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 139
    return-void

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    throw p0
.end method

.method public final startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p1

    .line 13
    xor-int/lit8 p1, p1, 0x1

    .line 15
    if-nez p1, :cond_0

    .line 17
    const-string p0, "SystemServer"

    .line 19
    const-string p1, "AttentionService is not configured on this device"

    .line 21
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void

    .line 25
    :cond_0
    const-string p1, "StartAttentionManagerService"

    .line 27
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 32
    const-class p1, Lcom/android/server/attention/AttentionManagerService;

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 37
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 40
    return-void
.end method

.method public final startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string/jumbo v0, "startBootstrapServices"

    .line 10
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 13
    const-string v0, "ArtModuleServiceInitializer"

    .line 15
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 18
    new-instance v0, Landroid/os/ArtModuleServiceManager;

    .line 20
    invoke-direct {v0}, Landroid/os/ArtModuleServiceManager;-><init>()V

    .line 23
    invoke-static {v0}, Lcom/android/server/art/ArtModuleServiceInitializer;->setArtModuleServiceManager(Landroid/os/ArtModuleServiceManager;)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 29
    const-string v0, "StartWatchdog"

    .line 31
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 37
    move-result-object v6

    .line 38
    iget-object v0, v6, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 45
    invoke-static {v0, v6}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 51
    const-string v0, "SystemServer"

    .line 53
    const-string v7, "Reading configuration..."

    .line 55
    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "ReadingSystemConfig"

    .line 60
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    .line 65
    invoke-direct {v0, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 68
    const-string v7, "ReadingSystemConfig"

    .line 70
    invoke-static {v7, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 76
    const-string v0, "PlatformCompat"

    .line 78
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 81
    new-instance v7, Lcom/android/server/compat/PlatformCompat;

    .line 83
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 85
    invoke-direct {v7, v0}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 88
    const-string/jumbo v0, "platform_compat"

    .line 91
    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 94
    const-string/jumbo v0, "platform_compat_native"

    .line 97
    new-instance v8, Lcom/android/server/compat/PlatformCompatNative;

    .line 99
    invoke-direct {v8, v7}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    .line 102
    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 105
    new-array v0, v5, [J

    .line 107
    new-array v8, v5, [J

    .line 109
    invoke-static {v0, v8}, Landroid/app/AppCompatCallbacks;->install([J[J)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 115
    const-string v0, "StartFileIntegrityService"

    .line 117
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 120
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 122
    const-class v8, Lcom/android/server/security/FileIntegrityService;

    .line 124
    const-string v9, "StartInstaller"

    .line 126
    invoke-static {v0, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 129
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 131
    const-class v8, Lcom/android/server/pm/Installer;

    .line 133
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/android/server/pm/Installer;

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 142
    const-string v8, "DeviceIdentifiersPolicyService"

    .line 144
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 147
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 149
    const-class v9, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    .line 151
    const-string v10, "StartFeatureFlagsService"

    .line 153
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 156
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 158
    const-class v9, Lcom/android/server/flags/FeatureFlagsService;

    .line 160
    const-string v10, "UriGrantsManagerService"

    .line 162
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 165
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 167
    const-class v9, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    .line 169
    const-string v10, "StartPowerStatsService"

    .line 171
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 174
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 176
    const-class v9, Lcom/android/server/powerstats/PowerStatsService;

    .line 178
    const-string v10, "StartIStatsService"

    .line 180
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 189
    const-string v8, "MemtrackProxyService"

    .line 191
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 200
    const-string v8, "StartAccessCheckingService"

    .line 202
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 205
    const-class v8, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 207
    new-instance v9, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 209
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {v8, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 215
    const-class v8, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    .line 217
    new-instance v9, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    .line 219
    invoke-direct {v9}, Lcom/android/server/appop/AppOpMigrationHelperImpl;-><init>()V

    .line 222
    invoke-static {v8, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 225
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 227
    const-class v9, Lcom/android/server/permission/access/AccessCheckingService;

    .line 229
    const-string v10, "StartActivityManager"

    .line 231
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 234
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 236
    const-class v9, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 238
    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 241
    move-result-object v8

    .line 242
    check-cast v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 244
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 246
    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 248
    sput-object v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;->sAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 250
    const-class v10, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 252
    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 255
    move-result-object v9

    .line 256
    check-cast v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 258
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 260
    iput-object v9, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 262
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 264
    iput-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 266
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 272
    const-string v8, "StartDataLoaderManagerService"

    .line 274
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 277
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 279
    const-class v9, Lcom/android/server/pm/DataLoaderManagerService;

    .line 281
    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 284
    move-result-object v8

    .line 285
    check-cast v8, Lcom/android/server/pm/DataLoaderManagerService;

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 290
    const-string v8, "StartIncrementalService"

    .line 292
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    .line 298
    move-result-wide v8

    .line 299
    iput-wide v8, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 304
    const-string v8, "StartPowerManager"

    .line 306
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 309
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 311
    const-class v9, Lcom/android/server/power/PowerManagerService;

    .line 313
    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 316
    move-result-object v8

    .line 317
    check-cast v8, Lcom/android/server/power/PowerManagerService;

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 322
    const-string v8, "StartThermalManager"

    .line 324
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 327
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 329
    const-class v9, Lcom/android/server/power/ThermalManagerService;

    .line 331
    const-string v10, "InitPowerManagement"

    .line 333
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 336
    iget-object v8, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 338
    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 340
    iget-object v10, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 342
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 345
    monitor-enter v10

    .line 346
    :try_start_0
    iget-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 348
    iget-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 350
    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 352
    const-class v13, Landroid/os/PowerManager;

    .line 354
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 357
    move-result-object v12

    .line 358
    check-cast v12, Landroid/os/PowerManager;

    .line 360
    iput-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 362
    const-string v13, "ActivityManager-Sleep"

    .line 364
    invoke-virtual {v12, v4, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 367
    move-result-object v12

    .line 368
    iput-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 370
    iget-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 372
    const-string v13, "*launch*"

    .line 374
    invoke-virtual {v12, v4, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 377
    move-result-object v12

    .line 378
    iput-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 380
    invoke-virtual {v12, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 383
    iget-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 385
    const-string/jumbo v12, "power"

    .line 388
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 391
    move-result-object v11

    .line 392
    check-cast v11, Landroid/os/PowerManager;

    .line 394
    const-class v12, Landroid/os/PowerManagerInternal;

    .line 396
    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 399
    move-result-object v12

    .line 400
    check-cast v12, Landroid/os/PowerManagerInternal;

    .line 402
    iput-object v12, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 404
    const-string v12, "*voice*"

    .line 406
    invoke-virtual {v11, v4, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 409
    move-result-object v11

    .line 410
    iput-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 412
    invoke-virtual {v11, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 415
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 416
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 419
    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 421
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    const-class v10, Landroid/os/PowerManagerInternal;

    .line 426
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 429
    move-result-object v10

    .line 430
    check-cast v10, Landroid/os/PowerManagerInternal;

    .line 432
    invoke-virtual {v10, v9}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 435
    iget-object v11, v9, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 437
    monitor-enter v11

    .line 438
    :try_start_1
    iget-object v12, v9, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 440
    const/16 v13, 0x9

    .line 442
    invoke-virtual {v10, v13}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 445
    move-result-object v10

    .line 446
    iget-boolean v10, v10, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 451
    move-result-wide v13

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 455
    move-result-wide v15

    .line 456
    iget-boolean v3, v12, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerSaveModeEnabled:Z

    .line 458
    if-eq v3, v10, :cond_0

    .line 460
    move/from16 v17, v10

    .line 462
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePowerSaveModeLocked(JJZ)V

    .line 465
    goto :goto_0

    .line 466
    :cond_0
    iget-object v3, v12, Lcom/android/server/power/stats/BatteryStatsImpl;->mFrameworkStatsLogger:Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    .line 468
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    const/16 v3, 0x14

    .line 473
    invoke-static {v3, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 476
    :goto_0
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 477
    new-instance v3, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    .line 479
    invoke-direct {v3, v9}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    .line 482
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 485
    const-class v3, Landroid/os/PowerManagerInternal;

    .line 487
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 490
    move-result-object v3

    .line 491
    check-cast v3, Landroid/os/PowerManagerInternal;

    .line 493
    iput-object v3, v8, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 498
    const-string v3, "VaultKeeperService"

    .line 500
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 503
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 505
    const-class v8, Lcom/android/server/VaultKeeperService$LifeCycle;

    .line 507
    const-string v9, "StartRecoverySystemService"

    .line 509
    invoke-static {v3, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 512
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 514
    const-class v8, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    .line 516
    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 522
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 524
    sget v8, Lcom/android/server/RescueParty;->LEVEL_ISRB_BOOT:I

    .line 526
    invoke-static {v3}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 529
    move-result-object v8

    .line 530
    invoke-static {v3}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 533
    move-result-object v3

    .line 534
    invoke-virtual {v8, v3}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 537
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 540
    move-result v3

    .line 541
    if-nez v3, :cond_1

    .line 543
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 545
    invoke-static {v3}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 548
    move-result-object v3

    .line 549
    invoke-virtual {v3}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    .line 552
    :cond_1
    const-string v3, "StartLightsService"

    .line 554
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 557
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 559
    const-class v8, Lcom/android/server/lights/LightsService;

    .line 561
    const-string v9, "StartPdpService"

    .line 563
    invoke-static {v3, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 566
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 568
    const-class v8, Lcom/android/server/pdp/PdpService;

    .line 570
    const-string v9, "StartDisplayOffloadService"

    .line 572
    invoke-static {v3, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 575
    const-string/jumbo v3, "config.enable_display_offload"

    .line 578
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 581
    move-result v3

    .line 582
    if-eqz v3, :cond_2

    .line 584
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 586
    const-string/jumbo v8, "com.android.clockwork.displayoffload.DisplayOffloadService"

    .line 589
    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 592
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 595
    const-string v3, "StartDisplayManager"

    .line 597
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 600
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 602
    const-class v8, Lcom/android/server/display/DisplayManagerService;

    .line 604
    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 607
    move-result-object v3

    .line 608
    check-cast v3, Lcom/android/server/display/DisplayManagerService;

    .line 610
    iput-object v3, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 615
    const-string v3, "WaitForDisplay"

    .line 617
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 620
    const-string v3, "SystemServer"

    .line 622
    const-string v8, "!@Boot_EBS_D: PHASE_WAIT_FOR_DEFAULT_DISPLAY"

    .line 624
    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 629
    const/16 v8, 0x64

    .line 631
    invoke-virtual {v3, v2, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 637
    iget-boolean v3, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 639
    const/16 v8, 0xe

    .line 641
    const/16 v9, 0xf0

    .line 643
    if-nez v3, :cond_3

    .line 645
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 648
    move-result-wide v10

    .line 649
    invoke-static {v9, v8, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 652
    :cond_3
    const-string v3, "StartDomainVerificationService"

    .line 654
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 657
    new-instance v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 659
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 661
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 664
    move-result-object v11

    .line 665
    invoke-direct {v3, v10, v11, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    .line 668
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 670
    invoke-virtual {v10, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 676
    const-string v10, "StartPackageManagerService"

    .line 678
    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 681
    const-string v10, "SystemServer"

    .line 683
    const-string v11, "!@Boot: Start PackageManagerService"

    .line 685
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :try_start_2
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 691
    move-result-object v10

    .line 692
    const-string/jumbo v11, "packagemanagermain"

    .line 695
    invoke-virtual {v10, v11}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 698
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 700
    iget v11, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 702
    if-eqz v11, :cond_4

    .line 704
    move v11, v4

    .line 705
    goto :goto_1

    .line 706
    :cond_4
    move v11, v5

    .line 707
    :goto_1
    invoke-static {v10, v0, v3, v11}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;

    .line 710
    move-result-object v0

    .line 711
    iput-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 713
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 716
    move-result-object v0

    .line 717
    const-string/jumbo v3, "packagemanagermain"

    .line 720
    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 723
    const-string v0, "SystemServer"

    .line 725
    const-string v3, "!@Boot: End PackageManagerService"

    .line 727
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 732
    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 734
    iput-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 736
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 738
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 741
    move-result-object v0

    .line 742
    iput-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 744
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 747
    const-string v0, "DexUseManagerLocal"

    .line 749
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 752
    const-class v0, Lcom/android/server/art/DexUseManagerLocal;

    .line 754
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 756
    invoke-static {v3}, Lcom/android/server/art/DexUseManagerLocal;->createInstance(Landroid/content/Context;)Lcom/android/server/art/DexUseManagerLocal;

    .line 759
    move-result-object v3

    .line 760
    invoke-static {v0, v3}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 766
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 768
    if-nez v0, :cond_6

    .line 770
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 772
    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 774
    if-nez v3, :cond_6

    .line 776
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 779
    move-result v0

    .line 780
    if-eqz v0, :cond_5

    .line 782
    goto :goto_2

    .line 783
    :cond_5
    const/16 v0, 0xf

    .line 785
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 788
    move-result-wide v10

    .line 789
    invoke-static {v9, v0, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 792
    :cond_6
    :goto_2
    const-string v0, "StartASKSManagerService"

    .line 794
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 797
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 799
    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 801
    const-string/jumbo v3, "main starts"

    .line 804
    const-string v9, "ASKSManager"

    .line 806
    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v3, Lcom/android/server/asks/ASKSManagerService;

    .line 811
    invoke-direct {v3, v0}, Lcom/android/server/asks/ASKSManagerService;-><init>(Landroid/content/Context;)V

    .line 814
    const-string v0, "asks"

    .line 816
    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 819
    const-string/jumbo v0, "main ends"

    .line 822
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iput-object v3, v1, Lcom/android/server/SystemServer;->mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

    .line 827
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 830
    const-string/jumbo v0, "config.disable_otadexopt"

    .line 833
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 836
    move-result v0

    .line 837
    if-nez v0, :cond_7

    .line 839
    const-string v0, "StartOtaDexOptService"

    .line 841
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 844
    :try_start_3
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 847
    move-result-object v0

    .line 848
    const-string/jumbo v3, "moveab"

    .line 851
    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 854
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 856
    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 858
    invoke-static {v0, v3}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 861
    :goto_3
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 864
    move-result-object v0

    .line 865
    const-string/jumbo v3, "moveab"

    .line 868
    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 874
    goto :goto_4

    .line 875
    :catchall_0
    move-exception v0

    .line 876
    :try_start_4
    const-string/jumbo v3, "starting OtaDexOptService"

    .line 879
    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 882
    goto :goto_3

    .line 883
    :catchall_1
    move-exception v0

    .line 884
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 887
    move-result-object v1

    .line 888
    const-string/jumbo v3, "moveab"

    .line 891
    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 897
    throw v0

    .line 898
    :cond_7
    :goto_4
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    .line 900
    if-eqz v0, :cond_8

    .line 902
    const-string v0, "StartArcSystemHealthService"

    .line 904
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 907
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 909
    const-string/jumbo v3, "com.android.server.arc.health.ArcSystemHealthService"

    .line 912
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 915
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 918
    :cond_8
    const-string v0, "StartUserManagerService"

    .line 920
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 923
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 925
    const-class v3, Lcom/android/server/pm/UserManagerService$LifeCycle;

    .line 927
    const-string v9, "InitAttributerCache"

    .line 929
    invoke-static {v0, v3, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 932
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 934
    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 937
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 940
    const-string v0, "SetSystemProcess"

    .line 942
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 945
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 947
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 950
    :try_start_5
    const-string v0, "activity"

    .line 952
    const/16 v9, 0x15

    .line 954
    invoke-static {v0, v3, v4, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 957
    const-string/jumbo v0, "procstats"

    .line 960
    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 962
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 965
    const-string/jumbo v0, "meminfo"

    .line 968
    new-instance v9, Lcom/android/server/am/ActivityManagerService$MemBinder;

    .line 970
    invoke-direct {v9, v3}, Lcom/android/server/am/ActivityManagerService$MemBinder;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 973
    const/4 v10, 0x2

    .line 974
    invoke-static {v0, v9, v5, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 977
    const-string/jumbo v0, "gfxinfo"

    .line 980
    new-instance v9, Lcom/android/server/am/ActivityManagerService$DbBinder;

    .line 982
    invoke-direct {v9, v10}, Lcom/android/server/am/ActivityManagerService$DbBinder;-><init>(I)V

    .line 985
    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 987
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 990
    const-string/jumbo v0, "dbinfo"

    .line 993
    new-instance v9, Lcom/android/server/am/ActivityManagerService$DbBinder;

    .line 995
    invoke-direct {v9, v5}, Lcom/android/server/am/ActivityManagerService$DbBinder;-><init>(I)V

    .line 998
    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1000
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1003
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1005
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1008
    new-instance v9, Lcom/android/server/am/AppProfiler$CpuBinder;

    .line 1010
    invoke-direct {v9, v0}, Lcom/android/server/am/AppProfiler$CpuBinder;-><init>(Lcom/android/server/am/AppProfiler;)V

    .line 1013
    const-string/jumbo v0, "cpuinfo"

    .line 1016
    invoke-static {v0, v9, v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1019
    const-string/jumbo v0, "permission"

    .line 1022
    new-instance v9, Lcom/android/server/am/ActivityManagerService$PermissionController;

    .line 1024
    invoke-direct {v9}, Landroid/os/IPermissionController$Stub;-><init>()V

    .line 1027
    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1029
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1032
    const-string/jumbo v0, "processinfo"

    .line 1035
    new-instance v9, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;

    .line 1037
    invoke-direct {v9, v3}, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 1040
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1043
    const-string/jumbo v0, "cacheinfo"

    .line 1046
    new-instance v9, Lcom/android/server/am/ActivityManagerService$DbBinder;

    .line 1048
    invoke-direct {v9, v4}, Lcom/android/server/am/ActivityManagerService$DbBinder;-><init>(I)V

    .line 1051
    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1053
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1056
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1058
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1061
    move-result-object v0

    .line 1062
    const-string v9, "android"

    .line 1064
    const v10, 0x100400

    .line 1067
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1070
    move-result-object v12

    .line 1071
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 1073
    const-class v9, Lcom/android/server/am/ActivityManagerService;

    .line 1075
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1078
    move-result-object v9

    .line 1079
    invoke-virtual {v0, v12, v9}, Landroid/app/ActivityThread;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 1082
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1085
    monitor-enter v3
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1086
    :try_start_6
    iget-object v11, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1088
    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1090
    new-instance v0, Lcom/android/server/am/HostingRecord;

    .line 1092
    const-string/jumbo v9, "system"

    .line 1095
    invoke-direct {v0, v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;)V

    .line 1098
    const/4 v15, 0x0

    .line 1099
    const/16 v16, 0x0

    .line 1101
    const/16 v17, 0x0

    .line 1103
    const/16 v18, 0x0

    .line 1105
    const/4 v14, 0x0

    .line 1106
    move-object/from16 v19, v0

    .line 1108
    invoke-virtual/range {v11 .. v19}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    .line 1111
    move-result-object v0

    .line 1112
    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 1114
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1116
    iput-boolean v4, v9, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    .line 1118
    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1120
    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 1123
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1125
    const/16 v10, -0x384

    .line 1127
    iput v10, v9, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 1129
    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 1131
    invoke-virtual {v9}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    .line 1134
    move-result-object v9

    .line 1135
    iget-object v10, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1137
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/ProcessRecord;->makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V

    .line 1140
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1142
    invoke-virtual {v9, v4}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 1145
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1148
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1150
    const/4 v9, 0x0

    .line 1151
    invoke-virtual {v4, v0, v9, v5}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 1154
    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    .line 1157
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1158
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1161
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1163
    new-instance v4, Lcom/android/server/am/ActivityManagerService$4;

    .line 1165
    invoke-direct {v4, v3}, Lcom/android/server/am/ActivityManagerService$4;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 1168
    const/16 v8, 0x3f

    .line 1170
    invoke-virtual {v0, v8, v9, v5, v4}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 1173
    const/16 v0, 0x1a

    .line 1175
    filled-new-array {v0}, [I

    .line 1178
    move-result-object v0

    .line 1179
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1181
    new-instance v8, Lcom/android/server/am/ActivityManagerService$5;

    .line 1183
    invoke-direct {v8, v3}, Lcom/android/server/am/ActivityManagerService$5;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 1186
    invoke-virtual {v4, v0, v8}, Lcom/android/server/appop/AppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 1189
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1192
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1194
    invoke-virtual {v7, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 1197
    const-string v0, "InitWatchdog"

    .line 1199
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1202
    const-string v0, "SystemServer"

    .line 1204
    const-string v3, "!@Boot_EBS_D: InitWatchdog"

    .line 1206
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1211
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1213
    iput-object v3, v6, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 1215
    sput-object v0, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 1217
    new-instance v3, Lcom/android/server/Watchdog$RebootRequestReceiver;

    .line 1219
    invoke-direct {v3, v6}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    .line 1222
    new-instance v4, Landroid/content/IntentFilter;

    .line 1224
    const-string v7, "android.intent.action.REBOOT"

    .line 1226
    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1229
    const-string v7, "android.permission.REBOOT"

    .line 1231
    invoke-virtual {v0, v3, v4, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1234
    iget-object v0, v6, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    .line 1236
    sget-object v3, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 1238
    iget-object v4, v6, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 1240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1243
    sput-object v3, Lcom/android/server/HeapdumpWatcher;->mContext:Landroid/content/Context;

    .line 1245
    iput-object v4, v0, Lcom/android/server/HeapdumpWatcher;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 1247
    iget-object v0, v6, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 1249
    sget-object v3, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 1251
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1254
    sput-object v3, Lcom/android/server/FileDescriptorWatcher;->mContext:Landroid/content/Context;

    .line 1256
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1259
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1261
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1264
    new-instance v0, Lcom/android/server/display/DisplayManagerService$5;

    .line 1266
    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$5;-><init>()V

    .line 1269
    new-instance v3, Ljava/util/Timer;

    .line 1271
    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 1274
    const-wide/16 v6, 0x7530

    .line 1276
    invoke-virtual {v3, v0, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1279
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    .line 1281
    if-eqz v0, :cond_9

    .line 1283
    new-instance v0, Landroid/os/Handler;

    .line 1285
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1288
    new-instance v3, Lcom/android/server/display/DisplayManagerService$6;

    .line 1290
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1293
    const-wide/16 v6, 0x2710

    .line 1295
    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1298
    :cond_9
    const-string v0, "StartOverlayManagerService"

    .line 1300
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1303
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1305
    new-instance v3, Lcom/android/server/om/OverlayManagerService;

    .line 1307
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1309
    invoke-direct {v3, v4}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    .line 1312
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1315
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1318
    const-string v0, "StartResourcesManagerService"

    .line 1320
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1323
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    .line 1325
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1327
    invoke-direct {v0, v3}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1330
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1332
    iput-object v3, v0, Lcom/android/server/resources/ResourcesManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1334
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1336
    invoke-virtual {v3, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1339
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1342
    const-string v0, "StartSensorPrivacyService"

    .line 1344
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1347
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1349
    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 1351
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1353
    invoke-direct {v3, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    .line 1356
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1359
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1362
    const-string v0, "PACMService"

    .line 1364
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1367
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1369
    const-class v3, Lcom/android/server/PACMService;

    .line 1371
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1374
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1377
    const-string/jumbo v0, "persist.sys.displayinset.top"

    .line 1380
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1383
    move-result v0

    .line 1384
    if-lez v0, :cond_a

    .line 1386
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1388
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 1391
    move-result-object v3

    .line 1392
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 1395
    move-result v4

    .line 1396
    const-string v8, "android"

    .line 1398
    const-wide/16 v6, 0x400

    .line 1400
    const/4 v5, 0x0

    .line 1401
    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 1404
    move-result-object v0

    .line 1405
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 1408
    move-result-object v3

    .line 1409
    invoke-virtual {v3, v0}, Landroid/app/ActivityThread;->handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 1412
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1414
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1417
    move-result-object v0

    .line 1418
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1420
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1423
    :cond_a
    const-string v0, "StartSensorService"

    .line 1425
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1428
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1430
    const-class v1, Lcom/android/server/sensors/SensorService;

    .line 1432
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1435
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1438
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1441
    return-void

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    goto :goto_5

    .line 1444
    :catchall_2
    move-exception v0

    .line 1445
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1446
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1449
    throw v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1450
    :goto_5
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1452
    const-string v2, "Unable to find android system package"

    .line 1454
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1457
    throw v1

    .line 1458
    :catchall_3
    move-exception v0

    .line 1459
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 1462
    move-result-object v1

    .line 1463
    const-string/jumbo v2, "packagemanagermain"

    .line 1466
    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1469
    throw v0

    .line 1470
    :catchall_4
    move-exception v0

    .line 1471
    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1472
    throw v0

    .line 1473
    :catchall_5
    move-exception v0

    .line 1474
    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1475
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1478
    throw v0
.end method

.method public final startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "content_capture"

    .line 4
    const-string/jumbo v1, "service_explicitly_enabled"

    .line 7
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SystemServer"

    .line 13
    if-eqz v0, :cond_1

    .line 15
    const-string/jumbo v2, "default"

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    const-string v2, "ContentCaptureService explicitly enabled by DeviceConfig"

    .line 32
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p0, "ContentCaptureService explicitly disabled by DeviceConfig"

    .line 38
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_0
    if-nez v0, :cond_3

    .line 45
    const v0, 0x104030f

    .line 48
    invoke-static {p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 54
    const-string p0, "ContentCaptureService disabled because resource is not overlaid"

    .line 56
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 60
    :cond_2
    const v0, 0x1040310

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result p1

    .line 71
    xor-int/lit8 p1, p1, 0x1

    .line 73
    if-nez p1, :cond_3

    .line 75
    const-string p1, "ContentProtectionService disabled because resource is not overlaid, ContentCaptureService still enabled"

    .line 77
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_3
    const-string p1, "StartContentCaptureService"

    .line 82
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 87
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    invoke-virtual {p1, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 92
    const-class p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 94
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 100
    if-eqz p1, :cond_4

    .line 102
    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 104
    if-eqz p0, :cond_4

    .line 106
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mContentCaptureService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 108
    :cond_4
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 111
    return-void
.end method

.method public final startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "startCoreServices"

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7
    const-string/jumbo v0, "persist.sys.enable_isrb"

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const-string v0, "StartISRBService"

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 24
    const-class v1, Lcom/android/server/isrb/IsrbManagerService;

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 29
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 32
    :cond_0
    const-string v0, "StartSystemConfigService"

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 39
    const-class v1, Lcom/android/server/SystemConfigService;

    .line 41
    const-string v2, "StartBatteryService"

    .line 43
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 48
    const-class v1, Lcom/android/server/BatteryService;

    .line 50
    const-string v2, "StartUsageService"

    .line 52
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 57
    const-class v1, Lcom/android/server/usage/UsageStatsService;

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 62
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 64
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 66
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 72
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 74
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 76
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 81
    monitor-enter v2

    .line 82
    :try_start_0
    iput-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 84
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 88
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 91
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 93
    const-string v1, "android.software.webview"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_1

    .line 101
    const-string v0, "StartWebViewUpdateService"

    .line 103
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 108
    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    .line 110
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    .line 116
    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 118
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 121
    :cond_1
    const-string v0, "StartCachedDeviceStateService"

    .line 123
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 128
    const-class v1, Lcom/android/server/CachedDeviceStateService;

    .line 130
    const-string v2, "StartBinderCallsStatsService"

    .line 132
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 137
    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    .line 139
    const-string v2, "StartLooperStatsService"

    .line 141
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 146
    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    .line 148
    const-string v2, "StartRollbackManagerService"

    .line 150
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 155
    const-class v1, Lcom/android/server/rollback/RollbackManagerService;

    .line 157
    const-string v2, "StartNativeTombstoneManagerService"

    .line 159
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 164
    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    .line 166
    const-string v2, "StartBugreportManagerService"

    .line 168
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 173
    const-class v1, Lcom/android/server/os/BugreportManagerService;

    .line 175
    const-string v2, "GpuService"

    .line 177
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 182
    const-class v1, Lcom/android/server/gpu/GpuService;

    .line 184
    const-string v2, "StartRemoteProvisioningService"

    .line 186
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 191
    const-class v1, Lcom/android/server/security/rkp/RemoteProvisioningService;

    .line 193
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 196
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 199
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 201
    if-nez v0, :cond_2

    .line 203
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 205
    if-eqz v0, :cond_3

    .line 207
    :cond_2
    const-string v0, "CpuMonitorService"

    .line 209
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 214
    const-class v0, Lcom/android/server/cpu/CpuMonitorService;

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 219
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 222
    :cond_3
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 225
    return-void

    .line 226
    :catchall_0
    move-exception p0

    .line 227
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 231
    throw p0
.end method

.method public final startDualAppManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2

    .line 1
    const-string v0, "SystemServer"

    .line 3
    :try_start_0
    const-string v1, "DualAppManagerService"

    .line 5
    invoke-virtual {p2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8
    const-string/jumbo v1, "startDualAppManagerService | add Service : startDualAppManagerService"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    if-nez p1, :cond_0

    .line 16
    const-string/jumbo p0, "startDualAppManagerService | context is null"

    .line 19
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 30
    if-nez v1, :cond_1

    .line 32
    invoke-static {p1}, Lcom/android/server/DualAppManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;

    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 38
    const-string/jumbo p0, "dual_app"

    .line 41
    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    :try_start_2
    const-string/jumbo p1, "startDualAppManagerService | Fail to start service"

    .line 51
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    goto :goto_0

    .line 55
    :goto_2
    return-void

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 60
    throw p0
.end method

.method public final startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "startOnDeviceIntelligenceManagerService"

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 9
    const-class v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 14
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 17
    return-void
.end method

.method public final startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 39

    .line 1
    move-object/from16 v2, p0

    .line 3
    move-object/from16 v15, p1

    .line 5
    const-string v5, "Starting custom IMMS: "

    .line 7
    const-string v6, "HcmManagerService ApmSwitch = "

    .line 9
    const-string/jumbo v7, "startOtherServices"

    .line 12
    invoke-virtual {v15, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 15
    iget-object v7, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 17
    invoke-virtual {v7}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 20
    iget-object v14, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 22
    const-string/jumbo v7, "config.disable_systemtextclassifier"

    .line 25
    const/4 v8, 0x0

    .line 26
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    move-result v7

    .line 30
    const-string/jumbo v9, "config.disable_networktime"

    .line 33
    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    move-result v9

    .line 37
    const-string/jumbo v10, "config.disable_cameraservice"

    .line 40
    invoke-static {v10, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 43
    move-result v10

    .line 44
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    move-result-object v11

    .line 48
    const-string v12, "android.hardware.type.watch"

    .line 50
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 53
    move-result v11

    .line 54
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 57
    move-result-object v12

    .line 58
    const-string/jumbo v13, "org.chromium.arc"

    .line 61
    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 64
    move-result v12

    .line 65
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 68
    move-result-object v13

    .line 69
    const-string v1, "android.software.leanback"

    .line 71
    invoke-virtual {v13, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 74
    move-result v1

    .line 75
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 78
    move-result-object v13

    .line 79
    const-string v3, "android.hardware.vr.high_performance"

    .line 81
    invoke-virtual {v13, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 84
    move-result v3

    .line 85
    const-string/jumbo v13, "factory"

    .line 88
    const-string/jumbo v18, "ro.factory.factory_binary"

    .line 91
    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v23

    .line 99
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_1

    .line 105
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 107
    if-eqz v4, :cond_1

    .line 109
    const-string/jumbo v4, "debug.crash_system"

    .line 112
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_0

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 121
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 124
    throw v1

    .line 125
    :cond_1
    :goto_0
    const-string/jumbo v4, "lazy_service"

    .line 128
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 131
    new-instance v4, Landroid/os/ServiceManager;

    .line 133
    invoke-direct {v4}, Landroid/os/ServiceManager;-><init>()V

    .line 136
    iget-object v13, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 138
    invoke-virtual {v4, v13}, Landroid/os/ServiceManager;->initLazyServiceManager(Landroid/content/Context;)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 144
    :try_start_0
    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    .line 146
    const/4 v13, 0x1

    .line 147
    invoke-direct {v4, v13}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 150
    const-string v13, "SecondaryZygotePreload"

    .line 152
    invoke-static {v13, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 155
    move-result-object v4

    .line 156
    iput-object v4, v2, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 158
    const-string v4, "Secure AT Service"

    .line 160
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 163
    :try_start_1
    const-string v4, "SatsService"

    .line 165
    new-instance v13, Lcom/android/server/SatsService;

    .line 167
    invoke-direct {v13, v14}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-static {v4, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    goto :goto_1

    .line 174
    :catchall_0
    :try_start_2
    const-string v4, "SystemServer"

    .line 176
    const-string v13, "Failed to add SATService."

    .line 178
    invoke-static {v4, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 184
    invoke-static {}, Lcom/samsung/android/provider/SemDynamicFeature;->isSuitable()Z

    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_2

    .line 190
    const-string v4, "DeploySemDynamicFeatureSystem"

    .line 192
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 195
    :try_start_3
    new-instance v4, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 197
    invoke-direct {v4, v14}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;-><init>(Landroid/content/Context;)V

    .line 200
    const-string/jumbo v13, "dynamic_feature"

    .line 203
    const/4 v8, 0x1

    .line 204
    invoke-static {v13, v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 207
    const-class v8, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 209
    invoke-static {v8, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    goto :goto_2

    .line 213
    :catchall_1
    :try_start_4
    const-string v4, "SystemServer"

    .line 215
    const-string v8, "Failed to add DynamicFeatureService."

    .line 217
    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 223
    goto :goto_3

    .line 224
    :catchall_2
    move-exception v0

    .line 225
    move-object v1, v0

    .line 226
    goto/16 :goto_9e

    .line 228
    :cond_2
    :goto_3
    const-string v4, "SystemServer"

    .line 230
    const-string v8, "MAINLINE_API_LEVEL: 34"

    .line 232
    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v4, "34"

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 240
    move-result v4

    .line 241
    const/16 v8, 0x22

    .line 243
    if-lt v4, v8, :cond_3

    .line 245
    const-string v4, "RealTimeTokenService: Real Time Token Service"

    .line 247
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 250
    :try_start_5
    const-string v4, "RealTimeTokenService"

    .line 252
    new-instance v8, Lcom/android/server/RealTimeTokenService;

    .line 254
    invoke-direct {v8, v14}, Lcom/android/server/RealTimeTokenService;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-static {v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 260
    goto :goto_4

    .line 261
    :catchall_3
    :try_start_6
    const-string v4, "SystemServer"

    .line 263
    const-string v8, "Failed to add RealTimeTokenService"

    .line 265
    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 271
    goto :goto_5

    .line 272
    :cond_3
    const-string v4, "SystemServer"

    .line 274
    const-string v8, "RealTimeTokenService not supported MAINLINE_API_LEVEL < 34"

    .line 276
    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_5
    const-string v4, "StartKeyAttestationApplicationIdProviderService"

    .line 281
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v4, "sec_key_att_app_id_provider"

    .line 287
    new-instance v8, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    .line 289
    invoke-direct {v8, v14}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-static {v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 298
    const-string v4, "StartSpqrService"

    .line 300
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 303
    :try_start_7
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 305
    const-class v8, Lcom/android/server/SpqrService;

    .line 307
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 310
    move-result-object v4

    .line 311
    check-cast v4, Lcom/android/server/SpqrService;

    .line 313
    const-class v8, Lcom/android/server/SpqrService;

    .line 315
    invoke-static {v8, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 318
    goto :goto_6

    .line 319
    :catch_0
    move-exception v0

    .line 320
    move-object v4, v0

    .line 321
    :try_start_8
    const-string v8, "SystemServer"

    .line 323
    const-string v13, "Failure starting Spqr Service"

    .line 325
    invoke-static {v8, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 331
    const-string v4, "StartKeyChainSystemService"

    .line 333
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 336
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 338
    const-class v8, Lcom/android/server/security/KeyChainSystemService;

    .line 340
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 346
    const-string v4, "StartBinaryTransparencyService"

    .line 348
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 351
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 353
    const-class v8, Lcom/android/server/BinaryTransparencyService;

    .line 355
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 361
    const-string v4, "StartSchedulingPolicyService"

    .line 363
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 366
    const-string/jumbo v4, "scheduling_policy"

    .line 369
    new-instance v8, Lcom/android/server/os/SchedulingPolicyService;

    .line 371
    invoke-direct {v8}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    .line 374
    invoke-static {v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 380
    :try_start_9
    const-string v4, "SEAMS"

    .line 382
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 385
    const-string v4, "SEAMService"

    .line 387
    new-instance v8, Lcom/android/server/SEAMService;

    .line 389
    invoke-direct {v8, v14}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    .line 392
    invoke-static {v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 395
    :goto_7
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 398
    goto :goto_8

    .line 399
    :catchall_4
    move-exception v0

    .line 400
    move-object v4, v0

    .line 401
    :try_start_b
    const-string v8, "SystemServer"

    .line 403
    const-string v13, "Failure starting SE Android Manager Service"

    .line 405
    invoke-static {v8, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6c

    .line 408
    goto :goto_7

    .line 409
    :goto_8
    :try_start_c
    iget-object v4, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 411
    const-string v8, "android.hardware.microphone"

    .line 413
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 416
    move-result v4

    .line 417
    if-nez v4, :cond_4

    .line 419
    iget-object v4, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 421
    const-string v8, "android.software.telecom"

    .line 423
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 426
    move-result v4

    .line 427
    if-nez v4, :cond_4

    .line 429
    iget-object v4, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 431
    const-string v8, "android.hardware.telephony"

    .line 433
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 436
    move-result v4

    .line 437
    if-eqz v4, :cond_5

    .line 439
    :cond_4
    const-string v4, "StartTelecomLoaderService"

    .line 441
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 444
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 446
    const-class v8, Lcom/android/server/telecom/TelecomLoaderService;

    .line 448
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 454
    :cond_5
    const-string v4, "StartTelephonyRegistry"

    .line 456
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 459
    new-instance v13, Lcom/android/server/TelephonyRegistry;

    .line 461
    new-instance v4, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 463
    invoke-direct {v4}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    .line 466
    invoke-direct {v13, v14, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V

    .line 469
    const-string/jumbo v4, "telephony.registry"

    .line 472
    invoke-static {v4, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 478
    const-string v4, "StartEntropyMixer"

    .line 480
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 483
    new-instance v4, Lcom/android/server/EntropyMixer;

    .line 485
    invoke-direct {v4, v14}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 491
    const-string v4, "StartPersonaManager"

    .line 493
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 496
    :try_start_d
    const-string v8, "SystemServer"

    .line 498
    const-string v4, "Persona Service"

    .line 500
    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 503
    :try_start_e
    sget-boolean v4, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 505
    const-class v4, Lcom/android/server/pm/PersonaManagerService;

    .line 507
    monitor-enter v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 508
    :try_start_f
    sget-object v8, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    .line 510
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 511
    :try_start_10
    const-string/jumbo v4, "persona"

    .line 514
    invoke-static {v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 517
    move-object/from16 v22, v13

    .line 519
    goto :goto_c

    .line 520
    :catchall_5
    move-exception v0

    .line 521
    move-object v4, v0

    .line 522
    move-object/from16 v21, v8

    .line 524
    goto :goto_b

    .line 525
    :catchall_6
    move-exception v0

    .line 526
    move-object v8, v0

    .line 527
    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 528
    :try_start_12
    throw v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 529
    :catchall_7
    move-exception v0

    .line 530
    goto :goto_a

    .line 531
    :goto_9
    const/16 v21, 0x0

    .line 533
    goto :goto_b

    .line 534
    :catchall_8
    move-exception v0

    .line 535
    :goto_a
    move-object v4, v0

    .line 536
    goto :goto_9

    .line 537
    :goto_b
    :try_start_13
    const-string v8, "SystemServer"

    .line 539
    move-object/from16 v22, v13

    .line 541
    const-string v13, "Failure starting Persona Manager Service"

    .line 543
    invoke-static {v8, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 546
    move-object/from16 v8, v21

    .line 548
    :goto_c
    :try_start_14
    const-string v4, "SystemServer"

    .line 550
    const-string v13, "KnoxMUMContainerPolicy Service"

    .line 552
    invoke-static {v4, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 557
    invoke-direct {v4, v14}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 560
    :try_start_15
    const-string/jumbo v13, "mum_container_policy"

    .line 563
    invoke-static {v13, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 566
    const-string/jumbo v13, "mum_container_policy"

    .line 569
    invoke-static {v13, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 572
    move-object/from16 v24, v8

    .line 574
    goto :goto_e

    .line 575
    :catchall_9
    move-exception v0

    .line 576
    move-object v13, v0

    .line 577
    move-object/from16 v21, v4

    .line 579
    goto :goto_d

    .line 580
    :catchall_a
    move-exception v0

    .line 581
    move-object v13, v0

    .line 582
    const/16 v21, 0x0

    .line 584
    :goto_d
    :try_start_16
    const-string v4, "SystemServer"

    .line 586
    move-object/from16 v24, v8

    .line 588
    const-string v8, "Failure starting KnoxMUMContainerPolicy Service"

    .line 590
    invoke-static {v4, v8, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    move-object/from16 v4, v21

    .line 595
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 598
    const-string v8, "SystemServer"

    .line 600
    const-string/jumbo v13, "calling startRCPService - 1"

    .line 603
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v8, 0x0

    .line 607
    invoke-static {v14, v15, v8}, Lcom/android/server/SystemServer;->startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V

    .line 610
    invoke-virtual {v2, v14, v15}, Lcom/android/server/SystemServer;->startDualAppManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 613
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 616
    move-result-object v8

    .line 617
    iput-object v8, v2, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 619
    const-string v8, "StartAccountManagerService"

    .line 621
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 624
    iget-object v8, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 626
    const-class v13, Lcom/android/server/accounts/AccountManagerService$Lifecycle;

    .line 628
    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 631
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 634
    const-string v8, "StartContentService"

    .line 636
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 639
    iget-object v8, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 641
    const-class v13, Lcom/android/server/content/ContentService$Lifecycle;

    .line 643
    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 649
    const-string v8, "InstallSystemProviders"

    .line 651
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 654
    iget-object v8, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 656
    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    .line 659
    move-result-object v8

    .line 660
    invoke-virtual {v8}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 663
    iget-object v8, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 665
    const-string/jumbo v13, "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

    .line 668
    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 671
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 674
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 677
    const-string v8, "StartDropBoxManager"

    .line 679
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 682
    iget-object v8, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 684
    const-class v13, Lcom/android/server/DropBoxManagerService;

    .line 686
    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 692
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    .line 695
    move-result v8

    .line 696
    if-eqz v8, :cond_6

    .line 698
    const-string v8, "StartEnhancedConfirmationService"

    .line 700
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 703
    iget-object v8, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 705
    const-string/jumbo v13, "com.android.ecm.EnhancedConfirmationService"

    .line 708
    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 714
    :cond_6
    const-string v8, "StartHintManager"

    .line 716
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 719
    iget-object v8, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 721
    const-class v13, Lcom/android/server/power/hint/HintManagerService;

    .line 723
    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 729
    const-string v8, "StartRoleManagerService"

    .line 731
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 734
    const-class v8, Lcom/android/server/role/RoleServicePlatformHelper;

    .line 736
    new-instance v13, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;

    .line 738
    move-object/from16 v21, v4

    .line 740
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 742
    invoke-direct {v13, v4}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    .line 745
    invoke-static {v8, v13}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 748
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 750
    const-string/jumbo v8, "com.android.role.RoleService"

    .line 753
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 756
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 759
    sget-boolean v4, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    .line 761
    if-eqz v4, :cond_7

    .line 763
    const-string v4, "SemUnionMainService"

    .line 765
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 768
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 770
    const-class v8, Lcom/android/server/sepunion/SemUnionMainService;

    .line 772
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 778
    :cond_7
    if-nez v1, :cond_8

    .line 780
    const-string v4, "StartVibratorManagerService"

    .line 782
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 785
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 787
    const-class v8, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    .line 789
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 792
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 795
    :cond_8
    const-string v4, "StartDynamicSystemService"

    .line 797
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 800
    new-instance v4, Lcom/android/server/DynamicSystemService;

    .line 802
    invoke-direct {v4, v14}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V

    .line 805
    const-string/jumbo v8, "dynamic_system"

    .line 808
    invoke-static {v8, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 811
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 814
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 817
    move-result-object v4

    .line 818
    const-string v8, "android.hardware.consumerir"

    .line 820
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 823
    move-result v4

    .line 824
    if-eqz v4, :cond_9

    .line 826
    const-string v4, "StartConsumerIrService"

    .line 828
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 831
    new-instance v4, Lcom/android/server/ConsumerIrService;

    .line 833
    invoke-direct {v4, v14}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    .line 836
    const-string/jumbo v8, "consumer_ir"

    .line 839
    invoke-static {v8, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 842
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 845
    :cond_9
    :try_start_17
    const-string v4, "SSRM Service"

    .line 847
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 850
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 852
    const-string/jumbo v8, "com.android.server.ssrm.CustomFrequencyManagerService$Lifecycle"

    .line 855
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 858
    :goto_f
    :try_start_18
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 861
    goto :goto_10

    .line 862
    :catchall_b
    move-exception v0

    .line 863
    move-object v1, v0

    .line 864
    move-object v2, v15

    .line 865
    goto/16 :goto_9d

    .line 867
    :catch_1
    move-exception v0

    .line 868
    move-object v4, v0

    .line 869
    :try_start_19
    const-string v8, "SystemServer"

    .line 871
    const-string/jumbo v13, "ssrm.jar not found"

    .line 874
    invoke-static {v8, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6b

    .line 880
    goto :goto_f

    .line 881
    :goto_10
    :try_start_1a
    const-string v4, "StartAlarmManagerService"

    .line 883
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 886
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 888
    const-class v8, Lcom/android/server/alarm/AlarmManagerService;

    .line 890
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 893
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 896
    const-string v4, "StartInputManagerService"

    .line 898
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 901
    new-instance v13, Lcom/android/server/input/InputManagerService;

    .line 903
    invoke-direct {v13, v14}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V

    .line 906
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 909
    const-string v4, "DeviceStateManagerService"

    .line 911
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 914
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 916
    const-class v8, Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 918
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 921
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 924
    if-nez v10, :cond_a

    .line 926
    const-string v4, "StartCameraServiceProxy"

    .line 928
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 931
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 933
    const-class v8, Lcom/android/server/camera/CameraServiceProxy;

    .line 935
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 938
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 941
    const-string v4, "StartCameraServiceWorker"

    .line 943
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 946
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 948
    const-class v8, Lcom/samsung/android/camera/CameraServiceWorker;

    .line 950
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 953
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 956
    :cond_a
    const-string v4, "StartWindowManagerService"

    .line 958
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 961
    const-string v4, "SystemServer"

    .line 963
    const-string v8, "!@Boot_EBS_F: Start WindowManagerService"

    .line 965
    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 970
    const/16 v8, 0xc8

    .line 972
    invoke-virtual {v4, v15, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 975
    iget-boolean v4, v2, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 977
    const/4 v8, 0x1

    .line 978
    xor-int/2addr v4, v8

    .line 979
    new-instance v8, Lcom/android/server/policy/PhoneWindowManager;

    .line 981
    invoke-direct {v8}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 984
    iget-object v10, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 986
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 988
    invoke-static {v14, v13, v4, v8, v10}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    .line 991
    move-result-object v10

    .line 992
    const-string/jumbo v4, "window"

    .line 995
    const/16 v8, 0x13

    .line 997
    move/from16 v25, v9

    .line 999
    const/4 v9, 0x0

    .line 1000
    invoke-static {v4, v10, v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1003
    const-string/jumbo v4, "input"

    .line 1006
    const/4 v8, 0x1

    .line 1007
    invoke-static {v4, v13, v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1010
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1013
    const-string v4, "SetWindowManagerService"

    .line 1015
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1018
    iget-object v4, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1020
    invoke-virtual {v4, v10}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1023
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1026
    const-string v4, "WindowManagerServiceOnInitReady"

    .line 1028
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1034
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1037
    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    .line 1039
    const/4 v8, 0x2

    .line 1040
    invoke-direct {v4, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1043
    const-string v8, "StartISensorManagerService"

    .line 1045
    invoke-static {v8, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1048
    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    .line 1050
    const/4 v8, 0x3

    .line 1051
    invoke-direct {v4, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1054
    const-string v8, "StartHidlServices"

    .line 1056
    invoke-static {v8, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1059
    if-nez v11, :cond_b

    .line 1061
    if-eqz v3, :cond_b

    .line 1063
    const-string v3, "StartVrManagerService"

    .line 1065
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1068
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1070
    const-class v4, Lcom/android/server/vr/VrManagerService;

    .line 1072
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1075
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1078
    :cond_b
    const-string v3, "StartInputManager"

    .line 1080
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    .line 1086
    move-result-object v3

    .line 1087
    invoke-virtual {v13, v3}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1090
    invoke-virtual {v13}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1096
    const-string v3, "DisplayManagerWindowManagerAndInputReady"

    .line 1098
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1101
    iget-object v3, v2, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1103
    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1106
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1109
    iget v3, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 1111
    const/4 v4, 0x1

    .line 1112
    if-ne v3, v4, :cond_c

    .line 1114
    const-string v3, "SystemServer"

    .line 1116
    const-string v4, "No Bluetooth Service (factory test)"

    .line 1118
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    goto :goto_11

    .line 1122
    :cond_c
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1125
    move-result-object v3

    .line 1126
    const-string v4, "android.hardware.bluetooth"

    .line 1128
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1131
    move-result v3

    .line 1132
    if-nez v3, :cond_d

    .line 1134
    const-string v3, "SystemServer"

    .line 1136
    const-string v4, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    .line 1138
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    goto :goto_11

    .line 1142
    :cond_d
    const-string v3, "StartBluetoothService"

    .line 1144
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1147
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1149
    const-string/jumbo v4, "com.android.server.bluetooth.BluetoothService"

    .line 1152
    const-string v8, "/apex/com.android.btservices/javalib/service-bluetooth.jar"

    .line 1154
    invoke-virtual {v3, v4, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1160
    :goto_11
    const-string v3, "SystemServer"

    .line 1162
    const-string v4, "Hqm Service"

    .line 1164
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 1167
    :try_start_1b
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 1169
    const-string v4, "/system/framework/hqm.jar"

    .line 1171
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 1174
    move-result-object v8

    .line 1175
    invoke-direct {v3, v4, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1178
    const-string/jumbo v4, "com.samsung.android.hqm.HqmManagerService"

    .line 1181
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 1184
    move-result-object v3

    .line 1185
    const/4 v4, 0x1

    .line 1186
    new-array v8, v4, [Ljava/lang/Class;

    .line 1188
    const-class v4, Landroid/content/Context;

    .line 1190
    const/4 v9, 0x0

    .line 1191
    aput-object v4, v8, v9

    .line 1193
    invoke-virtual {v3, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 1196
    move-result-object v3

    .line 1197
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 1200
    move-result-object v4

    .line 1201
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    move-result-object v3

    .line 1205
    check-cast v3, Landroid/os/IBinder;

    .line 1207
    const-string v4, "HqmManagerService"

    .line 1209
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 1212
    goto :goto_12

    .line 1213
    :catch_2
    move-exception v0

    .line 1214
    move-object v3, v0

    .line 1215
    :try_start_1c
    const-string v4, "SystemServer"

    .line 1217
    const-string/jumbo v8, "hqm.jar not found"

    .line 1220
    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1226
    :goto_12
    const-string v3, "0"

    .line 1228
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1231
    move-result-object v4

    .line 1232
    const-string v8, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    .line 1234
    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1237
    move-result-object v4

    .line 1238
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1241
    move-result v3

    .line 1242
    if-nez v3, :cond_f

    .line 1244
    const-string v3, "HcmManagerService"

    .line 1246
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 1249
    :try_start_1d
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1252
    move-result-object v3

    .line 1253
    const-string v4, "adaptive_power_saving_setting"

    .line 1255
    const/4 v8, 0x0

    .line 1256
    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1259
    move-result v3

    .line 1260
    const-string v4, "SystemServer"

    .line 1262
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1264
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1273
    move-result-object v6

    .line 1274
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    new-instance v4, Ldalvik/system/PathClassLoader;

    .line 1279
    const-string v6, "/system/framework/hcm.jar"

    .line 1281
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 1284
    move-result-object v8

    .line 1285
    invoke-direct {v4, v6, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1288
    const-string/jumbo v6, "com.samsung.android.hcm.HcmManagerService"

    .line 1291
    invoke-virtual {v4, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 1294
    move-result-object v4

    .line 1295
    if-lez v3, :cond_e

    .line 1297
    const/4 v3, 0x1

    .line 1298
    new-array v6, v3, [Ljava/lang/Class;

    .line 1300
    const-class v3, Landroid/content/Context;

    .line 1302
    const/4 v8, 0x0

    .line 1303
    aput-object v3, v6, v8

    .line 1305
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 1308
    move-result-object v3

    .line 1309
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 1312
    move-result-object v4

    .line 1313
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    move-result-object v3

    .line 1317
    check-cast v3, Landroid/os/IBinder;

    .line 1319
    const-string v4, "HcmManagerService"

    .line 1321
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1324
    goto :goto_14

    .line 1325
    :catch_3
    move-exception v0

    .line 1326
    move-object v3, v0

    .line 1327
    goto :goto_13

    .line 1328
    :cond_e
    const-string v3, "HcmManagerService"

    .line 1330
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 1333
    goto :goto_14

    .line 1334
    :goto_13
    :try_start_1e
    const-string v4, "SystemServer"

    .line 1336
    const-string v6, "Failed to add HcmManagerService."

    .line 1338
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1344
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1347
    :cond_f
    const-string v3, "IpConnectivityMetrics"

    .line 1349
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1352
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1354
    const-class v4, Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 1356
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1359
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1362
    const-string v3, "NetworkWatchlistService"

    .line 1364
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1367
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1369
    const-class v4, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    .line 1371
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1374
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1377
    const-string v3, "PinnerService"

    .line 1379
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1382
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1384
    const-class v4, Lcom/android/server/PinnerService;

    .line 1386
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1389
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1392
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1394
    if-eqz v3, :cond_10

    .line 1396
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    .line 1399
    move-result v3

    .line 1400
    if-eqz v3, :cond_10

    .line 1402
    const-string v3, "ProfcollectForwardingService"

    .line 1404
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1407
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1409
    const-class v4, Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 1411
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1414
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1417
    :cond_10
    const-string v3, "SignedConfigService"

    .line 1419
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1422
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1424
    invoke-static {v3}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1427
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1430
    const-string v3, "AppIntegrityService"

    .line 1432
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1435
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1437
    const-class v4, Lcom/android/server/integrity/AppIntegrityManagerService;

    .line 1439
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1442
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1445
    const-string v3, "StartLogcatManager"

    .line 1447
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1450
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1452
    const-class v4, Lcom/android/server/logcat/LogcatManagerService;

    .line 1454
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1457
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1460
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1463
    move-result-object v3

    .line 1464
    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AI_AGENT"

    .line 1466
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 1469
    move-result v3

    .line 1470
    if-eqz v3, :cond_11

    .line 1472
    invoke-static {v14}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    .line 1475
    move-result v3

    .line 1476
    if-eqz v3, :cond_11

    .line 1478
    const-string v3, "StartAppFunctionManager"

    .line 1480
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1483
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1485
    const-class v4, Lcom/android/server/appfunctions/AppFunctionManagerService;

    .line 1487
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1490
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1493
    :cond_11
    const-string v3, "SemInputDeviceManagerService"

    .line 1495
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 1498
    :try_start_1f
    const-string v3, "SystemServer"

    .line 1500
    const-string v4, "SemInputDeviceManagerService loader"

    .line 1502
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const-string/jumbo v3, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerLoader"

    .line 1508
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1511
    move-result-object v3

    .line 1512
    const-string/jumbo v4, "getService"

    .line 1515
    const/4 v6, 0x1

    .line 1516
    new-array v8, v6, [Ljava/lang/Class;

    .line 1518
    const-class v6, Landroid/content/Context;

    .line 1520
    const/4 v9, 0x0

    .line 1521
    aput-object v6, v8, v9

    .line 1523
    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1526
    move-result-object v4

    .line 1527
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 1530
    move-result-object v6

    .line 1531
    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    move-result-object v3

    .line 1535
    check-cast v3, Landroid/os/IBinder;

    .line 1537
    const-string v4, "SemInputDeviceManagerService"

    .line 1539
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 1542
    goto :goto_15

    .line 1543
    :catchall_c
    move-exception v0

    .line 1544
    move-object v3, v0

    .line 1545
    :try_start_20
    const-string v4, "Failed To Start SemInputDeviceManagerService loader"

    .line 1547
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1550
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1553
    const-string v3, "SecIpmManagerService"

    .line 1555
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1558
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1560
    const-string/jumbo v4, "com.android.server.ipm.SecIpmManagerService"

    .line 1563
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1566
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1569
    iget v3, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 1571
    const/4 v4, 0x1

    .line 1572
    if-eq v3, v4, :cond_12

    .line 1574
    const-string/jumbo v3, "vold.decrypt"

    .line 1577
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1580
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1582
    const-string/jumbo v4, "com.sec.feature.cover"

    .line 1585
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1588
    move-result v3

    .line 1589
    if-eqz v3, :cond_12

    .line 1591
    const-string v3, "StartCoverService"

    .line 1593
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1596
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1598
    const-class v4, Lcom/android/server/cover/CoverManagerService;

    .line 1600
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1603
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1606
    :cond_12
    const-string v3, "Samsung Accessory Manager"

    .line 1608
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 1611
    :try_start_21
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1614
    move-result-object v3

    .line 1615
    if-eqz v3, :cond_14

    .line 1617
    const-string/jumbo v4, "com.sec.feature.nfc_authentication"

    .line 1620
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1623
    move-result v4

    .line 1624
    if-nez v4, :cond_13

    .line 1626
    const-string/jumbo v4, "com.sec.feature.nfc_authentication_cover"

    .line 1629
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1632
    move-result v4

    .line 1633
    if-nez v4, :cond_13

    .line 1635
    const-string/jumbo v4, "com.sec.feature.usb_authentication"

    .line 1638
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1641
    move-result v4

    .line 1642
    if-nez v4, :cond_13

    .line 1644
    const-string/jumbo v4, "com.sec.feature.wirelesscharger_authentication"

    .line 1647
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1650
    move-result v3

    .line 1651
    if-eqz v3, :cond_14

    .line 1653
    goto :goto_16

    .line 1654
    :catchall_d
    move-exception v0

    .line 1655
    move-object v3, v0

    .line 1656
    goto :goto_17

    .line 1657
    :cond_13
    :goto_16
    const-string v3, "SystemServer"

    .line 1659
    const-string v4, "Samsung Accessory Manager"

    .line 1661
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    new-instance v3, Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 1666
    invoke-direct {v3, v14, v13}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1669
    iput-object v3, v2, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 1671
    const-class v4, Lcom/samsung/accessory/manager/SAccessoryManagerInternal;

    .line 1673
    invoke-static {v4, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1676
    iget-object v3, v2, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 1678
    invoke-virtual {v13, v3}, Lcom/android/server/input/InputManagerService;->setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    .line 1681
    goto :goto_18

    .line 1682
    :goto_17
    :try_start_22
    const-string/jumbo v4, "starting SAccessoryManager"

    .line 1685
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1688
    :cond_14
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 1691
    const-string/jumbo v3, "detectSafeMode"

    .line 1694
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1697
    const-string v3, "SystemServer"

    .line 1699
    const-string v4, "!@Boot_EBS_D: detectSafeMode"

    .line 1701
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    .line 1707
    move-result v9

    .line 1708
    if-eqz v9, :cond_15

    .line 1710
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1713
    move-result-object v3

    .line 1714
    const-string v4, "airplane_mode_on"

    .line 1716
    const/4 v6, 0x1

    .line 1717
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1720
    goto :goto_19

    .line 1721
    :cond_15
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1724
    move-result-object v3

    .line 1725
    const v4, 0x1110040

    .line 1728
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1731
    move-result v3

    .line 1732
    if-eqz v3, :cond_16

    .line 1734
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1737
    move-result-object v3

    .line 1738
    const-string v4, "airplane_mode_on"

    .line 1740
    const/4 v6, 0x0

    .line 1741
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1744
    :cond_16
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1747
    iget v3, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 1749
    const/4 v4, 0x1

    .line 1750
    if-eq v3, v4, :cond_18

    .line 1752
    const-string v3, "StartInputMethodManagerLifecycle"

    .line 1754
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1760
    move-result-object v3

    .line 1761
    const v4, 0x1040344

    .line 1764
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1767
    move-result-object v3

    .line 1768
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1771
    move-result v4

    .line 1772
    if-eqz v4, :cond_17

    .line 1774
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1776
    const-class v4, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    .line 1778
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1781
    goto :goto_1a

    .line 1782
    :cond_17
    :try_start_23
    const-string v4, "SystemServer"

    .line 1784
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1787
    move-result-object v5

    .line 1788
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1793
    invoke-virtual {v4, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    .line 1796
    goto :goto_1a

    .line 1797
    :catchall_e
    move-exception v0

    .line 1798
    move-object v4, v0

    .line 1799
    const-string/jumbo v5, "starting "

    .line 1802
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1805
    move-result-object v3

    .line 1806
    invoke-static {v3, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1809
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1812
    const-string v3, "StartAccessibilityManagerService"

    .line 1814
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1817
    :try_start_24
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1819
    const-class v4, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;

    .line 1821
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    .line 1824
    goto :goto_1b

    .line 1825
    :catchall_f
    move-exception v0

    .line 1826
    move-object v3, v0

    .line 1827
    const-string/jumbo v4, "starting Accessibility Manager"

    .line 1830
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1833
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1836
    :cond_18
    const-string v3, "MakeDisplayReady"

    .line 1838
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1841
    :try_start_25
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    .line 1844
    goto :goto_1c

    .line 1845
    :catchall_10
    move-exception v0

    .line 1846
    move-object v3, v0

    .line 1847
    const-string/jumbo v4, "making display ready"

    .line 1850
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1853
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1856
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1859
    move-result-object v3

    .line 1860
    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    .line 1862
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1865
    move-result-object v3

    .line 1866
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1869
    move-result v4

    .line 1870
    if-lez v4, :cond_19

    .line 1872
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1875
    move-result v3

    .line 1876
    if-lez v3, :cond_19

    .line 1878
    const-string v3, "Add SEM_FM_RADIO_SERVICE"

    .line 1880
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1883
    :try_start_26
    const-string v3, "FMPlayer"

    .line 1885
    const-class v4, Lcom/android/server/FMRadioService;

    .line 1887
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1890
    const-string v3, "SystemServer"

    .line 1892
    const-string v4, "FMRadio service added.."

    .line 1894
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    .line 1897
    goto :goto_1d

    .line 1898
    :catchall_11
    move-exception v0

    .line 1899
    move-object v3, v0

    .line 1900
    const-string v4, "Failure starting FM Radio Service"

    .line 1902
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1905
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1908
    :cond_19
    const-string v3, "IcccManagerService"

    .line 1910
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1913
    :try_start_27
    const-string/jumbo v3, "iccc"

    .line 1916
    new-instance v4, Lcom/android/server/SystemServer$4;

    .line 1918
    const/4 v5, 0x0

    .line 1919
    invoke-direct {v4, v5}, Lcom/android/server/SystemServer$4;-><init>(I)V

    .line 1922
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    .line 1925
    goto :goto_1e

    .line 1926
    :catchall_12
    move-exception v0

    .line 1927
    move-object v3, v0

    .line 1928
    const-string v4, "Failure starting IcccManagerService "

    .line 1930
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1933
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1936
    const-string v3, "SamsungGameManager"

    .line 1938
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1941
    :try_start_28
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 1943
    const-string v4, "/system/framework/gamemanager.jar"

    .line 1945
    const-class v5, Lcom/android/server/SystemServer;

    .line 1947
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1950
    move-result-object v5

    .line 1951
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1954
    const-string/jumbo v4, "com.samsung.android.game.GameManagerService$Lifecycle"

    .line 1957
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 1960
    move-result-object v3

    .line 1961
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1963
    invoke-virtual {v4, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1966
    const-string v3, "SystemServer"

    .line 1968
    const-string v4, "SamsungGameManager Started"

    .line 1970
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_13

    .line 1973
    goto :goto_1f

    .line 1974
    :catchall_13
    move-exception v0

    .line 1975
    move-object v3, v0

    .line 1976
    const-string v4, "SystemServer"

    .line 1978
    const-string v5, "Failed to start SamsungGameManager."

    .line 1980
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1983
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1986
    const-string v3, "DisplayAiqeManagerService"

    .line 1988
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1991
    :try_start_29
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 1993
    const-string v4, "/system/framework/displayaiqe_svc.jar"

    .line 1995
    const-class v5, Lcom/android/server/SystemServer;

    .line 1997
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2000
    move-result-object v5

    .line 2001
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2004
    const-string/jumbo v4, "com.samsung.android.displayaiqe.DisplayAiqeManagerService$Lifecycle"

    .line 2007
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2010
    move-result-object v3

    .line 2011
    if-nez v3, :cond_1a

    .line 2013
    const-string v3, "SystemServer"

    .line 2015
    const-string v4, "Can\'t load DisplayAiqeManagerService class"

    .line 2017
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    goto :goto_21

    .line 2021
    :catchall_14
    move-exception v0

    .line 2022
    move-object v3, v0

    .line 2023
    goto :goto_20

    .line 2024
    :cond_1a
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2026
    invoke-virtual {v4, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2029
    const-string v3, "SystemServer"

    .line 2031
    const-string v4, "DisplayAiqeManagerService Started"

    .line 2033
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    .line 2036
    goto :goto_21

    .line 2037
    :goto_20
    const-string v4, "SystemServer"

    .line 2039
    const-string v5, "Failed to start DisplayAiqeManagerService."

    .line 2041
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2044
    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2047
    const-string v3, "SehHdrSolutionService"

    .line 2049
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2052
    :try_start_2a
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 2054
    const-string v4, "/system/framework/vendor.samsung.frameworks.hdrsolution-service.jar"

    .line 2056
    const-class v5, Lcom/android/server/SystemServer;

    .line 2058
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2061
    move-result-object v5

    .line 2062
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2065
    const-string/jumbo v4, "vendor.samsung.frameworks.hdrsolution.SehHdrSolutionService"

    .line 2068
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2071
    move-result-object v3

    .line 2072
    if-nez v3, :cond_1b

    .line 2074
    const-string v3, "SystemServer"

    .line 2076
    const-string v4, "Can\'t load SehHdrSolutionService class"

    .line 2078
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    goto :goto_23

    .line 2082
    :catchall_15
    move-exception v0

    .line 2083
    move-object v3, v0

    .line 2084
    goto :goto_22

    .line 2085
    :cond_1b
    const/4 v4, 0x2

    .line 2086
    new-array v5, v4, [Ljava/lang/Class;

    .line 2088
    const-class v4, Landroid/content/Context;

    .line 2090
    const/4 v6, 0x0

    .line 2091
    aput-object v4, v5, v6

    .line 2093
    const-class v4, Landroid/app/IActivityManager;

    .line 2095
    const/4 v6, 0x1

    .line 2096
    aput-object v4, v5, v6

    .line 2098
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 2101
    move-result-object v3

    .line 2102
    iget-object v4, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2104
    filled-new-array {v14, v4}, [Ljava/lang/Object;

    .line 2107
    move-result-object v4

    .line 2108
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    move-result-object v3

    .line 2112
    check-cast v3, Landroid/os/IBinder;

    .line 2114
    const-string/jumbo v4, "vendor.samsung.frameworks.hdrsolution.ISehHdrSolution/default"

    .line 2117
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2120
    const-string v3, "SystemServer"

    .line 2122
    const-string v4, "SehHdrSolutionService loaded"

    .line 2124
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    const-string/jumbo v3, "secmm.hdrsolution.ready"

    .line 2130
    const-string v4, "1"

    .line 2132
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_15

    .line 2135
    goto :goto_23

    .line 2136
    :goto_22
    const-string v4, "SystemServer"

    .line 2138
    const-string v5, "Failed to start SehHdrSolutionService "

    .line 2140
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2143
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2146
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSPERF_JDM_MODEL:Z

    .line 2148
    if-nez v3, :cond_1d

    .line 2150
    const-string v3, "SystemServer"

    .line 2152
    const-string v4, "PerfSDKService"

    .line 2154
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const-string v3, "PerfSDKService"

    .line 2159
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2162
    :try_start_2b
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 2164
    const-string v4, "/system/framework/perfsdkservice.jar"

    .line 2166
    const-class v5, Lcom/android/server/SystemServer;

    .line 2168
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2171
    move-result-object v5

    .line 2172
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2175
    const-string/jumbo v4, "com.samsung.android.perfsdkservice.PerfSDKService"

    .line 2178
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2181
    move-result-object v3

    .line 2182
    if-nez v3, :cond_1c

    .line 2184
    const-string v3, "SystemServer"

    .line 2186
    const-string v4, "Can\'t load PerfSdkService class"

    .line 2188
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    goto :goto_25

    .line 2192
    :catchall_16
    move-exception v0

    .line 2193
    move-object v3, v0

    .line 2194
    goto :goto_24

    .line 2195
    :cond_1c
    const/4 v4, 0x2

    .line 2196
    new-array v5, v4, [Ljava/lang/Class;

    .line 2198
    const-class v4, Landroid/content/Context;

    .line 2200
    const/4 v6, 0x0

    .line 2201
    aput-object v4, v5, v6

    .line 2203
    const-class v4, Landroid/app/IActivityManager;

    .line 2205
    const/4 v6, 0x1

    .line 2206
    aput-object v4, v5, v6

    .line 2208
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 2211
    move-result-object v3

    .line 2212
    iget-object v4, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2214
    filled-new-array {v14, v4}, [Ljava/lang/Object;

    .line 2217
    move-result-object v4

    .line 2218
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    move-result-object v3

    .line 2222
    check-cast v3, Landroid/os/IBinder;

    .line 2224
    const-string/jumbo v4, "perfsdkservice"

    .line 2227
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2230
    const-string v3, "SystemServer"

    .line 2232
    const-string v4, "PerfSDKService loaded"

    .line 2234
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    .line 2237
    goto :goto_25

    .line 2238
    :goto_24
    const-string v4, "SystemServer"

    .line 2240
    const-string v5, "Failed to add PerfSDKService."

    .line 2242
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2245
    :goto_25
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2248
    :cond_1d
    const-string v3, "SehCodecSolutionService"

    .line 2250
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2253
    :try_start_2c
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 2255
    const-string v4, "/system/framework/vendor.samsung.frameworks.codecsolution-service.jar"

    .line 2257
    const-class v5, Lcom/android/server/SystemServer;

    .line 2259
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2262
    move-result-object v5

    .line 2263
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2266
    const-string/jumbo v4, "vendor.samsung.frameworks.codecsolution.SehCodecSolutionService"

    .line 2269
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2272
    move-result-object v3

    .line 2273
    if-nez v3, :cond_1e

    .line 2275
    const-string v3, "SystemServer"

    .line 2277
    const-string v4, "Can\'t load SehCodecSolutionService class"

    .line 2279
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    goto :goto_27

    .line 2283
    :catchall_17
    move-exception v0

    .line 2284
    move-object v3, v0

    .line 2285
    goto :goto_26

    .line 2286
    :cond_1e
    const/4 v4, 0x2

    .line 2287
    new-array v5, v4, [Ljava/lang/Class;

    .line 2289
    const-class v4, Landroid/content/Context;

    .line 2291
    const/4 v6, 0x0

    .line 2292
    aput-object v4, v5, v6

    .line 2294
    const-class v4, Landroid/app/IActivityManager;

    .line 2296
    const/4 v6, 0x1

    .line 2297
    aput-object v4, v5, v6

    .line 2299
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 2302
    move-result-object v3

    .line 2303
    iget-object v4, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2305
    filled-new-array {v14, v4}, [Ljava/lang/Object;

    .line 2308
    move-result-object v4

    .line 2309
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    move-result-object v3

    .line 2313
    check-cast v3, Landroid/os/IBinder;

    .line 2315
    const-string/jumbo v4, "vendor.samsung.frameworks.codecsolution.ISehCodecSolution/default"

    .line 2318
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2321
    const-string v3, "SystemServer"

    .line 2323
    const-string v4, "SehCodecSolutionService loaded"

    .line 2325
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    const-string/jumbo v3, "secmm.codecsolution.ready"

    .line 2331
    const-string v4, "1"

    .line 2333
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_17

    .line 2336
    goto :goto_27

    .line 2337
    :goto_26
    const-string v4, "SystemServer"

    .line 2339
    const-string v5, "Failed to start SehCodecSolutionService "

    .line 2341
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2344
    :goto_27
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2347
    iget v3, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 2349
    const/4 v4, 0x1

    .line 2350
    if-eq v3, v4, :cond_20

    .line 2352
    const-string v3, "0"

    .line 2354
    const-string/jumbo v4, "system_init.startmountservice"

    .line 2357
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2360
    move-result-object v4

    .line 2361
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2364
    move-result v3

    .line 2365
    if-nez v3, :cond_20

    .line 2367
    const-string v3, "StartStorageManagerService"

    .line 2369
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2372
    :try_start_2d
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2374
    const-class v4, Lcom/android/server/StorageManagerService$Lifecycle;

    .line 2376
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2379
    const-string/jumbo v3, "mount"

    .line 2382
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2385
    move-result-object v3

    .line 2386
    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    .line 2389
    goto :goto_28

    .line 2390
    :catchall_18
    move-exception v0

    .line 2391
    move-object v3, v0

    .line 2392
    const-string/jumbo v4, "starting StorageManagerService"

    .line 2395
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2398
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2401
    const-string v3, "StartStorageStatsService"

    .line 2403
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2406
    :try_start_2e
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2408
    const-class v4, Lcom/android/server/usage/StorageStatsService$Lifecycle;

    .line 2410
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_19

    .line 2413
    goto :goto_29

    .line 2414
    :catchall_19
    move-exception v0

    .line 2415
    move-object v3, v0

    .line 2416
    const-string/jumbo v4, "starting StorageStatsService"

    .line 2419
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2422
    :goto_29
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2425
    const-string v3, "DirEncryptSerrvice"

    .line 2427
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2430
    :try_start_2f
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 2433
    move-result v3

    .line 2434
    if-eqz v3, :cond_1f

    .line 2436
    new-instance v3, Lcom/android/server/DirEncryptService;

    .line 2438
    invoke-direct {v3, v14}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V

    .line 2441
    const-string v4, "SystemServer"

    .line 2443
    const-string v5, "DirEncryptService.SystemReady"

    .line 2445
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    invoke-virtual {v3}, Lcom/android/server/DirEncryptService;->systemReady()V

    .line 2451
    const-string v4, "DirEncryptService"

    .line 2453
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1a

    .line 2456
    goto :goto_2a

    .line 2457
    :catchall_1a
    move-exception v0

    .line 2458
    move-object v3, v0

    .line 2459
    const-string/jumbo v4, "starting DirEncryption service"

    .line 2462
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2465
    :cond_1f
    :goto_2a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2468
    :cond_20
    const-string v3, "StartUiModeManager"

    .line 2470
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2473
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2475
    const-class v4, Lcom/android/server/UiModeManagerService;

    .line 2477
    const-string v5, "StartLocaleManagerService"

    .line 2479
    invoke-static {v3, v4, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 2482
    :try_start_30
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2484
    const-class v4, Lcom/android/server/locales/LocaleManagerService;

    .line 2486
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1b

    .line 2489
    goto :goto_2b

    .line 2490
    :catchall_1b
    move-exception v0

    .line 2491
    move-object v3, v0

    .line 2492
    const-string/jumbo v4, "starting LocaleManagerService service"

    .line 2495
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2498
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2501
    const-string v3, "StartGrammarInflectionService"

    .line 2503
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2506
    :try_start_31
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2508
    const-class v4, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 2510
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1c

    .line 2513
    goto :goto_2c

    .line 2514
    :catchall_1c
    move-exception v0

    .line 2515
    move-object v3, v0

    .line 2516
    const-string/jumbo v4, "starting GrammarInflectionService service"

    .line 2519
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2522
    :goto_2c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2525
    const-string v3, "StartAppHibernationService"

    .line 2527
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2530
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2532
    const-class v4, Lcom/android/server/apphibernation/AppHibernationService;

    .line 2534
    const-string v5, "ArtManagerLocal"

    .line 2536
    invoke-static {v3, v4, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 2539
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 2541
    invoke-static {v14, v3}, Lcom/android/server/pm/DexOptHelper;->initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 2544
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2547
    const-string v3, "UpdatePackagesIfNeeded"

    .line 2549
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2552
    const-string v3, "SystemServer"

    .line 2554
    const-string v4, "!@Boot_EBS_D: UpdatePackagesIfNeeded"

    .line 2556
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :try_start_32
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 2562
    move-result-object v3

    .line 2563
    const-string/jumbo v4, "dexopt"

    .line 2566
    invoke-virtual {v3, v4}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 2569
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 2571
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1d

    .line 2574
    :goto_2d
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 2577
    move-result-object v3

    .line 2578
    const-string/jumbo v4, "dexopt"

    .line 2581
    invoke-virtual {v3, v4}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2584
    goto :goto_2e

    .line 2585
    :catchall_1d
    move-exception v0

    .line 2586
    move-object v3, v0

    .line 2587
    :try_start_33
    const-string/jumbo v4, "update packages"

    .line 2590
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_6a

    .line 2593
    goto :goto_2d

    .line 2594
    :goto_2e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2597
    const-string v3, "StartProfileUtilizationService"

    .line 2599
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2602
    :try_start_34
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2604
    const-class v4, Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 2606
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2609
    move-result-object v3

    .line 2610
    check-cast v3, Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 2612
    const-class v4, Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 2614
    invoke-static {v4, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2617
    iget-object v4, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 2619
    invoke-virtual {v3, v4}, Lcom/android/server/pm/pu/ProfileUtilizationService;->onBootAfterUpdateIfNeeded(Lcom/android/server/pm/PackageManagerService;)V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_4

    .line 2622
    goto :goto_2f

    .line 2623
    :catch_4
    move-exception v0

    .line 2624
    move-object v3, v0

    .line 2625
    const-string v4, "SystemServer"

    .line 2627
    const-string v5, "Failure starting PU Service"

    .line 2629
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2632
    :goto_2f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2635
    const-string v3, "PerformFstrimIfNeeded"

    .line 2637
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2640
    :try_start_35
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 2642
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1e

    .line 2645
    goto :goto_30

    .line 2646
    :catchall_1e
    move-exception v0

    .line 2647
    move-object v3, v0

    .line 2648
    const-string/jumbo v4, "performing fstrim"

    .line 2651
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2654
    :goto_30
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2657
    iget v3, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 2659
    const/4 v4, 0x1

    .line 2660
    if-ne v3, v4, :cond_21

    .line 2662
    const/4 v3, 0x0

    .line 2663
    const/4 v4, 0x0

    .line 2664
    const/4 v12, 0x0

    .line 2665
    const/16 v25, 0x0

    .line 2667
    const/16 v26, 0x0

    .line 2669
    const/16 v27, 0x0

    .line 2671
    const/16 v28, 0x0

    .line 2673
    const/16 v29, 0x0

    .line 2675
    const/16 v30, 0x0

    .line 2677
    const/16 v31, 0x0

    .line 2679
    const/16 v32, 0x0

    .line 2681
    goto/16 :goto_81

    .line 2683
    :cond_21
    const-string v3, "StartLockSettingsService"

    .line 2685
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2688
    :try_start_36
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2690
    const-class v4, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;

    .line 2692
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2695
    const-string/jumbo v3, "lock_settings"

    .line 2698
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2701
    move-result-object v3

    .line 2702
    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 2705
    move-result-object v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1f

    .line 2706
    goto :goto_31

    .line 2707
    :catchall_1f
    move-exception v0

    .line 2708
    move-object v3, v0

    .line 2709
    const-string/jumbo v4, "starting LockSettingsService service"

    .line 2712
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2715
    const/4 v3, 0x0

    .line 2716
    :goto_31
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2719
    const-string/jumbo v4, "ro.frp.pst"

    .line 2722
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2725
    move-result-object v4

    .line 2726
    const-string v5, ""

    .line 2728
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2731
    move-result v4

    .line 2732
    const/4 v5, 0x1

    .line 2733
    xor-int/2addr v4, v5

    .line 2734
    if-eqz v4, :cond_22

    .line 2736
    const-string v5, "StartPersistentDataBlock"

    .line 2738
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2741
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2743
    const-class v6, Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2745
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2748
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2751
    :cond_22
    sget-boolean v5, Landroid/os/Build;->IS_ARC:Z

    .line 2753
    if-eqz v5, :cond_23

    .line 2755
    const-string/jumbo v5, "ro.boot.dev_mode"

    .line 2758
    const/4 v6, 0x0

    .line 2759
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 2762
    move-result v5

    .line 2763
    const/4 v6, 0x1

    .line 2764
    if-ne v5, v6, :cond_23

    .line 2766
    const-string v5, "StartArcPersistentDataBlock"

    .line 2768
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2771
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2773
    const-string/jumbo v6, "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

    .line 2776
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2779
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2782
    :cond_23
    const-string v5, "StartTestHarnessMode"

    .line 2784
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2787
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2789
    const-class v6, Lcom/android/server/testharness/TestHarnessModeService;

    .line 2791
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2794
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2797
    if-nez v4, :cond_24

    .line 2799
    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    .line 2802
    move-result v4

    .line 2803
    if-eqz v4, :cond_25

    .line 2805
    :cond_24
    const-string v4, "StartOemLockService"

    .line 2807
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2810
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2812
    const-class v5, Lcom/android/server/oemlock/OemLockService;

    .line 2814
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2817
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2820
    :cond_25
    const-string v4, "StartDeviceIdleController"

    .line 2822
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2825
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2827
    const-class v5, Lcom/android/server/DeviceIdleController;

    .line 2829
    const-string v6, "StartDevicePolicyManager"

    .line 2831
    invoke-static {v4, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 2834
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2836
    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 2838
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2841
    move-result-object v4

    .line 2842
    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 2844
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2847
    const-string v5, "StartStatusBarManagerService"

    .line 2849
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2852
    :try_start_37
    new-instance v5, Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2854
    invoke-direct {v5, v14}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V

    .line 2857
    invoke-virtual {v5}, Lcom/android/server/statusbar/StatusBarManagerService;->publishGlobalActionsProvider()V

    .line 2860
    const-string/jumbo v6, "statusbar"
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_21

    .line 2863
    const/16 v8, 0x14

    .line 2865
    move-object/from16 v26, v3

    .line 2867
    const/4 v3, 0x0

    .line 2868
    :try_start_38
    invoke-static {v6, v5, v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_20

    .line 2871
    goto :goto_34

    .line 2872
    :catchall_20
    move-exception v0

    .line 2873
    :goto_32
    move-object v3, v0

    .line 2874
    goto :goto_33

    .line 2875
    :catchall_21
    move-exception v0

    .line 2876
    move-object/from16 v26, v3

    .line 2878
    goto :goto_32

    .line 2879
    :goto_33
    const-string/jumbo v5, "starting StatusBarManagerService"

    .line 2882
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2885
    :goto_34
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2888
    const v3, 0x1040321

    .line 2891
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 2894
    move-result v3

    .line 2895
    if-eqz v3, :cond_26

    .line 2897
    const-string v3, "StartMusicRecognitionManagerService"

    .line 2899
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2902
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2904
    const-class v5, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 2906
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2909
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2912
    goto :goto_35

    .line 2913
    :cond_26
    const-string v3, "SystemServer"

    .line 2915
    const-string v5, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    .line 2917
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    :goto_35
    const-string v3, "StartEnterpriseDeviceManagerService"

    .line 2922
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2925
    :try_start_39
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2927
    const-class v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;

    .line 2929
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2932
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 2935
    move-result-object v3

    .line 2936
    iput-object v3, v2, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 2938
    const-string v3, "SystemServer"

    .line 2940
    const-string v5, "Enterprise Policy manager service created..."

    .line 2942
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_22

    .line 2945
    goto :goto_36

    .line 2946
    :catchall_22
    move-exception v0

    .line 2947
    move-object v3, v0

    .line 2948
    const-string/jumbo v5, "starting EnterpriseDeviceManagerService"

    .line 2951
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2954
    :goto_36
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2957
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevel()I

    .line 2960
    move-result v3

    .line 2961
    if-lez v3, :cond_27

    .line 2963
    :try_start_3a
    const-string v3, "[KnoxAnalytics] System Service"

    .line 2965
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2968
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2970
    const-class v5, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 2972
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2975
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_23

    .line 2978
    goto :goto_37

    .line 2979
    :catchall_23
    move-exception v0

    .line 2980
    move-object v3, v0

    .line 2981
    const-string v5, "SystemServer"

    .line 2983
    const-string v6, "[KnoxAnalytics] Failure starting System Service"

    .line 2985
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2988
    goto :goto_37

    .line 2989
    :cond_27
    const-string v3, "SystemServer"

    .line 2991
    const-string v5, "KnoxAnalyticsSystemService not defined by OEM"

    .line 2993
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    :goto_37
    const-string v3, "KnoxCustom Policy"

    .line 2998
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3001
    :try_start_3b
    new-instance v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 3003
    invoke-direct {v3, v14}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;-><init>(Landroid/content/Context;)V

    .line 3006
    iput-object v3, v2, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 3008
    const-string/jumbo v5, "knoxcustom"

    .line 3011
    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3014
    const-string/jumbo v3, "knoxcustom"

    .line 3017
    iget-object v5, v2, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 3019
    invoke-static {v3, v5}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3022
    const-string v3, "SystemServer"

    .line 3024
    const-string v5, "KnoxCustom Policy added."

    .line 3026
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_24

    .line 3029
    goto :goto_38

    .line 3030
    :catchall_24
    move-exception v0

    .line 3031
    move-object v3, v0

    .line 3032
    const-string v5, "SystemServer"

    .line 3034
    const-string v6, "Fail KnoxCustom Policy."

    .line 3036
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3039
    :goto_38
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3042
    const-string v3, "SystemServer"

    .line 3044
    const-string v5, "DarManagerService"

    .line 3046
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    const-string v3, "DarManagerService"

    .line 3051
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3054
    :try_start_3c
    const-string/jumbo v3, "dar"

    .line 3057
    new-instance v5, Lcom/android/server/SystemServer$4;

    .line 3059
    const/4 v6, 0x3

    .line 3060
    invoke-direct {v5, v6}, Lcom/android/server/SystemServer$4;-><init>(I)V

    .line 3063
    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_25

    .line 3066
    goto :goto_39

    .line 3067
    :catchall_25
    move-exception v0

    .line 3068
    move-object v3, v0

    .line 3069
    const-string v5, "Failure starting DarManagerService"

    .line 3071
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3074
    :goto_39
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3077
    invoke-virtual {v2, v14, v15}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3080
    invoke-virtual {v2, v14, v15}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3083
    invoke-virtual {v2, v14, v15}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3086
    invoke-virtual {v2, v14, v15}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3089
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3092
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3095
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3098
    const v3, 0x1040307

    .line 3101
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3104
    move-result v3

    .line 3105
    if-eqz v3, :cond_28

    .line 3107
    const-string v3, "StartAmbientContextService"

    .line 3109
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3112
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3114
    const-class v5, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 3116
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3119
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3122
    goto :goto_3a

    .line 3123
    :cond_28
    const-string v3, "SystemServer"

    .line 3125
    const-string v5, "AmbientContextManagerService not defined by OEM or disabled by flag"

    .line 3127
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    :goto_3a
    const-string v3, "StartSpeechRecognitionManagerService"

    .line 3132
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3135
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3137
    const-class v5, Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 3139
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3142
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3145
    const v3, 0x1040308

    .line 3148
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3151
    move-result v3

    .line 3152
    if-eqz v3, :cond_29

    .line 3154
    const-string v3, "StartAppPredictionService"

    .line 3156
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3159
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3161
    const-class v5, Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 3163
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3166
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3169
    goto :goto_3b

    .line 3170
    :cond_29
    const-string v3, "SystemServer"

    .line 3172
    const-string v5, "AppPredictionService not defined by OEM"

    .line 3174
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    :goto_3b
    const v3, 0x1040311

    .line 3180
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3183
    move-result v3

    .line 3184
    if-eqz v3, :cond_2a

    .line 3186
    const-string v3, "StartContentSuggestionsService"

    .line 3188
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3191
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3193
    const-class v5, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 3195
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3198
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3201
    goto :goto_3c

    .line 3202
    :cond_2a
    const-string v3, "SystemServer"

    .line 3204
    const-string v5, "ContentSuggestionsService not defined by OEM"

    .line 3206
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    :goto_3c
    :try_start_3d
    const-string v3, "SemClipboardService"

    .line 3211
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3214
    const-string v3, "SystemServer"

    .line 3216
    const-string v5, "SemClipboardService"

    .line 3218
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    const-string/jumbo v3, "semclipboard"

    .line 3224
    new-instance v5, Lcom/android/server/semclipboard/SemClipboardService;

    .line 3226
    invoke-direct {v5, v14}, Lcom/android/server/semclipboard/SemClipboardService;-><init>(Landroid/content/Context;)V

    .line 3229
    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_26

    .line 3232
    :goto_3d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3235
    goto :goto_3e

    .line 3236
    :catchall_26
    move-exception v0

    .line 3237
    move-object v3, v0

    .line 3238
    :try_start_3e
    const-string/jumbo v5, "starting SemClipboardService"

    .line 3241
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_69

    .line 3244
    goto :goto_3d

    .line 3245
    :goto_3e
    const v3, 0x1040330

    .line 3248
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3251
    move-result v3

    .line 3252
    if-eqz v3, :cond_2b

    .line 3254
    const-string v3, "StartSearchUiService"

    .line 3256
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3259
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3261
    const-class v5, Lcom/android/server/searchui/SearchUiManagerService;

    .line 3263
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3266
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3269
    :cond_2b
    const v3, 0x1040332

    .line 3272
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3275
    move-result v3

    .line 3276
    if-eqz v3, :cond_2c

    .line 3278
    const-string v3, "StartSmartspaceService"

    .line 3280
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3283
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3285
    const-class v5, Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 3287
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3290
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3293
    goto :goto_3f

    .line 3294
    :cond_2c
    const-string v3, "SystemServer"

    .line 3296
    const-string v5, "SmartspaceManagerService not defined by OEM or disabled by flag"

    .line 3298
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    :goto_3f
    const v3, 0x1040315

    .line 3304
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3307
    move-result v3

    .line 3308
    if-eqz v3, :cond_2d

    .line 3310
    const-string v3, "StartContextualSearchService"

    .line 3312
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3315
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3317
    const-class v5, Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 3319
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3322
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3325
    goto :goto_40

    .line 3326
    :cond_2d
    const-string v3, "SystemServer"

    .line 3328
    const-string v5, "ContextualSearchManagerService not defined or disabled by flag"

    .line 3330
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    :goto_40
    :try_start_3f
    const-string v3, "StartSemContextService"

    .line 3335
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3338
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3341
    move-result-object v3

    .line 3342
    const-string/jumbo v5, "com.sec.feature.sensorhub"

    .line 3345
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3348
    move-result v3

    .line 3349
    if-nez v3, :cond_2e

    .line 3351
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3354
    move-result-object v3

    .line 3355
    const-string/jumbo v5, "com.sec.feature.scontext_lite"

    .line 3358
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3361
    move-result v3

    .line 3362
    if-eqz v3, :cond_2f

    .line 3364
    goto :goto_41

    .line 3365
    :catchall_27
    move-exception v0

    .line 3366
    move-object v1, v0

    .line 3367
    move-object v2, v15

    .line 3368
    goto/16 :goto_9c

    .line 3370
    :catch_5
    move-exception v0

    .line 3371
    move-object v3, v0

    .line 3372
    goto :goto_43

    .line 3373
    :cond_2e
    :goto_41
    const-string v3, "SystemServer"

    .line 3375
    const-string v5, "SemContextService Service"

    .line 3377
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 3382
    const-string v5, "/system/framework/semcontextservice.jar"

    .line 3384
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 3387
    move-result-object v6

    .line 3388
    invoke-direct {v3, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 3391
    const-string/jumbo v5, "com.samsung.android.hardware.context.SemContextService"

    .line 3394
    invoke-virtual {v3, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 3397
    move-result-object v3

    .line 3398
    const/4 v5, 0x1

    .line 3399
    new-array v6, v5, [Ljava/lang/Class;

    .line 3401
    const-class v5, Landroid/content/Context;

    .line 3403
    const/4 v8, 0x0

    .line 3404
    aput-object v5, v6, v8

    .line 3406
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 3409
    move-result-object v3

    .line 3410
    const-string/jumbo v5, "scontext"

    .line 3413
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 3416
    move-result-object v6

    .line 3417
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 3420
    move-result-object v3

    .line 3421
    check-cast v3, Landroid/os/IBinder;

    .line 3423
    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_5
    .catchall {:try_start_3f .. :try_end_3f} :catchall_27

    .line 3426
    :cond_2f
    :goto_42
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3429
    goto :goto_44

    .line 3430
    :goto_43
    :try_start_40
    const-string v5, "SystemServer"

    .line 3432
    const-string v6, "Failure starting SemContextService"

    .line 3434
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_68

    .line 3437
    goto :goto_42

    .line 3438
    :goto_44
    const-string v3, "StartMotionRecognitionService"

    .line 3440
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3443
    :try_start_41
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3446
    move-result-object v3

    .line 3447
    if-eqz v3, :cond_30

    .line 3449
    const-string/jumbo v5, "com.sec.feature.motionrecognition_service"

    .line 3452
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3455
    move-result v3

    .line 3456
    if-eqz v3, :cond_30

    .line 3458
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 3460
    const-string v5, "/system/framework/motionrecognitionservice.jar"

    .line 3462
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 3465
    move-result-object v6

    .line 3466
    invoke-direct {v3, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 3469
    const-string/jumbo v5, "com.samsung.android.gesture.MotionRecognitionService"

    .line 3472
    invoke-virtual {v3, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 3475
    move-result-object v3

    .line 3476
    const/4 v5, 0x1

    .line 3477
    new-array v6, v5, [Ljava/lang/Class;

    .line 3479
    const-class v5, Landroid/content/Context;

    .line 3481
    const/4 v8, 0x0

    .line 3482
    aput-object v5, v6, v8

    .line 3484
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 3487
    move-result-object v3

    .line 3488
    const-string/jumbo v5, "motion_recognition"

    .line 3491
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 3494
    move-result-object v6

    .line 3495
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 3498
    move-result-object v3

    .line 3499
    check-cast v3, Landroid/os/IBinder;

    .line 3501
    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3504
    const-string v3, "SystemServer"

    .line 3506
    const-string v5, "MotionRecognitionService Service!"

    .line 3508
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_6

    .line 3511
    goto :goto_45

    .line 3512
    :catch_6
    move-exception v0

    .line 3513
    move-object v3, v0

    .line 3514
    const-string v5, "SystemServer"

    .line 3516
    const-string v6, "Failure starting MotionRecognitionService"

    .line 3518
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3521
    :cond_30
    :goto_45
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3524
    const-string v3, "InitConnectivityModuleConnector"

    .line 3526
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3529
    :try_start_42
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    .line 3532
    move-result-object v3

    .line 3533
    invoke-virtual {v3, v14}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_28

    .line 3536
    goto :goto_46

    .line 3537
    :catchall_28
    move-exception v0

    .line 3538
    move-object v3, v0

    .line 3539
    const-string/jumbo v5, "initializing ConnectivityModuleConnector"

    .line 3542
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3545
    :goto_46
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3548
    const-string v3, "InitNetworkStackClient"

    .line 3550
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3553
    :try_start_43
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    .line 3556
    move-result-object v3

    .line 3557
    invoke-virtual {v3}, Landroid/net/NetworkStackClient;->init()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_29

    .line 3560
    goto :goto_47

    .line 3561
    :catchall_29
    move-exception v0

    .line 3562
    move-object v3, v0

    .line 3563
    const-string/jumbo v5, "initializing NetworkStackClient"

    .line 3566
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3569
    :goto_47
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3572
    const-string v3, "StartNetworkManagementService"

    .line 3574
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3577
    :try_start_44
    invoke-static {v14}, Lcom/android/server/net/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;

    .line 3580
    move-result-object v3
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_2b

    .line 3581
    :try_start_45
    const-string/jumbo v5, "network_management"

    .line 3584
    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_2a

    .line 3587
    goto :goto_49

    .line 3588
    :catchall_2a
    move-exception v0

    .line 3589
    move-object v5, v0

    .line 3590
    goto :goto_48

    .line 3591
    :catchall_2b
    move-exception v0

    .line 3592
    move-object v5, v0

    .line 3593
    const/4 v3, 0x0

    .line 3594
    :goto_48
    const-string/jumbo v6, "starting NetworkManagement Service"

    .line 3597
    invoke-static {v6, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3600
    :goto_49
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3603
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 3605
    if-eqz v5, :cond_31

    .line 3607
    const-string v5, "StartSpegService"

    .line 3609
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3612
    :try_start_46
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3614
    const-class v6, Lcom/android/server/pm/SpegService;

    .line 3616
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3619
    move-result-object v5

    .line 3620
    check-cast v5, Lcom/android/server/pm/SpegService;

    .line 3622
    iget-object v6, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 3624
    invoke-virtual {v5, v6}, Lcom/android/server/pm/SpegService;->init(Lcom/android/server/pm/PackageManagerService;)V

    .line 3627
    const-class v6, Lcom/android/server/pm/SpegService;

    .line 3629
    invoke-static {v6, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_7

    .line 3632
    goto :goto_4a

    .line 3633
    :catch_7
    move-exception v0

    .line 3634
    move-object v5, v0

    .line 3635
    const-string v6, "SystemServer"

    .line 3637
    const-string v8, "Failure starting SpegService helper"

    .line 3639
    invoke-static {v6, v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3642
    :goto_4a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3645
    :cond_31
    const-string v5, "StartFontManagerService"

    .line 3647
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3650
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3652
    new-instance v6, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    .line 3654
    invoke-direct {v6, v14, v9}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    .line 3657
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 3660
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3663
    if-eqz v11, :cond_32

    .line 3665
    invoke-static {}, Landroid/server/Flags;->removeTextService()Z

    .line 3668
    move-result v5

    .line 3669
    if-nez v5, :cond_33

    .line 3671
    :cond_32
    const-string v5, "StartTextServicesManager"

    .line 3673
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3676
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3678
    const-class v6, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    .line 3680
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3683
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3686
    :cond_33
    if-nez v7, :cond_34

    .line 3688
    const-string v5, "StartTextClassificationManagerService"

    .line 3690
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3693
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3695
    const-class v6, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 3697
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3700
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3703
    :cond_34
    const-string v5, "StartNetworkScoreService"

    .line 3705
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3708
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3710
    const-class v6, Lcom/android/server/NetworkScoreService$Lifecycle;

    .line 3712
    const-string v7, "StartNetworkStatsService"

    .line 3714
    invoke-static {v5, v6, v15, v7}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 3717
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3719
    const-string/jumbo v6, "com.android.server.NetworkStatsServiceInitializer"

    .line 3722
    const-string v7, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 3724
    invoke-virtual {v5, v6, v7}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3730
    const-string v5, "StartNetworkPolicyManagerService"

    .line 3732
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3735
    :try_start_47
    new-instance v5, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3737
    iget-object v6, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 3739
    invoke-direct {v5, v14, v6, v3}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/server/net/NetworkManagementService;)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_2d

    .line 3742
    :try_start_48
    const-string/jumbo v6, "netpolicy"

    .line 3745
    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_2c

    .line 3748
    goto :goto_4d

    .line 3749
    :catchall_2c
    move-exception v0

    .line 3750
    move-object v6, v0

    .line 3751
    goto :goto_4c

    .line 3752
    :goto_4b
    move-object v6, v0

    .line 3753
    const/4 v5, 0x0

    .line 3754
    goto :goto_4c

    .line 3755
    :catchall_2d
    move-exception v0

    .line 3756
    goto :goto_4b

    .line 3757
    :goto_4c
    const-string/jumbo v7, "starting NetworkPolicy Service"

    .line 3760
    invoke-static {v7, v6}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3763
    :goto_4d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3766
    const-string v6, "StartUrspService"

    .line 3768
    invoke-virtual {v15, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3771
    :try_start_49
    new-instance v6, Lcom/android/server/net/UrspService;

    .line 3773
    invoke-direct {v6, v14}, Lcom/android/server/net/UrspService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_2f

    .line 3776
    :try_start_4a
    const-string/jumbo v7, "urspservice"

    .line 3779
    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2e

    .line 3782
    goto :goto_4f

    .line 3783
    :catchall_2e
    move-exception v0

    .line 3784
    move-object v7, v0

    .line 3785
    goto :goto_4e

    .line 3786
    :catchall_2f
    move-exception v0

    .line 3787
    move-object v7, v0

    .line 3788
    const/4 v6, 0x0

    .line 3789
    :goto_4e
    const-string/jumbo v8, "starting URSP Service"

    .line 3792
    invoke-static {v8, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3795
    :goto_4f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3798
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3801
    move-result-object v7

    .line 3802
    const-string v8, "android.hardware.wifi"

    .line 3804
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3807
    move-result v7

    .line 3808
    if-eqz v7, :cond_35

    .line 3810
    if-nez v12, :cond_35

    .line 3812
    const-string v7, "StartWifi"

    .line 3814
    invoke-virtual {v15, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3817
    iget-object v7, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3819
    const-string/jumbo v8, "com.android.server.wifi.WifiService"

    .line 3822
    move-object/from16 v16, v3

    .line 3824
    const-string v3, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 3826
    invoke-virtual {v7, v8, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 3829
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3832
    const-string v3, "StartWifiScanning"

    .line 3834
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3837
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3839
    const-string/jumbo v7, "com.android.server.wifi.scanner.WifiScanningService"

    .line 3842
    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 3844
    invoke-virtual {v3, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 3847
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3850
    goto :goto_50

    .line 3851
    :cond_35
    move-object/from16 v16, v3

    .line 3853
    :goto_50
    if-eqz v12, :cond_36

    .line 3855
    const-string v3, "StartArcNetworking"

    .line 3857
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3860
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3862
    const-string/jumbo v7, "com.android.server.arc.net.ArcNetworkService"

    .line 3865
    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3868
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3871
    :cond_36
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3874
    move-result-object v3

    .line 3875
    const-string v7, "android.hardware.wifi.rtt"

    .line 3877
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3880
    move-result v3

    .line 3881
    if-eqz v3, :cond_37

    .line 3883
    const-string v3, "StartRttService"

    .line 3885
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3888
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3890
    const-string/jumbo v7, "com.android.server.wifi.rtt.RttService"

    .line 3893
    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 3895
    invoke-virtual {v3, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3901
    :cond_37
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3904
    move-result-object v3

    .line 3905
    const-string v7, "android.hardware.wifi.aware"

    .line 3907
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3910
    move-result v3

    .line 3911
    if-eqz v3, :cond_38

    .line 3913
    const-string v3, "StartWifiAware"

    .line 3915
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3918
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3920
    const-string/jumbo v7, "com.android.server.wifi.aware.WifiAwareService"

    .line 3923
    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 3925
    invoke-virtual {v3, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 3928
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3931
    :cond_38
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3934
    move-result-object v3

    .line 3935
    const-string v7, "android.hardware.wifi.direct"

    .line 3937
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3940
    move-result v3

    .line 3941
    if-eqz v3, :cond_39

    .line 3943
    const-string v3, "StartWifiP2P"

    .line 3945
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3948
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3950
    const-string/jumbo v7, "com.android.server.wifi.p2p.WifiP2pService"

    .line 3953
    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 3955
    invoke-virtual {v3, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 3958
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3961
    :cond_39
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3964
    move-result-object v3

    .line 3965
    const-string v7, "android.hardware.lowpan"

    .line 3967
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3970
    move-result v3

    .line 3971
    if-eqz v3, :cond_3a

    .line 3973
    const-string v3, "StartLowpan"

    .line 3975
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3978
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3980
    const-string/jumbo v7, "com.android.server.lowpan.LowpanService"

    .line 3983
    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3986
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3989
    :cond_3a
    const-string v3, "StartPacProxyService"

    .line 3991
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3994
    :try_start_4b
    new-instance v3, Lcom/android/server/connectivity/PacProxyService;

    .line 3996
    invoke-direct {v3, v14}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V

    .line 3999
    const-string/jumbo v7, "pac_proxy"

    .line 4002
    invoke-static {v7, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_30

    .line 4005
    goto :goto_51

    .line 4006
    :catchall_30
    move-exception v0

    .line 4007
    move-object v3, v0

    .line 4008
    const-string/jumbo v7, "starting PacProxyService"

    .line 4011
    invoke-static {v7, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4014
    :goto_51
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4017
    const-string v3, "StartIntelligentBatterySaverService"

    .line 4019
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4022
    new-instance v3, Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 4024
    invoke-direct {v3, v14}, Lcom/android/server/ibs/IntelligentBatterySaverService;-><init>(Landroid/content/Context;)V

    .line 4027
    const-string v7, "IntelligentBatterySaverService"

    .line 4029
    invoke-static {v7, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4032
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4035
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 4038
    move-result v3

    .line 4039
    if-nez v3, :cond_3b

    .line 4041
    const-string v3, "StartKnoxGuard"

    .line 4043
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4046
    :try_start_4c
    const-string/jumbo v3, "knoxguard_service"

    .line 4049
    new-instance v7, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;

    .line 4051
    invoke-direct {v7, v14}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;-><init>(Landroid/content/Context;)V

    .line 4054
    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_31

    .line 4057
    goto :goto_52

    .line 4058
    :catchall_31
    move-exception v0

    .line 4059
    move-object v3, v0

    .line 4060
    const-string v7, "SystemServer"

    .line 4062
    const-string v8, "Failed to add KnoxGuardService."

    .line 4064
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4070
    :goto_52
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4073
    :cond_3b
    const-string v3, "StartConnectivityService"

    .line 4075
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4078
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4080
    const-string/jumbo v7, "com.android.server.ConnectivityServiceInitializer"

    .line 4083
    const-string v8, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 4085
    invoke-virtual {v3, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4088
    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 4091
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4094
    const-string v3, "StartExtendedEthernetService"

    .line 4096
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4099
    :try_start_4d
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4101
    const-class v7, Lcom/android/server/ExtendedEthernetService;

    .line 4103
    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_32

    .line 4106
    goto :goto_53

    .line 4107
    :catchall_32
    move-exception v0

    .line 4108
    move-object v3, v0

    .line 4109
    const-string v7, "SystemServer"

    .line 4111
    const-string v8, "Failed to start ExtendedEthernetService."

    .line 4113
    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4116
    :goto_53
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4119
    const-string v3, "StartSecurityStateManagerService"

    .line 4121
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4124
    :try_start_4e
    const-string/jumbo v3, "security_state"

    .line 4127
    new-instance v7, Lcom/android/server/SecurityStateManagerService;

    .line 4129
    invoke-direct {v7, v14}, Lcom/android/server/SecurityStateManagerService;-><init>(Landroid/content/Context;)V

    .line 4132
    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_33

    .line 4135
    goto :goto_54

    .line 4136
    :catchall_33
    move-exception v0

    .line 4137
    move-object v3, v0

    .line 4138
    const-string/jumbo v7, "starting SecurityStateManagerService"

    .line 4141
    invoke-static {v7, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4144
    :goto_54
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4147
    const-string v3, "StartVpnManagerService"

    .line 4149
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4152
    :try_start_4f
    invoke-static {v14}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    .line 4155
    move-result-object v3
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_35

    .line 4156
    :try_start_50
    const-string/jumbo v7, "vpn_management"

    .line 4159
    invoke-static {v7, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_34

    .line 4162
    goto :goto_56

    .line 4163
    :catchall_34
    move-exception v0

    .line 4164
    move-object v7, v0

    .line 4165
    goto :goto_55

    .line 4166
    :catchall_35
    move-exception v0

    .line 4167
    move-object v7, v0

    .line 4168
    const/4 v3, 0x0

    .line 4169
    :goto_55
    const-string/jumbo v8, "starting VPN Manager Service"

    .line 4172
    invoke-static {v8, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4175
    :goto_56
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4178
    const-string v7, "StartVcnManagementService"

    .line 4180
    invoke-virtual {v15, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4183
    :try_start_51
    invoke-static {v14}, Lcom/android/server/VcnManagementService;->create(Landroid/content/Context;)Lcom/android/server/VcnManagementService;

    .line 4186
    move-result-object v7
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_37

    .line 4187
    :try_start_52
    const-string/jumbo v8, "vcn_management"

    .line 4190
    invoke-static {v8, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_36

    .line 4193
    move-object/from16 v27, v3

    .line 4195
    goto :goto_58

    .line 4196
    :catchall_36
    move-exception v0

    .line 4197
    move-object v8, v0

    .line 4198
    move-object/from16 v27, v3

    .line 4200
    goto :goto_57

    .line 4201
    :catchall_37
    move-exception v0

    .line 4202
    move-object v8, v0

    .line 4203
    move-object/from16 v27, v3

    .line 4205
    const/4 v7, 0x0

    .line 4206
    :goto_57
    const-string/jumbo v3, "starting VCN Management Service"

    .line 4209
    invoke-static {v3, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4212
    :goto_58
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4215
    const-string v3, "StartSystemUpdateManagerService"

    .line 4217
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4220
    :try_start_53
    const-string/jumbo v3, "system_update"

    .line 4223
    new-instance v8, Lcom/android/server/SystemUpdateManagerService;

    .line 4225
    invoke-direct {v8, v14}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    .line 4228
    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_38

    .line 4231
    goto :goto_59

    .line 4232
    :catchall_38
    move-exception v0

    .line 4233
    move-object v3, v0

    .line 4234
    const-string/jumbo v8, "starting SystemUpdateManagerService"

    .line 4237
    invoke-static {v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4240
    :goto_59
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4243
    const-string v3, "StartUpdateLockService"

    .line 4245
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4248
    :try_start_54
    const-string/jumbo v3, "updatelock"

    .line 4251
    new-instance v8, Lcom/android/server/UpdateLockService;

    .line 4253
    invoke-direct {v8, v14}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 4256
    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_39

    .line 4259
    goto :goto_5a

    .line 4260
    :catchall_39
    move-exception v0

    .line 4261
    move-object v3, v0

    .line 4262
    const-string/jumbo v8, "starting UpdateLockService"

    .line 4265
    invoke-static {v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4268
    :goto_5a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4271
    const-string v3, "StartNotificationManager"

    .line 4273
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4276
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4278
    const-class v8, Lcom/android/server/notification/NotificationManagerService;

    .line 4280
    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4283
    invoke-static {v14}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 4286
    invoke-static {v14}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 4289
    const-string/jumbo v3, "notification"

    .line 4292
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4295
    move-result-object v3

    .line 4296
    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 4299
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4302
    const-string v3, "StartDeviceMonitor"

    .line 4304
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4307
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4309
    const-class v8, Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 4311
    move-object/from16 v28, v4

    .line 4313
    const-string v4, "StartTimeDetectorService"

    .line 4315
    invoke-static {v3, v8, v15, v4}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 4318
    :try_start_55
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4320
    const-class v4, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;

    .line 4322
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_3a

    .line 4325
    goto :goto_5b

    .line 4326
    :catchall_3a
    move-exception v0

    .line 4327
    move-object v3, v0

    .line 4328
    const-string/jumbo v4, "starting TimeDetectorService service"

    .line 4331
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4334
    :goto_5b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4337
    const-string v3, "StartLocationManagerService"

    .line 4339
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4342
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4344
    const-class v4, Lcom/android/server/location/LocationManagerService$Lifecycle;

    .line 4346
    const-string v8, "StartSLocationService"

    .line 4348
    invoke-static {v3, v4, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 4351
    :try_start_56
    const-string v3, "SystemServer"

    .line 4353
    const-string v4, "SLocation Manager"

    .line 4355
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4358
    const-string/jumbo v3, "com.samsung.android.location.SLocationLoader"

    .line 4361
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4364
    move-result-object v3

    .line 4365
    const-string/jumbo v4, "getSLocationService"
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_3d

    .line 4368
    move-object/from16 v29, v5

    .line 4370
    const/4 v8, 0x1

    .line 4371
    :try_start_57
    new-array v5, v8, [Ljava/lang/Class;

    .line 4373
    const-class v8, Landroid/content/Context;

    .line 4375
    const/16 v18, 0x0

    .line 4377
    aput-object v8, v5, v18

    .line 4379
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 4382
    move-result-object v3

    .line 4383
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 4386
    move-result-object v4

    .line 4387
    const/4 v5, 0x0

    .line 4388
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4391
    move-result-object v3

    .line 4392
    check-cast v3, Landroid/os/IBinder;
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_3c

    .line 4394
    :try_start_58
    const-string/jumbo v4, "sec_location"

    .line 4397
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_3b

    .line 4400
    goto :goto_5e

    .line 4401
    :catchall_3b
    move-exception v0

    .line 4402
    move-object v4, v0

    .line 4403
    goto :goto_5d

    .line 4404
    :catchall_3c
    move-exception v0

    .line 4405
    :goto_5c
    move-object v4, v0

    .line 4406
    const/4 v3, 0x0

    .line 4407
    goto :goto_5d

    .line 4408
    :catchall_3d
    move-exception v0

    .line 4409
    move-object/from16 v29, v5

    .line 4411
    goto :goto_5c

    .line 4412
    :goto_5d
    const-string v5, "Starting SLocationService"

    .line 4414
    invoke-static {v5, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4417
    :goto_5e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4420
    const-string v4, "SemMdnieManagerService"

    .line 4422
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4425
    :try_start_59
    const-string v4, "SystemServer"

    .line 4427
    const-string/jumbo v5, "mDNIe Service"

    .line 4430
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    const-string/jumbo v4, "com.samsung.android.hardware.display.SemMdnieManagerService"

    .line 4436
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4439
    const-string/jumbo v4, "mDNIe"

    .line 4442
    new-instance v5, Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 4444
    invoke-direct {v5, v14}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;-><init>(Landroid/content/Context;)V

    .line 4447
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_3e

    .line 4450
    goto :goto_5f

    .line 4451
    :catchall_3e
    move-exception v0

    .line 4452
    move-object v4, v0

    .line 4453
    const-string v5, "Failed To Start Mdnie Service "

    .line 4455
    invoke-static {v5, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4458
    :goto_5f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4461
    const-string v4, "SemDisplaySolution"

    .line 4463
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4466
    :try_start_5a
    const-string v4, "SystemServer"

    .line 4468
    const-string v5, "SemDisplaySolution Service"

    .line 4470
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    const-string/jumbo v4, "com.samsung.android.displaysolution.SemDisplaySolutionManagerService"

    .line 4476
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4479
    const-string v4, "DisplaySolution"

    .line 4481
    new-instance v5, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 4483
    invoke-direct {v5, v14}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;-><init>(Landroid/content/Context;)V

    .line 4486
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_3f

    .line 4489
    goto :goto_60

    .line 4490
    :catchall_3f
    move-exception v0

    .line 4491
    move-object v4, v0

    .line 4492
    const-string v5, "Failed To Start SemDisplaySolution Service "

    .line 4494
    invoke-static {v5, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4497
    :goto_60
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4500
    const-string v4, "StartCountryDetectorService"

    .line 4502
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4505
    :try_start_5b
    new-instance v4, Lcom/android/server/CountryDetectorService;

    .line 4507
    invoke-direct {v4, v14}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_41

    .line 4510
    :try_start_5c
    const-string/jumbo v5, "country_detector"

    .line 4513
    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_40

    .line 4516
    goto :goto_62

    .line 4517
    :catchall_40
    move-exception v0

    .line 4518
    move-object v5, v0

    .line 4519
    goto :goto_61

    .line 4520
    :catchall_41
    move-exception v0

    .line 4521
    move-object v5, v0

    .line 4522
    const/4 v4, 0x0

    .line 4523
    :goto_61
    const-string/jumbo v8, "starting Country Detector"

    .line 4526
    invoke-static {v8, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4529
    :goto_62
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4532
    const-string v5, "StartTimeZoneDetectorService"

    .line 4534
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4537
    :try_start_5d
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4539
    const-class v8, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

    .line 4541
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_42

    .line 4544
    goto :goto_63

    .line 4545
    :catchall_42
    move-exception v0

    .line 4546
    move-object v5, v0

    .line 4547
    const-string/jumbo v8, "starting TimeZoneDetectorService service"

    .line 4550
    invoke-static {v8, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4553
    :goto_63
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4556
    const-string v5, "StartAltitudeService"

    .line 4558
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4561
    :try_start_5e
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4563
    const-class v8, Lcom/android/server/location/altitude/AltitudeService$Lifecycle;

    .line 4565
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_43

    .line 4568
    goto :goto_64

    .line 4569
    :catchall_43
    move-exception v0

    .line 4570
    move-object v5, v0

    .line 4571
    const-string/jumbo v8, "starting AltitudeService service"

    .line 4574
    invoke-static {v8, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4577
    :goto_64
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4580
    const-string v5, "StartLocationTimeZoneManagerService"

    .line 4582
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4585
    :try_start_5f
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4587
    const-class v8, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;

    .line 4589
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_44

    .line 4592
    goto :goto_65

    .line 4593
    :catchall_44
    move-exception v0

    .line 4594
    move-object v5, v0

    .line 4595
    const-string/jumbo v8, "starting LocationTimeZoneManagerService service"

    .line 4598
    invoke-static {v8, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4601
    :goto_65
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4604
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4607
    move-result-object v5

    .line 4608
    const v8, 0x1110174

    .line 4611
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 4614
    move-result v5

    .line 4615
    if-eqz v5, :cond_3c

    .line 4617
    const-string v5, "StartGnssTimeUpdateService"

    .line 4619
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4622
    :try_start_60
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4624
    const-class v8, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;

    .line 4626
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_45

    .line 4629
    goto :goto_66

    .line 4630
    :catchall_45
    move-exception v0

    .line 4631
    move-object v5, v0

    .line 4632
    const-string/jumbo v8, "starting GnssTimeUpdateService service"

    .line 4635
    invoke-static {v8, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4638
    :goto_66
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4641
    :cond_3c
    const-string v5, "KnoxVpnService"

    .line 4643
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4646
    :try_start_61
    iget-object v5, v2, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 4648
    if-eqz v5, :cond_3d

    .line 4650
    const-string v5, "Adding KnoxVpnEngineService"

    .line 4652
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4655
    const-string v5, "SystemServer"

    .line 4657
    const-string v8, "Adding KnoxVpnEngineService"

    .line 4659
    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 4664
    invoke-direct {v5, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V

    .line 4667
    const-string/jumbo v8, "knox_vpn_policy"

    .line 4670
    invoke-static {v8, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4673
    const-string/jumbo v8, "knox_vpn_policy"

    .line 4676
    invoke-static {v8, v5}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4679
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_46

    .line 4682
    goto/16 :goto_67

    .line 4684
    :catchall_46
    move-exception v0

    .line 4685
    move-object v5, v0

    .line 4686
    goto/16 :goto_68

    .line 4688
    :cond_3d
    :goto_67
    move-object/from16 v30, v3

    .line 4690
    goto :goto_69

    .line 4691
    :goto_68
    const-string v8, "SystemServer"

    .line 4693
    move-object/from16 v30, v3

    .line 4695
    const-string v3, "Failure starting KnoxVpnEngineService"

    .line 4697
    invoke-static {v8, v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4700
    :goto_69
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4703
    if-nez v11, :cond_3e

    .line 4705
    const-string v3, "StartSearchManagerService"

    .line 4707
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4710
    :try_start_62
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4712
    const-class v5, Lcom/android/server/search/SearchManagerService$Lifecycle;

    .line 4714
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_47

    .line 4717
    goto :goto_6a

    .line 4718
    :catchall_47
    move-exception v0

    .line 4719
    move-object v3, v0

    .line 4720
    const-string/jumbo v5, "starting Search Service"

    .line 4723
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4726
    :goto_6a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4729
    :cond_3e
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4732
    move-result-object v3

    .line 4733
    const v5, 0x111018a

    .line 4736
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 4739
    move-result v3

    .line 4740
    if-eqz v3, :cond_3f

    .line 4742
    const-string v3, "StartWallpaperManagerService"

    .line 4744
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4747
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4749
    const-class v5, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    .line 4751
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4754
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4757
    goto :goto_6b

    .line 4758
    :cond_3f
    const-string v3, "SystemServer"

    .line 4760
    const-string v5, "Wallpaper service disabled by config"

    .line 4762
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4765
    :goto_6b
    const v3, 0x1040338

    .line 4768
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 4771
    move-result v3

    .line 4772
    if-eqz v3, :cond_40

    .line 4774
    const-string v3, "StartWallpaperEffectsGenerationService"

    .line 4776
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4779
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4781
    const-class v5, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 4783
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4786
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4789
    :cond_40
    const-string v3, "StartAudioService"

    .line 4791
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4794
    if-nez v12, :cond_41

    .line 4796
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4798
    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    .line 4800
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4803
    goto :goto_6c

    .line 4804
    :cond_41
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4807
    move-result-object v3

    .line 4808
    const v5, 0x1040340

    .line 4811
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 4814
    move-result-object v3

    .line 4815
    :try_start_63
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4817
    new-instance v8, Ljava/lang/StringBuilder;

    .line 4819
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 4822
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4825
    const-string v12, "$Lifecycle"

    .line 4827
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4830
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4833
    move-result-object v8

    .line 4834
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_48

    .line 4837
    goto :goto_6c

    .line 4838
    :catchall_48
    move-exception v0

    .line 4839
    move-object v5, v0

    .line 4840
    new-instance v8, Ljava/lang/StringBuilder;

    .line 4842
    const-string/jumbo v12, "starting "

    .line 4845
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4848
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4851
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4854
    move-result-object v3

    .line 4855
    invoke-static {v3, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4858
    :goto_6c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4861
    const-string v3, "StartSoundTriggerMiddlewareService"

    .line 4863
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4866
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4868
    const-class v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    .line 4870
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4873
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4876
    const-string v3, "LedCoverAppService"

    .line 4878
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4881
    new-instance v3, Lcom/android/server/ledcoverapp/LedCoverAppService;

    .line 4883
    invoke-direct {v3, v14}, Lcom/android/server/ledcoverapp/LedCoverAppService;-><init>(Landroid/content/Context;)V

    .line 4886
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4889
    const-string v3, "StartLedBackCoverService"

    .line 4891
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4894
    new-instance v3, Lcom/android/server/ledcover/LedBackCoverService;

    .line 4896
    invoke-direct {v3, v14}, Lcom/android/server/ledcover/LedBackCoverService;-><init>(Landroid/content/Context;)V

    .line 4899
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4902
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 4904
    const-string v5, "android.hardware.broadcastradio"

    .line 4906
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4909
    move-result v3

    .line 4910
    if-eqz v3, :cond_42

    .line 4912
    const-string v3, "StartBroadcastRadioService"

    .line 4914
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4917
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4919
    const-class v5, Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 4921
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4924
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4927
    :cond_42
    if-nez v1, :cond_43

    .line 4929
    const-string v1, "StartDockObserver"

    .line 4931
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4934
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4936
    const-class v3, Lcom/android/server/DockObserver;

    .line 4938
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4941
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4944
    :cond_43
    if-eqz v11, :cond_44

    .line 4946
    const-string v1, "StartThermalObserver"

    .line 4948
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4951
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4953
    const-string/jumbo v3, "com.android.clockwork.ThermalObserver"

    .line 4956
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4959
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4962
    :cond_44
    if-nez v11, :cond_45

    .line 4964
    const-string v1, "StartWiredAccessoryManager"

    .line 4966
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4969
    :try_start_64
    new-instance v1, Lcom/android/server/WiredAccessoryManager;

    .line 4971
    invoke-direct {v1, v14, v13}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 4974
    invoke-virtual {v13, v1}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_49

    .line 4977
    goto/16 :goto_6d

    .line 4979
    :catchall_49
    move-exception v0

    .line 4980
    move-object v1, v0

    .line 4981
    const-string/jumbo v3, "starting WiredAccessoryManager"

    .line 4984
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4987
    :goto_6d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4990
    :cond_45
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 4992
    const-string v3, "android.software.midi"

    .line 4994
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4997
    move-result v1

    .line 4998
    if-eqz v1, :cond_46

    .line 5000
    const-string v1, "StartMidiManager"

    .line 5002
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5005
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5007
    const-class v3, Lcom/android/server/midi/MidiService$Lifecycle;

    .line 5009
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5012
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5015
    :cond_46
    const-string v1, "StartAdbService"

    .line 5017
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5020
    :try_start_65
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5022
    const-class v3, Lcom/android/server/adb/AdbService$Lifecycle;

    .line 5024
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_4a

    .line 5027
    goto/16 :goto_6e

    .line 5029
    :catchall_4a
    const-string v1, "SystemServer"

    .line 5031
    const-string v3, "Failure starting AdbService"

    .line 5033
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5036
    :goto_6e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5039
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5041
    const-string v3, "android.hardware.usb.host"

    .line 5043
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5046
    move-result v1

    .line 5047
    if-nez v1, :cond_47

    .line 5049
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5051
    const-string v3, "android.hardware.usb.accessory"

    .line 5053
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5056
    move-result v1

    .line 5057
    if-nez v1, :cond_47

    .line 5059
    sget-boolean v1, Landroid/os/Build;->IS_EMULATOR:Z

    .line 5061
    if-eqz v1, :cond_48

    .line 5063
    :cond_47
    const-string v1, "StartUsbService"

    .line 5065
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5068
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5070
    const-class v3, Lcom/android/server/usb/UsbService$Lifecycle;

    .line 5072
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5075
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5078
    :cond_48
    if-nez v11, :cond_49

    .line 5080
    const-string v1, "StartSerialService"

    .line 5082
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5085
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5087
    const-class v3, Lcom/android/server/SerialService$Lifecycle;

    .line 5089
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5092
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5095
    :cond_49
    const-string v1, "StartHardwarePropertiesManagerService"

    .line 5097
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5100
    :try_start_66
    new-instance v1, Lcom/android/server/HardwarePropertiesManagerService;

    .line 5102
    invoke-direct {v1, v14}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    .line 5105
    const-string/jumbo v3, "hardware_properties"

    .line 5108
    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_4b

    .line 5111
    goto/16 :goto_6f

    .line 5113
    :catchall_4b
    move-exception v0

    .line 5114
    move-object v1, v0

    .line 5115
    const-string v3, "SystemServer"

    .line 5117
    const-string v5, "Failure starting HardwarePropertiesManagerService"

    .line 5119
    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5122
    :goto_6f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5125
    if-nez v11, :cond_4a

    .line 5127
    const-string v1, "StartTwilightService"

    .line 5129
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5132
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5134
    const-class v3, Lcom/android/server/twilight/TwilightService;

    .line 5136
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5139
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5142
    :cond_4a
    const-string v1, "StartColorDisplay"

    .line 5144
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5147
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5149
    const-class v3, Lcom/android/server/display/color/ColorDisplayService;

    .line 5151
    const-string v5, "StartJobScheduler"

    .line 5153
    invoke-static {v1, v3, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5156
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5158
    const-class v3, Lcom/android/server/job/JobSchedulerService;

    .line 5160
    const-string v5, "StartSoundTrigger"

    .line 5162
    invoke-static {v1, v3, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5165
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5167
    const-class v3, Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 5169
    const-string v5, "StartTrustManager"

    .line 5171
    invoke-static {v1, v3, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5174
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5176
    const-class v3, Lcom/android/server/trust/TrustManagerService;

    .line 5178
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5181
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5184
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5186
    const-string v3, "android.software.backup"

    .line 5188
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5191
    move-result v1

    .line 5192
    if-eqz v1, :cond_4b

    .line 5194
    const-string v1, "StartBackupManager"

    .line 5196
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5199
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5201
    const-class v3, Lcom/android/server/backup/BackupManagerService$Lifecycle;

    .line 5203
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5206
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5209
    :cond_4b
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5211
    const-string v3, "android.software.app_widgets"

    .line 5213
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5216
    move-result v1

    .line 5217
    if-nez v1, :cond_4c

    .line 5219
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5222
    move-result-object v1

    .line 5223
    const v3, 0x1110166

    .line 5226
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 5229
    move-result v1

    .line 5230
    if-eqz v1, :cond_4d

    .line 5232
    :cond_4c
    const-string v1, "StartAppWidgetService"

    .line 5234
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5237
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5239
    const-class v3, Lcom/android/server/appwidget/AppWidgetService;

    .line 5241
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5244
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5247
    :cond_4d
    const-string v1, "StartVoiceRecognitionManager"

    .line 5249
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5252
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5254
    const-class v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 5256
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5259
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5262
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5265
    move-result-object v1

    .line 5266
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    .line 5269
    move-result v1

    .line 5270
    if-eqz v1, :cond_4e

    .line 5272
    const-string v1, "StartGestureLauncher"

    .line 5274
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5277
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5279
    const-class v3, Lcom/android/server/GestureLauncherService;

    .line 5281
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5284
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5287
    :cond_4e
    const-string v1, "StartSensorNotification"

    .line 5289
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5292
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5294
    const-class v3, Lcom/android/server/SensorNotificationService;

    .line 5296
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5299
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5302
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5304
    const-string v3, "android.hardware.context_hub"

    .line 5306
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5309
    move-result v1

    .line 5310
    if-eqz v1, :cond_4f

    .line 5312
    const-string v1, "StartContextHubSystemService"

    .line 5314
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5317
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5319
    const-class v3, Lcom/android/server/ContextHubSystemService;

    .line 5321
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5324
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5327
    :cond_4f
    const-string v1, "StartDiskStatsService"

    .line 5329
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5332
    :try_start_67
    const-string/jumbo v1, "diskstats"

    .line 5335
    new-instance v3, Lcom/android/server/DiskStatsService;

    .line 5337
    invoke-direct {v3, v14}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    .line 5340
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_4c

    .line 5343
    goto/16 :goto_70

    .line 5345
    :catchall_4c
    move-exception v0

    .line 5346
    move-object v1, v0

    .line 5347
    const-string/jumbo v3, "starting DiskStats Service"

    .line 5350
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5353
    :goto_70
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5356
    const-string v1, "RuntimeService"

    .line 5358
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5361
    :try_start_68
    const-string/jumbo v1, "runtime"

    .line 5364
    new-instance v3, Lcom/android/server/RuntimeService;

    .line 5366
    invoke-direct {v3, v14}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    .line 5369
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_4d

    .line 5372
    goto/16 :goto_71

    .line 5374
    :catchall_4d
    move-exception v0

    .line 5375
    move-object v1, v0

    .line 5376
    const-string/jumbo v3, "starting RuntimeService"

    .line 5379
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5382
    :goto_71
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5385
    if-nez v11, :cond_50

    .line 5387
    if-nez v25, :cond_50

    .line 5389
    const-string v1, "StartNetworkTimeUpdateService"

    .line 5391
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5394
    :try_start_69
    new-instance v1, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 5396
    invoke-direct {v1, v14}, Lcom/android/server/timedetector/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_4f

    .line 5399
    :try_start_6a
    const-string/jumbo v3, "network_time_update_service"

    .line 5402
    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_4e

    .line 5405
    goto/16 :goto_73

    .line 5407
    :catchall_4e
    move-exception v0

    .line 5408
    move-object v3, v0

    .line 5409
    goto/16 :goto_72

    .line 5411
    :catchall_4f
    move-exception v0

    .line 5412
    move-object v3, v0

    .line 5413
    const/4 v1, 0x0

    .line 5414
    :goto_72
    const-string/jumbo v5, "starting NetworkTimeUpdate service"

    .line 5417
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5420
    :goto_73
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5423
    move-object v5, v1

    .line 5424
    goto/16 :goto_74

    .line 5426
    :cond_50
    const/4 v5, 0x0

    .line 5427
    :goto_74
    const-string v1, "CertBlacklister"

    .line 5429
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5432
    :try_start_6b
    new-instance v1, Lcom/android/server/CertBlacklister;

    .line 5434
    invoke-direct {v1, v14}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_50

    .line 5437
    goto/16 :goto_75

    .line 5439
    :catchall_50
    move-exception v0

    .line 5440
    move-object v1, v0

    .line 5441
    const-string/jumbo v3, "starting CertBlacklister"

    .line 5444
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5447
    :goto_75
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5450
    const-string v1, "StartEmergencyAffordanceService"

    .line 5452
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5455
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5457
    const-class v3, Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 5459
    const-string/jumbo v8, "startBlobStoreManagerService"

    .line 5462
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5465
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5467
    const-class v3, Lcom/android/server/blob/BlobStoreManagerService;

    .line 5469
    const-string v8, "StartDreamManager"

    .line 5471
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5474
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5476
    const-class v3, Lcom/android/server/dreams/DreamManagerService;

    .line 5478
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5481
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5484
    const-string v1, "AddGraphicsStatsService"

    .line 5486
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5489
    const-string/jumbo v1, "graphicsstats"

    .line 5492
    new-instance v3, Landroid/graphics/GraphicsStatsService;

    .line 5494
    invoke-direct {v3, v14}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 5497
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5500
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5503
    sget-boolean v1, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    .line 5505
    if-eqz v1, :cond_51

    .line 5507
    const-string v1, "AddCoverageService"

    .line 5509
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5512
    const-string/jumbo v1, "coverage"

    .line 5515
    new-instance v3, Lcom/android/server/coverage/CoverageService;

    .line 5517
    invoke-direct {v3}, Lcom/android/server/coverage/CoverageService;-><init>()V

    .line 5520
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5523
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5526
    :cond_51
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5528
    const-string v3, "android.software.print"

    .line 5530
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5533
    move-result v1

    .line 5534
    if-eqz v1, :cond_52

    .line 5536
    const-string v1, "StartPrintManager"

    .line 5538
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5541
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5543
    const-class v3, Lcom/android/server/print/PrintManagerService;

    .line 5545
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5548
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5551
    :cond_52
    const-string v1, "StartAttestationVerificationService"

    .line 5553
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5556
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5558
    const-class v3, Lcom/android/server/security/AttestationVerificationManagerService;

    .line 5560
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5563
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5566
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5568
    const-string v3, "android.software.companion_device_setup"

    .line 5570
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5573
    move-result v1

    .line 5574
    if-eqz v1, :cond_53

    .line 5576
    const-string v1, "StartCompanionDeviceManager"

    .line 5578
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5581
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5583
    const-class v3, Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5585
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5588
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5591
    :cond_53
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5594
    move-result-object v1

    .line 5595
    const v3, 0x1110189

    .line 5598
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 5601
    move-result v1

    .line 5602
    if-eqz v1, :cond_54

    .line 5604
    const-string v1, "StartVirtualDeviceManager"

    .line 5606
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5609
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5611
    const-class v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 5613
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5616
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5619
    :cond_54
    const-string v1, "StartRestrictionManager"

    .line 5621
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5624
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5626
    const-class v3, Lcom/android/server/restrictions/RestrictionsManagerService;

    .line 5628
    const-string v8, "StartAODManagerService"

    .line 5630
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5633
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5635
    const-class v3, Lcom/android/server/aod/AODManagerService;

    .line 5637
    const-string v8, "KMTDService"

    .line 5639
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5642
    :try_start_6c
    new-instance v1, Ldalvik/system/PathClassLoader;

    .line 5644
    const-string v3, "/system/framework/knox_mtd.jar"

    .line 5646
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 5649
    move-result-object v8

    .line 5650
    invoke-direct {v1, v3, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 5653
    const-string/jumbo v3, "com.samsung.android.knox.mtd.KMTDService"

    .line 5656
    invoke-virtual {v1, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 5659
    move-result-object v1

    .line 5660
    const/4 v3, 0x1

    .line 5661
    new-array v8, v3, [Ljava/lang/Class;

    .line 5663
    const-class v3, Landroid/content/Context;

    .line 5665
    const/4 v12, 0x0

    .line 5666
    aput-object v3, v8, v12

    .line 5668
    invoke-virtual {v1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 5671
    move-result-object v1

    .line 5672
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 5675
    move-result-object v3

    .line 5676
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 5679
    move-result-object v1

    .line 5680
    check-cast v1, Landroid/os/IBinder;

    .line 5682
    const-string/jumbo v3, "knox.mtd"

    .line 5685
    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_8

    .line 5688
    goto/16 :goto_76

    .line 5690
    :catch_8
    const-string v1, "SystemServer"

    .line 5692
    const-string/jumbo v3, "knox_mtd.jar not found"

    .line 5695
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5698
    :goto_76
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5701
    const-string v1, "BattAuthManager"

    .line 5703
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5706
    :try_start_6d
    const-string v1, "SystemServer"

    .line 5708
    const-string v3, "BattAuthManager"

    .line 5710
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    new-instance v1, Lcom/samsung/android/battauthmanager/BattAuthManager;

    .line 5715
    invoke-direct {v1, v14}, Lcom/samsung/android/battauthmanager/BattAuthManager;-><init>(Landroid/content/Context;)V

    .line 5718
    const-class v3, Lcom/samsung/android/battauthmanager/BattAuthManager;

    .line 5720
    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_51

    .line 5723
    goto/16 :goto_77

    .line 5725
    :catchall_51
    move-exception v0

    .line 5726
    move-object v1, v0

    .line 5727
    const-string/jumbo v3, "starting BattAuthManager"

    .line 5730
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5733
    :goto_77
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5736
    const-string v1, "StartMediaSessionService"

    .line 5738
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5741
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5743
    const-class v3, Lcom/android/server/media/MediaSessionService;

    .line 5745
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5748
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5751
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5753
    const-string v3, "android.hardware.hdmi.cec"

    .line 5755
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5758
    move-result v1

    .line 5759
    if-eqz v1, :cond_55

    .line 5761
    const-string v1, "StartHdmiControlService"

    .line 5763
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5766
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5768
    const-class v3, Lcom/android/server/hdmi/HdmiControlService;

    .line 5770
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5773
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5776
    :cond_55
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5778
    const-string v3, "android.software.live_tv"

    .line 5780
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5783
    move-result v1

    .line 5784
    if-nez v1, :cond_56

    .line 5786
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5788
    const-string v3, "android.software.leanback"

    .line 5790
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5793
    move-result v1

    .line 5794
    if-eqz v1, :cond_57

    .line 5796
    :cond_56
    const-string v1, "StartTvInteractiveAppManager"

    .line 5798
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5801
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5803
    const-class v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 5805
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5808
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5811
    :cond_57
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5813
    const-string v3, "android.software.live_tv"

    .line 5815
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5818
    move-result v1

    .line 5819
    if-nez v1, :cond_58

    .line 5821
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5823
    const-string v3, "android.software.leanback"

    .line 5825
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5828
    move-result v1

    .line 5829
    if-eqz v1, :cond_59

    .line 5831
    :cond_58
    const-string v1, "StartTvInputManager"

    .line 5833
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5836
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5838
    const-class v3, Lcom/android/server/tv/TvInputManagerService;

    .line 5840
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5843
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5846
    :cond_59
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5848
    const-string v3, "android.hardware.tv.tuner"

    .line 5850
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5853
    move-result v1

    .line 5854
    if-eqz v1, :cond_5a

    .line 5856
    const-string v1, "StartTunerResourceManager"

    .line 5858
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5861
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5863
    const-class v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 5865
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5868
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5871
    :cond_5a
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5873
    const-string v3, "android.software.picture_in_picture"

    .line 5875
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5878
    move-result v1

    .line 5879
    if-eqz v1, :cond_5b

    .line 5881
    const-string v1, "StartMediaResourceMonitor"

    .line 5883
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5886
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5888
    const-class v3, Lcom/android/server/media/MediaResourceMonitorService;

    .line 5890
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5893
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5896
    :cond_5b
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5898
    const-string v3, "android.software.leanback"

    .line 5900
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5903
    move-result v1

    .line 5904
    if-eqz v1, :cond_5c

    .line 5906
    const-string v1, "StartTvRemoteService"

    .line 5908
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5911
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5913
    const-class v3, Lcom/android/server/tv/TvRemoteService;

    .line 5915
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5918
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5921
    :cond_5c
    const-string v1, "StartMediaRouterService"

    .line 5923
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5926
    :try_start_6e
    new-instance v1, Lcom/android/server/media/MediaRouterService;

    .line 5928
    invoke-direct {v1, v14}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_53

    .line 5931
    :try_start_6f
    const-string/jumbo v3, "media_router"

    .line 5934
    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_52

    .line 5937
    goto/16 :goto_79

    .line 5939
    :catchall_52
    move-exception v0

    .line 5940
    move-object v3, v0

    .line 5941
    goto/16 :goto_78

    .line 5943
    :catchall_53
    move-exception v0

    .line 5944
    move-object v3, v0

    .line 5945
    const/4 v1, 0x0

    .line 5946
    :goto_78
    const-string/jumbo v8, "starting MediaRouterService"

    .line 5949
    invoke-static {v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5952
    :goto_79
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5955
    const-string v3, "SemInputDeviceManagerService SystemReady"

    .line 5957
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5960
    :try_start_70
    const-string v3, "SystemServer"

    .line 5962
    const-string v8, "SemInputDeviceManagerService SystemReady loader"

    .line 5964
    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5967
    const-string/jumbo v3, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerLoader"

    .line 5970
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5973
    move-result-object v3

    .line 5974
    const-string/jumbo v8, "systemReady"
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_55

    .line 5977
    move-object/from16 v25, v1

    .line 5979
    const/4 v12, 0x0

    .line 5980
    :try_start_71
    new-array v1, v12, [Ljava/lang/Class;

    .line 5982
    const/4 v1, 0x0

    .line 5983
    invoke-virtual {v3, v8, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 5986
    move-result-object v8

    .line 5987
    invoke-virtual {v8, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_54

    .line 5990
    goto/16 :goto_7c

    .line 5992
    :catchall_54
    move-exception v0

    .line 5993
    :goto_7a
    move-object v1, v0

    .line 5994
    goto/16 :goto_7b

    .line 5996
    :catchall_55
    move-exception v0

    .line 5997
    move-object/from16 v25, v1

    .line 5999
    goto :goto_7a

    .line 6000
    :goto_7b
    const-string v3, "Failed To Call SemInputDeviceManagerService SystemReady loader "

    .line 6002
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6005
    :goto_7c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6008
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6010
    const-string v3, "android.hardware.biometrics.face"

    .line 6012
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6015
    move-result v1

    .line 6016
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6018
    const-string v8, "android.hardware.biometrics.iris"

    .line 6020
    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6023
    move-result v3

    .line 6024
    iget-object v8, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6026
    const-string v12, "android.hardware.fingerprint"

    .line 6028
    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6031
    move-result v8

    .line 6032
    if-eqz v1, :cond_5d

    .line 6034
    const-string v1, "StartFaceSensor"

    .line 6036
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6039
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6041
    const-class v12, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6043
    invoke-virtual {v1, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6046
    move-result-object v1

    .line 6047
    check-cast v1, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6049
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6052
    :cond_5d
    if-eqz v3, :cond_5e

    .line 6054
    const-string v1, "StartIrisSensor"

    .line 6056
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6059
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6061
    const-class v3, Lcom/android/server/biometrics/sensors/iris/IrisService;

    .line 6063
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6066
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6069
    :cond_5e
    if-eqz v8, :cond_5f

    .line 6071
    const-string v1, "StartFingerprintSensor"

    .line 6073
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6076
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6078
    const-class v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6080
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6083
    move-result-object v1

    .line 6084
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6086
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6089
    :cond_5f
    const-string v1, "StartBiometricService"

    .line 6091
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6094
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6096
    const-class v3, Lcom/android/server/biometrics/BiometricService;

    .line 6098
    const-string v8, "StartAuthService"

    .line 6100
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6103
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6105
    const-class v3, Lcom/android/server/biometrics/AuthService;

    .line 6107
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6110
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6113
    invoke-static {}, Landroid/adaptiveauth/Flags;->enableAdaptiveAuth()Z

    .line 6116
    move-result v1

    .line 6117
    if-eqz v1, :cond_60

    .line 6119
    const-string v1, "StartAdaptiveAuthService"

    .line 6121
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6124
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6126
    const-class v3, Lcom/android/server/adaptiveauth/AdaptiveAuthService;

    .line 6128
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6131
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6134
    :cond_60
    if-nez v11, :cond_61

    .line 6136
    const-string v1, "StartDynamicCodeLoggingService"

    .line 6138
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6141
    :try_start_72
    invoke-static {v14}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_56

    .line 6144
    goto/16 :goto_7d

    .line 6146
    :catchall_56
    move-exception v0

    .line 6147
    move-object v1, v0

    .line 6148
    const-string/jumbo v3, "starting DynamicCodeLoggingService"

    .line 6151
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6154
    :goto_7d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6157
    :cond_61
    if-nez v11, :cond_62

    .line 6159
    const-string v1, "StartPruneInstantAppsJobService"

    .line 6161
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6164
    :try_start_73
    invoke-static {v14}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_57

    .line 6167
    goto/16 :goto_7e

    .line 6169
    :catchall_57
    move-exception v0

    .line 6170
    move-object v1, v0

    .line 6171
    const-string v3, "StartPruneInstantAppsJobService"

    .line 6173
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6176
    :goto_7e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6179
    :cond_62
    const-string v1, "StartSmartThingsService"

    .line 6181
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6184
    new-instance v1, Lcom/android/server/smartthings/SmartThingsService;

    .line 6186
    invoke-direct {v1, v14}, Lcom/android/server/smartthings/SmartThingsService;-><init>(Landroid/content/Context;)V

    .line 6189
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6192
    const-string v1, "StartSelinuxAuditLogsService"

    .line 6194
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6197
    :try_start_74
    invoke-static {v14}, Lcom/android/server/selinux/SelinuxAuditLogsService;->schedule(Landroid/content/Context;)V
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_58

    .line 6200
    goto/16 :goto_7f

    .line 6202
    :catchall_58
    move-exception v0

    .line 6203
    move-object v1, v0

    .line 6204
    const-string/jumbo v3, "starting SelinuxAuditLogsService"

    .line 6207
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6210
    :goto_7f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6213
    const-string v1, "StartShortcutServiceLifecycle"

    .line 6215
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6218
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6220
    const-class v3, Lcom/android/server/pm/ShortcutService$Lifecycle;

    .line 6222
    const-string v8, "StartLauncherAppsService"

    .line 6224
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6227
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6229
    const-class v3, Lcom/android/server/pm/LauncherAppsService;

    .line 6231
    const-string v8, "StartCrossProfileAppsService"

    .line 6233
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6236
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6238
    const-class v3, Lcom/android/server/pm/CrossProfileAppsService;

    .line 6240
    const-string v8, "StartPeopleService"

    .line 6242
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6245
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6247
    const-class v3, Lcom/android/server/people/PeopleService;

    .line 6249
    const-string v8, "StartMediaMetricsManager"

    .line 6251
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6254
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6256
    const-class v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 6258
    const-string v8, "StartBackgroundInstallControlService"

    .line 6260
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6263
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6265
    const-class v3, Lcom/android/server/pm/BackgroundInstallControlService;

    .line 6267
    const-string v8, "StartChimeraService"

    .line 6269
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6272
    :try_start_75
    new-instance v1, Lcom/android/server/chimera/ChimeraManagerService;

    .line 6274
    iget-object v3, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 6276
    invoke-direct {v1, v14, v3}, Lcom/android/server/chimera/ChimeraManagerService;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 6279
    const-string v3, "ChimeraManagerService"

    .line 6281
    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6284
    const-string v1, "SystemServer"

    .line 6286
    const-string v3, "ChimeraManagerService loaded"

    .line 6288
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_9

    .line 6291
    goto/16 :goto_80

    .line 6293
    :catch_9
    move-exception v0

    .line 6294
    move-object v1, v0

    .line 6295
    const-string v3, "SystemServer"

    .line 6297
    const-string v8, "Failure adding ChimeraManagerService"

    .line 6299
    invoke-static {v3, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6302
    :goto_80
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6305
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6308
    move-result-object v1

    .line 6309
    const-string v3, "android.hardware.wifi"

    .line 6311
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6314
    move-result v1

    .line 6315
    if-eqz v1, :cond_63

    .line 6317
    const-string v1, "StartOemWifi"

    .line 6319
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6322
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6324
    const-string/jumbo v3, "com.samsung.android.server.wifi.SemWifiService"

    .line 6327
    const-string v8, "/system/framework/semwifi-service.jar"

    .line 6329
    invoke-virtual {v1, v3, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 6332
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6335
    :cond_63
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6338
    move-result-object v1

    .line 6339
    const-string v3, "android.hardware.wifi.direct"

    .line 6341
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6344
    move-result v1

    .line 6345
    if-eqz v1, :cond_64

    .line 6347
    const-string v1, "StartOemWifiP2p"

    .line 6349
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6352
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6354
    const-string/jumbo v3, "com.samsung.android.server.wifi.p2p.SemWifiP2pService"

    .line 6357
    const-string v8, "/system/framework/semwifi-service.jar"

    .line 6359
    invoke-virtual {v1, v3, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 6362
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6365
    :cond_64
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6368
    move-result-object v1

    .line 6369
    const-string v3, "android.hardware.wifi.aware"

    .line 6371
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6374
    move-result v1

    .line 6375
    if-eqz v1, :cond_65

    .line 6377
    const-string v1, "StartOemWifiAware"

    .line 6379
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6382
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6384
    const-string/jumbo v3, "com.samsung.android.server.wifi.aware.SemWifiAwareService"

    .line 6387
    const-string v8, "/system/framework/semwifi-service.jar"

    .line 6389
    invoke-virtual {v1, v3, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 6392
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6395
    :cond_65
    const-string v1, "StartStdpService"

    .line 6397
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6400
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6402
    const-string/jumbo v3, "com.samsung.android.server.wifi.stdp.StandardPlusService"

    .line 6405
    const-string v8, "/system/framework/semwifi-service.jar"

    .line 6407
    invoke-virtual {v1, v3, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 6410
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6413
    move-object/from16 v31, v5

    .line 6415
    move-object/from16 v12, v16

    .line 6417
    move-object/from16 v32, v25

    .line 6419
    move-object/from16 v3, v26

    .line 6421
    move-object/from16 v26, v6

    .line 6423
    move-object/from16 v25, v7

    .line 6425
    move-object/from16 v38, v28

    .line 6427
    move-object/from16 v28, v4

    .line 6429
    move-object/from16 v4, v38

    .line 6431
    :goto_81
    const-string v1, "StartMediaProjectionManager"

    .line 6433
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6436
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6438
    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 6440
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6443
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6446
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6448
    const-string v5, "att.devicehealth.support"

    .line 6450
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6453
    move-result v1

    .line 6454
    if-eqz v1, :cond_66

    .line 6456
    const-string v1, "SetupDeviceHealthSupport"

    .line 6458
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6461
    :try_start_76
    new-instance v1, Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 6463
    invoke-direct {v1, v14}, Lcom/samsung/iqi/IQIServiceBrokerExt;-><init>(Landroid/content/Context;)V

    .line 6466
    invoke-virtual {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->startIqi()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_a

    .line 6469
    goto/16 :goto_82

    .line 6471
    :catch_a
    move-exception v0

    .line 6472
    move-object v1, v0

    .line 6473
    const-string v5, "SystemServer"

    .line 6475
    const-string v6, "Unable to start com.samsung.iqi.IQIServiceBrokerExt"

    .line 6477
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6480
    :goto_82
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6483
    goto/16 :goto_83

    .line 6485
    :cond_66
    const-string v1, "SystemServer"

    .line 6487
    const-string v5, "System feature for device health not found"

    .line 6489
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6492
    :goto_83
    if-eqz v11, :cond_68

    .line 6494
    const-string v1, "StartWearPowerService"

    .line 6496
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6499
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6501
    const-string/jumbo v5, "com.android.clockwork.power.WearPowerService"

    .line 6504
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6507
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6510
    const-string v1, "StartHealthService"

    .line 6512
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6515
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6517
    const-string/jumbo v5, "com.android.clockwork.healthservices.HealthService"

    .line 6520
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6523
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6526
    const-string v1, "StartSystemStateDisplayService"

    .line 6528
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6531
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6533
    const-string/jumbo v5, "com.android.clockwork.systemstatedisplay.SystemStateDisplayService"

    .line 6536
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6539
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6542
    const-string v1, "StartWearConnectivityService"

    .line 6544
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6547
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6549
    const-string/jumbo v5, "com.android.clockwork.connectivity.WearConnectivityService"

    .line 6552
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6555
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6558
    const-string v1, "StartWearDisplayService"

    .line 6560
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6563
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6565
    const-string/jumbo v5, "com.android.clockwork.display.WearDisplayService"

    .line 6568
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6571
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6574
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 6576
    if-eqz v1, :cond_67

    .line 6578
    const-string v1, "StartWearDebugService"

    .line 6580
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6583
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6585
    const-string/jumbo v5, "com.android.clockwork.debug.WearDebugService"

    .line 6588
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6591
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6594
    :cond_67
    const-string v1, "StartWearTimeService"

    .line 6596
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6599
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6601
    const-string/jumbo v5, "com.android.clockwork.time.WearTimeService"

    .line 6604
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6607
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6610
    const-string v1, "StartWearSettingsService"

    .line 6612
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6615
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6617
    const-string/jumbo v5, "com.android.clockwork.settings.WearSettingsService"

    .line 6620
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6623
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6626
    const-string v1, "StartWearModeService"

    .line 6628
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6631
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6633
    const-string/jumbo v5, "com.android.clockwork.modes.ModeManagerService"

    .line 6636
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6639
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6642
    const-string/jumbo v1, "config.enable_wristorientation"

    .line 6645
    const/4 v5, 0x0

    .line 6646
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6649
    move-result v1

    .line 6650
    if-eqz v1, :cond_68

    .line 6652
    const-string v1, "StartWristOrientationService"

    .line 6654
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6657
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6659
    const-string/jumbo v5, "com.android.clockwork.wristorientation.WristOrientationService"

    .line 6662
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6665
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6668
    :cond_68
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6670
    const-string v5, "android.software.slices_disabled"

    .line 6672
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6675
    move-result v1

    .line 6676
    if-nez v1, :cond_69

    .line 6678
    const-string v1, "StartSliceManagerService"

    .line 6680
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6683
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6685
    const-class v5, Lcom/android/server/slice/SliceManagerService$Lifecycle;

    .line 6687
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6690
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6693
    :cond_69
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6696
    move-result-object v1

    .line 6697
    const-string v5, "android.hardware.type.embedded"

    .line 6699
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6702
    move-result v1

    .line 6703
    if-eqz v1, :cond_6a

    .line 6705
    const-string v1, "StartIoTSystemService"

    .line 6707
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6710
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6712
    const-string/jumbo v5, "com.android.things.server.IoTSystemService"

    .line 6715
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6718
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6721
    :cond_6a
    const-string v1, "StartSpenGestureManagerService"

    .line 6723
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6726
    :try_start_77
    const-string/jumbo v1, "spengestureservice"

    .line 6729
    new-instance v5, Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 6731
    invoke-direct {v5, v14, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 6734
    invoke-static {v1, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_59

    .line 6737
    goto/16 :goto_84

    .line 6739
    :catchall_59
    move-exception v0

    .line 6740
    move-object v1, v0

    .line 6741
    const-string/jumbo v5, "starting SpenGestureManagerService"

    .line 6744
    invoke-static {v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6747
    :goto_84
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6750
    const-string v1, "StartSamsungNotesService"

    .line 6752
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6755
    new-instance v1, Lcom/android/server/samsungnotes/SamsungNotesService;

    .line 6757
    invoke-direct {v1, v14}, Lcom/android/server/samsungnotes/SamsungNotesService;-><init>(Landroid/content/Context;)V

    .line 6760
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6763
    const-string v1, "StartStatsCompanion"

    .line 6765
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6768
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6770
    const-string/jumbo v5, "com.android.server.stats.StatsCompanion$Lifecycle"

    .line 6773
    const-string v6, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    .line 6775
    invoke-virtual {v1, v5, v6}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 6778
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6781
    const-string v1, "StartRebootReadinessManagerService"

    .line 6783
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6786
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6788
    const-string/jumbo v5, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    .line 6791
    const-string v6, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    .line 6793
    invoke-virtual {v1, v5, v6}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 6796
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6799
    const-string v1, "StartStatsPullAtomService"

    .line 6801
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6804
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6806
    const-class v5, Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 6808
    const-string v6, "StatsBootstrapAtomService"

    .line 6810
    invoke-static {v1, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6813
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6815
    const-class v5, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;

    .line 6817
    const-string v6, "StartIncidentCompanionService"

    .line 6819
    invoke-static {v1, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6822
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6824
    const-class v5, Lcom/android/server/incident/IncidentCompanionService;

    .line 6826
    const-string v6, "StarSdkSandboxManagerService"

    .line 6828
    invoke-static {v1, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6831
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6833
    const-string/jumbo v5, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    .line 6836
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6839
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6842
    const-string v1, "StartAdServicesManagerService"

    .line 6844
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6847
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6849
    const-string/jumbo v5, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    .line 6852
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6855
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6858
    invoke-static {}, Lcom/android/server/flags/Flags;->enableOdpFeatureGuard()Z

    .line 6861
    move-result v1

    .line 6862
    if-eqz v1, :cond_6b

    .line 6864
    const-string/jumbo v1, "ro.system_settings.service.odp_enabled"

    .line 6867
    const/4 v5, 0x1

    .line 6868
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6871
    move-result v1

    .line 6872
    if-eqz v1, :cond_6c

    .line 6874
    :cond_6b
    const-string v1, "StartOnDevicePersonalizationSystemService"

    .line 6876
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6879
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6881
    const-string/jumbo v5, "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

    .line 6884
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6887
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6890
    :cond_6c
    invoke-static {}, Landroid/server/Flags;->telemetryApisService()Z

    .line 6893
    move-result v1

    .line 6894
    if-eqz v1, :cond_6d

    .line 6896
    const-string v1, "StartProfilingCompanion"

    .line 6898
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6901
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6903
    const-string v5, "android.os.profiling.ProfilingService$Lifecycle"

    .line 6905
    const-string v6, "/apex/com.android.profiling/javalib/service-profiling.jar"

    .line 6907
    invoke-virtual {v1, v5, v6}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 6910
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6913
    :cond_6d
    if-eqz v9, :cond_6e

    .line 6915
    iget-object v1, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 6917
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 6920
    :cond_6e
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6922
    const-string v5, "android.hardware.telephony"

    .line 6924
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6927
    move-result v1

    .line 6928
    if-eqz v1, :cond_6f

    .line 6930
    const-string v1, "StartMmsService"

    .line 6932
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6935
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6937
    const-class v5, Lcom/android/server/MmsServiceBroker;

    .line 6939
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6942
    move-result-object v1

    .line 6943
    check-cast v1, Lcom/android/server/MmsServiceBroker;

    .line 6945
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6948
    move-object/from16 v33, v1

    .line 6950
    goto/16 :goto_85

    .line 6952
    :cond_6f
    const/16 v33, 0x0

    .line 6954
    :goto_85
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6956
    const-string v5, "android.software.autofill"

    .line 6958
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6961
    move-result v1

    .line 6962
    if-eqz v1, :cond_70

    .line 6964
    const-string v1, "StartAutoFillService"

    .line 6966
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6969
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6971
    const-class v5, Lcom/android/server/autofill/AutofillManagerService;

    .line 6973
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6976
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6979
    :cond_70
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6981
    const-string v5, "android.software.credentials"

    .line 6983
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6986
    move-result v1

    .line 6987
    if-eqz v1, :cond_73

    .line 6989
    const-string/jumbo v1, "credential_manager"

    .line 6992
    const-string/jumbo v5, "enable_credential_manager"

    .line 6995
    const/4 v6, 0x1

    .line 6996
    invoke-static {v1, v5, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 6999
    move-result v1

    .line 7000
    if-eqz v1, :cond_72

    .line 7002
    if-eqz v11, :cond_71

    .line 7004
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->wearCredentialManagerEnabled()Z

    .line 7007
    move-result v1

    .line 7008
    if-nez v1, :cond_71

    .line 7010
    const-string v1, "SystemServer"

    .line 7012
    const-string v5, "CredentialManager disabled on wear."

    .line 7014
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7017
    goto/16 :goto_86

    .line 7019
    :cond_71
    const-string v1, "StartCredentialManagerService"

    .line 7021
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7024
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7026
    const-class v5, Lcom/android/server/credentials/CredentialManagerService;

    .line 7028
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7031
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7034
    goto/16 :goto_86

    .line 7036
    :cond_72
    const-string v1, "SystemServer"

    .line 7038
    const-string v5, "CredentialManager disabled."

    .line 7040
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7043
    :cond_73
    :goto_86
    const v1, 0x1040336

    .line 7046
    invoke-static {v14, v1}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 7049
    move-result v1

    .line 7050
    if-eqz v1, :cond_74

    .line 7052
    const-string v1, "StartTranslationManagerService"

    .line 7054
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7057
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7059
    const-class v5, Lcom/android/server/translation/TranslationManagerService;

    .line 7061
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7064
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7067
    goto/16 :goto_87

    .line 7069
    :cond_74
    const-string v1, "SystemServer"

    .line 7071
    const-string v5, "TranslationService not defined by OEM"

    .line 7073
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7076
    :goto_87
    const-string v1, "StartClipboardService"

    .line 7078
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7081
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7083
    const-class v5, Lcom/android/server/clipboard/ClipboardService;

    .line 7085
    const-string v6, "AppServiceManager"

    .line 7087
    invoke-static {v1, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7090
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7092
    const-class v5, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    .line 7094
    const-string/jumbo v6, "startTracingServiceProxy"

    .line 7097
    invoke-static {v1, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7100
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7102
    const-class v5, Lcom/android/server/tracing/TracingServiceProxy;

    .line 7104
    const-string v6, "MakeLockSettingsServiceReady"

    .line 7106
    invoke-static {v1, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7109
    if-eqz v3, :cond_75

    .line 7111
    :try_start_78
    invoke-interface {v3}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_5a

    .line 7114
    goto/16 :goto_88

    .line 7116
    :catchall_5a
    move-exception v0

    .line 7117
    move-object v1, v0

    .line 7118
    const-string/jumbo v3, "making Lock Settings Service ready"

    .line 7121
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7124
    :cond_75
    :goto_88
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7127
    const-string v1, "StartPersonaSystemready"

    .line 7129
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7132
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 7135
    move-result-object v1

    .line 7136
    const-string v3, "2.0"

    .line 7138
    const-string/jumbo v5, "version"

    .line 7141
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7144
    move-result-object v1

    .line 7145
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7148
    move-result v1

    .line 7149
    if-eqz v1, :cond_76

    .line 7151
    :try_start_79
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_5b

    .line 7154
    goto/16 :goto_89

    .line 7156
    :catchall_5b
    move-exception v0

    .line 7157
    move-object v1, v0

    .line 7158
    const-string/jumbo v3, "making Persona Manager Service ready"

    .line 7161
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7164
    :goto_89
    :try_start_7a
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->systemReady()V
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_5c

    .line 7167
    goto/16 :goto_8a

    .line 7169
    :catchall_5c
    move-exception v0

    .line 7170
    move-object v1, v0

    .line 7171
    const-string/jumbo v3, "making KnoxMUMContainerPolicy Service ready"

    .line 7174
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7177
    :cond_76
    :goto_8a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7180
    const-string v1, "StartBootPhaseLockSettingsReady"

    .line 7182
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7185
    const-string v1, "SystemServer"

    .line 7187
    const-string v3, "!@Boot_EBS_D: PHASE_LOCK_SETTINGS_READY"

    .line 7189
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7192
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7194
    const/16 v3, 0x1e0

    .line 7196
    invoke-virtual {v1, v15, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 7199
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7202
    iget-object v1, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7204
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 7206
    iget-object v5, v2, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 7208
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7211
    move-result-object v6

    .line 7212
    const v7, 0x11101be

    .line 7215
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 7218
    move-result v6

    .line 7219
    invoke-static {v1, v3, v5, v6}, Lcom/android/server/HsumBootUserInitializer;->createInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)Lcom/android/server/HsumBootUserInitializer;

    .line 7222
    move-result-object v7

    .line 7223
    if-eqz v7, :cond_77

    .line 7225
    const-string v1, "HsumBootUserInitializer.init"

    .line 7227
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7230
    invoke-virtual {v7, v15}, Lcom/android/server/HsumBootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 7233
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7236
    :cond_77
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    .line 7239
    move-result v1

    .line 7240
    if-eqz v1, :cond_78

    .line 7242
    const-string v1, "CommunalProfileInitializer.init"

    .line 7244
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7247
    new-instance v1, Lcom/android/server/CommunalProfileInitializer;

    .line 7249
    invoke-direct {v1}, Lcom/android/server/CommunalProfileInitializer;-><init>()V

    .line 7252
    invoke-virtual {v1, v15}, Lcom/android/server/CommunalProfileInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 7255
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7258
    goto/16 :goto_8b

    .line 7260
    :cond_78
    const-string v1, "CommunalProfileInitializer.removeCommunalProfileIfPresent"

    .line 7262
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7265
    invoke-static {}, Lcom/android/server/CommunalProfileInitializer;->removeCommunalProfileIfPresent()V

    .line 7268
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7271
    :goto_8b
    const-string v1, "StartBootPhaseSystemServicesReady"

    .line 7273
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7276
    const-string v1, "SystemServer"

    .line 7278
    const-string v3, "!@Boot_EBS_D: PHASE_SYSTEM_SERVICES_READY"

    .line 7280
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7283
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7285
    const/16 v3, 0x1f4

    .line 7287
    invoke-virtual {v1, v15, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 7290
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7293
    const-string v1, "MakeWindowManagerServiceReady"

    .line 7295
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7298
    :try_start_7b
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_5d

    .line 7301
    goto/16 :goto_8c

    .line 7303
    :catchall_5d
    move-exception v0

    .line 7304
    move-object v1, v0

    .line 7305
    const-string/jumbo v3, "making Window Manager Service ready"

    .line 7308
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7311
    :goto_8c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7314
    const-string v1, "RegisterLogMteState"

    .line 7316
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7319
    :try_start_7c
    invoke-static {v14}, Lcom/android/server/LogMteState;->register(Landroid/content/Context;)V
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_5e

    .line 7322
    goto/16 :goto_8d

    .line 7324
    :catchall_5e
    move-exception v0

    .line 7325
    move-object v1, v0

    .line 7326
    const-string v3, "RegisterLogMteState"

    .line 7328
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7331
    :goto_8d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7334
    const-class v1, Lcom/android/server/SystemService;

    .line 7336
    monitor-enter v1

    .line 7337
    :try_start_7d
    sget-object v3, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 7339
    if-eqz v3, :cond_79

    .line 7341
    iget-object v5, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7343
    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 7346
    const/4 v3, 0x0

    .line 7347
    sput-object v3, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 7349
    goto/16 :goto_8e

    .line 7351
    :catchall_5f
    move-exception v0

    .line 7352
    move-object v2, v0

    .line 7353
    goto/16 :goto_9b

    .line 7355
    :cond_79
    :goto_8e
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_5f

    .line 7356
    if-eqz v9, :cond_7a

    .line 7358
    iget-object v1, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7360
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 7363
    iget-object v1, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7365
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->showRescuePartyDialog()V

    .line 7368
    :cond_7a
    const/4 v1, 0x0

    .line 7369
    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    .line 7372
    move-result-object v3

    .line 7373
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 7375
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7378
    invoke-virtual {v14}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 7381
    move-result-object v5

    .line 7382
    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 7385
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7388
    move-result-object v5

    .line 7389
    invoke-virtual {v5, v3, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 7392
    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7395
    move-result-object v1

    .line 7396
    invoke-virtual {v1}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    .line 7399
    move-result v3

    .line 7400
    if-eqz v3, :cond_7b

    .line 7402
    invoke-virtual {v1}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 7405
    :cond_7b
    const-string v1, "DualAppManagerService"

    .line 7407
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7410
    :try_start_7e
    iget-object v1, v2, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 7412
    if-eqz v1, :cond_7c

    .line 7414
    invoke-static {}, Lcom/android/server/DualAppManagerService;->systemReady()V
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_60

    .line 7417
    goto/16 :goto_91

    .line 7419
    :goto_8f
    move-object v1, v0

    .line 7420
    goto/16 :goto_90

    .line 7422
    :catchall_60
    move-exception v0

    .line 7423
    goto :goto_8f

    .line 7424
    :goto_90
    const-string/jumbo v3, "making DualAppManagerService ready"

    .line 7427
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7430
    :cond_7c
    :goto_91
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7433
    const-string v1, "StartPermissionPolicyService"

    .line 7435
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7438
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7440
    const-class v3, Lcom/android/server/policy/PermissionPolicyService;

    .line 7442
    const-string v5, "MakePackageManagerServiceReady"

    .line 7444
    invoke-static {v1, v3, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7447
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 7449
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 7452
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7455
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 7458
    move-result v1

    .line 7459
    if-eqz v1, :cond_7d

    .line 7461
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 7463
    invoke-static {v1}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 7466
    move-result-object v1

    .line 7467
    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    .line 7470
    :cond_7d
    const-string v1, "MakeASKSManagerServiceReady"

    .line 7472
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7475
    iget-object v1, v2, Lcom/android/server/SystemServer;->mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

    .line 7477
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService;->systemReady()V

    .line 7480
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7483
    const-string v1, "MakeDisplayManagerServiceReady"

    .line 7485
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7488
    :try_start_7f
    iget-object v1, v2, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 7490
    invoke-virtual {v1, v9}, Lcom/android/server/display/DisplayManagerService;->systemReady(Z)V
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_61

    .line 7493
    goto/16 :goto_92

    .line 7495
    :catchall_61
    move-exception v0

    .line 7496
    move-object v1, v0

    .line 7497
    const-string/jumbo v3, "making Display Manager Service ready"

    .line 7500
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7503
    :goto_92
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7506
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7508
    invoke-virtual {v1, v9}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 7511
    const-string v1, "StartDeviceSpecificServices"

    .line 7513
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7516
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 7518
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7521
    move-result-object v1

    .line 7522
    const v3, 0x10700ca

    .line 7525
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 7528
    move-result-object v1

    .line 7529
    array-length v3, v1

    .line 7530
    const/4 v5, 0x0

    .line 7531
    :goto_93
    if-ge v5, v3, :cond_7e

    .line 7533
    aget-object v6, v1, v5

    .line 7535
    new-instance v8, Ljava/lang/StringBuilder;

    .line 7537
    move-object/from16 v16, v1

    .line 7539
    const-string v1, "StartDeviceSpecificServices "

    .line 7541
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7544
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7547
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7550
    move-result-object v1

    .line 7551
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7554
    :try_start_80
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7556
    invoke-virtual {v1, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_62

    .line 7559
    move/from16 v20, v3

    .line 7561
    goto/16 :goto_94

    .line 7563
    :catchall_62
    move-exception v0

    .line 7564
    move-object v1, v0

    .line 7565
    new-instance v8, Ljava/lang/StringBuilder;

    .line 7567
    move/from16 v20, v3

    .line 7569
    const-string/jumbo v3, "starting "

    .line 7572
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7575
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7578
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7581
    move-result-object v3

    .line 7582
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7585
    :goto_94
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7588
    const/4 v1, 0x1

    .line 7589
    add-int/2addr v5, v1

    .line 7590
    move-object/from16 v1, v16

    .line 7592
    move/from16 v3, v20

    .line 7594
    goto :goto_93

    .line 7595
    :cond_7e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7598
    const-string v1, "GameManagerService"

    .line 7600
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7603
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7605
    const-class v3, Lcom/android/server/app/GameManagerService$Lifecycle;

    .line 7607
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7610
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7613
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7616
    move-result-object v1

    .line 7617
    const-string v3, "android.hardware.uwb"

    .line 7619
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7622
    move-result v1

    .line 7623
    if-eqz v1, :cond_7f

    .line 7625
    const-string v1, "UwbService"

    .line 7627
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7630
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7632
    const-string/jumbo v3, "com.android.server.uwb.UwbService"

    .line 7635
    const-string v5, "/apex/com.android.uwb/javalib/service-uwb.jar"

    .line 7637
    invoke-virtual {v1, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7640
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7643
    :try_start_81
    const-string v1, "SamsungUwbService"

    .line 7645
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7648
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7650
    const-string/jumbo v3, "com.samsung.android.server.uwb.SamsungUwbService"

    .line 7653
    const-string v5, "/system/framework/semuwb-service.jar"

    .line 7655
    invoke-virtual {v1, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7658
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_63

    .line 7661
    goto/16 :goto_95

    .line 7663
    :catchall_63
    move-exception v0

    .line 7664
    move-object v1, v0

    .line 7665
    const-string v3, "Failed to find class SamsungUwbService"

    .line 7667
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7670
    :cond_7f
    :goto_95
    const-string v1, "StartBootPhaseDeviceSpecificServicesReady"

    .line 7672
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7675
    const-string v1, "SystemServer"

    .line 7677
    const-string v3, "!@Boot_EBS_D: PHASE_DEVICE_SPECIFIC_SERVICES_READY"

    .line 7679
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7682
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7684
    const/16 v3, 0x208

    .line 7686
    invoke-virtual {v1, v15, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 7689
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7692
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    .line 7695
    move-result v1

    .line 7696
    if-eqz v1, :cond_80

    .line 7698
    const-string v1, "MdfService"

    .line 7700
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7703
    :try_start_82
    const-string v1, "MdfService"

    .line 7705
    new-instance v3, Lcom/android/server/MdfService;

    .line 7707
    invoke-direct {v3, v14}, Lcom/android/server/MdfService;-><init>(Landroid/content/Context;)V

    .line 7710
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_64

    .line 7713
    goto/16 :goto_96

    .line 7715
    :catchall_64
    move-exception v0

    .line 7716
    move-object v1, v0

    .line 7717
    const-string v3, "SystemServer"

    .line 7719
    const-string v5, "Failed to add MdfService"

    .line 7721
    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7724
    :goto_96
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7727
    goto/16 :goto_97

    .line 7729
    :cond_80
    const-string v1, "SystemServer"

    .line 7731
    const-string v3, "MdfService is ready"

    .line 7733
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7736
    :goto_97
    const-string v1, "StartSafetyCenterService"

    .line 7738
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7741
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7743
    const-string/jumbo v3, "com.android.safetycenter.SafetyCenterService"

    .line 7746
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7749
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7752
    const-string v1, "AppSearchModule"

    .line 7754
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7757
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7759
    const-string/jumbo v3, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    .line 7762
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7765
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7768
    const-string/jumbo v1, "ro.config.isolated_compilation_enabled"

    .line 7771
    const/4 v3, 0x0

    .line 7772
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 7775
    move-result v1

    .line 7776
    if-eqz v1, :cond_81

    .line 7778
    const-string v1, "IsolatedCompilationService"

    .line 7780
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7783
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7785
    const-string/jumbo v3, "com.android.server.compos.IsolatedCompilationService"

    .line 7788
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7791
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7794
    :cond_81
    const-string v1, "StartMediaCommunicationService"

    .line 7796
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7799
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7801
    const-string/jumbo v3, "com.android.server.media.MediaCommunicationService"

    .line 7804
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7807
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7810
    const-string v1, "AppCompatOverridesService"

    .line 7812
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7815
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7817
    const-class v3, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;

    .line 7819
    const-string v5, "HealthConnectManagerService"

    .line 7821
    invoke-static {v1, v3, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7824
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7826
    const-string/jumbo v3, "com.android.server.healthconnect.HealthConnectManagerService"

    .line 7829
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7832
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7835
    const-string v1, "SemContinuityService"

    .line 7837
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7840
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7842
    const-class v3, Lcom/samsung/android/server/continuity/SemContinuityService;

    .line 7844
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7847
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7850
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7852
    const-string v3, "android.software.device_lock"

    .line 7854
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7857
    move-result v1

    .line 7858
    if-eqz v1, :cond_82

    .line 7860
    const-string v1, "DeviceLockService"

    .line 7862
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7865
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7867
    const-string/jumbo v3, "com.android.server.devicelock.DeviceLockService"

    .line 7870
    const-string v5, "/apex/com.android.devicelock/javalib/service-devicelock.jar"

    .line 7872
    invoke-virtual {v1, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7875
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7878
    :cond_82
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    .line 7881
    move-result v1

    .line 7882
    if-nez v1, :cond_83

    .line 7884
    invoke-static {}, Landroid/view/flags/Flags;->sensitiveContentAppProtection()Z

    .line 7887
    move-result v1

    .line 7888
    if-eqz v1, :cond_84

    .line 7890
    :cond_83
    const-string v1, "StartSensitiveContentProtectionManager"

    .line 7892
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7895
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7897
    const-class v3, Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 7899
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7902
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7905
    :cond_84
    const-string v1, "SystemServer"

    .line 7907
    const-string/jumbo v3, "start samsung apex services"

    .line 7910
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7913
    const-string v1, "SemPrivilegeManagerService"

    .line 7915
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7918
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7920
    const-string/jumbo v3, "com.android.server.privilege.SemPrivilegeManagerService"

    .line 7923
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7926
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7929
    const-string v1, "SystemServer"

    .line 7931
    const-string/jumbo v3, "finish samsung apex services"

    .line 7934
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7937
    const-string/jumbo v1, "sys.config.hardcoder.enable"

    .line 7940
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7943
    move-result-object v1

    .line 7944
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 7947
    move-result v1

    .line 7948
    if-eqz v1, :cond_85

    .line 7950
    :try_start_83
    const-string v1, "HardcoderService"

    .line 7952
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7955
    new-instance v1, Ldalvik/system/PathClassLoader;

    .line 7957
    const-string v3, "/system/framework/HardcoderService.jar"

    .line 7959
    const-class v5, Lcom/android/server/SystemServer;

    .line 7961
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7964
    move-result-object v5

    .line 7965
    invoke-direct {v1, v3, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 7968
    const-string/jumbo v3, "com.samsung.android.hardcoder.HardcoderService"

    .line 7971
    invoke-virtual {v1, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 7974
    move-result-object v1

    .line 7975
    const/4 v3, 0x2

    .line 7976
    new-array v3, v3, [Ljava/lang/Class;

    .line 7978
    const-class v5, Landroid/content/Context;

    .line 7980
    const/4 v6, 0x0

    .line 7981
    aput-object v5, v3, v6

    .line 7983
    const-class v5, Landroid/app/IActivityManager;

    .line 7985
    const/4 v6, 0x1

    .line 7986
    aput-object v5, v3, v6

    .line 7988
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 7991
    move-result-object v1

    .line 7992
    iget-object v3, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7994
    filled-new-array {v14, v3}, [Ljava/lang/Object;

    .line 7997
    move-result-object v3

    .line 7998
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 8001
    move-result-object v3

    .line 8002
    check-cast v3, Landroid/os/IBinder;

    .line 8004
    iget-object v5, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8006
    filled-new-array {v14, v5}, [Ljava/lang/Object;

    .line 8009
    move-result-object v5

    .line 8010
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 8013
    const-string v1, "HardcoderService"

    .line 8015
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 8018
    const-string v1, "SystemServer"

    .line 8020
    const-string v3, "HardcoderService loaded"

    .line 8022
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_65

    .line 8025
    :goto_98
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8028
    goto/16 :goto_99

    .line 8030
    :catchall_65
    move-exception v0

    .line 8031
    move-object v1, v0

    .line 8032
    :try_start_84
    const-string v3, "SystemServer"

    .line 8034
    const-string v5, "Failed to add HardcoderService."

    .line 8036
    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_66

    .line 8039
    goto :goto_98

    .line 8040
    :catchall_66
    move-exception v0

    .line 8041
    move-object v1, v0

    .line 8042
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8045
    throw v1

    .line 8046
    :cond_85
    :goto_99
    const-string/jumbo v1, "connectivity"

    .line 8049
    invoke-virtual {v14, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8052
    move-result-object v1

    .line 8053
    move-object v8, v1

    .line 8054
    check-cast v8, Landroid/net/ConnectivityManager;

    .line 8056
    iget-object v1, v2, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 8058
    move-object/from16 v16, v1

    .line 8060
    iget-object v6, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8062
    new-instance v5, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    .line 8064
    move-object v1, v5

    .line 8065
    move-object/from16 v2, p0

    .line 8067
    move-object/from16 v3, p1

    .line 8069
    move-object/from16 v34, v5

    .line 8071
    move v5, v11

    .line 8072
    move-object v11, v6

    .line 8073
    move-object v6, v14

    .line 8074
    move-object/from16 v17, v7

    .line 8076
    move v7, v9

    .line 8077
    move-object v9, v12

    .line 8078
    move-object v12, v10

    .line 8079
    move-object/from16 v10, v29

    .line 8081
    move-object/from16 v35, v11

    .line 8083
    move-object/from16 v11, v27

    .line 8085
    move-object/from16 v36, v12

    .line 8087
    move-object/from16 v12, v25

    .line 8089
    move-object/from16 v19, v13

    .line 8091
    move-object/from16 v20, v22

    .line 8093
    move-object/from16 v13, v26

    .line 8095
    move-object/from16 v37, v14

    .line 8097
    move-object/from16 v14, v17

    .line 8099
    move-object/from16 v15, v30

    .line 8101
    move-object/from16 v17, v28

    .line 8103
    move-object/from16 v18, v31

    .line 8105
    move-object/from16 v21, v32

    .line 8107
    move-object/from16 v22, v33

    .line 8109
    invoke-direct/range {v1 .. v23}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/net/UrspService;Lcom/android/server/HsumBootUserInitializer;Landroid/os/IBinder;Lcom/samsung/accessory/manager/SAccessoryManager;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Z)V

    .line 8112
    move-object/from16 v2, p1

    .line 8114
    move-object/from16 v3, v34

    .line 8116
    move-object/from16 v1, v35

    .line 8118
    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/ActivityManagerService;->systemReady(Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 8121
    const-string v1, "LockSettingsThirdPartyAppsStarted"

    .line 8123
    invoke-virtual {v2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8126
    const-class v1, Lcom/android/internal/widget/LockSettingsInternal;

    .line 8128
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8131
    move-result-object v1

    .line 8132
    check-cast v1, Lcom/android/internal/widget/LockSettingsInternal;

    .line 8134
    if-eqz v1, :cond_86

    .line 8136
    invoke-virtual {v1}, Lcom/android/internal/widget/LockSettingsInternal;->onThirdPartyAppsStarted()V

    .line 8139
    :cond_86
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8142
    const-string v1, "StartSystemUI"

    .line 8144
    invoke-virtual {v2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8147
    const-string v1, "SystemServer"

    .line 8149
    const-string v3, "!@Boot_EBS_F: StartSystemUI"

    .line 8151
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8154
    move-object/from16 v3, v36

    .line 8156
    move-object/from16 v1, v37

    .line 8158
    :try_start_85
    invoke-static {v1, v3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_67

    .line 8161
    goto/16 :goto_9a

    .line 8163
    :catchall_67
    move-exception v0

    .line 8164
    move-object v1, v0

    .line 8165
    const-string/jumbo v3, "starting System UI"

    .line 8168
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8171
    :goto_9a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8174
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8177
    return-void

    .line 8178
    :goto_9b
    :try_start_86
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_5f

    .line 8179
    throw v2

    .line 8180
    :catchall_68
    move-exception v0

    .line 8181
    move-object v2, v15

    .line 8182
    move-object v1, v0

    .line 8183
    :goto_9c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8186
    throw v1

    .line 8187
    :catchall_69
    move-exception v0

    .line 8188
    move-object v2, v15

    .line 8189
    move-object v1, v0

    .line 8190
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8193
    throw v1

    .line 8194
    :catchall_6a
    move-exception v0

    .line 8195
    move-object v1, v0

    .line 8196
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 8199
    move-result-object v2

    .line 8200
    const-string/jumbo v3, "dexopt"

    .line 8203
    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 8206
    throw v1

    .line 8207
    :catchall_6b
    move-exception v0

    .line 8208
    move-object v2, v15

    .line 8209
    move-object v1, v0

    .line 8210
    :goto_9d
    :try_start_87
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8213
    throw v1

    .line 8214
    :catchall_6c
    move-exception v0

    .line 8215
    move-object v2, v15

    .line 8216
    move-object v1, v0

    .line 8217
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8220
    throw v1
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_2

    .line 8221
    :goto_9e
    const-string v2, "System"

    .line 8223
    const-string v3, "******************************************"

    .line 8225
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8228
    const-string v2, "System"

    .line 8230
    const-string v3, "************ Failure starting core service"

    .line 8232
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8235
    throw v1
.end method

.method public final startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getRotationResolverPackageName()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p1

    .line 13
    xor-int/lit8 p1, p1, 0x1

    .line 15
    if-nez p1, :cond_0

    .line 17
    const-string p0, "SystemServer"

    .line 19
    const-string p1, "RotationResolverService is not configured on this device"

    .line 21
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void

    .line 25
    :cond_0
    const-string p1, "StartRotationResolverService"

    .line 27
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 32
    const-class p1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 37
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 40
    return-void
.end method

.method public final startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1
    const v0, 0x1040334

    .line 4
    invoke-static {p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 10
    const-string p0, "SystemServer"

    .line 12
    const-string p1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void

    .line 18
    :cond_0
    const-string p1, "StartSystemCaptionsManagerService"

    .line 20
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 23
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 25
    const-class p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 30
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 33
    return-void
.end method

.method public final startTextToSpeechManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1
    const-string v0, "StartTextToSpeechManagerService"

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8
    const-class v0, Lcom/android/server/texttospeech/TextToSpeechManagerService;

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 13
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 16
    return-void
.end method

.method public final startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "startWearableSensingService"

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 9
    const-class v0, Lcom/android/server/wearable/WearableSensingManagerService;

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 14
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 17
    return-void
.end method
