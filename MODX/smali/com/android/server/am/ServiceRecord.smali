.class public final Lcom/android/server/am/ServiceRecord;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ComponentName$WithComponentName;


# instance fields
.field public allowlistManager:Z

.field public final ams:Lcom/android/server/am/ActivityManagerService;

.field public app:Lcom/android/server/am/ProcessRecord;

.field public appInfo:Landroid/content/pm/ApplicationInfo;

.field public final bindings:Landroid/util/ArrayMap;

.field public callStart:Z

.field public final connections:Landroid/util/ArrayMap;

.field public crashCount:I

.field public final createRealTime:J

.field public createdFromFg:Z

.field public final definingPackageName:Ljava/lang/String;

.field public final definingUid:I

.field public delayCount:I

.field public delayService:Z

.field public delayServiceStop:Z

.field public delayTimeout:J

.field public delayed:Z

.field public delayedStop:Z

.field public final deliveredStarts:Ljava/util/ArrayList;

.field public destroyTime:J

.field public destroying:Z

.field public executeFg:Z

.field public executeNesting:I

.field public executingStart:J

.field public final exported:Z

.field public fgDisplayTime:J

.field public fgRequired:Z

.field public fgWaiting:Z

.field public foregroundId:I

.field public foregroundNoti:Landroid/app/Notification;

.field public foregroundServiceType:I

.field public final inSharedIsolatedProcess:Z

.field public final instanceName:Landroid/content/ComponentName;

.field public final intent:Landroid/content/Intent$FilterComparison;

.field public isForeground:Z

.field public isNotAppComponentUsage:Z

.field public final isSdkSandbox:Z

.field public isolationHostProc:Lcom/android/server/am/ProcessRecord;

.field public lastActivity:J

.field public lastStartId:I

.field public lastTopAlmostPerceptibleBindRequestUptimeMs:J

.field public mAdjSeq:I

.field public mAllowStartForegroundAtEntering:I

.field public mAllowStart_byBindings:I

.field public mAllowStart_inBindService:I

.field public mAllowStart_noBinding:I

.field public mAllowUiJobScheduling:Z

.field public mAllowWhileInUsePermissionInFgsAtEntering:Z

.field public mAllowWiu_byBindings:I

.field public mAllowWiu_inBindService:I

.field public mAllowWiu_noBinding:I

.field public mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

.field public final mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

.field public mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

.field public mCleanUpAllowBgActivityStartsByStartCallback:Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;

.field public mEarliestRestartTime:J

.field public mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

.field public mFgsEnterTime:J

.field public mFgsExitTime:J

.field public mFgsHasNotificationPermission:Z

.field public mFgsNotificationDeferred:Z

.field public mFgsNotificationShown:Z

.field public mFgsNotificationWasDeferred:Z

.field public mInfoAllowStartForeground:Ljava/lang/String;

.field public mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

.field public mIsAllowedBgActivityStartsByBinding:Z

.field public mIsFgsDelegate:Z

.field public mKeepWarming:Z

.field public mLoggedInfoAllowStartForeground:Z

.field public mProcessStateOnRequest:I

.field public mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field public mRecentCallingPackage:Ljava/lang/String;

.field public mRecentCallingUid:I

.field public mRestartSchedulingTime:J

.field public mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

.field public mStartForegroundCount:I

.field public final name:Landroid/content/ComponentName;

.field public nextRestartTime:J

.field public final packageName:Ljava/lang/String;

.field public final pendingBinds:Ljava/util/ArrayList;

.field public pendingConnectionGroup:I

.field public pendingConnectionImportance:I

.field public final pendingRemoveConnections:Ljava/util/ArrayList;

.field public final pendingStarts:Ljava/util/ArrayList;

.field public final permission:Ljava/lang/String;

.field public final processName:Ljava/lang/String;

.field public restartCount:I

.field public restartDelay:J

.field public restartTime:J

.field public restartTracker:Lcom/android/internal/app/procstats/ServiceState;

.field public final restarter:Ljava/lang/Runnable;

.field public final sdkSandboxClientAppPackage:Ljava/lang/String;

.field public final sdkSandboxClientAppUid:I

.field public serviceDelayed:Z

.field public final serviceInfo:Landroid/content/pm/ServiceInfo;

.field public final shortInstanceName:Ljava/lang/String;

.field public startCommandResult:I

.field public startRequested:Z

.field public startingBgTimeout:J

.field public stopIfKilled:Z

.field public stringName:Ljava/lang/String;

.field public tracker:Lcom/android/internal/app/procstats/ServiceState;

.field public final userId:I


