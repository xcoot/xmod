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

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    :goto_0
    if-ltz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 32
    .line 33
    invoke-interface {v2, p2, v3, p0, p3}, Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;->onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 37
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

    .line 43
    .line 44
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

    .line 48
    .line 49
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

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v4, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 15
    .line 16
    new-instance v4, Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 22
    .line 23
    new-instance v4, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v4, v0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    .line 29
    .line 30
    sget-object v4, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 31
    .line 32
    iput-object v4, v0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 36
    .line 37
    const-wide/16 v5, 0x0

    .line 38
    .line 39
    iput-wide v5, v0, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    .line 40
    .line 41
    iput-wide v5, v0, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    .line 42
    .line 43
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 44
    .line 45
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    .line 46
    .line 47
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 48
    .line 49
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 50
    .line 51
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 52
    .line 53
    iput v4, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 54
    .line 55
    new-instance v5, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->pendingBinds:Ljava/util/ArrayList;

    .line 61
    .line 62
    new-instance v5, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v5, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 75
    .line 76
    new-instance v5, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->pendingRemoveConnections:Ljava/util/ArrayList;

    .line 82
    .line 83
    iput-object v1, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 84
    .line 85
    move-object v5, p2

    .line 86
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 87
    .line 88
    move-object v5, p3

    .line 89
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 90
    .line 91
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 96
    .line 97
    move-object v5, p4

    .line 98
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    .line 99
    .line 100
    move v5, p5

    .line 101
    iput v5, v0, Lcom/android/server/am/ServiceRecord;->definingUid:I

    .line 102
    .line 103
    move-object v5, p6

    .line 104
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 105
    .line 106
    iput-object v2, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 107
    .line 108
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 109
    .line 110
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 111
    .line 112
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 113
    .line 114
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 115
    .line 116
    if-eq v3, v4, :cond_0

    .line 117
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

    .line 122
    .line 123
    iput v3, v0, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppUid:I

    .line 124
    .line 125
    move-object/from16 v3, p12

    .line 126
    .line 127
    iput-object v3, v0, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 128
    .line 129
    move/from16 v3, p13

    .line 130
    .line 131
    iput-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->inSharedIsolatedProcess:Z

    .line 132
    .line 133
    move-object/from16 v3, p10

    .line 134
    .line 135
    iput-object v3, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 138
    .line 139
    iput-object v3, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 140
    .line 141
    iget-boolean v2, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 142
    .line 143
    iput-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->exported:Z

    .line 144
    .line 145
    move-object/from16 v2, p9

    .line 146
    .line 147
    iput-object v2, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 148
    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    iput-wide v2, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 154
    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v2

    .line 159
    iput-wide v2, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 160
    .line 161
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 162
    .line 163
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 164
    .line 165
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    iput v2, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 170
    .line 171
    move v2, p8

    .line 172
    iput-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    .line 175
    .line 176
    .line 177
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 178
    .line 179
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 180
    .line 181
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 182
    .line 183
    new-instance v3, Lcom/android/server/am/ServiceRecord$1;

    .line 184
    .line 185
    invoke-direct {v3, p0, v5, v2}, Lcom/android/server/am/ServiceRecord$1;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public static dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p2, "="

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_6

    .line 7
    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "#"

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 23
    .line 24
    .line 25
    const-string v3, " id="

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    cmp-long v3, p3, v3

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    const-string v3, " dur="

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-wide v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 47
    .line 48
    invoke-static {v3, v4, p3, p4, p0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    const-string v3, " dc="

    .line 56
    .line 57
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 61
    .line 62
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    const-string v3, " dxc="

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 75
    .line 76
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    const-string v3, ""

    .line 80
    .line 81
    const-string v4, "  intent="

    .line 82
    .line 83
    invoke-static {p0, v3, p1, v4}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    .line 87
    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    const-string/jumbo v3, "null"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 105
    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v4, "  neededGrants="

    .line 112
    .line 113
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 120
    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    invoke-virtual {v2, p0, p1}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 127
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

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 31
    .line 32
    iget v1, p2, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 44
    .line 45
    iget-object v0, p2, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 46
    .line 47
    iget-wide v2, p2, Lcom/android/server/am/ConnectionRecord;->flags:J

    .line 48
    .line 49
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 55
    .line 56
    const/16 p1, 0x200

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public final canStopIfKilled(Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

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
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
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

    .line 2
    .line 3
    iget v5, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 14
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

    .line 20
    .line 21
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 22
    .line 23
    new-instance v7, Lcom/android/server/am/ServiceRecord$3;

    .line 24
    .line 25
    move-object v0, v7

    .line 26
    move-object v1, p0

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$3;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;III)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "intent={"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 17
    .line 18
    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-virtual {v4, v5, v6, v5, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 v4, 0x7d

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v7, "packageName="

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 46
    .line 47
    const-string/jumbo v8, "processName="

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v7, v2, v8}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 54
    .line 55
    const-string/jumbo v8, "targetSdkVersion="

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v7, v2, v8}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 64
    .line 65
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 66
    .line 67
    .line 68
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v7, :cond_0

    .line 71
    .line 72
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string/jumbo v7, "permission="

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v7

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v9

    .line 94
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 95
    .line 96
    if-eqz v11, :cond_2

    .line 97
    .line 98
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v11, "baseDir="

    .line 102
    .line 103
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 107
    .line 108
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 114
    .line 115
    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v12, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-nez v11, :cond_1

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string/jumbo v11, "resDir="

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 135
    .line 136
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string/jumbo v11, "dataDir="

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 151
    .line 152
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v11, "app="

    .line 161
    .line 162
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 166
    .line 167
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 171
    .line 172
    if-eqz v11, :cond_3

    .line 173
    .line 174
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string/jumbo v11, "isolationHostProc="

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 184
    .line 185
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_3
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    .line 189
    .line 190
    if-eqz v11, :cond_4

    .line 191
    .line 192
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v11, "allowlistManager="

    .line 196
    .line 197
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    .line 201
    .line 202
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 203
    .line 204
    .line 205
    :cond_4
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    .line 206
    .line 207
    if-eqz v11, :cond_5

    .line 208
    .line 209
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string/jumbo v11, "mIsAllowedBgActivityStartsByBinding="

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    .line 219
    .line 220
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 221
    .line 222
    .line 223
    :cond_5
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 224
    .line 225
    invoke-virtual {v11}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    if-eqz v11, :cond_6

    .line 230
    .line 231
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string/jumbo v11, "mIsAllowedBgActivityStartsByStart="

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 241
    .line 242
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    :cond_6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string/jumbo v11, "useNewWiuLogic_forCapabilities()="

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-static {}, Lcom/android/server/am/Flags;->newFgsRestrictionLogic()Z

    .line 255
    .line 256
    .line 257
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 258
    .line 259
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 260
    .line 261
    const-wide/32 v12, 0x12b256f1

    .line 262
    .line 263
    .line 264
    invoke-static {v12, v13, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 269
    .line 270
    .line 271
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string/jumbo v11, "useNewWiuLogic_forStart()="

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lcom/android/server/am/Flags;->newFgsRestrictionLogic()Z

    .line 281
    .line 282
    .line 283
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 284
    .line 285
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 286
    .line 287
    const-wide/32 v14, 0x128caab5

    .line 288
    .line 289
    .line 290
    invoke-static {v14, v15, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 291
    .line 292
    .line 293
    move-result v11

    .line 294
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 295
    .line 296
    .line 297
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string/jumbo v11, "useNewBfslLogic()="

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-static {}, Lcom/android/server/am/Flags;->newFgsRestrictionLogic()Z

    .line 307
    .line 308
    .line 309
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 310
    .line 311
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 312
    .line 313
    const-wide/32 v14, 0x128cab2d

    .line 314
    .line 315
    .line 316
    invoke-static {v14, v15, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 317
    .line 318
    .line 319
    move-result v11

    .line 320
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 321
    .line 322
    .line 323
    const-string/jumbo v11, "mAllowWiu_noBinding"

    .line 324
    .line 325
    .line 326
    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 327
    .line 328
    invoke-static {v14, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const-string/jumbo v11, "mAllowWiu_inBindService"

    .line 332
    .line 333
    .line 334
    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 335
    .line 336
    invoke-static {v14, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string/jumbo v11, "mAllowWiu_byBindings"

    .line 340
    .line 341
    .line 342
    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 343
    .line 344
    invoke-static {v14, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 348
    .line 349
    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 350
    .line 351
    const/4 v15, -0x1

    .line 352
    if-eq v11, v15, :cond_7

    .line 353
    .line 354
    goto :goto_0

    .line 355
    :cond_7
    move v11, v14

    .line 356
    :goto_0
    const-string/jumbo v14, "getFgsAllowWiu_legacy"

    .line 357
    .line 358
    .line 359
    invoke-static {v11, v1, v2, v14}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 363
    .line 364
    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 365
    .line 366
    if-eq v11, v15, :cond_8

    .line 367
    .line 368
    goto :goto_1

    .line 369
    :cond_8
    move v11, v14

    .line 370
    :goto_1
    const-string/jumbo v14, "getFgsAllowWiu_new"

    .line 371
    .line 372
    .line 373
    invoke-static {v11, v1, v2, v14}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const-string/jumbo v11, "getFgsAllowWiu_forStart"

    .line 377
    .line 378
    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    .line 380
    .line 381
    .line 382
    move-result v14

    .line 383
    invoke-static {v14, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-static {}, Lcom/android/server/am/Flags;->newFgsRestrictionLogic()Z

    .line 387
    .line 388
    .line 389
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 390
    .line 391
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 392
    .line 393
    invoke-static {v12, v13, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 394
    .line 395
    .line 396
    move-result v11

    .line 397
    if-eqz v11, :cond_a

    .line 398
    .line 399
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 400
    .line 401
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 402
    .line 403
    if-eq v11, v15, :cond_9

    .line 404
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

    .line 409
    .line 410
    .line 411
    move-result v11

    .line 412
    :goto_2
    const-string/jumbo v12, "getFgsAllowWiu_forCapabilities"

    .line 413
    .line 414
    .line 415
    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const-string v11, "allowUiJobScheduling="

    .line 422
    .line 423
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    .line 427
    .line 428
    const-string/jumbo v12, "recentCallingPackage="

    .line 429
    .line 430
    .line 431
    invoke-static {v1, v2, v12, v11}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 432
    .line 433
    .line 434
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 435
    .line 436
    const-string/jumbo v12, "recentCallingUid="

    .line 437
    .line 438
    .line 439
    invoke-static {v1, v11, v2, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 443
    .line 444
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 445
    .line 446
    .line 447
    const-string/jumbo v11, "mAllowStart_noBinding"

    .line 448
    .line 449
    .line 450
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 451
    .line 452
    invoke-static {v12, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    const-string/jumbo v11, "mAllowStart_inBindService"

    .line 456
    .line 457
    .line 458
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 459
    .line 460
    invoke-static {v12, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    const-string/jumbo v11, "mAllowStart_byBindings"

    .line 464
    .line 465
    .line 466
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 467
    .line 468
    invoke-static {v12, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 472
    .line 473
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 474
    .line 475
    iget v13, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 476
    .line 477
    if-eq v11, v15, :cond_b

    .line 478
    .line 479
    goto :goto_3

    .line 480
    :cond_b
    if-eq v12, v15, :cond_c

    .line 481
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

    .line 486
    .line 487
    .line 488
    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 492
    .line 493
    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 494
    .line 495
    if-eq v11, v15, :cond_d

    .line 496
    .line 497
    goto :goto_4

    .line 498
    :cond_d
    move v11, v12

    .line 499
    :goto_4
    const-string/jumbo v12, "getFgsAllowStart_new"

    .line 500
    .line 501
    .line 502
    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    const-string/jumbo v11, "getFgsAllowStart"

    .line 506
    .line 507
    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    .line 509
    .line 510
    .line 511
    move-result v12

    .line 512
    invoke-static {v12, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    const-string/jumbo v11, "startForegroundCount="

    .line 519
    .line 520
    .line 521
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 525
    .line 526
    const-string/jumbo v12, "infoAllowStartForeground="

    .line 527
    .line 528
    .line 529
    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    .line 533
    .line 534
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    sget-boolean v11, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 538
    .line 539
    sget-object v11, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 540
    .line 541
    iget-boolean v11, v11, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 542
    .line 543
    if-eqz v11, :cond_e

    .line 544
    .line 545
    sget-boolean v11, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    .line 546
    .line 547
    if-eqz v11, :cond_e

    .line 548
    .line 549
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    const-string/jumbo v11, "serviceDelayed="

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->serviceDelayed:Z

    .line 559
    .line 560
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 561
    .line 562
    .line 563
    :cond_e
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 564
    .line 565
    if-eqz v11, :cond_f

    .line 566
    .line 567
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    const-string/jumbo v11, "delayed="

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 577
    .line 578
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 579
    .line 580
    .line 581
    :cond_f
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 582
    .line 583
    if-nez v11, :cond_10

    .line 584
    .line 585
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 586
    .line 587
    if-eqz v11, :cond_11

    .line 588
    .line 589
    :cond_10
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    const-string/jumbo v11, "isForeground="

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 599
    .line 600
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 601
    .line 602
    .line 603
    const-string v11, " foregroundId="

    .line 604
    .line 605
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 609
    .line 610
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 611
    .line 612
    .line 613
    iget v11, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 614
    .line 615
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 616
    .line 617
    .line 618
    move-result-object v11

    .line 619
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v11

    .line 623
    const-string v12, " types=0x%08X"

    .line 624
    .line 625
    invoke-virtual {v1, v12, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 626
    .line 627
    .line 628
    const-string v11, " foregroundNoti="

    .line 629
    .line 630
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 634
    .line 635
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    .line 639
    .line 640
    .line 641
    move-result v11

    .line 642
    if-eqz v11, :cond_11

    .line 643
    .line 644
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 645
    .line 646
    if-eqz v11, :cond_11

    .line 647
    .line 648
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    const-string/jumbo v11, "isShortFgs=true"

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    const-string v11, " startId="

    .line 658
    .line 659
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 663
    .line 664
    iget v11, v11, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartId:I

    .line 665
    .line 666
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 667
    .line 668
    .line 669
    const-string v11, " startForegroundCount="

    .line 670
    .line 671
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 675
    .line 676
    iget v11, v11, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    .line 677
    .line 678
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 679
    .line 680
    .line 681
    const-string v11, " startTime="

    .line 682
    .line 683
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 687
    .line 688
    iget-wide v11, v11, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    .line 689
    .line 690
    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 691
    .line 692
    .line 693
    const-string v11, " timeout="

    .line 694
    .line 695
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 699
    .line 700
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    .line 701
    .line 702
    .line 703
    move-result-wide v11

    .line 704
    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 705
    .line 706
    .line 707
    const-string v11, " demoteTime="

    .line 708
    .line 709
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 713
    .line 714
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    .line 715
    .line 716
    .line 717
    move-result-wide v11

    .line 718
    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 719
    .line 720
    .line 721
    const-string v11, " anrTime="

    .line 722
    .line 723
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 727
    .line 728
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    .line 729
    .line 730
    .line 731
    move-result-wide v11

    .line 732
    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 736
    .line 737
    .line 738
    :cond_11
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    .line 739
    .line 740
    if-eqz v11, :cond_12

    .line 741
    .line 742
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    const-string/jumbo v11, "isFgsDelegate="

    .line 746
    .line 747
    .line 748
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    .line 752
    .line 753
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 754
    .line 755
    .line 756
    :cond_12
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    const-string/jumbo v11, "createTime="

    .line 760
    .line 761
    .line 762
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    iget-wide v11, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 766
    .line 767
    invoke-static {v11, v12, v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 768
    .line 769
    .line 770
    const-string v9, " startingBgTimeout="

    .line 771
    .line 772
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    iget-wide v9, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 776
    .line 777
    invoke-static {v9, v10, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 781
    .line 782
    .line 783
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    const-string/jumbo v9, "lastActivity="

    .line 787
    .line 788
    .line 789
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    iget-wide v9, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 793
    .line 794
    invoke-static {v9, v10, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 795
    .line 796
    .line 797
    const-string v9, " restartTime="

    .line 798
    .line 799
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    iget-wide v9, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 803
    .line 804
    invoke-static {v9, v10, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 805
    .line 806
    .line 807
    const-string v9, " createdFromFg="

    .line 808
    .line 809
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 813
    .line 814
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Z)V

    .line 815
    .line 816
    .line 817
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 818
    .line 819
    if-eqz v9, :cond_13

    .line 820
    .line 821
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    const-string v9, " pendingConnectionGroup="

    .line 825
    .line 826
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 830
    .line 831
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 832
    .line 833
    .line 834
    const-string v9, " Importance="

    .line 835
    .line 836
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    .line 840
    .line 841
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 842
    .line 843
    .line 844
    :cond_13
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 845
    .line 846
    if-nez v9, :cond_14

    .line 847
    .line 848
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 849
    .line 850
    if-nez v9, :cond_14

    .line 851
    .line 852
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 853
    .line 854
    if-eqz v9, :cond_15

    .line 855
    .line 856
    :cond_14
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    const-string/jumbo v9, "startRequested="

    .line 860
    .line 861
    .line 862
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 866
    .line 867
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 868
    .line 869
    .line 870
    const-string v9, " delayedStop="

    .line 871
    .line 872
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 876
    .line 877
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 878
    .line 879
    .line 880
    const-string v9, " stopIfKilled="

    .line 881
    .line 882
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 886
    .line 887
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 888
    .line 889
    .line 890
    const-string v9, " callStart="

    .line 891
    .line 892
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 896
    .line 897
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 898
    .line 899
    .line 900
    const-string v9, " lastStartId="

    .line 901
    .line 902
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 906
    .line 907
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 908
    .line 909
    .line 910
    const-string v9, " startCommandResult="

    .line 911
    .line 912
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->startCommandResult:I

    .line 916
    .line 917
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 918
    .line 919
    .line 920
    :cond_15
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 921
    .line 922
    if-eqz v9, :cond_16

    .line 923
    .line 924
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    const-string/jumbo v9, "executeNesting="

    .line 928
    .line 929
    .line 930
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    .line 932
    .line 933
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 934
    .line 935
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 936
    .line 937
    .line 938
    const-string v9, " executeFg="

    .line 939
    .line 940
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 944
    .line 945
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 946
    .line 947
    .line 948
    const-string v9, " executingStart="

    .line 949
    .line 950
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    iget-wide v9, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 954
    .line 955
    invoke-static {v9, v10, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 956
    .line 957
    .line 958
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 959
    .line 960
    .line 961
    :cond_16
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 962
    .line 963
    const-wide/16 v10, 0x0

    .line 964
    .line 965
    if-nez v9, :cond_17

    .line 966
    .line 967
    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 968
    .line 969
    cmp-long v9, v12, v10

    .line 970
    .line 971
    if-eqz v9, :cond_18

    .line 972
    .line 973
    :cond_17
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    const-string/jumbo v9, "destroying="

    .line 977
    .line 978
    .line 979
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 983
    .line 984
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 985
    .line 986
    .line 987
    const-string v9, " destroyTime="

    .line 988
    .line 989
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 993
    .line 994
    invoke-static {v12, v13, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 998
    .line 999
    .line 1000
    :cond_18
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 1001
    .line 1002
    if-nez v9, :cond_19

    .line 1003
    .line 1004
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1005
    .line 1006
    if-nez v9, :cond_19

    .line 1007
    .line 1008
    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1009
    .line 1010
    iget-wide v14, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    .line 1011
    .line 1012
    sub-long v14, v12, v14

    .line 1013
    .line 1014
    cmp-long v9, v14, v10

    .line 1015
    .line 1016
    if-nez v9, :cond_19

    .line 1017
    .line 1018
    cmp-long v9, v12, v10

    .line 1019
    .line 1020
    if-eqz v9, :cond_1a

    .line 1021
    .line 1022
    :cond_19
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    const-string/jumbo v9, "restartCount="

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1032
    .line 1033
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 1034
    .line 1035
    .line 1036
    const-string v9, " restartDelay="

    .line 1037
    .line 1038
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1042
    .line 1043
    iget-wide v14, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    .line 1044
    .line 1045
    sub-long/2addr v12, v14

    .line 1046
    invoke-static {v12, v13, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1047
    .line 1048
    .line 1049
    const-string v9, " nextRestartTime="

    .line 1050
    .line 1051
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1055
    .line 1056
    invoke-static {v12, v13, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1057
    .line 1058
    .line 1059
    const-string v9, " crashCount="

    .line 1060
    .line 1061
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 1065
    .line 1066
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 1067
    .line 1068
    .line 1069
    :cond_1a
    iget-object v9, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 1070
    .line 1071
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1072
    .line 1073
    .line 1074
    move-result v9

    .line 1075
    if-lez v9, :cond_1b

    .line 1076
    .line 1077
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    const-string v9, "Delivered Starts:"

    .line 1081
    .line 1082
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    iget-object v9, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 1086
    .line 1087
    invoke-static {v1, v2, v9, v7, v8}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 1088
    .line 1089
    .line 1090
    :cond_1b
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 1091
    .line 1092
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1093
    .line 1094
    .line 1095
    move-result v7

    .line 1096
    if-lez v7, :cond_1c

    .line 1097
    .line 1098
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    const-string v7, "Pending Starts:"

    .line 1102
    .line 1103
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 1107
    .line 1108
    invoke-static {v1, v2, v7, v10, v11}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 1109
    .line 1110
    .line 1111
    :cond_1c
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 1112
    .line 1113
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 1114
    .line 1115
    .line 1116
    move-result v7

    .line 1117
    const-string v8, "  "

    .line 1118
    .line 1119
    if-lez v7, :cond_20

    .line 1120
    .line 1121
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1122
    .line 1123
    .line 1124
    const-string v7, "Bindings:"

    .line 1125
    .line 1126
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    move v7, v5

    .line 1130
    :goto_5
    iget-object v9, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 1131
    .line 1132
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 1133
    .line 1134
    .line 1135
    move-result v9

    .line 1136
    if-ge v7, v9, :cond_20

    .line 1137
    .line 1138
    iget-object v9, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 1139
    .line 1140
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v9

    .line 1144
    check-cast v9, Lcom/android/server/am/IntentBindRecord;

    .line 1145
    .line 1146
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    const-string v12, "* IntentBindRecord{"

    .line 1150
    .line 1151
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 1155
    .line 1156
    .line 1157
    move-result v12

    .line 1158
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v12

    .line 1162
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v9}, Lcom/android/server/am/IntentBindRecord;->collectFlags()J

    .line 1166
    .line 1167
    .line 1168
    move-result-wide v12

    .line 1169
    const-wide/16 v14, 0x1

    .line 1170
    .line 1171
    and-long/2addr v12, v14

    .line 1172
    cmp-long v12, v12, v10

    .line 1173
    .line 1174
    if-eqz v12, :cond_1d

    .line 1175
    .line 1176
    const-string v12, " CREATE"

    .line 1177
    .line 1178
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1179
    .line 1180
    .line 1181
    :cond_1d
    const-string/jumbo v12, "}:"

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v12

    .line 1202
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    iget-object v13, v9, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 1209
    .line 1210
    invoke-virtual {v13}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v13

    .line 1214
    invoke-virtual {v13, v5, v6, v5, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v13

    .line 1218
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    const-string v13, "binder="

    .line 1228
    .line 1229
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    iget-object v13, v9, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 1233
    .line 1234
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    const-string/jumbo v13, "requested="

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1244
    .line 1245
    .line 1246
    iget-boolean v13, v9, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 1247
    .line 1248
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Z)V

    .line 1249
    .line 1250
    .line 1251
    const-string v13, " received="

    .line 1252
    .line 1253
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    .line 1255
    .line 1256
    iget-boolean v13, v9, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 1257
    .line 1258
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Z)V

    .line 1259
    .line 1260
    .line 1261
    const-string v13, " hasBound="

    .line 1262
    .line 1263
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    iget-boolean v13, v9, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 1267
    .line 1268
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Z)V

    .line 1269
    .line 1270
    .line 1271
    const-string v13, " doRebind="

    .line 1272
    .line 1273
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    iget-boolean v13, v9, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 1277
    .line 1278
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Z)V

    .line 1279
    .line 1280
    .line 1281
    move v13, v5

    .line 1282
    :goto_6
    iget-object v14, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    .line 1283
    .line 1284
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    .line 1285
    .line 1286
    .line 1287
    move-result v14

    .line 1288
    if-ge v13, v14, :cond_1f

    .line 1289
    .line 1290
    iget-object v14, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    .line 1291
    .line 1292
    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v14

    .line 1296
    check-cast v14, Lcom/android/server/am/AppBindRecord;

    .line 1297
    .line 1298
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1299
    .line 1300
    .line 1301
    const-string v15, "* Client AppBindRecord{"

    .line 1302
    .line 1303
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1304
    .line 1305
    .line 1306
    invoke-static {v14}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 1307
    .line 1308
    .line 1309
    move-result v15

    .line 1310
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v15

    .line 1314
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1315
    .line 1316
    .line 1317
    const/16 v15, 0x20

    .line 1318
    .line 1319
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1320
    .line 1321
    .line 1322
    iget-object v15, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1323
    .line 1324
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 1328
    .line 1329
    .line 1330
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v15

    .line 1345
    iget-object v4, v14, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    .line 1346
    .line 1347
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 1348
    .line 1349
    .line 1350
    move-result v4

    .line 1351
    if-lez v4, :cond_1e

    .line 1352
    .line 1353
    const-string v5, "Per-process Connections:"

    .line 1354
    .line 1355
    invoke-static {v1, v15, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    const/4 v5, 0x0

    .line 1359
    :goto_7
    if-ge v5, v4, :cond_1e

    .line 1360
    .line 1361
    iget-object v10, v14, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    .line 1362
    .line 1363
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v10

    .line 1367
    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    .line 1368
    .line 1369
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1370
    .line 1371
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v10

    .line 1387
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    .line 1389
    .line 1390
    add-int/2addr v5, v6

    .line 1391
    const-wide/16 v10, 0x0

    .line 1392
    .line 1393
    goto :goto_7

    .line 1394
    :cond_1e
    add-int/2addr v13, v6

    .line 1395
    const/16 v4, 0x7d

    .line 1396
    .line 1397
    const/4 v5, 0x0

    .line 1398
    const-wide/16 v10, 0x0

    .line 1399
    .line 1400
    goto :goto_6

    .line 1401
    :cond_1f
    add-int/2addr v7, v6

    .line 1402
    const/16 v4, 0x7d

    .line 1403
    .line 1404
    const/4 v5, 0x0

    .line 1405
    const-wide/16 v10, 0x0

    .line 1406
    .line 1407
    goto/16 :goto_5

    .line 1408
    .line 1409
    :cond_20
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 1410
    .line 1411
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 1412
    .line 1413
    .line 1414
    move-result v3

    .line 1415
    if-lez v3, :cond_22

    .line 1416
    .line 1417
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1418
    .line 1419
    .line 1420
    const-string v3, "All Connections:"

    .line 1421
    .line 1422
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    .line 1424
    .line 1425
    const/4 v3, 0x0

    .line 1426
    :goto_8
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 1427
    .line 1428
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 1429
    .line 1430
    .line 1431
    move-result v4

    .line 1432
    if-ge v3, v4, :cond_22

    .line 1433
    .line 1434
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 1435
    .line 1436
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v4

    .line 1440
    check-cast v4, Ljava/util/ArrayList;

    .line 1441
    .line 1442
    const/4 v5, 0x0

    .line 1443
    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1444
    .line 1445
    .line 1446
    move-result v7

    .line 1447
    if-ge v5, v7, :cond_21

    .line 1448
    .line 1449
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v7

    .line 1459
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1460
    .line 1461
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

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    const-wide v1, 0x20b00000002L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v10

    .line 14
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 15
    .line 16
    const-wide v12, 0x10900000001L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
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

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-virtual {v9, v7, v8, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 40
    .line 41
    const-wide v5, 0x10500000003L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 49
    .line 50
    invoke-virtual {v9, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/16 v16, 0x0

    .line 62
    .line 63
    const/16 v17, 0x1

    .line 64
    .line 65
    const-wide v3, 0x10b00000004L

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const/16 v18, 0x0

    .line 71
    .line 72
    const/16 v19, 0x0

    .line 73
    .line 74
    move-object/from16 v2, p1

    .line 75
    .line 76
    move-wide v14, v5

    .line 77
    move/from16 v5, v16

    .line 78
    .line 79
    move/from16 v6, v17

    .line 80
    .line 81
    move/from16 v7, v18

    .line 82
    .line 83
    move/from16 v8, v19

    .line 84
    .line 85
    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move-wide v14, v5

    .line 90
    :goto_1
    const-wide v1, 0x10900000005L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-wide v1, 0x10900000006L

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-wide v1, 0x10900000007L

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v16

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 125
    .line 126
    .line 127
    move-result-wide v6

    .line 128
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 129
    .line 130
    const-wide v4, 0x10500000004L

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    const-wide v2, 0x10900000002L

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    if-eqz v1, :cond_4

    .line 141
    .line 142
    const-wide v14, 0x10b00000008L

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 148
    .line 149
    .line 150
    move-result-wide v14

    .line 151
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 152
    .line 153
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 159
    .line 160
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 161
    .line 162
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v8, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_3

    .line 169
    .line 170
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 171
    .line 172
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_3
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 178
    .line 179
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 180
    .line 181
    const-wide v2, 0x10900000003L

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 190
    .line 191
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 192
    .line 193
    invoke-virtual {v9, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 197
    .line 198
    .line 199
    :cond_4
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 200
    .line 201
    const/4 v2, -0x1

    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const-wide v14, 0x10b00000009L

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v9, v14, v15, v2}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 210
    .line 211
    .line 212
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 213
    .line 214
    if-eqz v1, :cond_6

    .line 215
    .line 216
    const-wide v14, 0x10b0000000aL

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v9, v14, v15, v2}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 222
    .line 223
    .line 224
    :cond_6
    const-wide v1, 0x1080000000bL

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    .line 230
    .line 231
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 232
    .line 233
    .line 234
    const-wide v1, 0x1080000000cL

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 240
    .line 241
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 242
    .line 243
    .line 244
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 245
    .line 246
    const-wide v14, 0x10500000001L

    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    if-nez v1, :cond_7

    .line 252
    .line 253
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 254
    .line 255
    if-eqz v1, :cond_8

    .line 256
    .line 257
    :cond_7
    const-wide v1, 0x10b0000000dL

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 263
    .line 264
    .line 265
    move-result-wide v1

    .line 266
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 267
    .line 268
    invoke-virtual {v9, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 269
    .line 270
    .line 271
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 272
    .line 273
    const-wide v4, 0x10b00000002L

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v9, v4, v5}, Landroid/app/Notification;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 279
    .line 280
    .line 281
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 282
    .line 283
    const-wide v4, 0x10500000003L

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    invoke-virtual {v9, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 292
    .line 293
    .line 294
    :cond_8
    const-wide v2, 0x10b0000000eL

    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 300
    .line 301
    move-object/from16 v1, p1

    .line 302
    .line 303
    const-wide v12, 0x10900000002L

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    const-wide v12, 0x10500000004L

    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 314
    .line 315
    .line 316
    const-wide v2, 0x10b0000000fL

    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 322
    .line 323
    move-wide/from16 v6, v16

    .line 324
    .line 325
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 326
    .line 327
    .line 328
    const-wide v2, 0x10b00000010L

    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 334
    .line 335
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 336
    .line 337
    .line 338
    const-wide v2, 0x10b00000011L

    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 344
    .line 345
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 346
    .line 347
    .line 348
    const-wide v1, 0x10800000012L

    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 354
    .line 355
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 356
    .line 357
    .line 358
    const-wide v1, 0x1080000001bL

    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 368
    .line 369
    .line 370
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 371
    .line 372
    const-wide v6, 0x10800000003L

    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    if-nez v1, :cond_a

    .line 378
    .line 379
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 380
    .line 381
    if-nez v1, :cond_a

    .line 382
    .line 383
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 384
    .line 385
    if-eqz v1, :cond_9

    .line 386
    .line 387
    goto :goto_2

    .line 388
    :cond_9
    const-wide v4, 0x10800000002L

    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    goto :goto_3

    .line 394
    :cond_a
    :goto_2
    const-wide v1, 0x10b00000013L

    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 400
    .line 401
    .line 402
    move-result-wide v1

    .line 403
    const-wide v3, 0x10800000001L

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 409
    .line 410
    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 411
    .line 412
    .line 413
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 414
    .line 415
    const-wide v4, 0x10800000002L

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    invoke-virtual {v9, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 421
    .line 422
    .line 423
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 424
    .line 425
    invoke-virtual {v9, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 426
    .line 427
    .line 428
    const-wide v6, 0x10500000005L

    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 434
    .line 435
    invoke-virtual {v9, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 436
    .line 437
    .line 438
    const-wide v6, 0x10500000006L

    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->startCommandResult:I

    .line 444
    .line 445
    invoke-virtual {v9, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 449
    .line 450
    .line 451
    :goto_3
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 452
    .line 453
    if-eqz v1, :cond_b

    .line 454
    .line 455
    const-wide v1, 0x10b00000014L

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 461
    .line 462
    .line 463
    move-result-wide v6

    .line 464
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 465
    .line 466
    invoke-virtual {v9, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 467
    .line 468
    .line 469
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 470
    .line 471
    invoke-virtual {v9, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 472
    .line 473
    .line 474
    const-wide v2, 0x10b00000003L

    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 480
    .line 481
    move-object/from16 v1, p1

    .line 482
    .line 483
    move-wide v12, v6

    .line 484
    move-wide/from16 v6, v16

    .line 485
    .line 486
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 490
    .line 491
    .line 492
    :cond_b
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 493
    .line 494
    const-wide/16 v12, 0x0

    .line 495
    .line 496
    if-nez v1, :cond_c

    .line 497
    .line 498
    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 499
    .line 500
    cmp-long v1, v1, v12

    .line 501
    .line 502
    if-eqz v1, :cond_d

    .line 503
    .line 504
    :cond_c
    const-wide v2, 0x10b00000015L

    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 510
    .line 511
    move-object/from16 v1, p1

    .line 512
    .line 513
    move-wide/from16 v6, v16

    .line 514
    .line 515
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 516
    .line 517
    .line 518
    :cond_d
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 519
    .line 520
    if-nez v1, :cond_e

    .line 521
    .line 522
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 523
    .line 524
    if-nez v1, :cond_e

    .line 525
    .line 526
    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 527
    .line 528
    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    .line 529
    .line 530
    sub-long v3, v1, v3

    .line 531
    .line 532
    cmp-long v3, v3, v12

    .line 533
    .line 534
    if-nez v3, :cond_e

    .line 535
    .line 536
    cmp-long v1, v1, v12

    .line 537
    .line 538
    if-eqz v1, :cond_f

    .line 539
    .line 540
    :cond_e
    const-wide v1, 0x10b00000016L

    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 546
    .line 547
    .line 548
    move-result-wide v6

    .line 549
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 550
    .line 551
    invoke-virtual {v9, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 552
    .line 553
    .line 554
    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 555
    .line 556
    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    .line 557
    .line 558
    sub-long v4, v1, v3

    .line 559
    .line 560
    const-wide v2, 0x10b00000002L

    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    move-object/from16 v1, p1

    .line 566
    .line 567
    move-wide v14, v6

    .line 568
    move-wide/from16 v6, v16

    .line 569
    .line 570
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 571
    .line 572
    .line 573
    const-wide v2, 0x10b00000003L

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 579
    .line 580
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 581
    .line 582
    .line 583
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 584
    .line 585
    const-wide v2, 0x10500000004L

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 594
    .line 595
    .line 596
    :cond_f
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    if-lez v1, :cond_10

    .line 603
    .line 604
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 605
    .line 606
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 607
    .line 608
    .line 609
    move-result v7

    .line 610
    const/4 v8, 0x0

    .line 611
    :goto_4
    if-ge v8, v7, :cond_10

    .line 612
    .line 613
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 614
    .line 615
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 620
    .line 621
    const-wide v3, 0x20b00000017L

    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    move-object/from16 v2, p1

    .line 627
    .line 628
    move-wide/from16 v5, v16

    .line 629
    .line 630
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 631
    .line 632
    .line 633
    add-int/lit8 v8, v8, 0x1

    .line 634
    .line 635
    goto :goto_4

    .line 636
    :cond_10
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 637
    .line 638
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    if-lez v1, :cond_11

    .line 643
    .line 644
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 645
    .line 646
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 647
    .line 648
    .line 649
    move-result v7

    .line 650
    const/4 v8, 0x0

    .line 651
    :goto_5
    if-ge v8, v7, :cond_11

    .line 652
    .line 653
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 654
    .line 655
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 660
    .line 661
    const-wide v3, 0x20b00000018L

    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    move-object/from16 v2, p1

    .line 667
    .line 668
    move-wide/from16 v5, v16

    .line 669
    .line 670
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 671
    .line 672
    .line 673
    add-int/lit8 v8, v8, 0x1

    .line 674
    .line 675
    goto :goto_5

    .line 676
    :cond_11
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 677
    .line 678
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    if-lez v1, :cond_18

    .line 683
    .line 684
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 685
    .line 686
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 687
    .line 688
    .line 689
    move-result v14

    .line 690
    const/4 v15, 0x0

    .line 691
    :goto_6
    if-ge v15, v14, :cond_18

    .line 692
    .line 693
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 694
    .line 695
    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    move-object v8, v1

    .line 700
    check-cast v8, Lcom/android/server/am/IntentBindRecord;

    .line 701
    .line 702
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    .line 704
    .line 705
    const-wide v1, 0x20b00000019L

    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 711
    .line 712
    .line 713
    move-result-wide v6

    .line 714
    iget-object v1, v8, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 715
    .line 716
    if-eqz v1, :cond_12

    .line 717
    .line 718
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    const/16 v16, 0x0

    .line 723
    .line 724
    const/16 v17, 0x0

    .line 725
    .line 726
    const-wide v3, 0x10b00000001L

    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    const/4 v5, 0x0

    .line 732
    const/16 v21, 0x1

    .line 733
    .line 734
    move-object/from16 v2, p1

    .line 735
    .line 736
    move-wide/from16 v24, v6

    .line 737
    .line 738
    move/from16 v6, v21

    .line 739
    .line 740
    move/from16 v7, v16

    .line 741
    .line 742
    move-object v12, v8

    .line 743
    move/from16 v8, v17

    .line 744
    .line 745
    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 746
    .line 747
    .line 748
    goto :goto_7

    .line 749
    :cond_12
    move-wide/from16 v24, v6

    .line 750
    .line 751
    move-object v12, v8

    .line 752
    :goto_7
    iget-object v1, v12, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 753
    .line 754
    if-eqz v1, :cond_13

    .line 755
    .line 756
    invoke-interface {v1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    const-wide v2, 0x10900000002L

    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 766
    .line 767
    .line 768
    :cond_13
    invoke-virtual {v12}, Lcom/android/server/am/IntentBindRecord;->collectFlags()J

    .line 769
    .line 770
    .line 771
    move-result-wide v1

    .line 772
    const-wide/16 v3, 0x1

    .line 773
    .line 774
    and-long/2addr v1, v3

    .line 775
    const-wide/16 v3, 0x0

    .line 776
    .line 777
    cmp-long v1, v1, v3

    .line 778
    .line 779
    if-eqz v1, :cond_14

    .line 780
    .line 781
    const-wide v1, 0x10800000003L

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    const/4 v5, 0x1

    .line 787
    goto :goto_8

    .line 788
    :cond_14
    const-wide v1, 0x10800000003L

    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    const/4 v5, 0x0

    .line 794
    :goto_8
    invoke-virtual {v9, v1, v2, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 795
    .line 796
    .line 797
    const-wide v5, 0x10800000004L

    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    iget-boolean v7, v12, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 803
    .line 804
    invoke-virtual {v9, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 805
    .line 806
    .line 807
    const-wide v5, 0x10800000005L

    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    iget-boolean v7, v12, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 813
    .line 814
    invoke-virtual {v9, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 815
    .line 816
    .line 817
    const-wide v5, 0x10800000006L

    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    iget-boolean v7, v12, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 823
    .line 824
    invoke-virtual {v9, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 825
    .line 826
    .line 827
    const-wide v5, 0x10800000007L

    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    iget-boolean v7, v12, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 833
    .line 834
    invoke-virtual {v9, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 835
    .line 836
    .line 837
    iget-object v5, v12, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    .line 838
    .line 839
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 840
    .line 841
    .line 842
    move-result v5

    .line 843
    const/4 v6, 0x0

    .line 844
    :goto_9
    if-ge v6, v5, :cond_17

    .line 845
    .line 846
    iget-object v7, v12, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    .line 847
    .line 848
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v7

    .line 852
    check-cast v7, Lcom/android/server/am/AppBindRecord;

    .line 853
    .line 854
    if-eqz v7, :cond_16

    .line 855
    .line 856
    const-wide v1, 0x20b00000008L

    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 862
    .line 863
    .line 864
    move-result-wide v1

    .line 865
    iget-object v8, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 866
    .line 867
    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 868
    .line 869
    const-wide v3, 0x10900000001L

    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    invoke-virtual {v9, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 875
    .line 876
    .line 877
    iget-object v3, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 878
    .line 879
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 880
    .line 881
    move v8, v5

    .line 882
    const-wide v4, 0x10900000002L

    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    invoke-virtual {v9, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 888
    .line 889
    .line 890
    iget-object v3, v7, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    .line 891
    .line 892
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 893
    .line 894
    .line 895
    move-result v3

    .line 896
    const/4 v13, 0x0

    .line 897
    :goto_a
    if-ge v13, v3, :cond_15

    .line 898
    .line 899
    iget-object v4, v7, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    .line 900
    .line 901
    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 906
    .line 907
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 908
    .line 909
    .line 910
    move-result v4

    .line 911
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v4

    .line 915
    move-object v5, v7

    .line 916
    move/from16 v16, v8

    .line 917
    .line 918
    const-wide v7, 0x20900000003L

    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    invoke-virtual {v9, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 924
    .line 925
    .line 926
    add-int/lit8 v13, v13, 0x1

    .line 927
    .line 928
    move-object v7, v5

    .line 929
    move/from16 v8, v16

    .line 930
    .line 931
    const-wide v4, 0x10900000002L

    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    goto :goto_a

    .line 937
    :cond_15
    move/from16 v16, v8

    .line 938
    .line 939
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 940
    .line 941
    .line 942
    goto :goto_b

    .line 943
    :cond_16
    move/from16 v16, v5

    .line 944
    .line 945
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 946
    .line 947
    move/from16 v5, v16

    .line 948
    .line 949
    const-wide v1, 0x10800000003L

    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    const-wide/16 v3, 0x0

    .line 955
    .line 956
    goto :goto_9

    .line 957
    :cond_17
    move-wide/from16 v1, v24

    .line 958
    .line 959
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 960
    .line 961
    .line 962
    add-int/lit8 v15, v15, 0x1

    .line 963
    .line 964
    const-wide/16 v12, 0x0

    .line 965
    .line 966
    goto/16 :goto_6

    .line 967
    .line 968
    :cond_18
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 969
    .line 970
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 971
    .line 972
    .line 973
    move-result v1

    .line 974
    if-lez v1, :cond_1e

    .line 975
    .line 976
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 977
    .line 978
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 979
    .line 980
    .line 981
    move-result v8

    .line 982
    const/4 v12, 0x0

    .line 983
    :goto_c
    if-ge v12, v8, :cond_1e

    .line 984
    .line 985
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 986
    .line 987
    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object v1

    .line 991
    move-object v13, v1

    .line 992
    check-cast v13, Ljava/util/ArrayList;

    .line 993
    .line 994
    const/4 v14, 0x0

    .line 995
    :goto_d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 996
    .line 997
    .line 998
    move-result v1

    .line 999
    if-ge v14, v1, :cond_1d

    .line 1000
    .line 1001
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    move-object v15, v1

    .line 1006
    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    .line 1007
    .line 1008
    iget-object v7, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 1009
    .line 1010
    if-nez v7, :cond_19

    .line 1011
    .line 1012
    move/from16 v17, v8

    .line 1013
    .line 1014
    const-wide v22, 0x10900000001L

    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    goto :goto_e

    .line 1020
    :cond_19
    const-wide v1, 0x20b0000001aL

    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1026
    .line 1027
    .line 1028
    move-result-wide v4

    .line 1029
    invoke-static {v15}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 1030
    .line 1031
    .line 1032
    move-result v1

    .line 1033
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v1

    .line 1037
    const-wide v2, 0x10900000001L

    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    iget-object v1, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1046
    .line 1047
    if-eqz v1, :cond_1a

    .line 1048
    .line 1049
    const-wide v2, 0x10500000002L

    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1055
    .line 1056
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1057
    .line 1058
    .line 1059
    :cond_1a
    sget-object v6, Lcom/android/server/am/ConnectionRecord;->BIND_ORIG_ENUMS:[I

    .line 1060
    .line 1061
    sget-object v16, Lcom/android/server/am/ConnectionRecord;->BIND_PROTO_ENUMS:[I

    .line 1062
    .line 1063
    const-wide v2, 0x20e00000003L

    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    move-wide/from16 v20, v4

    .line 1069
    .line 1070
    iget-wide v4, v15, Lcom/android/server/am/ConnectionRecord;->flags:J

    .line 1071
    .line 1072
    move-object/from16 v1, p1

    .line 1073
    .line 1074
    const-wide v22, 0x10900000001L

    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    move-wide/from16 v26, v20

    .line 1080
    .line 1081
    move/from16 v17, v8

    .line 1082
    .line 1083
    move-object v8, v7

    .line 1084
    move-object/from16 v7, v16

    .line 1085
    .line 1086
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    .line 1087
    .line 1088
    .line 1089
    iget-boolean v1, v15, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 1090
    .line 1091
    if-eqz v1, :cond_1b

    .line 1092
    .line 1093
    const-wide v1, 0x20e00000003L

    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    const/16 v3, 0xf

    .line 1099
    .line 1100
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1101
    .line 1102
    .line 1103
    :cond_1b
    iget-object v1, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 1104
    .line 1105
    if-eqz v1, :cond_1c

    .line 1106
    .line 1107
    const-wide v2, 0x10900000004L

    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 1113
    .line 1114
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    :cond_1c
    move-wide/from16 v1, v26

    .line 1118
    .line 1119
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1120
    .line 1121
    .line 1122
    :goto_e
    add-int/lit8 v14, v14, 0x1

    .line 1123
    .line 1124
    move/from16 v8, v17

    .line 1125
    .line 1126
    goto/16 :goto_d

    .line 1127
    .line 1128
    :cond_1d
    move/from16 v17, v8

    .line 1129
    .line 1130
    const-wide v22, 0x10900000001L

    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    add-int/lit8 v12, v12, 0x1

    .line 1136
    .line 1137
    goto/16 :goto_c

    .line 1138
    .line 1139
    :cond_1e
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 1140
    .line 1141
    if-eqz v1, :cond_1f

    .line 1142
    .line 1143
    iget v2, v1, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    .line 1144
    .line 1145
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 1146
    .line 1147
    iget v1, v1, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 1148
    .line 1149
    if-ne v2, v1, :cond_1f

    .line 1150
    .line 1151
    const-wide v1, 0x10b0000001cL

    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1157
    .line 1158
    .line 1159
    move-result-wide v1

    .line 1160
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 1161
    .line 1162
    iget-wide v3, v3, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    .line 1163
    .line 1164
    const-wide v5, 0x10300000001L

    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v9, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1170
    .line 1171
    .line 1172
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 1173
    .line 1174
    iget v3, v3, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartId:I

    .line 1175
    .line 1176
    const-wide v4, 0x10500000003L

    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v9, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1182
    .line 1183
    .line 1184
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 1185
    .line 1186
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    .line 1187
    .line 1188
    .line 1189
    move-result-wide v3

    .line 1190
    const-wide v5, 0x10300000004L

    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v9, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1196
    .line 1197
    .line 1198
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 1199
    .line 1200
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    .line 1201
    .line 1202
    .line 1203
    move-result-wide v3

    .line 1204
    const-wide v5, 0x10300000005L

    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v9, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1210
    .line 1211
    .line 1212
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 1213
    .line 1214
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    .line 1215
    .line 1216
    .line 1217
    move-result-wide v3

    .line 1218
    const-wide v5, 0x10300000006L

    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v9, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1227
    .line 1228
    .line 1229
    :cond_1f
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1230
    .line 1231
    .line 1232
    return-void
.end method

.method public final findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 17
    .line 18
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    .line 19
    .line 20
    if-ne v3, p1, :cond_1

    .line 21
    .line 22
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    .line 23
    .line 24
    if-ne v3, p2, :cond_1

    .line 25
    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object v2

    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFgsAllowStart()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/am/Flags;->newFgsRestrictionLogic()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7
    .line 8
    const-wide/32 v1, 0x128cab2d

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
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

    .line 28
    .line 29
    iget v2, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 30
    .line 31
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 32
    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    if-eq v2, v1, :cond_3

    .line 37
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

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7
    .line 8
    const-wide/32 v1, 0x128caab5

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
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

    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 30
    .line 31
    if-eq v0, v1, :cond_2

    .line 32
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 8
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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 7
    .line 8
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 11
    .line 12
    and-int/lit8 v2, v2, 0x8

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 19
    .line 20
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 23
    .line 24
    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 25
    .line 26
    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v3, v2, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 34
    .line 35
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Lcom/android/internal/app/procstats/ServiceState;->applyNewOwner(Ljava/lang/Object;)V

    .line 45
    .line 46
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

    .line 52
    .line 53
    return-object p0
.end method

.method public final hasAutoCreateConnections()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
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

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/util/ArrayList;

    .line 19
    .line 20
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v2, v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 31
    .line 32
    invoke-virtual {v4, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    return v1

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 43
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

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
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

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7
    .line 8
    const-wide/32 v1, 0x12b256f1

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
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

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    if-eq v0, v1, :cond_2

    .line 32
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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 10
    .line 11
    const/16 v0, 0x800

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
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

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 6
    .line 7
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x8

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 18
    .line 19
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 22
    .line 23
    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 24
    .line 25
    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v0, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v3, v2, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 33
    .line 34
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 40
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

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final maybeLogFgsLogicChange()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v0, v2, :cond_0

    .line 7
    .line 8
    move v1, v0

    .line 9
    :cond_0
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 10
    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v3

    .line 15
    :goto_0
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 16
    .line 17
    iget v4, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 18
    .line 19
    iget v5, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 20
    .line 21
    if-eq v3, v2, :cond_2

    .line 22
    .line 23
    move v4, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    if-eq v4, v2, :cond_3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    move v4, v5

    .line 29
    :goto_1
    if-eq v3, v2, :cond_4

    .line 30
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

    .line 36
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

    .line 41
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

    .line 46
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

    .line 51
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

    .line 56
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

    .line 61
    .line 62
    goto :goto_8

    .line 63
    :cond_a
    move v5, v6

    .line 64
    :goto_8
    if-nez v7, :cond_b

    .line 65
    .line 66
    if-nez v5, :cond_b

    .line 67
    .line 68
    return-void

    .line 69
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v6, "FGS logic changed:"

    .line 72
    .line 73
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v6, ""

    .line 77
    .line 78
    if-eqz v7, :cond_c

    .line 79
    .line 80
    const-string v7, " [WIU changed]"

    .line 81
    .line 82
    goto :goto_9

    .line 83
    :cond_c
    move-object v7, v6

    .line 84
    :goto_9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    if-eqz v5, :cond_d

    .line 88
    .line 89
    const-string v6, " [BFSL changed]"

    .line 90
    .line 91
    :cond_d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v5, " Orig WIU:"

    .line 95
    .line 96
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, " New WIU:"

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, " Orig BFSL:"

    .line 119
    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-static {v4}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v0, " New BFSL:"

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-static {v3}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v1, " cmp: "

    .line 145
    .line 146
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, " sdk: "

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 164
    .line 165
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 166
    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    const-string v0, "ActivityManager"

    .line 182
    .line 183
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final postNotification(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 6
    .line 7
    if-eqz v5, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 16
    .line 17
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    iget v7, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 26
    .line 27
    new-instance v10, Lcom/android/server/am/ServiceRecord$2;

    .line 28
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

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final setProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
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

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    if-eq v0, p1, :cond_5

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsNothing()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 82
    .line 83
    .line 84
    :cond_5
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateProcessStateOnRequest()V

    .line 87
    .line 88
    .line 89
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    if-lez v0, :cond_6

    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 97
    .line 98
    iput-object p0, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    .line 99
    .line 100
    iput v0, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 101
    .line 102
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    .line 103
    .line 104
    iput v0, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    .line 105
    .line 106
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    .line 107
    .line 108
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 109
    .line 110
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    add-int/lit8 v0, v0, -0x1

    .line 117
    .line 118
    :goto_2
    if-ltz v0, :cond_9

    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Ljava/util/ArrayList;

    .line 127
    .line 128
    move v3, v1

    .line 129
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-ge v3, v4, :cond_8

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 140
    .line 141
    if-eqz p1, :cond_7

    .line 142
    .line 143
    invoke-virtual {v4}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 148
    .line 149
    .line 150
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_9
    if-eqz p1, :cond_a

    .line 157
    .line 158
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 164
    .line 165
    .line 166
    :cond_a
    return-void
.end method

.method public final shouldTriggerShortFgsTimedEvent(JJ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 8
    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 12
    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    iget v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 39
    .line 40
    if-ne v0, p0, :cond_2

    .line 41
    .line 42
    cmp-long p0, p1, p3

    .line 43
    .line 44
    if-gtz p0, :cond_2

    .line 45
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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x80

    .line 7
    .line 8
    const-string v1, "ServiceRecord{"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " u"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    const-string v1, " c:"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :cond_1
    const/16 v1, 0x7d

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    .line 69
    .line 70
    return-object v0
.end method

.method public final updateKeepWarmLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 24
    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v2

    .line 34
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 56
    .line 57
    iget v4, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
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

    .line 76
    .line 77
    return-void
.end method

.method public final updateOomAdjSeq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 6
    .line 7
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAdjSeq:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final updateProcessStateOnRequest()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 14
    .line 15
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v0, 0x14

    .line 19
    .line 20
    :goto_0
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mProcessStateOnRequest:I

    .line 21
    .line 22
    return-void
.end method

.method public final wasOomAdjUpdated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 6
    .line 7
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAdjSeq:I

    .line 10
    .line 11
    if-le v0, p0, :cond_0

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