# direct methods
.method public static -$$Nest$msignalForegroundServiceNotification(ILcom/android/server/am/ServiceRecord;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 9
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 17
    :goto_0
    if-ltz v1, :cond_0

    .line 19
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 21
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;

    .line 29
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 31
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 33
    invoke-interface {v2, p2, v3, p0, p3}, Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;->onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V

    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    return-void

    .line 46
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLcom/android/server/am/ActiveServices$ServiceRestarter;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p7

    .line 4
    move/from16 v3, p11

    .line 6
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 9
    new-instance v4, Landroid/util/ArrayMap;

    .line 11
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 16
    new-instance v4, Landroid/util/ArrayMap;

    .line 18
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    iput-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 23
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v4, v0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    .line 30
    sget-object v4, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 32
    iput-object v4, v0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 34
    const/4 v4, -0x1

    .line 35
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 37
    const-wide/16 v5, 0x0

    .line 39
    iput-wide v5, v0, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    .line 41
    iput-wide v5, v0, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    .line 43
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 45
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    .line 47
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 49
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 51
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 53
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->pendingBinds:Ljava/util/ArrayList;

    .line 62
    new-instance v5, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    .line 71
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 76
    new-instance v5, Ljava/util/ArrayList;

    .line 78
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->pendingRemoveConnections:Ljava/util/ArrayList;

    .line 83
    iput-object v1, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 85
    move-object v5, p2

    .line 86
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 88
    move-object v5, p3

    .line 89
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 91
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 94
    move-result-object v5

    .line 95
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 97
    move-object v5, p4

    .line 98
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    .line 100
    move v5, p5

    .line 101
    iput v5, v0, Lcom/android/server/am/ServiceRecord;->definingUid:I

    .line 103
    move-object v5, p6

    .line 104
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 106
    iput-object v2, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 108
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 110
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 112
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 114
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 116
    if-eq v3, v4, :cond_0

    .line 118
    const/4 v4, 0x1

    .line 119
    goto :goto_0

    .line 120
    :cond_0
    const/4 v4, 0x0

    .line 121
    :goto_0
    iput-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    .line 123
    iput v3, v0, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppUid:I

    .line 125
    move-object/from16 v3, p12

    .line 127
    iput-object v3, v0, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 129
    move/from16 v3, p13

    .line 131
    iput-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->inSharedIsolatedProcess:Z

    .line 133
    move-object/from16 v3, p10

    .line 135
    iput-object v3, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 137
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 139
    iput-object v3, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 141
    iget-boolean v2, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 143
    iput-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->exported:Z

    .line 145
    move-object/from16 v2, p9

    .line 147
    iput-object v2, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 152
    move-result-wide v2

    .line 153
    iput-wide v2, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 158
    move-result-wide v2

    .line 159
    iput-wide v2, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 161
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 163
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 165
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 168
    move-result v2

    .line 169
    iput v2, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 171
    move v2, p8

    .line 172
    iput-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 174
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    .line 177
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 179
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 181
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 183
    new-instance v3, Lcom/android/server/am/ServiceRecord$1;

    .line 185
    invoke-direct {v3, p0, v5, v2}, Lcom/android/server/am/ServiceRecord$1;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V

    .line 188
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method public static dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    const-string p2, "="

    .line 9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_6

    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 14
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    const-string v3, "#"

    .line 19
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 25
    const-string v3, " id="

    .line 27
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    .line 32
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 35
    const-wide/16 v3, 0x0

    .line 37
    cmp-long v3, p3, v3

    .line 39
    if-eqz v3, :cond_0

    .line 41
    const-string v3, " dur="

    .line 43
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    iget-wide v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 48
    invoke-static {v3, v4, p3, p4, p0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 51
    :cond_0
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 53
    if-eqz v3, :cond_1

    .line 55
    const-string v3, " dc="

    .line 57
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 62
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 65
    :cond_1
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 67
    if-eqz v3, :cond_2

    .line 69
    const-string v3, " dxc="

    .line 71
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 76
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 79
    :cond_2
    const-string v3, ""

    .line 81
    const-string v4, "  intent="

    .line 83
    invoke-static {p0, v3, p1, v4}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    .line 88
    if-eqz v3, :cond_3

    .line 90
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    const-string/jumbo v3, "null"

    .line 101
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    :goto_1
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 106
    if-eqz v3, :cond_4

    .line 108
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    const-string v4, "  neededGrants="

    .line 113
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 119
    :cond_4
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 121
    if-eqz v2, :cond_5

    .line 123
    invoke-virtual {v2, p0, p1}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 126
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 128
    goto :goto_0

    .line 129
    :cond_6
    return-void
.end method


# virtual methods
.method public final addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 26
    if-eqz p1, :cond_1

    .line 28
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 30
    iget-object v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 32
    iget v1, p2, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 43
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 45
    iget-object v0, p2, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 47
    iget-wide v2, p2, Lcom/android/server/am/ConnectionRecord;->flags:J

    .line 49
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    .line 52
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 54
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 56
    const/16 p1, 0x200

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 61
    :cond_1
    return-void
.end method

.method public final canStopIfKilled(Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 11
    if-eqz v0, :cond_2

    .line 13
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 15
    if-nez v0, :cond_1

    .line 17
    if-eqz p1, :cond_2

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1
.end method

.method public final cancelNotification()V
    .locals 8

    .line 1
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 3
    iget v5, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 7
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 9
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 15
    :goto_0
    move v4, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 21
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 23
    new-instance v7, Lcom/android/server/am/ServiceRecord$3;

    .line 25
    move-object v0, v7

    .line 26
    move-object v1, p0

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$3;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;III)V

    .line 30
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    const-string/jumbo v3, "intent={"

    .line 13
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 18
    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    .line 21
    move-result-object v4

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-virtual {v4, v5, v6, v5, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    const/16 v4, 0x7d

    .line 33
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 36
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v7, "packageName="

    .line 42
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 47
    const-string/jumbo v8, "processName="

    .line 50
    invoke-static {v1, v7, v2, v8}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 55
    const-string/jumbo v8, "targetSdkVersion="

    .line 58
    invoke-static {v1, v7, v2, v8}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 65
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 68
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 70
    if-eqz v7, :cond_0

    .line 72
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v7, "permission="

    .line 78
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 89
    move-result-wide v7

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 93
    move-result-wide v9

    .line 94
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 96
    if-eqz v11, :cond_2

    .line 98
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    const-string v11, "baseDir="

    .line 103
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 108
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 110
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 115
    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 117
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 119
    invoke-static {v12, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    move-result v11

    .line 123
    if-nez v11, :cond_1

    .line 125
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v11, "resDir="

    .line 131
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 136
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 138
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v11, "dataDir="

    .line 147
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 152
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 154
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    const-string v11, "app="

    .line 162
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 167
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 170
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 172
    if-eqz v11, :cond_3

    .line 174
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v11, "isolationHostProc="

    .line 180
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 185
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 188
    :cond_3
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    .line 190
    if-eqz v11, :cond_4

    .line 192
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    const-string v11, "allowlistManager="

    .line 197
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 200
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    .line 202
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 205
    :cond_4
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    .line 207
    if-eqz v11, :cond_5

    .line 209
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v11, "mIsAllowedBgActivityStartsByBinding="

    .line 215
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    .line 220
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 223
    :cond_5
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 225
    invoke-virtual {v11}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    .line 228
    move-result v11

    .line 229
    if-eqz v11, :cond_6

    .line 231
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    const-string/jumbo v11, "mIsAllowedBgActivityStartsByStart="

    .line 237
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 242
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 245
    :cond_6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v11, "useNewWiuLogic_forCapabilities()="

    .line 251
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/android/server/am/Flags;->newFgsRestrictionLogic()Z

    .line 257
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 259
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 261
    const-wide/32 v12, 0x12b256f1

    .line 264
    invoke-static {v12, v13, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 267
    move-result v11

    .line 268
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 271
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v11, "useNewWiuLogic_forStart()="

    .line 277
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/android/server/am/Flags;->newFgsRestrictionLogic()Z

    .line 283
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 285
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 287
    const-wide/32 v14, 0x128caab5

    .line 290
    invoke-static {v14, v15, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 293
    move-result v11

    .line 294
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 297
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    const-string/jumbo v11, "useNewBfslLogic()="

    .line 303
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/android/server/am/Flags;->newFgsRestrictionLogic()Z

    .line 309
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 311
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 313
    const-wide/32 v14, 0x128cab2d

    .line 316
    invoke-static {v14, v15, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 319
    move-result v11

    .line 320
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 323
    const-string/jumbo v11, "mAllowWiu_noBinding"

    .line 326
    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 328
    invoke-static {v14, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string/jumbo v11, "mAllowWiu_inBindService"

    .line 334
    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 336
    invoke-static {v14, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v11, "mAllowWiu_byBindings"

    .line 342
    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 344
    invoke-static {v14, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 349
    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 351
    const/4 v15, -0x1

    .line 352
    if-eq v11, v15, :cond_7

    .line 354
    goto :goto_0

    .line 355
    :cond_7
    move v11, v14

    .line 356
    :goto_0
    const-string/jumbo v14, "getFgsAllowWiu_legacy"

    .line 359
    invoke-static {v11, v1, v2, v14}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 364
    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 366
    if-eq v11, v15, :cond_8

    .line 368
    goto :goto_1

    .line 369
    :cond_8
    move v11, v14

    .line 370
    :goto_1
    const-string/jumbo v14, "getFgsAllowWiu_new"

    .line 373
    invoke-static {v11, v1, v2, v14}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v11, "getFgsAllowWiu_forStart"

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    .line 382
    move-result v14

    .line 383
    invoke-static {v14, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/android/server/am/Flags;->newFgsRestrictionLogic()Z

    .line 389
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 391
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 393
    invoke-static {v12, v13, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 396
    move-result v11

    .line 397
    if-eqz v11, :cond_a

    .line 399
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 401
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 403
    if-eq v11, v15, :cond_9

    .line 405
    goto :goto_2

    .line 406
    :cond_9
    move v11, v12

    .line 407
    goto :goto_2

    .line 408
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    .line 411
    move-result v11

    .line 412
    :goto_2
    const-string/jumbo v12, "getFgsAllowWiu_forCapabilities"

    .line 415
    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    const-string v11, "allowUiJobScheduling="

    .line 423
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    .line 428
    const-string/jumbo v12, "recentCallingPackage="

    .line 431
    invoke-static {v1, v2, v12, v11}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 434
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 436
    const-string/jumbo v12, "recentCallingUid="

    .line 439
    invoke-static {v1, v11, v2, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 444
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 447
    const-string/jumbo v11, "mAllowStart_noBinding"

    .line 450
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 452
    invoke-static {v12, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string/jumbo v11, "mAllowStart_inBindService"

    .line 458
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 460
    invoke-static {v12, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string/jumbo v11, "mAllowStart_byBindings"

    .line 466
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 468
    invoke-static {v12, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 473
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 475
    iget v13, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 477
    if-eq v11, v15, :cond_b

    .line 479
    goto :goto_3

    .line 480
    :cond_b
    if-eq v12, v15, :cond_c

    .line 482
    move v11, v12

    .line 483
    goto :goto_3

    .line 484
    :cond_c
    move v11, v13

    .line 485
    :goto_3
    const-string/jumbo v12, "getFgsAllowStart_legacy"

    .line 488
    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 493
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 495
    if-eq v11, v15, :cond_d

    .line 497
    goto :goto_4

    .line 498
    :cond_d
    move v11, v12

    .line 499
    :goto_4
    const-string/jumbo v12, "getFgsAllowStart_new"

    .line 502
    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string/jumbo v11, "getFgsAllowStart"

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    .line 511
    move-result v12

    .line 512
    invoke-static {v12, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    const-string/jumbo v11, "startForegroundCount="

    .line 521
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 526
    const-string/jumbo v12, "infoAllowStartForeground="

    .line 529
    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    .line 534
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    sget-boolean v11, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 539
    sget-object v11, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 541
    iget-boolean v11, v11, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 543
    if-eqz v11, :cond_e

    .line 545
    sget-boolean v11, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 547
    if-eqz v11, :cond_e

    .line 549
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 552
    const-string/jumbo v11, "serviceDelayed="

    .line 555
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 558
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->serviceDelayed:Z

    .line 560
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 563
    :cond_e
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 565
    if-eqz v11, :cond_f

    .line 567
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    const-string/jumbo v11, "delayed="

    .line 573
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 578
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 581
    :cond_f
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 583
    if-nez v11, :cond_10

    .line 585
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 587
    if-eqz v11, :cond_11

    .line 589
    :cond_10
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    const-string/jumbo v11, "isForeground="

    .line 595
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 600
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 603
    const-string v11, " foregroundId="

    .line 605
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 608
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 610
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 613
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 615
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 618
    move-result-object v11

    .line 619
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 622
    move-result-object v11

    .line 623
    const-string v12, " types=0x%08X"

    .line 625
    invoke-virtual {v1, v12, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 628
    const-string v11, " foregroundNoti="

    .line 630
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 635
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    .line 641
    move-result v11

    .line 642
    if-eqz v11, :cond_11

    .line 644
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 646
    if-eqz v11, :cond_11

    .line 648
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    const-string/jumbo v11, "isShortFgs=true"

    .line 654
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    const-string v11, " startId="

    .line 659
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 664
    iget v11, v11, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartId:I

    .line 666
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 669
    const-string v11, " startForegroundCount="

    .line 671
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 676
    iget v11, v11, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    .line 678
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 681
    const-string v11, " startTime="

    .line 683
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 688
    iget-wide v11, v11, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    .line 690
    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 693
    const-string v11, " timeout="

    .line 695
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 700
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    .line 703
    move-result-wide v11

    .line 704
    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 707
    const-string v11, " demoteTime="

    .line 709
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 712
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 714
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    .line 717
    move-result-wide v11

    .line 718
    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 721
    const-string v11, " anrTime="

    .line 723
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 728
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    .line 731
    move-result-wide v11

    .line 732
    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 735
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 738
    :cond_11
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    .line 740
    if-eqz v11, :cond_12

    .line 742
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    const-string/jumbo v11, "isFgsDelegate="

    .line 748
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    .line 753
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 756
    :cond_12
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    const-string/jumbo v11, "createTime="

    .line 762
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    iget-wide v11, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 767
    invoke-static {v11, v12, v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 770
    const-string v9, " startingBgTimeout="

    .line 772
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    iget-wide v9, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 777
    invoke-static {v9, v10, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 780
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 783
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 786
    const-string/jumbo v9, "lastActivity="

    .line 789
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    iget-wide v9, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 794
    invoke-static {v9, v10, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 797
    const-string v9, " restartTime="

    .line 799
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    iget-wide v9, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 804
    invoke-static {v9, v10, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 807
    const-string v9, " createdFromFg="

    .line 809
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 814
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Z)V

    .line 817
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 819
    if-eqz v9, :cond_13

    .line 821
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    const-string v9, " pendingConnectionGroup="

    .line 826
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 829
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 831
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 834
    const-string v9, " Importance="

    .line 836
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    .line 841
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 844
    :cond_13
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 846
    if-nez v9, :cond_14

    .line 848
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 850
    if-nez v9, :cond_14

    .line 852
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 854
    if-eqz v9, :cond_15

    .line 856
    :cond_14
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    const-string/jumbo v9, "startRequested="

    .line 862
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 865
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 867
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 870
    const-string v9, " delayedStop="

    .line 872
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 877
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 880
    const-string v9, " stopIfKilled="

    .line 882
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 887
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 890
    const-string v9, " callStart="

    .line 892
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 895
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 897
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 900
    const-string v9, " lastStartId="

    .line 902
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 907
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 910
    const-string v9, " startCommandResult="

    .line 912
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 915
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->startCommandResult:I

    .line 917
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 920
    :cond_15
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 922
    if-eqz v9, :cond_16

    .line 924
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    const-string/jumbo v9, "executeNesting="

    .line 930
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 935
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 938
    const-string v9, " executeFg="

    .line 940
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 943
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 945
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 948
    const-string v9, " executingStart="

    .line 950
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    iget-wide v9, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 955
    invoke-static {v9, v10, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 958
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 961
    :cond_16
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 963
    const-wide/16 v10, 0x0

    .line 965
    if-nez v9, :cond_17

    .line 967
    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 969
    cmp-long v9, v12, v10

    .line 971
    if-eqz v9, :cond_18

    .line 973
    :cond_17
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 976
    const-string/jumbo v9, "destroying="

    .line 979
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 982
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 984
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 987
    const-string v9, " destroyTime="

    .line 989
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 994
    invoke-static {v12, v13, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 997
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1000
    :cond_18
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 1002
    if-nez v9, :cond_19

    .line 1004
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1006
    if-nez v9, :cond_19

    .line 1008
    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1010
    iget-wide v14, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    .line 1012
    sub-long v14, v12, v14

    .line 1014
    cmp-long v9, v14, v10

    .line 1016
    if-nez v9, :cond_19

    .line 1018
    cmp-long v9, v12, v10

    .line 1020
    if-eqz v9, :cond_1a

    .line 1022
    :cond_19
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    const-string/jumbo v9, "restartCount="

    .line 1028
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1031
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1033
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 1036
    const-string v9, " restartDelay="

    .line 1038
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1041
    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1043
    iget-wide v14, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    .line 1045
    sub-long/2addr v12, v14

    .line 1046
    invoke-static {v12, v13, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1049
    const-string v9, " nextRestartTime="

    .line 1051
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1056
    invoke-static {v12, v13, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1059
    const-string v9, " crashCount="

    .line 1061
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1064
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 1066
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 1069
    :cond_1a
    iget-object v9, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 1071
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1074
    move-result v9

    .line 1075
    if-lez v9, :cond_1b

    .line 1077
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    const-string v9, "Delivered Starts:"

    .line 1082
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    iget-object v9, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 1087
    invoke-static {v1, v2, v9, v7, v8}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 1090
    :cond_1b
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 1092
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1095
    move-result v7

    .line 1096
    if-lez v7, :cond_1c

    .line 1098
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    const-string v7, "Pending Starts:"

    .line 1103
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 1108
    invoke-static {v1, v2, v7, v10, v11}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 1111
    :cond_1c
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 1113
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 1116
    move-result v7

    .line 1117
    const-string v8, "  "

    .line 1119
    if-lez v7, :cond_20

    .line 1121
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1124
    const-string v7, "Bindings:"

    .line 1126
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    move v7, v5

    .line 1130
    :goto_5
    iget-object v9, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 1132
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 1135
    move-result v9

    .line 1136
    if-ge v7, v9, :cond_20

    .line 1138
    iget-object v9, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 1140
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1143
    move-result-object v9

    .line 1144
    check-cast v9, Lcom/android/server/am/IntentBindRecord;

    .line 1146
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1149
    const-string v12, "* IntentBindRecord{"

    .line 1151
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 1157
    move-result v12

    .line 1158
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1161
    move-result-object v12

    .line 1162
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v9}, Lcom/android/server/am/IntentBindRecord;->collectFlags()J

    .line 1168
    move-result-wide v12

    .line 1169
    const-wide/16 v14, 0x1

    .line 1171
    and-long/2addr v12, v14

    .line 1172
    cmp-long v12, v12, v10

    .line 1174
    if-eqz v12, :cond_1d

    .line 1176
    const-string v12, " CREATE"

    .line 1178
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1181
    :cond_1d
    const-string/jumbo v12, "}:"

    .line 1184
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1187
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1189
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1192
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1201
    move-result-object v12

    .line 1202
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1208
    iget-object v13, v9, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 1210
    invoke-virtual {v13}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    .line 1213
    move-result-object v13

    .line 1214
    invoke-virtual {v13, v5, v6, v5, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    .line 1217
    move-result-object v13

    .line 1218
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 1224
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1227
    const-string v13, "binder="

    .line 1229
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1232
    iget-object v13, v9, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 1234
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1237
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1240
    const-string/jumbo v13, "requested="

    .line 1243
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1246
    iget-boolean v13, v9, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 1248
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Z)V

    .line 1251
    const-string v13, " received="

    .line 1253
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1256
    iget-boolean v13, v9, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 1258
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Z)V

    .line 1261
    const-string v13, " hasBound="

    .line 1263
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget-boolean v13, v9, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 1268
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Z)V

    .line 1271
    const-string v13, " doRebind="

    .line 1273
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1276
    iget-boolean v13, v9, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 1278
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Z)V

    .line 1281
    move v13, v5

    .line 1282
    :goto_6
    iget-object v14, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    .line 1284
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    .line 1287
    move-result v14

    .line 1288
    if-ge v13, v14, :cond_1f

    .line 1290
    iget-object v14, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    .line 1292
    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1295
    move-result-object v14

    .line 1296
    check-cast v14, Lcom/android/server/am/AppBindRecord;

    .line 1298
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1301
    const-string v15, "* Client AppBindRecord{"

    .line 1303
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    invoke-static {v14}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 1309
    move-result v15

    .line 1310
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1313
    move-result-object v15

    .line 1314
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    const/16 v15, 0x20

    .line 1319
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1322
    iget-object v15, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1324
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1327
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 1330
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1332
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1335
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1344
    move-result-object v15

    .line 1345
    iget-object v4, v14, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    .line 1347
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 1350
    move-result v4

    .line 1351
    if-lez v4, :cond_1e

    .line 1353
    const-string v5, "Per-process Connections:"

    .line 1355
    invoke-static {v1, v15, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const/4 v5, 0x0

    .line 1359
    :goto_7
    if-ge v5, v4, :cond_1e

    .line 1361
    iget-object v10, v14, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    .line 1363
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1366
    move-result-object v10

    .line 1367
    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    .line 1369
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1371
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1374
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1383
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1386
    move-result-object v10

    .line 1387
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    add-int/2addr v5, v6

    .line 1391
    const-wide/16 v10, 0x0

    .line 1393
    goto :goto_7

    .line 1394
    :cond_1e
    add-int/2addr v13, v6

    .line 1395
    const/16 v4, 0x7d

    .line 1397
    const/4 v5, 0x0

    .line 1398
    const-wide/16 v10, 0x0

    .line 1400
    goto :goto_6

    .line 1401
    :cond_1f
    add-int/2addr v7, v6

    .line 1402
    const/16 v4, 0x7d

    .line 1404
    const/4 v5, 0x0

    .line 1405
    const-wide/16 v10, 0x0

    .line 1407
    goto/16 :goto_5

    .line 1409
    :cond_20
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 1411
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 1414
    move-result v3

    .line 1415
    if-lez v3, :cond_22

    .line 1417
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1420
    const-string v3, "All Connections:"

    .line 1422
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    const/4 v3, 0x0

    .line 1426
    :goto_8
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 1428
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 1431
    move-result v4

    .line 1432
    if-ge v3, v4, :cond_22

    .line 1434
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 1436
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1439
    move-result-object v4

    .line 1440
    check-cast v4, Ljava/util/ArrayList;

    .line 1442
    const/4 v5, 0x0

    .line 1443
    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1446
    move-result v7

    .line 1447
    if-ge v5, v7, :cond_21

    .line 1449
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1458
    move-result-object v7

    .line 1459
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1462
    add-int/2addr v5, v6

    .line 1463
    goto :goto_9

    .line 1464
    :cond_21
    add-int/2addr v3, v6

    .line 1465
    goto :goto_8

    .line 1466
    :cond_22
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v9, p1

    .line 5
    const-wide v1, 0x20b00000002L

    .line 10
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 13
    move-result-wide v10

    .line 14
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 16
    const-wide v12, 0x10900000001L

    .line 21
    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 24
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 26
    if-eqz v1, :cond_0

    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    const-wide v7, 0x10800000002L

    .line 36
    invoke-virtual {v9, v7, v8, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 39
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 41
    const-wide v5, 0x10500000003L

    .line 46
    if-eqz v1, :cond_1

    .line 48
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 50
    invoke-virtual {v9, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 53
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 55
    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    .line 60
    move-result-object v1

    .line 61
    const/16 v16, 0x0

    .line 63
    const/16 v17, 0x1

    .line 65
    const-wide v3, 0x10b00000004L

    .line 70
    const/16 v18, 0x0

    .line 72
    const/16 v19, 0x0

    .line 74
    move-object/from16 v2, p1

    .line 76
    move-wide v14, v5

    .line 77
    move/from16 v5, v16

    .line 79
    move/from16 v6, v17

    .line 81
    move/from16 v7, v18

    .line 83
    move/from16 v8, v19

    .line 85
    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move-wide v14, v5

    .line 90
    :goto_1
    const-wide v1, 0x10900000005L

    .line 95
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 97
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 100
    const-wide v1, 0x10900000006L

    .line 105
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 107
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 110
    const-wide v1, 0x10900000007L

    .line 115
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 117
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 123
    move-result-wide v16

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 127
    move-result-wide v6

    .line 128
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 130
    const-wide v4, 0x10500000004L

    .line 135
    const-wide v2, 0x10900000002L

    .line 140
    if-eqz v1, :cond_4

    .line 142
    const-wide v14, 0x10b00000008L

    .line 147
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 150
    move-result-wide v14

    .line 151
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 153
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 155
    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 158
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 160
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 162
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 164
    invoke-static {v8, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_3

    .line 170
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 172
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 174
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 177
    :cond_3
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 179
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 181
    const-wide v2, 0x10900000003L

    .line 186
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 189
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 191
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 193
    invoke-virtual {v9, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 196
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 199
    :cond_4
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 201
    const/4 v2, -0x1

    .line 202
    if-eqz v1, :cond_5

    .line 204
    const-wide v14, 0x10b00000009L

    .line 209
    invoke-virtual {v1, v9, v14, v15, v2}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 212
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 214
    if-eqz v1, :cond_6

    .line 216
    const-wide v14, 0x10b0000000aL

    .line 221
    invoke-virtual {v1, v9, v14, v15, v2}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 224
    :cond_6
    const-wide v1, 0x1080000000bL

    .line 229
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    .line 231
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 234
    const-wide v1, 0x1080000000cL

    .line 239
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 241
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 244
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 246
    const-wide v14, 0x10500000001L

    .line 251
    if-nez v1, :cond_7

    .line 253
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 255
    if-eqz v1, :cond_8

    .line 257
    :cond_7
    const-wide v1, 0x10b0000000dL

    .line 262
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 265
    move-result-wide v1

    .line 266
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 268
    invoke-virtual {v9, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 271
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 273
    const-wide v4, 0x10b00000002L

    .line 278
    invoke-virtual {v3, v9, v4, v5}, Landroid/app/Notification;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 281
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 283
    const-wide v4, 0x10500000003L

    .line 288
    invoke-virtual {v9, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 291
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 294
    :cond_8
    const-wide v2, 0x10b0000000eL

    .line 299
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 301
    move-object/from16 v1, p1

    .line 303
    const-wide v12, 0x10900000002L

    .line 308
    const-wide v12, 0x10500000004L

    .line 313
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 316
    const-wide v2, 0x10b0000000fL

    .line 321
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 323
    move-wide/from16 v6, v16

    .line 325
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 328
    const-wide v2, 0x10b00000010L

    .line 333
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 335
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 338
    const-wide v2, 0x10b00000011L

    .line 343
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 345
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 348
    const-wide v1, 0x10800000012L

    .line 353
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 355
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 358
    const-wide v1, 0x1080000001bL

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    .line 366
    move-result v3

    .line 367
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 370
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 372
    const-wide v6, 0x10800000003L

    .line 377
    if-nez v1, :cond_a

    .line 379
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 381
    if-nez v1, :cond_a

    .line 383
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 385
    if-eqz v1, :cond_9

    .line 387
    goto :goto_2

    .line 388
    :cond_9
    const-wide v4, 0x10800000002L

    .line 393
    goto :goto_3

    .line 394
    :cond_a
    :goto_2
    const-wide v1, 0x10b00000013L

    .line 399
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 402
    move-result-wide v1

    .line 403
    const-wide v3, 0x10800000001L

    .line 408
    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 410
    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 413
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 415
    const-wide v4, 0x10800000002L

    .line 420
    invoke-virtual {v9, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 423
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 425
    invoke-virtual {v9, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 428
    const-wide v6, 0x10500000005L

    .line 433
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 435
    invoke-virtual {v9, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 438
    const-wide v6, 0x10500000006L

    .line 443
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->startCommandResult:I

    .line 445
    invoke-virtual {v9, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 448
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 451
    :goto_3
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 453
    if-eqz v1, :cond_b

    .line 455
    const-wide v1, 0x10b00000014L

    .line 460
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 463
    move-result-wide v6

    .line 464
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 466
    invoke-virtual {v9, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 469
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 471
    invoke-virtual {v9, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 474
    const-wide v2, 0x10b00000003L

    .line 479
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 481
    move-object/from16 v1, p1

    .line 483
    move-wide v12, v6

    .line 484
    move-wide/from16 v6, v16

    .line 486
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 489
    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 492
    :cond_b
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 494
    const-wide/16 v12, 0x0

    .line 496
    if-nez v1, :cond_c

    .line 498
    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 500
    cmp-long v1, v1, v12

    .line 502
    if-eqz v1, :cond_d

    .line 504
    :cond_c
    const-wide v2, 0x10b00000015L

    .line 509
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 511
    move-object/from16 v1, p1

    .line 513
    move-wide/from16 v6, v16

    .line 515
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 518
    :cond_d
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 520
    if-nez v1, :cond_e

    .line 522
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 524
    if-nez v1, :cond_e

    .line 526
    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 528
    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    .line 530
    sub-long v3, v1, v3

    .line 532
    cmp-long v3, v3, v12

    .line 534
    if-nez v3, :cond_e

    .line 536
    cmp-long v1, v1, v12

    .line 538
    if-eqz v1, :cond_f

    .line 540
    :cond_e
    const-wide v1, 0x10b00000016L

    .line 545
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 548
    move-result-wide v6

    .line 549
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 551
    invoke-virtual {v9, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 554
    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 556
    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    .line 558
    sub-long v4, v1, v3

    .line 560
    const-wide v2, 0x10b00000002L

    .line 565
    move-object/from16 v1, p1

    .line 567
    move-wide v14, v6

    .line 568
    move-wide/from16 v6, v16

    .line 570
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 573
    const-wide v2, 0x10b00000003L

    .line 578
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 580
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 583
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 585
    const-wide v2, 0x10500000004L

    .line 590
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 593
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 596
    :cond_f
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 598
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 601
    move-result v1

    .line 602
    if-lez v1, :cond_10

    .line 604
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 606
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 609
    move-result v7

    .line 610
    const/4 v8, 0x0

    .line 611
    :goto_4
    if-ge v8, v7, :cond_10

    .line 613
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 615
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 618
    move-result-object v1

    .line 619
    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 621
    const-wide v3, 0x20b00000017L

    .line 626
    move-object/from16 v2, p1

    .line 628
    move-wide/from16 v5, v16

    .line 630
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 633
    add-int/lit8 v8, v8, 0x1

    .line 635
    goto :goto_4

    .line 636
    :cond_10
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 638
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 641
    move-result v1

    .line 642
    if-lez v1, :cond_11

    .line 644
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 646
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 649
    move-result v7

    .line 650
    const/4 v8, 0x0

    .line 651
    :goto_5
    if-ge v8, v7, :cond_11

    .line 653
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 655
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 658
    move-result-object v1

    .line 659
    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 661
    const-wide v3, 0x20b00000018L

    .line 666
    move-object/from16 v2, p1

    .line 668
    move-wide/from16 v5, v16

    .line 670
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 673
    add-int/lit8 v8, v8, 0x1

    .line 675
    goto :goto_5

    .line 676
    :cond_11
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 678
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 681
    move-result v1

    .line 682
    if-lez v1, :cond_18

    .line 684
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 686
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 689
    move-result v14

    .line 690
    const/4 v15, 0x0

    .line 691
    :goto_6
    if-ge v15, v14, :cond_18

    .line 693
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 695
    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 698
    move-result-object v1

    .line 699
    move-object v8, v1

    .line 700
    check-cast v8, Lcom/android/server/am/IntentBindRecord;

    .line 702
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    const-wide v1, 0x20b00000019L

    .line 710
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 713
    move-result-wide v6

    .line 714
    iget-object v1, v8, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 716
    if-eqz v1, :cond_12

    .line 718
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    .line 721
    move-result-object v1

    .line 722
    const/16 v16, 0x0

    .line 724
    const/16 v17, 0x0

    .line 726
    const-wide v3, 0x10b00000001L

    .line 731
    const/4 v5, 0x0

    .line 732
    const/16 v21, 0x1

    .line 734
    move-object/from16 v2, p1

    .line 736
    move-wide/from16 v24, v6

    .line 738
    move/from16 v6, v21

    .line 740
    move/from16 v7, v16

    .line 742
    move-object v12, v8

    .line 743
    move/from16 v8, v17

    .line 745
    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 748
    goto :goto_7

    .line 749
    :cond_12
    move-wide/from16 v24, v6

    .line 751
    move-object v12, v8

    .line 752
    :goto_7
    iget-object v1, v12, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 754
    if-eqz v1, :cond_13

    .line 756
    invoke-interface {v1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 759
    move-result-object v1

    .line 760
    const-wide v2, 0x10900000002L

    .line 765
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 768
    :cond_13
    invoke-virtual {v12}, Lcom/android/server/am/IntentBindRecord;->collectFlags()J

    .line 771
    move-result-wide v1

    .line 772
    const-wide/16 v3, 0x1

    .line 774
    and-long/2addr v1, v3

    .line 775
    const-wide/16 v3, 0x0

    .line 777
    cmp-long v1, v1, v3

    .line 779
    if-eqz v1, :cond_14

    .line 781
    const-wide v1, 0x10800000003L

    .line 786
    const/4 v5, 0x1

    .line 787
    goto :goto_8

    .line 788
    :cond_14
    const-wide v1, 0x10800000003L

    .line 793
    const/4 v5, 0x0

    .line 794
    :goto_8
    invoke-virtual {v9, v1, v2, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 797
    const-wide v5, 0x10800000004L

    .line 802
    iget-boolean v7, v12, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 804
    invoke-virtual {v9, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 807
    const-wide v5, 0x10800000005L

    .line 812
    iget-boolean v7, v12, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 814
    invoke-virtual {v9, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 817
    const-wide v5, 0x10800000006L

    .line 822
    iget-boolean v7, v12, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 824
    invoke-virtual {v9, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 827
    const-wide v5, 0x10800000007L

    .line 832
    iget-boolean v7, v12, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 834
    invoke-virtual {v9, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 837
    iget-object v5, v12, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    .line 839
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 842
    move-result v5

    .line 843
    const/4 v6, 0x0

    .line 844
    :goto_9
    if-ge v6, v5, :cond_17

    .line 846
    iget-object v7, v12, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    .line 848
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 851
    move-result-object v7

    .line 852
    check-cast v7, Lcom/android/server/am/AppBindRecord;

    .line 854
    if-eqz v7, :cond_16

    .line 856
    const-wide v1, 0x20b00000008L

    .line 861
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 864
    move-result-wide v1

    .line 865
    iget-object v8, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 867
    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 869
    const-wide v3, 0x10900000001L

    .line 874
    invoke-virtual {v9, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 877
    iget-object v3, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 879
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 881
    move v8, v5

    .line 882
    const-wide v4, 0x10900000002L

    .line 887
    invoke-virtual {v9, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 890
    iget-object v3, v7, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    .line 892
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 895
    move-result v3

    .line 896
    const/4 v13, 0x0

    .line 897
    :goto_a
    if-ge v13, v3, :cond_15

    .line 899
    iget-object v4, v7, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    .line 901
    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 904
    move-result-object v4

    .line 905
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 907
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 910
    move-result v4

    .line 911
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 914
    move-result-object v4

    .line 915
    move-object v5, v7

    .line 916
    move/from16 v16, v8

    .line 918
    const-wide v7, 0x20900000003L

    .line 923
    invoke-virtual {v9, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 926
    add-int/lit8 v13, v13, 0x1

    .line 928
    move-object v7, v5

    .line 929
    move/from16 v8, v16

    .line 931
    const-wide v4, 0x10900000002L

    .line 936
    goto :goto_a

    .line 937
    :cond_15
    move/from16 v16, v8

    .line 939
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 942
    goto :goto_b

    .line 943
    :cond_16
    move/from16 v16, v5

    .line 945
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 947
    move/from16 v5, v16

    .line 949
    const-wide v1, 0x10800000003L

    .line 954
    const-wide/16 v3, 0x0

    .line 956
    goto :goto_9

    .line 957
    :cond_17
    move-wide/from16 v1, v24

    .line 959
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 962
    add-int/lit8 v15, v15, 0x1

    .line 964
    const-wide/16 v12, 0x0

    .line 966
    goto/16 :goto_6

    .line 968
    :cond_18
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 970
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 973
    move-result v1

    .line 974
    if-lez v1, :cond_1e

    .line 976
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 978
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 981
    move-result v8

    .line 982
    const/4 v12, 0x0

    .line 983
    :goto_c
    if-ge v12, v8, :cond_1e

    .line 985
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 987
    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 990
    move-result-object v1

    .line 991
    move-object v13, v1

    .line 992
    check-cast v13, Ljava/util/ArrayList;

    .line 994
    const/4 v14, 0x0

    .line 995
    :goto_d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 998
    move-result v1

    .line 999
    if-ge v14, v1, :cond_1d

    .line 1001
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1004
    move-result-object v1

    .line 1005
    move-object v15, v1

    .line 1006
    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    .line 1008
    iget-object v7, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 1010
    if-nez v7, :cond_19

    .line 1012
    move/from16 v17, v8

    .line 1014
    const-wide v22, 0x10900000001L

    .line 1019
    goto :goto_e

    .line 1020
    :cond_19
    const-wide v1, 0x20b0000001aL

    .line 1025
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1028
    move-result-wide v4

    .line 1029
    invoke-static {v15}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 1032
    move-result v1

    .line 1033
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1036
    move-result-object v1

    .line 1037
    const-wide v2, 0x10900000001L

    .line 1042
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1045
    iget-object v1, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1047
    if-eqz v1, :cond_1a

    .line 1049
    const-wide v2, 0x10500000002L

    .line 1054
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1056
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1059
    :cond_1a
    sget-object v6, Lcom/android/server/am/ConnectionRecord;->BIND_ORIG_ENUMS:[I

    .line 1061
    sget-object v16, Lcom/android/server/am/ConnectionRecord;->BIND_PROTO_ENUMS:[I

    .line 1063
    const-wide v2, 0x20e00000003L

    .line 1068
    move-wide/from16 v20, v4

    .line 1070
    iget-wide v4, v15, Lcom/android/server/am/ConnectionRecord;->flags:J

    .line 1072
    move-object/from16 v1, p1

    .line 1074
    const-wide v22, 0x10900000001L

    .line 1079
    move-wide/from16 v26, v20

    .line 1081
    move/from16 v17, v8

    .line 1083
    move-object v8, v7

    .line 1084
    move-object/from16 v7, v16

    .line 1086
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    .line 1089
    iget-boolean v1, v15, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 1091
    if-eqz v1, :cond_1b

    .line 1093
    const-wide v1, 0x20e00000003L

    .line 1098
    const/16 v3, 0xf

    .line 1100
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1103
    :cond_1b
    iget-object v1, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 1105
    if-eqz v1, :cond_1c

    .line 1107
    const-wide v2, 0x10900000004L

    .line 1112
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 1114
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1117
    :cond_1c
    move-wide/from16 v1, v26

    .line 1119
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1122
    :goto_e
    add-int/lit8 v14, v14, 0x1

    .line 1124
    move/from16 v8, v17

    .line 1126
    goto/16 :goto_d

    .line 1128
    :cond_1d
    move/from16 v17, v8

    .line 1130
    const-wide v22, 0x10900000001L

    .line 1135
    add-int/lit8 v12, v12, 0x1

    .line 1137
    goto/16 :goto_c

    .line 1139
    :cond_1e
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 1141
    if-eqz v1, :cond_1f

    .line 1143
    iget v2, v1, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    .line 1145
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 1147
    iget v1, v1, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 1149
    if-ne v2, v1, :cond_1f

    .line 1151
    const-wide v1, 0x10b0000001cL

    .line 1156
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1159
    move-result-wide v1

    .line 1160
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 1162
    iget-wide v3, v3, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    .line 1164
    const-wide v5, 0x10300000001L

    .line 1169
    invoke-virtual {v9, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1172
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 1174
    iget v3, v3, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartId:I

    .line 1176
    const-wide v4, 0x10500000003L

    .line 1181
    invoke-virtual {v9, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1184
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 1186
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    .line 1189
    move-result-wide v3

    .line 1190
    const-wide v5, 0x10300000004L

    .line 1195
    invoke-virtual {v9, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1198
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 1200
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    .line 1203
    move-result-wide v3

    .line 1204
    const-wide v5, 0x10300000005L

    .line 1209
    invoke-virtual {v9, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1212
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 1214
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    .line 1217
    move-result-wide v3

    .line 1218
    const-wide v5, 0x10300000006L

    .line 1223
    invoke-virtual {v9, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1226
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1229
    :cond_1f
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1232
    return-void
.end method

.method public final findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 18
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    .line 20
    if-ne v3, p1, :cond_1

    .line 22
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    .line 24
    if-ne v3, p2, :cond_1

    .line 26
    if-eqz p3, :cond_0

    .line 28
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    :cond_0
    return-object v2

    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public final getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 18
    return-object p0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 21
    return-object p0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 3
    return-object p0
.end method

.method public final getFgsAllowStart()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/am/Flags;->newFgsRestrictionLogic()Z

    .line 4
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8
    const-wide/32 v1, 0x128cab2d

    .line 11
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 20
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 22
    if-eq v0, v1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, p0

    .line 26
    :goto_0
    return v0

    .line 27
    :cond_1
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 29
    iget v2, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 31
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 33
    if-eq v0, v1, :cond_2

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    if-eq v2, v1, :cond_3

    .line 38
    move v0, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move v0, p0

    .line 41
    :goto_1
    return v0
.end method

.method public final getFgsAllowWiu_forStart()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/am/Flags;->newFgsRestrictionLogic()Z

    .line 4
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8
    const-wide/32 v1, 0x128caab5

    .line 11
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 20
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 22
    if-eq v0, v1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, p0

    .line 26
    :goto_0
    return v0

    .line 27
    :cond_1
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 29
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 31
    if-eq v0, v1, :cond_2

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v0, p0

    .line 35
    :goto_1
    return v0
.end method

.method public final getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public final getTracker()Lcom/android/internal/app/procstats/ServiceState;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 8
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 12
    and-int/lit8 v2, v2, 0x8

    .line 14
    if-nez v2, :cond_1

    .line 16
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 18
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 20
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 22
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 24
    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 26
    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 28
    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 30
    iget-object v0, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v3, v2, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 35
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    .line 38
    move-result-object v1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 42
    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v1, p0}, Lcom/android/internal/app/procstats/ServiceState;->applyNewOwner(Ljava/lang/Object;)V

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 53
    return-object p0
.end method

.method public final hasAutoCreateConnections()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    const/4 v2, 0x0

    .line 10
    if-ltz v0, :cond_2

    .line 12
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/util/ArrayList;

    .line 20
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v4

    .line 24
    if-ge v2, v4, :cond_1

    .line 26
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 32
    invoke-virtual {v4, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 38
    return v1

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v2
.end method

.method public final isFgsAllowedStart()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final isFgsAllowedWiu_forCapabilities()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/am/Flags;->newFgsRestrictionLogic()Z

    .line 4
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8
    const-wide/32 v1, 0x12b256f1

    .line 11
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 20
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 22
    if-eq v0, v1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    .line 30
    move-result v0

    .line 31
    :goto_0
    if-eq v0, v1, :cond_2

    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 p0, 0x0

    .line 36
    :goto_1
    return p0
.end method

.method public final isShortFgs()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 11
    const/16 v0, 0x800

    .line 13
    if-ne p0, v0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final makeRestarting(IJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 7
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 11
    and-int/lit8 v2, v2, 0x8

    .line 13
    if-nez v2, :cond_0

    .line 15
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 17
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 19
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 21
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 23
    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 25
    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 27
    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 29
    iget-object v0, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v3, v2, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 34
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    .line 37
    move-result-object v1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0

    .line 45
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 47
    if-nez v0, :cond_1

    .line 49
    return-void

    .line 50
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 56
    return-void
.end method

.method public final maybeLogFgsLogicChange()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 3
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v0, v2, :cond_0

    .line 8
    move v1, v0

    .line 9
    :cond_0
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 11
    if-eq v0, v2, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v3

    .line 15
    :goto_0
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 17
    iget v4, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 19
    iget v5, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 21
    if-eq v3, v2, :cond_2

    .line 23
    move v4, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    if-eq v4, v2, :cond_3

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    move v4, v5

    .line 29
    :goto_1
    if-eq v3, v2, :cond_4

    .line 31
    goto :goto_2

    .line 32
    :cond_4
    move v3, v5

    .line 33
    :goto_2
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-ne v1, v2, :cond_5

    .line 37
    move v7, v5

    .line 38
    goto :goto_3

    .line 39
    :cond_5
    move v7, v6

    .line 40
    :goto_3
    if-ne v0, v2, :cond_6

    .line 42
    move v8, v5

    .line 43
    goto :goto_4

    .line 44
    :cond_6
    move v8, v6

    .line 45
    :goto_4
    if-eq v7, v8, :cond_7

    .line 47
    move v7, v5

    .line 48
    goto :goto_5

    .line 49
    :cond_7
    move v7, v6

    .line 50
    :goto_5
    if-ne v4, v2, :cond_8

    .line 52
    move v8, v5

    .line 53
    goto :goto_6

    .line 54
    :cond_8
    move v8, v6

    .line 55
    :goto_6
    if-ne v3, v2, :cond_9

    .line 57
    move v2, v5

    .line 58
    goto :goto_7

    .line 59
    :cond_9
    move v2, v6

    .line 60
    :goto_7
    if-eq v8, v2, :cond_a

    .line 62
    goto :goto_8

    .line 63
    :cond_a
    move v5, v6

    .line 64
    :goto_8
    if-nez v7, :cond_b

    .line 66
    if-nez v5, :cond_b

    .line 68
    return-void

    .line 69
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    const-string v6, "FGS logic changed:"

    .line 73
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v6, ""

    .line 78
    if-eqz v7, :cond_c

    .line 80
    const-string v7, " [WIU changed]"

    .line 82
    goto :goto_9

    .line 83
    :cond_c
    move-object v7, v6

    .line 84
    :goto_9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    if-eqz v5, :cond_d

    .line 89
    const-string v6, " [BFSL changed]"

    .line 91
    :cond_d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v5, " Orig WIU:"

    .line 96
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {v1}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, " New WIU:"

    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {v0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v0, " Orig BFSL:"

    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {v4}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v0, " New BFSL:"

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {v3}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    const-string v1, " cmp: "

    .line 146
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 151
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, " sdk: "

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 165
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object p0

    .line 181
    const-string v0, "ActivityManager"

    .line 183
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public final postNotification(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 7
    if-eqz v5, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 15
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 17
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 19
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 21
    iget v7, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 23
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 25
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 27
    new-instance v10, Lcom/android/server/am/ServiceRecord$2;

    .line 29
    move-object v1, v10

    .line 30
    move-object v2, p0

    .line 31
    move v8, p1

    .line 32
    move-object v9, p0

    .line 33
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ServiceRecord$2;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/app/Notification;IIZLcom/android/server/am/ServiceRecord;)V

    .line 36
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    :cond_0
    return-void
.end method

.method public final setProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    if-eq v0, p1, :cond_0

    .line 9
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 12
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 14
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 16
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 23
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    move-object v0, p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 51
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 53
    if-eqz v0, :cond_5

    .line 55
    if-eq v0, p1, :cond_5

    .line 57
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 59
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsNothing()Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 67
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 72
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 74
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 79
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 81
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 84
    :cond_5
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateProcessStateOnRequest()V

    .line 89
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 91
    const/4 v1, 0x0

    .line 92
    if-lez v0, :cond_6

    .line 94
    if-eqz p1, :cond_6

    .line 96
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 98
    iput-object p0, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    .line 100
    iput v0, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 102
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    .line 104
    iput v0, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    .line 106
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    .line 108
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 112
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 115
    move-result v0

    .line 116
    add-int/lit8 v0, v0, -0x1

    .line 118
    :goto_2
    if-ltz v0, :cond_9

    .line 120
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 122
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Ljava/util/ArrayList;

    .line 128
    move v3, v1

    .line 129
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 132
    move-result v4

    .line 133
    if-ge v3, v4, :cond_8

    .line 135
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 141
    if-eqz p1, :cond_7

    .line 143
    invoke-virtual {v4}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    .line 146
    goto :goto_4

    .line 147
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 150
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 152
    goto :goto_3

    .line 153
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 155
    goto :goto_2

    .line 156
    :cond_9
    if-eqz p1, :cond_a

    .line 158
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 160
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 166
    :cond_a
    return-void
.end method

.method public final shouldTriggerShortFgsTimedEvent(JJ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 9
    if-eqz v2, :cond_2

    .line 11
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 13
    if-nez v2, :cond_2

    .line 15
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 17
    if-eqz v0, :cond_1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 22
    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 30
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 32
    if-eqz p0, :cond_2

    .line 34
    iget v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    .line 36
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 38
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 40
    if-ne v0, p0, :cond_2

    .line 42
    cmp-long p0, p1, p3

    .line 44
    if-gtz p0, :cond_2

    .line 46
    const/4 v1, 0x1

    .line 47
    :cond_2
    :goto_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x80

    .line 8
    const-string v1, "ServiceRecord{"

    .line 10
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " u"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const/16 v1, 0x20

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 47
    if-eqz v1, :cond_1

    .line 49
    const-string v1, " c:"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_1
    const/16 v1, 0x7d

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    .line 70
    return-object v0
.end method

.method public final updateKeepWarmLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 7
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 9
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 17
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 19
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 25
    if-eq v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 29
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 31
    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 33
    monitor-enter v2

    .line 34
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 36
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 39
    move-result v0

    .line 40
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 45
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 49
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 51
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 57
    iget v4, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0

    .line 72
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 75
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    .line 77
    return-void
.end method

.method public final updateOomAdjSeq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 7
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 9
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAdjSeq:I

    .line 11
    :cond_0
    return-void
.end method

.method public final updateProcessStateOnRequest()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 11
    if-nez v1, :cond_0

    .line 13
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 15
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v0, 0x14

    .line 20
    :goto_0
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mProcessStateOnRequest:I

    .line 22
    return-void
.end method

.method public final wasOomAdjUpdated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 7
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 9
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAdjSeq:I

    .line 11
    if-le v0, p0, :cond_0

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
