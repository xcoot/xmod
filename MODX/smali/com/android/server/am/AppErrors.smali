.class public final Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final crashDetectionAndOptimization:Lcom/android/server/am/CrashDetectionAndOptimization;

.field public mAppsNotReportingCrashes:Landroid/util/ArraySet;

.field public final mBadProcessLock:Ljava/lang/Object;

.field public volatile mBadProcesses:Lcom/android/internal/app/ProcessMap;

.field public final mContext:Landroid/content/Context;

.field public final mPackageWatchdog:Lcom/android/server/PackageWatchdog;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

.field public final mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

.field public final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

.field public final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/PackageWatchdog;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 6
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 11
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 13
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 18
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 20
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 25
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 27
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 32
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 34
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 39
    new-instance v0, Ljava/lang/Object;

    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/android/server/am/CrashDetectionAndOptimization;

    .line 48
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->crashDetectionAndOptimization:Lcom/android/server/am/CrashDetectionAndOptimization;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 56
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 58
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 60
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 66
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public static createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 3
    iget-object v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 8
    :goto_0
    move-object v1, v2

    .line 9
    goto :goto_3

    .line 10
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 12
    if-nez v1, :cond_1

    .line 14
    iget-boolean v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 16
    if-nez v1, :cond_1

    .line 18
    iget-boolean v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    .line 20
    if-nez v1, :cond_1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Landroid/app/ApplicationErrorReport;

    .line 25
    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 28
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 30
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 32
    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 34
    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 36
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 42
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 44
    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 46
    iput-wide p1, v1, Landroid/app/ApplicationErrorReport;->time:J

    .line 48
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 50
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 52
    const/4 p2, 0x1

    .line 53
    and-int/2addr p1, p2

    .line 54
    if-eqz p1, :cond_2

    .line 56
    move p1, p2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 p1, 0x0

    .line 59
    :goto_1
    iput-boolean p1, v1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 61
    iget-boolean p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 63
    if-nez p1, :cond_5

    .line 65
    iget-boolean p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    .line 67
    if-eqz p1, :cond_3

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    iget-boolean p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 72
    if-eqz p1, :cond_6

    .line 74
    iget-object p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 76
    if-nez p1, :cond_4

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/4 p2, 0x2

    .line 80
    iput p2, v1, Landroid/app/ApplicationErrorReport;->type:I

    .line 82
    new-instance p2, Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 84
    invoke-direct {p2}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    .line 87
    iput-object p2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 89
    iget-object p3, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 91
    iput-object p3, p2, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 93
    iget-object p3, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 95
    iput-object p3, p2, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 97
    iget-object p1, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 99
    iput-object p1, p2, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    :goto_2
    iput p2, v1, Landroid/app/ApplicationErrorReport;->type:I

    .line 104
    iput-object p3, v1, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 106
    :cond_6
    :goto_3
    if-nez v1, :cond_7

    .line 108
    return-object v2

    .line 109
    :cond_7
    new-instance p1, Landroid/content/Intent;

    .line 111
    const-string p2, "android.intent.action.APP_ERROR"

    .line 113
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 118
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 120
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    const-string p0, "android.intent.extra.BUG_REPORT"

    .line 125
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    const/high16 p0, 0x10000000

    .line 130
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    return-object p1
.end method

.method public static generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 3
    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 6
    iput p1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 8
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 10
    iput-object p1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 12
    iget p1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 14
    iput p1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 16
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 18
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 20
    iput p0, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 22
    iput-object p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 24
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 26
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 28
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 30
    return-object v0
.end method

.method public static resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_0
    if-ltz v0, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 12
    move-result v1

    .line 13
    if-nez p1, :cond_1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne p3, v2, :cond_0

    .line 18
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 21
    move-result v1

    .line 22
    if-ne v1, p2, :cond_2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 28
    move-result v2

    .line 29
    if-ne v1, v2, :cond_2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 35
    move-result v1

    .line 36
    if-ne v1, p3, :cond_2

    .line 38
    :goto_1
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 41
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    return-void
.end method


# virtual methods
.method public final crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .locals 24

    .line 1
    move-object/from16 v11, p0

    .line 3
    move-object/from16 v12, p1

    .line 5
    move-object/from16 v0, p2

    .line 7
    move/from16 v9, p3

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    move-result-wide v13

    .line 13
    iget-object v15, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 15
    iget-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 17
    iget-object v10, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 19
    if-eqz v15, :cond_1

    .line 21
    if-eqz v1, :cond_1

    .line 23
    const-string v2, ": "

    .line 25
    invoke-static {v15, v2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    :cond_0
    move-object v7, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-eqz v15, :cond_0

    .line 33
    move-object v7, v15

    .line 34
    :goto_0
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->crashDetectionAndOptimization:Lcom/android/server/am/CrashDetectionAndOptimization;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    if-eqz v12, :cond_3

    .line 41
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 43
    if-eqz v1, :cond_3

    .line 45
    const-string v1, "Native crash"

    .line 47
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 53
    new-instance v1, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;

    .line 55
    invoke-direct {v1, v12}, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 58
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const-string/jumbo v1, "java.lang.ClassNotFoundException"

    .line 65
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 71
    new-instance v1, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;

    .line 73
    invoke-direct {v1, v12}, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 79
    :cond_3
    :goto_1
    if-nez v12, :cond_5

    .line 81
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 84
    move-result v1

    .line 85
    if-ne v1, v9, :cond_4

    .line 87
    const-string/jumbo v1, "system_server"

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    const-string/jumbo v1, "unknown"

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 97
    :goto_2
    const/4 v8, 0x0

    .line 98
    if-nez v12, :cond_6

    .line 100
    move v2, v8

    .line 101
    goto :goto_3

    .line 102
    :cond_6
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 104
    :goto_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 107
    move-result v19

    .line 108
    const-string v20, "AppErrors"

    .line 110
    iget-object v3, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 112
    const-string v4, "Application "

    .line 114
    const-string v5, " crashed due to "

    .line 116
    invoke-static {v4, v1, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object v21

    .line 120
    const-string v22, ""

    .line 122
    const/16 v17, 0x5

    .line 124
    const/16 v18, 0x0

    .line 126
    const/16 v16, 0x3

    .line 128
    move/from16 v23, v2

    .line 130
    invoke-static/range {v16 .. v23}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    iget-object v3, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 135
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 137
    const-string/jumbo v18, "crash"

    .line 140
    iget-object v4, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    .line 142
    iget-object v5, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 144
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    const/16 v21, 0x0

    .line 149
    move-object/from16 v16, v1

    .line 151
    move/from16 v17, v2

    .line 153
    move-object/from16 v19, v4

    .line 155
    move-object/from16 v20, v5

    .line 157
    invoke-static/range {v16 .. v21}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 160
    const/4 v5, 0x3

    .line 161
    if-eqz v12, :cond_9

    .line 163
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 165
    const-string/jumbo v2, "com.android.systemui:"

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_7

    .line 174
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v1, v5, v2}, Lcom/android/server/PackageWatchdog;->onPackageFailure(ILjava/util/List;)V

    .line 183
    :cond_7
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 185
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 188
    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 191
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 193
    const-string v3, "Native crash"

    .line 195
    iget-object v4, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_8

    .line 203
    const/4 v3, 0x5

    .line 204
    goto :goto_4

    .line 205
    :cond_8
    const/4 v3, 0x4

    .line 206
    :goto_4
    const-string/jumbo v4, "crash"

    .line 209
    invoke-virtual {v2, v12, v3, v8, v4}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 212
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 216
    goto :goto_5

    .line 217
    :catchall_0
    move-exception v0

    .line 218
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 222
    throw v0

    .line 223
    :cond_9
    :goto_5
    if-eqz v12, :cond_a

    .line 225
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 227
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    .line 230
    move-result v1

    .line 231
    move v4, v1

    .line 232
    goto :goto_6

    .line 233
    :cond_a
    move v4, v8

    .line 234
    :goto_6
    new-instance v3, Lcom/android/server/am/AppErrorResult;

    .line 236
    invoke-direct {v3}, Lcom/android/server/am/AppErrorResult;-><init>()V

    .line 239
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 241
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 244
    monitor-enter v2

    .line 245
    :try_start_2
    const-string v1, "Native crash"

    .line 247
    iget-object v5, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 249
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    move-result v1

    .line 253
    const/16 v17, 0x0

    .line 255
    if-nez v1, :cond_d

    .line 257
    new-instance v1, Landroid/os/BugreportParams;

    .line 259
    const/16 v5, 0xb

    .line 261
    invoke-direct {v1, v5}, Landroid/os/BugreportParams;-><init>(I)V

    .line 264
    new-instance v5, Landroid/os/BugreportParams;

    .line 266
    const/16 v6, 0xe

    .line 268
    invoke-direct {v5, v6}, Landroid/os/BugreportParams;-><init>(I)V

    .line 271
    if-nez v12, :cond_b

    .line 273
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 276
    move-result v6

    .line 277
    if-ne v6, v9, :cond_b

    .line 279
    const-string/jumbo v5, "system_server"

    .line 282
    invoke-static {v1, v5}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    .line 285
    goto :goto_8

    .line 286
    :catchall_1
    move-exception v0

    .line 287
    move-object/from16 v19, v2

    .line 289
    goto/16 :goto_11

    .line 291
    :cond_b
    if-nez v12, :cond_c

    .line 293
    move-object/from16 v1, v17

    .line 295
    goto :goto_7

    .line 296
    :cond_c
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 298
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 300
    :goto_7
    invoke-static {v5, v1}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    :cond_d
    :goto_8
    move-object/from16 v1, p0

    .line 305
    move-object/from16 v19, v2

    .line 307
    move-object/from16 v2, p1

    .line 309
    move-object v6, v3

    .line 310
    move-object/from16 v3, p2

    .line 312
    move v5, v4

    .line 313
    move-object v4, v15

    .line 314
    move v0, v5

    .line 315
    move-object v5, v7

    .line 316
    move-object/from16 v16, v15

    .line 318
    move-object v15, v6

    .line 319
    move-object v6, v10

    .line 320
    move-object/from16 v18, v7

    .line 322
    move-wide v7, v13

    .line 323
    move/from16 v9, p3

    .line 325
    move-object/from16 v20, v10

    .line 327
    move/from16 v10, p4

    .line 329
    :try_start_3
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_e

    .line 335
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 336
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 339
    return-void

    .line 340
    :catchall_2
    move-exception v0

    .line 341
    goto/16 :goto_11

    .line 343
    :cond_e
    const/4 v7, 0x2

    .line 344
    if-ne v0, v7, :cond_f

    .line 346
    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 347
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 350
    return-void

    .line 351
    :cond_f
    if-eqz v12, :cond_10

    .line 353
    :try_start_5
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 355
    if-eqz v0, :cond_10

    .line 357
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 358
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 361
    return-void

    .line 362
    :cond_10
    if-eqz v12, :cond_11

    .line 364
    :try_start_6
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 366
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 368
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 370
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 372
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(ILjava/lang/String;)V

    .line 375
    :cond_11
    if-eqz v12, :cond_12

    .line 377
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 379
    const/16 v1, 0x2710

    .line 381
    if-lt v0, v1, :cond_12

    .line 383
    new-instance v0, Lcom/android/server/am/AppErrors$1;

    .line 385
    invoke-direct {v0, v11, v12}, Lcom/android/server/am/AppErrors$1;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    .line 388
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 391
    :cond_12
    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    .line 393
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object v15, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 398
    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 400
    if-eqz v12, :cond_20

    .line 402
    move-object/from16 v1, p0

    .line 404
    move-object/from16 v2, p1

    .line 406
    move-object/from16 v3, v16

    .line 408
    move-object/from16 v4, v18

    .line 410
    move-object/from16 v5, v20

    .line 412
    move-object v6, v0

    .line 413
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 416
    move-result v1

    .line 417
    if-nez v1, :cond_13

    .line 419
    goto/16 :goto_10

    .line 421
    :cond_13
    move-object/from16 v1, p2

    .line 423
    iput-object v1, v0, Lcom/android/server/am/AppErrorDialog$Data;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 425
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 428
    move-result-object v2

    .line 429
    const/4 v3, 0x1

    .line 430
    iput v3, v2, Landroid/os/Message;->what:I

    .line 432
    iget v9, v0, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 434
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 436
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 438
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 440
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 443
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 444
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 447
    monitor-enter v15

    .line 448
    :catch_0
    :goto_9
    :try_start_7
    iget-boolean v0, v15, Lcom/android/server/am/AppErrorResult;->mHasResult:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 450
    if-nez v0, :cond_14

    .line 452
    :try_start_8
    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 455
    goto :goto_9

    .line 456
    :catchall_3
    move-exception v0

    .line 457
    goto/16 :goto_f

    .line 459
    :cond_14
    :try_start_9
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 460
    iget v0, v15, Lcom/android/server/am/AppErrorResult;->mResult:I

    .line 462
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 464
    const/16 v4, 0x13c

    .line 466
    invoke-static {v2, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 469
    const/4 v2, 0x6

    .line 470
    if-eq v0, v2, :cond_15

    .line 472
    const/4 v2, 0x7

    .line 473
    if-ne v0, v2, :cond_16

    .line 475
    :cond_15
    move v0, v3

    .line 476
    :cond_16
    if-eq v0, v3, :cond_1d

    .line 478
    if-eq v0, v7, :cond_1b

    .line 480
    const/4 v2, 0x3

    .line 481
    if-eq v0, v2, :cond_1a

    .line 483
    const/4 v1, 0x5

    .line 484
    if-eq v0, v1, :cond_18

    .line 486
    const/16 v1, 0x8

    .line 488
    if-eq v0, v1, :cond_17

    .line 490
    goto/16 :goto_a

    .line 492
    :cond_17
    new-instance v0, Landroid/content/Intent;

    .line 494
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 496
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    .line 501
    const-string/jumbo v2, "package:"

    .line 504
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 509
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 511
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    move-result-object v1

    .line 518
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 525
    const/high16 v1, 0x10000000

    .line 527
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 530
    goto/16 :goto_c

    .line 532
    :cond_18
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 534
    monitor-enter v1

    .line 535
    :try_start_a
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 537
    if-nez v0, :cond_19

    .line 539
    new-instance v0, Landroid/util/ArraySet;

    .line 541
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 544
    iput-object v0, v11, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 546
    :cond_19
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 548
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 550
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 552
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 555
    monitor-exit v1

    .line 556
    goto :goto_a

    .line 557
    :catchall_4
    move-exception v0

    .line 558
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 559
    throw v0

    .line 560
    :cond_1a
    iget-object v10, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 562
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 565
    monitor-enter v10

    .line 566
    :try_start_b
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 568
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 570
    const-string/jumbo v7, "crash"

    .line 573
    const/4 v4, 0x1

    .line 574
    const/4 v5, 0x4

    .line 575
    const/4 v6, 0x0

    .line 576
    const/4 v8, 0x1

    .line 577
    const/4 v3, 0x0

    .line 578
    move-object/from16 v2, p1

    .line 580
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 583
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 584
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 587
    const/4 v0, -0x1

    .line 588
    if-eq v9, v0, :cond_1c

    .line 590
    :try_start_c
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 592
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 595
    move-result-object v1

    .line 596
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v0, v9, v1}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1

    .line 603
    goto :goto_a

    .line 604
    :catch_1
    move-exception v0

    .line 605
    const-string v1, "ActivityManager"

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    .line 609
    const-string v3, "Could not restart taskId="

    .line 611
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    move-result-object v2

    .line 621
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    goto :goto_a

    .line 625
    :catchall_5
    move-exception v0

    .line 626
    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 627
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 630
    throw v0

    .line 631
    :cond_1b
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 633
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 636
    monitor-enter v2

    .line 637
    :try_start_e
    invoke-static {v12, v13, v14, v1}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    .line 640
    move-result-object v17

    .line 641
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 642
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 645
    :cond_1c
    :goto_a
    move-object/from16 v0, v17

    .line 647
    goto :goto_c

    .line 648
    :catchall_6
    move-exception v0

    .line 649
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 650
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 653
    throw v0

    .line 654
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 657
    move-result-wide v9

    .line 658
    :try_start_10
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 660
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 662
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 664
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 666
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 668
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 670
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 673
    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 674
    :try_start_11
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->handleAppCrash()V

    .line 677
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 678
    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 681
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 683
    if-nez v0, :cond_1e

    .line 685
    iget-object v13, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 687
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 690
    monitor-enter v13
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 691
    :try_start_13
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 693
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 695
    const-string/jumbo v7, "crash"

    .line 698
    const/4 v4, 0x0

    .line 699
    const/4 v5, 0x4

    .line 700
    const/4 v6, 0x0

    .line 701
    const/4 v8, 0x1

    .line 702
    const/4 v3, 0x0

    .line 703
    move-object/from16 v2, p1

    .line 705
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 708
    monitor-exit v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 709
    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 712
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 714
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 716
    const/4 v1, 0x0

    .line 717
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 720
    goto :goto_b

    .line 721
    :catchall_7
    move-exception v0

    .line 722
    goto :goto_e

    .line 723
    :catchall_8
    move-exception v0

    .line 724
    :try_start_15
    monitor-exit v13
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 725
    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 728
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 729
    :cond_1e
    :goto_b
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 732
    goto :goto_a

    .line 733
    :goto_c
    if-eqz v0, :cond_1f

    .line 735
    :try_start_17
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 737
    new-instance v2, Landroid/os/UserHandle;

    .line 739
    iget v3, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 741
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 744
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_17} :catch_2

    .line 747
    goto :goto_d

    .line 748
    :catch_2
    move-exception v0

    .line 749
    const-string v1, "ActivityManager"

    .line 751
    const-string/jumbo v2, "bug report receiver dissappeared"

    .line 754
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    :cond_1f
    :goto_d
    return-void

    .line 758
    :catchall_9
    move-exception v0

    .line 759
    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 760
    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 763
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 764
    :goto_e
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 767
    throw v0

    .line 768
    :goto_f
    :try_start_1a
    monitor-exit v15
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 769
    throw v0

    .line 770
    :cond_20
    :goto_10
    :try_start_1b
    monitor-exit v19
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 771
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 774
    return-void

    .line 775
    :goto_11
    :try_start_1c
    monitor-exit v19
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 776
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 779
    throw v0
.end method

.method public final dumpDebugLPr(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 9
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 11
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 21
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 31
    return-void

    .line 32
    :cond_0
    const-wide v4, 0x10b0000000dL

    .line 37
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 40
    move-result-wide v4

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 44
    move-result-wide v6

    .line 45
    const-wide v8, 0x10300000001L

    .line 50
    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 53
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 60
    move-result v6

    .line 61
    const-wide v11, 0x10900000001L

    .line 66
    if-nez v6, :cond_4

    .line 68
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 75
    move-result v6

    .line 76
    const/4 v15, 0x0

    .line 77
    :goto_0
    if-ge v15, v6, :cond_4

    .line 79
    const-wide v7, 0x20b00000003L

    .line 84
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 87
    move-result-wide v7

    .line 88
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 91
    move-result-object v16

    .line 92
    move-object/from16 v9, v16

    .line 94
    check-cast v9, Ljava/lang/String;

    .line 96
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 99
    move-result-object v10

    .line 100
    check-cast v10, Landroid/util/SparseArray;

    .line 102
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 105
    move-result v13

    .line 106
    invoke-virtual {v1, v11, v12, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 109
    const/4 v14, 0x0

    .line 110
    :goto_1
    if-ge v14, v13, :cond_3

    .line 112
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 115
    move-result v11

    .line 116
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 118
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 120
    iget-object v12, v12, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 122
    invoke-virtual {v12, v9, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 125
    move-result-object v12

    .line 126
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 128
    if-eqz v2, :cond_2

    .line 130
    if-eqz v12, :cond_1

    .line 132
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 134
    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 137
    move-result v12

    .line 138
    if-nez v12, :cond_2

    .line 140
    :cond_1
    move-object/from16 v22, v3

    .line 142
    move-wide/from16 v20, v4

    .line 144
    move v11, v6

    .line 145
    move-object/from16 v16, v9

    .line 147
    move-object/from16 v19, v10

    .line 149
    goto :goto_2

    .line 150
    :cond_2
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 153
    move-result-object v12

    .line 154
    check-cast v12, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 156
    move-wide/from16 v20, v4

    .line 158
    move-object/from16 v16, v9

    .line 160
    move-object/from16 v19, v10

    .line 162
    const-wide v9, 0x20b00000002L

    .line 167
    move-object v5, v3

    .line 168
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 171
    move-result-wide v3

    .line 172
    const-wide v9, 0x10500000001L

    .line 177
    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 180
    iget-wide v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    .line 182
    move-object/from16 v22, v5

    .line 184
    move v11, v6

    .line 185
    const-wide v5, 0x10300000002L

    .line 190
    invoke-virtual {v1, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 193
    const-wide v5, 0x10900000003L

    .line 198
    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    .line 200
    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 203
    const-wide v5, 0x10900000004L

    .line 208
    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    .line 210
    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 213
    const-wide v5, 0x10900000005L

    .line 218
    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 220
    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 223
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 226
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 228
    move v6, v11

    .line 229
    move-object/from16 v9, v16

    .line 231
    move-object/from16 v10, v19

    .line 233
    move-wide/from16 v4, v20

    .line 235
    move-object/from16 v3, v22

    .line 237
    const-wide v11, 0x10900000001L

    .line 242
    goto/16 :goto_1

    .line 244
    :cond_3
    move-object/from16 v22, v3

    .line 246
    move-wide/from16 v20, v4

    .line 248
    move v11, v6

    .line 249
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 252
    add-int/lit8 v15, v15, 0x1

    .line 254
    const-wide v11, 0x10900000001L

    .line 259
    goto/16 :goto_0

    .line 261
    :cond_4
    move-wide/from16 v20, v4

    .line 263
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 265
    monitor-enter v3

    .line 266
    :try_start_0
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 268
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 271
    move-result-object v4

    .line 272
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 275
    move-result v4

    .line 276
    if-nez v4, :cond_8

    .line 278
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 280
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 283
    move-result-object v4

    .line 284
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 287
    move-result v5

    .line 288
    const/4 v6, 0x0

    .line 289
    :goto_3
    if-ge v6, v5, :cond_8

    .line 291
    const-wide v7, 0x20b00000002L

    .line 296
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 299
    move-result-wide v9

    .line 300
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 303
    move-result-object v7

    .line 304
    check-cast v7, Ljava/lang/String;

    .line 306
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 309
    move-result-object v8

    .line 310
    check-cast v8, Landroid/util/SparseArray;

    .line 312
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 315
    move-result v11

    .line 316
    const-wide v12, 0x10900000001L

    .line 321
    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 324
    const/4 v14, 0x0

    .line 325
    :goto_4
    if-ge v14, v11, :cond_7

    .line 327
    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 330
    move-result v15

    .line 331
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 333
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 335
    iget-object v12, v12, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 337
    invoke-virtual {v12, v7, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 340
    move-result-object v12

    .line 341
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 343
    if-eqz v2, :cond_6

    .line 345
    if-eqz v12, :cond_5

    .line 347
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 349
    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 352
    move-result v12

    .line 353
    if-nez v12, :cond_6

    .line 355
    :cond_5
    move-object/from16 v16, v4

    .line 357
    move/from16 v17, v5

    .line 359
    move-object v15, v7

    .line 360
    move-object/from16 v18, v8

    .line 362
    const-wide v7, 0x10300000002L

    .line 367
    goto :goto_6

    .line 368
    :cond_6
    move-object/from16 v16, v4

    .line 370
    move/from16 v17, v5

    .line 372
    const-wide v12, 0x20b00000002L

    .line 377
    goto :goto_5

    .line 378
    :catchall_0
    move-exception v0

    .line 379
    goto :goto_7

    .line 380
    :goto_5
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 383
    move-result-wide v4

    .line 384
    const-wide v12, 0x10500000001L

    .line 389
    invoke-virtual {v1, v12, v13, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 392
    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 395
    move-result-object v15

    .line 396
    check-cast v15, Ljava/lang/Long;

    .line 398
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 401
    move-result-wide v12

    .line 402
    move-object v15, v7

    .line 403
    move-object/from16 v18, v8

    .line 405
    const-wide v7, 0x10300000002L

    .line 410
    invoke-virtual {v1, v7, v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 413
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 416
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 418
    move-object v7, v15

    .line 419
    move-object/from16 v4, v16

    .line 421
    move/from16 v5, v17

    .line 423
    move-object/from16 v8, v18

    .line 425
    const-wide v12, 0x10900000001L

    .line 430
    goto :goto_4

    .line 431
    :cond_7
    move-object/from16 v16, v4

    .line 433
    move/from16 v17, v5

    .line 435
    const-wide v7, 0x10300000002L

    .line 440
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 443
    add-int/lit8 v6, v6, 0x1

    .line 445
    move-object/from16 v4, v16

    .line 447
    move/from16 v5, v17

    .line 449
    goto/16 :goto_3

    .line 451
    :cond_8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    move-wide/from16 v2, v20

    .line 454
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 457
    return-void

    .line 458
    :goto_7
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    throw v0
.end method

.method public final dumpLPr(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    move-result-wide v3

    .line 11
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 13
    monitor-enter v5

    .line 14
    :try_start_0
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 16
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 23
    move-result v6

    .line 24
    if-nez v6, :cond_5

    .line 26
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 28
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 35
    move-result v9

    .line 36
    move/from16 v10, p3

    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x0

    .line 40
    :goto_0
    if-ge v11, v9, :cond_6

    .line 42
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 45
    move-result-object v13

    .line 46
    check-cast v13, Ljava/lang/String;

    .line 48
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 51
    move-result-object v14

    .line 52
    check-cast v14, Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 57
    move-result v15

    .line 58
    const/4 v7, 0x0

    .line 59
    :goto_1
    if-ge v7, v15, :cond_4

    .line 61
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 64
    move-result v8

    .line 65
    move-object/from16 v16, v6

    .line 67
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 69
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 71
    iget-object v6, v6, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 73
    invoke-virtual {v6, v13, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 79
    if-eqz v2, :cond_1

    .line 81
    if-eqz v6, :cond_0

    .line 83
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 85
    invoke-virtual {v6, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 88
    move-result v6

    .line 89
    if-nez v6, :cond_1

    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto/16 :goto_b

    .line 95
    :cond_0
    :goto_2
    move v6, v9

    .line 96
    goto :goto_3

    .line 97
    :cond_1
    if-nez v12, :cond_3

    .line 99
    if-eqz v10, :cond_2

    .line 101
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 104
    :cond_2
    const-string v6, "  Time since processes crashed:"

    .line 106
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const/4 v10, 0x1

    .line 110
    const/4 v12, 0x1

    .line 111
    :cond_3
    const-string v6, "    Process "

    .line 113
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    const-string v6, " uid "

    .line 121
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 127
    const-string v6, ": last crashed "

    .line 129
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 135
    move-result-object v6

    .line 136
    check-cast v6, Ljava/lang/Long;

    .line 138
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 141
    move-result-wide v17

    .line 142
    move v6, v9

    .line 143
    sub-long v8, v3, v17

    .line 145
    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 148
    const-string v8, " ago"

    .line 150
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 155
    move v9, v6

    .line 156
    move-object/from16 v6, v16

    .line 158
    goto :goto_1

    .line 159
    :cond_4
    move-object/from16 v16, v6

    .line 161
    move v6, v9

    .line 162
    add-int/lit8 v11, v11, 0x1

    .line 164
    move-object/from16 v6, v16

    .line 166
    goto :goto_0

    .line 167
    :cond_5
    move/from16 v10, p3

    .line 169
    :cond_6
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 171
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 178
    move-result v6

    .line 179
    if-nez v6, :cond_c

    .line 181
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 183
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 190
    move-result v7

    .line 191
    const/4 v8, 0x0

    .line 192
    const/4 v9, 0x0

    .line 193
    :goto_4
    if-ge v8, v7, :cond_c

    .line 195
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 198
    move-result-object v11

    .line 199
    check-cast v11, Ljava/lang/String;

    .line 201
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 204
    move-result-object v12

    .line 205
    check-cast v12, Landroid/util/SparseArray;

    .line 207
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 210
    move-result v13

    .line 211
    const/4 v14, 0x0

    .line 212
    :goto_5
    if-ge v14, v13, :cond_b

    .line 214
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 217
    move-result v15

    .line 218
    move-object/from16 p3, v6

    .line 220
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 222
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 224
    iget-object v6, v6, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 226
    invoke-virtual {v6, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 229
    move-result-object v6

    .line 230
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 232
    if-eqz v2, :cond_8

    .line 234
    if-eqz v6, :cond_7

    .line 236
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 238
    invoke-virtual {v6, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 241
    move-result v6

    .line 242
    if-nez v6, :cond_8

    .line 244
    :cond_7
    move v15, v7

    .line 245
    goto :goto_6

    .line 246
    :cond_8
    if-nez v9, :cond_a

    .line 248
    if-eqz v10, :cond_9

    .line 250
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 253
    :cond_9
    const-string v6, "  First time processes crashed and counts:"

    .line 255
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    const/4 v9, 0x1

    .line 259
    const/4 v10, 0x1

    .line 260
    :cond_a
    const-string v6, "    Process "

    .line 262
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string v6, " uid "

    .line 270
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 276
    const-string v6, ": first crashed "

    .line 278
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 284
    move-result-object v6

    .line 285
    check-cast v6, Landroid/util/Pair;

    .line 287
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 289
    check-cast v6, Ljava/lang/Long;

    .line 291
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 294
    move-result-wide v16

    .line 295
    move v15, v7

    .line 296
    sub-long v6, v3, v16

    .line 298
    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 301
    const-string v6, " ago; crashes since then: "

    .line 303
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 309
    move-result-object v6

    .line 310
    check-cast v6, Landroid/util/Pair;

    .line 312
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 314
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 317
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 319
    move-object/from16 v6, p3

    .line 321
    move v7, v15

    .line 322
    goto :goto_5

    .line 323
    :cond_b
    move-object/from16 p3, v6

    .line 325
    move v15, v7

    .line 326
    add-int/lit8 v8, v8, 0x1

    .line 328
    goto/16 :goto_4

    .line 330
    :cond_c
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 333
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 340
    move-result v4

    .line 341
    if-nez v4, :cond_16

    .line 343
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 350
    move-result v4

    .line 351
    const/4 v5, 0x0

    .line 352
    const/4 v6, 0x0

    .line 353
    :goto_7
    if-ge v5, v4, :cond_16

    .line 355
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 358
    move-result-object v7

    .line 359
    check-cast v7, Ljava/lang/String;

    .line 361
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 364
    move-result-object v8

    .line 365
    check-cast v8, Landroid/util/SparseArray;

    .line 367
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 370
    move-result v9

    .line 371
    const/4 v11, 0x0

    .line 372
    :goto_8
    if-ge v11, v9, :cond_15

    .line 374
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->keyAt(I)I

    .line 377
    move-result v12

    .line 378
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 380
    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 382
    iget-object v13, v13, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 384
    invoke-virtual {v13, v7, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 387
    move-result-object v13

    .line 388
    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 390
    if-eqz v2, :cond_d

    .line 392
    if-eqz v13, :cond_14

    .line 394
    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 396
    invoke-virtual {v13, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 399
    move-result v13

    .line 400
    if-nez v13, :cond_d

    .line 402
    goto/16 :goto_a

    .line 404
    :cond_d
    if-nez v6, :cond_f

    .line 406
    if-eqz v10, :cond_e

    .line 408
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 411
    :cond_e
    const-string v6, "  Bad processes:"

    .line 413
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    const/4 v6, 0x1

    .line 417
    const/4 v10, 0x1

    .line 418
    :cond_f
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 421
    move-result-object v13

    .line 422
    check-cast v13, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 424
    const-string v14, "    Bad process "

    .line 426
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    const-string v14, " uid "

    .line 434
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 440
    const-string v12, ": crashed at time "

    .line 442
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    iget-wide v14, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    .line 447
    invoke-virtual {v1, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 450
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    .line 452
    if-eqz v12, :cond_10

    .line 454
    const-string v12, "      Short msg: "

    .line 456
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 459
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    .line 461
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    :cond_10
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    .line 466
    if-eqz v12, :cond_11

    .line 468
    const-string v12, "      Long msg: "

    .line 470
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    .line 475
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    :cond_11
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 480
    if-eqz v12, :cond_14

    .line 482
    const-string v12, "      Stack:"

    .line 484
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    const/4 v12, 0x0

    .line 488
    const/4 v14, 0x0

    .line 489
    :goto_9
    iget-object v15, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 491
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 494
    move-result v15

    .line 495
    if-ge v12, v15, :cond_13

    .line 497
    iget-object v15, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 499
    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    .line 502
    move-result v15

    .line 503
    const/16 v0, 0xa

    .line 505
    if-ne v15, v0, :cond_12

    .line 507
    const-string v0, "        "

    .line 509
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    iget-object v0, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 514
    sub-int v15, v12, v14

    .line 516
    invoke-virtual {v1, v0, v14, v15}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 519
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 522
    add-int/lit8 v14, v12, 0x1

    .line 524
    :cond_12
    add-int/lit8 v12, v12, 0x1

    .line 526
    move-object/from16 v0, p0

    .line 528
    goto :goto_9

    .line 529
    :cond_13
    iget-object v0, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 531
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 534
    move-result v0

    .line 535
    if-ge v14, v0, :cond_14

    .line 537
    const-string v0, "        "

    .line 539
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    iget-object v0, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 544
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 547
    move-result v12

    .line 548
    sub-int/2addr v12, v14

    .line 549
    invoke-virtual {v1, v0, v14, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 552
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 555
    :cond_14
    :goto_a
    add-int/lit8 v11, v11, 0x1

    .line 557
    move-object/from16 v0, p0

    .line 559
    goto/16 :goto_8

    .line 561
    :cond_15
    add-int/lit8 v5, v5, 0x1

    .line 563
    move-object/from16 v0, p0

    .line 565
    goto/16 :goto_7

    .line 567
    :cond_16
    return v10

    .line 568
    :goto_b
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    throw v0
.end method

.method public final handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 3
    const/4 v11, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 8
    move-object v12, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v12, v11

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 15
    move v13, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move/from16 v13, p8

    .line 19
    :goto_1
    if-eqz v0, :cond_2

    .line 21
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 23
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 25
    move-object/from16 v2, p0

    .line 27
    move v10, v1

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move-object/from16 v2, p0

    .line 31
    move/from16 v10, p9

    .line 33
    :goto_2
    iget-object v1, v2, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 35
    iget-object v14, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 37
    move-object/from16 v3, p2

    .line 39
    iget-object v15, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 41
    new-instance v16, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;

    .line 43
    move-object/from16 v1, v16

    .line 45
    move-object/from16 v2, p0

    .line 47
    move-object v4, v12

    .line 48
    move v5, v13

    .line 49
    move-object/from16 v6, p1

    .line 51
    move-object/from16 v7, p3

    .line 53
    move-object/from16 v8, p4

    .line 55
    move-object/from16 v9, p5

    .line 57
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    check-cast v14, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 62
    iget-object v0, v14, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 64
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 69
    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, v14, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 72
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 74
    const/4 v0, 0x0

    .line 75
    if-nez v2, :cond_3

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    goto :goto_4

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto :goto_5

    .line 84
    :cond_3
    move-object v3, v12

    .line 85
    move v4, v13

    .line 86
    move-object/from16 v5, p3

    .line 88
    move-object/from16 v6, p4

    .line 90
    move-wide/from16 v7, p6

    .line 92
    move-object v9, v15

    .line 93
    :try_start_1
    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    .line 96
    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-nez v2, :cond_4

    .line 99
    move-object/from16 v11, v16

    .line 101
    goto :goto_3

    .line 102
    :catch_0
    :try_start_2
    iget-object v2, v14, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 104
    iput-object v11, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 106
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2, v11}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 113
    :cond_4
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 117
    if-eqz v11, :cond_5

    .line 119
    invoke-virtual {v11}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->run()V

    .line 122
    const/4 v0, 0x1

    .line 123
    :cond_5
    :goto_4
    return v0

    .line 124
    :goto_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 128
    throw v0
.end method

.method public final handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v9, p1

    .line 5
    move-object/from16 v1, p2

    .line 7
    move-object/from16 v10, p6

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v11

    .line 13
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    move-result-object v2

    .line 19
    const-string v3, "anr_show_background"

    .line 21
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 23
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 25
    invoke-virtual {v4}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 28
    move-result v4

    .line 29
    const/4 v13, 0x0

    .line 30
    invoke-static {v2, v3, v13, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 36
    const/4 v15, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v15, v13

    .line 39
    :goto_0
    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 41
    iget v7, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 43
    iget v6, v9, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 45
    iget-boolean v5, v9, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 47
    iget-boolean v2, v9, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 49
    iget-object v3, v9, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 51
    iget-object v4, v9, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 53
    iget-boolean v13, v9, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 55
    if-nez v13, :cond_1

    .line 57
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 59
    invoke-virtual {v13, v8, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 62
    move-result-object v13

    .line 63
    check-cast v13, Ljava/lang/Long;

    .line 65
    iget-object v14, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 67
    invoke-virtual {v14, v8, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 70
    move-result-object v14

    .line 71
    check-cast v14, Ljava/lang/Long;

    .line 73
    move-object/from16 v17, v4

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move-object/from16 v17, v4

    .line 78
    const/4 v13, 0x0

    .line 79
    const/4 v14, 0x0

    .line 80
    :goto_1
    iget-object v4, v9, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 82
    move/from16 v18, v15

    .line 84
    iget-object v15, v4, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 86
    iget-object v15, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 88
    iget v15, v15, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 90
    move/from16 v19, v5

    .line 92
    const/4 v5, 0x5

    .line 93
    if-ne v15, v5, :cond_2

    .line 95
    const/4 v5, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    const/4 v5, 0x0

    .line 98
    :goto_2
    iget-object v15, v4, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 100
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    .line 103
    move-result v15

    .line 104
    move/from16 v20, v2

    .line 106
    const/4 v2, 0x1

    .line 107
    sub-int/2addr v15, v2

    .line 108
    const/16 v21, 0x0

    .line 110
    :goto_3
    if-ltz v15, :cond_6

    .line 112
    invoke-virtual {v4, v15}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    .line 115
    move-result-object v2

    .line 116
    move/from16 v23, v6

    .line 118
    move/from16 v22, v7

    .line 120
    iget-wide v6, v2, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 122
    move-object/from16 v24, v8

    .line 124
    sget v8, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 126
    int-to-long v8, v8

    .line 127
    add-long/2addr v6, v8

    .line 128
    cmp-long v6, v11, v6

    .line 130
    if-lez v6, :cond_3

    .line 132
    const/4 v6, 0x1

    .line 133
    iput v6, v2, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 135
    goto :goto_4

    .line 136
    :cond_3
    const/4 v6, 0x1

    .line 137
    iget v7, v2, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 139
    add-int/2addr v7, v6

    .line 140
    iput v7, v2, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 142
    :goto_4
    iget v6, v2, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 144
    int-to-long v6, v6

    .line 145
    iget-object v8, v4, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 147
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 149
    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 151
    cmp-long v6, v6, v8

    .line 153
    if-gez v6, :cond_5

    .line 155
    iget-boolean v2, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 157
    if-nez v2, :cond_4

    .line 159
    if-eqz v5, :cond_5

    .line 161
    :cond_4
    const/16 v21, 0x1

    .line 163
    :cond_5
    add-int/lit8 v15, v15, -0x1

    .line 165
    move-object/from16 v9, p1

    .line 167
    move/from16 v7, v22

    .line 169
    move/from16 v6, v23

    .line 171
    move-object/from16 v8, v24

    .line 173
    const/4 v2, 0x1

    .line 174
    goto :goto_3

    .line 175
    :cond_6
    move/from16 v23, v6

    .line 177
    move/from16 v22, v7

    .line 179
    move-object/from16 v24, v8

    .line 181
    if-eqz v13, :cond_7

    .line 183
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 186
    move-result-wide v4

    .line 187
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 189
    int-to-long v6, v2

    .line 190
    add-long/2addr v4, v6

    .line 191
    cmp-long v2, v11, v4

    .line 193
    if-gez v2, :cond_7

    .line 195
    const/4 v2, 0x1

    .line 196
    goto :goto_5

    .line 197
    :cond_7
    const/4 v2, 0x0

    .line 198
    :goto_5
    if-nez v2, :cond_e

    .line 200
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 202
    move-object/from16 v9, p1

    .line 204
    iget-object v5, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 206
    iget v6, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 208
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Landroid/util/Pair;

    .line 214
    iget-boolean v5, v9, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 216
    if-nez v5, :cond_8

    .line 218
    if-eqz v4, :cond_8

    .line 220
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 222
    check-cast v5, Ljava/lang/Long;

    .line 224
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 227
    move-result-wide v5

    .line 228
    sget-wide v7, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 230
    add-long/2addr v5, v7

    .line 231
    cmp-long v5, v11, v5

    .line 233
    if-gez v5, :cond_8

    .line 235
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 237
    check-cast v4, Ljava/lang/Integer;

    .line 239
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 242
    move-result v4

    .line 243
    sget v5, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 245
    if-lt v4, v5, :cond_8

    .line 247
    goto/16 :goto_b

    .line 249
    :cond_8
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 251
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 253
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 255
    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 257
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 259
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 262
    monitor-enter v4

    .line 263
    :try_start_0
    iget-object v5, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 265
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :try_start_1
    iget-object v5, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 270
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 272
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 275
    move-result-object v6

    .line 276
    const/4 v7, 0x1

    .line 277
    new-array v8, v7, [Lcom/android/server/wm/Task;

    .line 279
    new-instance v13, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;

    .line 281
    invoke-direct {v13, v8, v6, v3, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;-><init>([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v5, v13, v7}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 287
    const/4 v5, 0x0

    .line 288
    aget-object v6, v8, v5

    .line 290
    if-eqz v6, :cond_b

    .line 292
    iget-object v5, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 294
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 296
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 299
    move-result-object v7

    .line 300
    if-eqz v7, :cond_9

    .line 302
    const/4 v8, 0x1

    .line 303
    invoke-virtual {v7, v8}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 306
    move-result-object v13

    .line 307
    if-nez v13, :cond_9

    .line 309
    const/4 v13, 0x0

    .line 310
    invoke-virtual {v7, v1, v13, v8}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    .line 313
    :goto_6
    const/4 v1, 0x0

    .line 314
    goto :goto_7

    .line 315
    :cond_9
    const/4 v13, 0x0

    .line 316
    goto :goto_6

    .line 317
    :goto_7
    invoke-virtual {v5, v1, v1, v1, v13}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 320
    move-result v1

    .line 321
    if-nez v1, :cond_a

    .line 323
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 326
    :cond_a
    iget v1, v6, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    :try_start_2
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 330
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 333
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 337
    goto :goto_8

    .line 338
    :catchall_0
    move-exception v0

    .line 339
    goto :goto_a

    .line 340
    :catchall_1
    move-exception v0

    .line 341
    goto :goto_9

    .line 342
    :cond_b
    :try_start_3
    iget-object v1, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 344
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 347
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 348
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 351
    const/4 v1, -0x1

    .line 352
    :goto_8
    if-eqz v10, :cond_c

    .line 354
    iput v1, v10, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 356
    :cond_c
    if-eqz v10, :cond_d

    .line 358
    if-eqz v14, :cond_d

    .line 360
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 363
    move-result-wide v1

    .line 364
    sget v4, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 366
    int-to-long v4, v4

    .line 367
    add-long/2addr v1, v4

    .line 368
    cmp-long v1, v11, v1

    .line 370
    if-gez v1, :cond_d

    .line 372
    const/4 v1, 0x1

    .line 373
    iput-boolean v1, v10, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .line 375
    :cond_d
    move-object v14, v3

    .line 376
    move-object/from16 v15, v17

    .line 378
    move/from16 v16, v19

    .line 380
    move-object/from16 v13, v24

    .line 382
    move-wide/from16 v19, v11

    .line 384
    move/from16 v12, v22

    .line 386
    goto/16 :goto_10

    .line 388
    :goto_9
    :try_start_4
    iget-object v1, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 390
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 393
    throw v0

    .line 394
    :goto_a
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 395
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 398
    throw v0

    .line 399
    :cond_e
    move-object/from16 v9, p1

    .line 401
    :goto_b
    const-string v1, "ActivityManager"

    .line 403
    const-string v4, "Process "

    .line 405
    const-string v5, " has crashed too many times, killing! Reason: "

    .line 407
    move-object/from16 v8, v24

    .line 409
    invoke-static {v4, v8, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    move-result-object v4

    .line 413
    if-eqz v2, :cond_f

    .line 415
    const-string/jumbo v2, "crashed quickly"

    .line 418
    goto :goto_c

    .line 419
    :cond_f
    const-string/jumbo v2, "over process crash limit"

    .line 422
    :goto_c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    move-result-object v2

    .line 429
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    move-result-object v1

    .line 436
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    move-result-object v2

    .line 440
    filled-new-array {v1, v8, v2}, [Ljava/lang/Object;

    .line 443
    move-result-object v1

    .line 444
    const/16 v2, 0x7550

    .line 446
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 449
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 451
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 453
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 455
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 457
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 459
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 462
    monitor-enter v1

    .line 463
    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->handleAppCrash()V

    .line 466
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 467
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 470
    if-nez v20, :cond_13

    .line 472
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    move-result-object v1

    .line 476
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    move-result-object v2

    .line 480
    filled-new-array {v1, v2, v8}, [Ljava/lang/Object;

    .line 483
    move-result-object v1

    .line 484
    const/16 v2, 0x753f

    .line 486
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 489
    if-nez v19, :cond_10

    .line 491
    iget v7, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 493
    new-instance v13, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 495
    move-object v1, v13

    .line 496
    move-object/from16 v2, p3

    .line 498
    move-object v14, v3

    .line 499
    move-object/from16 v15, v17

    .line 501
    move-wide v3, v11

    .line 502
    move/from16 v16, v19

    .line 504
    move-object/from16 v5, p4

    .line 506
    move-wide/from16 v19, v11

    .line 508
    move/from16 v11, v23

    .line 510
    move-object/from16 v6, p5

    .line 512
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 517
    monitor-enter v1

    .line 518
    :try_start_6
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    .line 520
    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 523
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 525
    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 528
    invoke-virtual {v2, v8, v7, v13}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 531
    iput-object v2, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 533
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 534
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 536
    iget v2, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 538
    invoke-virtual {v1, v8, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 541
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 543
    iget v2, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 545
    invoke-virtual {v1, v8, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 548
    :goto_d
    const/4 v1, 0x1

    .line 549
    goto :goto_e

    .line 550
    :catchall_2
    move-exception v0

    .line 551
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 552
    throw v0

    .line 553
    :cond_10
    move-object v14, v3

    .line 554
    move-object/from16 v15, v17

    .line 556
    move/from16 v16, v19

    .line 558
    move-wide/from16 v19, v11

    .line 560
    move/from16 v11, v23

    .line 562
    goto :goto_d

    .line 563
    :goto_e
    iput-boolean v1, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    .line 565
    iput-boolean v1, v9, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 567
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 569
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 572
    move-result-object v1

    .line 573
    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 575
    if-eqz v1, :cond_12

    .line 577
    iget-object v2, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 579
    if-eqz v2, :cond_11

    .line 581
    iget-object v2, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 583
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 585
    goto :goto_f

    .line 586
    :cond_11
    move-object v2, v8

    .line 587
    :goto_f
    const/4 v3, 0x4

    .line 588
    invoke-interface {v1, v2, v11, v3}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 591
    :cond_12
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 593
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 595
    const-string/jumbo v7, "crash"

    .line 598
    const/4 v3, 0x0

    .line 599
    const/4 v5, 0x4

    .line 600
    const/4 v6, 0x0

    .line 601
    const/4 v11, 0x1

    .line 602
    move-object/from16 v2, p1

    .line 604
    move/from16 v4, v21

    .line 606
    move/from16 v12, v22

    .line 608
    move-object v13, v8

    .line 609
    move v8, v11

    .line 610
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 613
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 615
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 617
    const/4 v2, 0x0

    .line 618
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 621
    if-nez v18, :cond_14

    .line 623
    return v2

    .line 624
    :cond_13
    move-object v14, v3

    .line 625
    move-object v13, v8

    .line 626
    move-object/from16 v15, v17

    .line 628
    move/from16 v16, v19

    .line 630
    const/4 v2, 0x0

    .line 631
    move-wide/from16 v19, v11

    .line 633
    move/from16 v12, v22

    .line 635
    :cond_14
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 637
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 639
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 642
    :goto_10
    if-eqz v10, :cond_15

    .line 644
    if-eqz v21, :cond_15

    .line 646
    const/4 v1, 0x1

    .line 647
    iput-boolean v1, v10, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 649
    :cond_15
    iget-object v1, v14, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 651
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 653
    if-ne v14, v1, :cond_18

    .line 655
    iget-boolean v1, v14, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 657
    if-eqz v1, :cond_18

    .line 659
    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 661
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 663
    const/4 v2, 0x1

    .line 664
    and-int/2addr v1, v2

    .line 665
    if-nez v1, :cond_18

    .line 667
    iget-object v1, v14, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 669
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 671
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 674
    monitor-enter v1

    .line 675
    :try_start_8
    iget-object v3, v14, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 677
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 680
    move-result v3

    .line 681
    sub-int/2addr v3, v2

    .line 682
    :goto_11
    if-ltz v3, :cond_17

    .line 684
    iget-object v2, v14, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 686
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 689
    move-result-object v2

    .line 690
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 692
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 695
    move-result v4

    .line 696
    if-eqz v4, :cond_16

    .line 698
    const-string v4, "ActivityTaskManager"

    .line 700
    new-instance v5, Ljava/lang/StringBuilder;

    .line 702
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    const-string v6, "Clearing package preferred activities from "

    .line 707
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 712
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    move-result-object v5

    .line 719
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 722
    :try_start_9
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 725
    move-result-object v4

    .line 726
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 728
    invoke-interface {v4, v2}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 731
    goto :goto_12

    .line 732
    :catchall_3
    move-exception v0

    .line 733
    goto :goto_13

    .line 734
    :catch_0
    :cond_16
    :goto_12
    add-int/lit8 v3, v3, -0x1

    .line 736
    goto :goto_11

    .line 737
    :cond_17
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 738
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 741
    goto :goto_14

    .line 742
    :goto_13
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 743
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 746
    throw v0

    .line 747
    :cond_18
    :goto_14
    if-nez v16, :cond_1b

    .line 749
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 751
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 754
    move-result-object v2

    .line 755
    invoke-virtual {v1, v13, v12, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 758
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 760
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 763
    move-result-object v2

    .line 764
    invoke-virtual {v1, v13, v12, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 769
    invoke-virtual {v1, v13, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 772
    move-result-object v1

    .line 773
    check-cast v1, Landroid/util/Pair;

    .line 775
    if-eqz v1, :cond_19

    .line 777
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 779
    check-cast v2, Ljava/lang/Long;

    .line 781
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 784
    move-result-wide v2

    .line 785
    sget-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 787
    add-long/2addr v2, v4

    .line 788
    cmp-long v2, v2, v19

    .line 790
    if-gez v2, :cond_1a

    .line 792
    :cond_19
    const/4 v4, 0x1

    .line 793
    goto :goto_15

    .line 794
    :cond_1a
    new-instance v2, Landroid/util/Pair;

    .line 796
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 798
    check-cast v3, Ljava/lang/Long;

    .line 800
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 802
    check-cast v1, Ljava/lang/Integer;

    .line 804
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 807
    move-result v1

    .line 808
    const/4 v4, 0x1

    .line 809
    add-int/2addr v1, v4

    .line 810
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 813
    move-result-object v1

    .line 814
    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 817
    goto :goto_16

    .line 818
    :goto_15
    new-instance v2, Landroid/util/Pair;

    .line 820
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 823
    move-result-object v1

    .line 824
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 827
    move-result-object v3

    .line 828
    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 831
    :goto_16
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 833
    invoke-virtual {v1, v13, v12, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 836
    :cond_1b
    iget-object v1, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    .line 838
    if-eqz v1, :cond_1c

    .line 840
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 842
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 844
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 847
    :cond_1c
    const/4 v0, 0x1

    .line 848
    return v0

    .line 849
    :catchall_4
    move-exception v0

    .line 850
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 851
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 854
    throw v0
.end method

.method public final handleShowAnrUi(Landroid/os/Message;)V
    .locals 13

    .line 1
    const-string v0, "ANR delay completed. Cancelling ANR dialog for package: "

    .line 3
    const-string v1, "ANR delay completed. Showing ANR dialog for package: "

    .line 5
    const-string v2, "App already has anr dialog: "

    .line 7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    check-cast p1, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 11
    iget-object v3, p1, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 13
    if-nez v3, :cond_0

    .line 15
    const-string p0, "ActivityManager"

    .line 17
    const-string/jumbo p1, "handleShowAnrUi: proc is null"

    .line 20
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 29
    monitor-enter v4

    .line 30
    :try_start_0
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 32
    iput-object p1, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 34
    iget-boolean v6, v3, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 36
    const/4 v7, 0x0

    .line 37
    if-nez v6, :cond_1

    .line 39
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    .line 42
    move-result-object v6

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_5

    .line 47
    :cond_1
    move-object v6, v7

    .line 48
    :goto_0
    iget-object v8, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 50
    iget-object v8, v8, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x1

    .line 54
    if-eqz v8, :cond_2

    .line 56
    move v8, v10

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v8, v9

    .line 59
    :goto_1
    const/16 v11, 0x13d

    .line 61
    if-eqz v8, :cond_3

    .line 63
    const-string p1, "ActivityManager"

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 82
    const/4 p1, -0x2

    .line 83
    invoke-static {p0, v11, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 86
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 90
    return-void

    .line 91
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    move-result-object v2

    .line 97
    const-string v8, "anr_show_background"

    .line 99
    iget-object v12, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 101
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 103
    invoke-virtual {v12}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 106
    move-result v12

    .line 107
    invoke-static {v2, v8, v9, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_4

    .line 113
    move v2, v10

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move v2, v9

    .line 116
    :goto_2
    iget-object v8, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 118
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 120
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    .line 123
    move-result v8

    .line 124
    if-nez v8, :cond_6

    .line 126
    if-eqz v2, :cond_5

    .line 128
    goto :goto_3

    .line 129
    :cond_5
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 131
    const/4 v0, -0x1

    .line 132
    invoke-static {p1, v11, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 135
    move v9, v10

    .line 136
    goto :goto_4

    .line 137
    :cond_6
    :goto_3
    iget-object v2, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 139
    iget-object v8, v2, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    .line 141
    if-nez v8, :cond_7

    .line 143
    invoke-virtual {v2, p1}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 146
    goto :goto_4

    .line 147
    :cond_7
    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 149
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 151
    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 153
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 155
    invoke-interface {v8, v2, v10}, Landroid/app/AnrController;->onAnrDelayCompleted(Ljava/lang/String;I)Z

    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_8

    .line 161
    const-string v0, "ActivityManager"

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 180
    invoke-virtual {v0, p1}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 183
    goto :goto_4

    .line 184
    :cond_8
    const-string p1, "ActivityManager"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v5, v9}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 204
    iput-object v7, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 206
    iget-object p1, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 208
    invoke-virtual {p1}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 211
    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 215
    if-eqz v9, :cond_9

    .line 217
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 219
    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    .line 222
    :cond_9
    if-eqz v6, :cond_a

    .line 224
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 226
    const/4 p1, 0x4

    .line 227
    invoke-virtual {p0, p1, v6}, Lcom/android/server/PackageWatchdog;->onPackageFailure(ILjava/util/List;)V

    .line 230
    :cond_a
    return-void

    .line 231
    :goto_5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 235
    throw p0
.end method

.method public final handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "App already has crash dialog: "

    .line 5
    move-object/from16 v2, p1

    .line 7
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    check-cast v2, Lcom/android/server/am/AppErrorDialog$Data;

    .line 11
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object v3

    .line 17
    const-string v4, "anr_show_background"

    .line 19
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 21
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 23
    invoke-virtual {v5}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v3, :cond_0

    .line 35
    move v3, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v3, v6

    .line 38
    :goto_0
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 43
    monitor-enter v5

    .line 44
    :try_start_0
    iget-object v7, v2, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 46
    iget-object v8, v2, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 48
    if-nez v7, :cond_1

    .line 50
    const-string v0, "ActivityManager"

    .line 52
    const-string/jumbo v1, "handleShowAppErrorUi: proc is null"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto/16 :goto_e

    .line 66
    :cond_1
    :try_start_1
    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 68
    iget v10, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 70
    iget-object v11, v9, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 72
    iget-object v11, v11, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 74
    if-eqz v11, :cond_3

    .line 76
    const-string v0, "ActivityManager"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eqz v8, :cond_2

    .line 95
    sget v0, Lcom/android/server/am/AppErrorDialog;->$r8$clinit:I

    .line 97
    const/4 v0, -0x3

    .line 98
    invoke-virtual {v8, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 101
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 105
    return-void

    .line 106
    :cond_3
    :try_start_2
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 108
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 111
    move-result v1

    .line 112
    const/16 v11, 0x2710

    .line 114
    if-lt v1, v11, :cond_4

    .line 116
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 118
    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 120
    if-eq v1, v11, :cond_4

    .line 122
    move v1, v4

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    move v1, v6

    .line 125
    :goto_1
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 127
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 129
    invoke-virtual {v11}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    .line 132
    move-result-object v11

    .line 133
    array-length v12, v11

    .line 134
    move v13, v6

    .line 135
    :goto_2
    if-ge v13, v12, :cond_6

    .line 137
    aget v14, v11, v13

    .line 139
    if-eq v10, v14, :cond_5

    .line 141
    move v14, v4

    .line 142
    goto :goto_3

    .line 143
    :cond_5
    move v14, v6

    .line 144
    :goto_3
    and-int/2addr v1, v14

    .line 145
    add-int/2addr v13, v4

    .line 146
    goto :goto_2

    .line 147
    :cond_6
    if-eqz v1, :cond_8

    .line 149
    if-nez v3, :cond_8

    .line 151
    const-string v0, "ActivityManager"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    const-string v2, "Skipping crash dialog of "

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    const-string v2, ": background"

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz v8, :cond_7

    .line 180
    sget v0, Lcom/android/server/am/AppErrorDialog;->$r8$clinit:I

    .line 182
    const/4 v0, -0x2

    .line 183
    invoke-virtual {v8, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 186
    :cond_7
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 190
    return-void

    .line 191
    :cond_8
    :try_start_3
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 193
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    :try_start_4
    iget-boolean v11, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 196
    if-nez v11, :cond_9

    .line 198
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 200
    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 202
    iget v13, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 204
    invoke-virtual {v11, v12, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 207
    move-result-object v11

    .line 208
    check-cast v11, Ljava/lang/Long;

    .line 210
    goto :goto_4

    .line 211
    :catchall_1
    move-exception v0

    .line 212
    goto/16 :goto_d

    .line 214
    :cond_9
    const/4 v11, 0x0

    .line 215
    :goto_4
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 220
    move-result-object v12

    .line 221
    const-string/jumbo v13, "show_first_crash_dialog"

    .line 224
    invoke-static {v12, v13, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 227
    move-result v12

    .line 228
    if-eqz v12, :cond_a

    .line 230
    move v12, v4

    .line 231
    goto :goto_5

    .line 232
    :cond_a
    move v12, v6

    .line 233
    :goto_5
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 238
    move-result-object v13

    .line 239
    const-string/jumbo v14, "show_first_crash_dialog_dev_option"

    .line 242
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 244
    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 246
    invoke-virtual {v15}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 249
    move-result v15

    .line 250
    invoke-static {v13, v14, v6, v15}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 253
    move-result v13

    .line 254
    if-eqz v13, :cond_b

    .line 256
    move v13, v4

    .line 257
    goto :goto_6

    .line 258
    :cond_b
    move v13, v6

    .line 259
    :goto_6
    iget-object v14, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 261
    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 263
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 265
    if-eqz v15, :cond_c

    .line 267
    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 269
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 271
    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 274
    move-result v4

    .line 275
    if-eqz v4, :cond_c

    .line 277
    const/4 v4, 0x1

    .line 278
    goto :goto_7

    .line 279
    :cond_c
    move v4, v6

    .line 280
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 283
    move-result-wide v15

    .line 284
    if-eqz v11, :cond_d

    .line 286
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 289
    move-result-wide v17

    .line 290
    sget v11, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 292
    move-object/from16 v19, v7

    .line 294
    int-to-long v6, v11

    .line 295
    add-long v17, v17, v6

    .line 297
    cmp-long v6, v15, v17

    .line 299
    if-gez v6, :cond_e

    .line 301
    const/4 v6, 0x1

    .line 302
    goto :goto_8

    .line 303
    :cond_d
    move-object/from16 v19, v7

    .line 305
    :cond_e
    const/4 v6, 0x0

    .line 306
    :goto_8
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 308
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 310
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    .line 313
    move-result v7

    .line 314
    if-nez v7, :cond_f

    .line 316
    if-eqz v3, :cond_13

    .line 318
    :cond_f
    if-nez v4, :cond_13

    .line 320
    if-nez v6, :cond_13

    .line 322
    if-nez v12, :cond_10

    .line 324
    if-nez v13, :cond_10

    .line 326
    iget-boolean v3, v2, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .line 328
    if-eqz v3, :cond_13

    .line 330
    :cond_10
    const-string v3, "ActivityManager"

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    .line 334
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    const-string v6, "Showing crash dialog for package "

    .line 339
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v6, " u"

    .line 347
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    move-result-object v4

    .line 357
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 360
    :try_start_5
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    .line 363
    move-result-object v20
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 364
    move-object/from16 v3, v19

    .line 366
    :try_start_6
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 368
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 370
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 372
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 374
    iget v7, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 376
    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 378
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 380
    iget-object v11, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 382
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 384
    iget-object v12, v2, Lcom/android/server/am/AppErrorDialog$Data;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 386
    iget-object v13, v12, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 388
    iget-object v14, v12, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 390
    iget-object v12, v12, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 392
    move-object/from16 v21, v4

    .line 394
    move-object/from16 v22, v6

    .line 396
    move/from16 v23, v7

    .line 398
    move/from16 v24, v10

    .line 400
    move/from16 v25, v11

    .line 402
    move-object/from16 v26, v13

    .line 404
    move-object/from16 v27, v14

    .line 406
    move-object/from16 v28, v12

    .line 408
    invoke-virtual/range {v20 .. v28}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpType(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 411
    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 412
    goto :goto_9

    .line 413
    :catch_0
    move-object/from16 v3, v19

    .line 415
    :catch_1
    :try_start_7
    const-string v4, "ActivityManager"

    .line 417
    const-string v6, "IAFDParse false"

    .line 419
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v4, 0x0

    .line 423
    :goto_9
    if-eqz v4, :cond_12

    .line 425
    const-string v4, "ActivityManager"

    .line 427
    const-string/jumbo v6, "step1: IAFD parse pass, will call showIAFDCrashDialogs"

    .line 430
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-eqz v8, :cond_11

    .line 435
    const/4 v4, 0x7

    .line 436
    invoke-virtual {v8, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 439
    :cond_11
    const/4 v6, 0x1

    .line 440
    goto :goto_a

    .line 441
    :cond_12
    iget-object v4, v9, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 443
    invoke-virtual {v4, v2}, Lcom/android/server/am/ErrorDialogController;->showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 446
    const/4 v6, 0x0

    .line 447
    :goto_a
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 449
    if-nez v4, :cond_15

    .line 451
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 453
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 455
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 457
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 460
    move-result-object v7

    .line 461
    invoke-virtual {v0, v4, v3, v7}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 464
    goto :goto_b

    .line 465
    :cond_13
    if-eqz v8, :cond_14

    .line 467
    sget v0, Lcom/android/server/am/AppErrorDialog;->$r8$clinit:I

    .line 469
    const/4 v0, -0x1

    .line 470
    invoke-virtual {v8, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 473
    :cond_14
    const/4 v6, 0x0

    .line 474
    :cond_15
    :goto_b
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 475
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 476
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 479
    if-eqz v6, :cond_16

    .line 481
    :try_start_9
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    .line 484
    move-result-object v0

    .line 485
    iget-object v1, v2, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 487
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 489
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 491
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 493
    iget-object v2, v2, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 495
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 497
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 499
    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/iaft/IAFDDiagnosis;->showIAFDCrashDialogs(IILjava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 502
    goto :goto_c

    .line 503
    :catch_2
    const-string v0, "ActivityManager"

    .line 505
    const-string v1, "IAFDShow false"

    .line 507
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_16
    :goto_c
    return-void

    .line 511
    :goto_d
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 512
    :try_start_b
    throw v0

    .line 513
    :goto_e
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 514
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 517
    throw v0
.end method

.method public final killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 5
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 13
    if-eqz v2, :cond_0

    .line 15
    const/16 v2, 0xd

    .line 17
    const/4 v3, 0x1

    .line 18
    :goto_0
    move v6, v2

    .line 19
    move v7, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v2, 0x6

    .line 22
    const/4 v3, 0x0

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    iget-object v2, v0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v2, :cond_1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    new-instance v4, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-direct {v4, v5}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 36
    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 39
    iput-object v3, v0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 41
    :goto_2
    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 44
    iget-object v2, v0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 46
    if-nez v2, :cond_2

    .line 48
    goto :goto_3

    .line 49
    :cond_2
    new-instance v4, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-direct {v4, v5}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 55
    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 58
    iput-object v3, v0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 60
    :goto_3
    iget-object v2, v0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 62
    if-nez v2, :cond_3

    .line 64
    goto :goto_4

    .line 65
    :cond_3
    iget-object v4, v0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 67
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 69
    new-instance v5, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    .line 71
    const/4 v8, 0x2

    .line 72
    invoke-direct {v5, v8, v2}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 75
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    iput-object v3, v0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 80
    :goto_4
    const-string/jumbo v8, "user-terminated"

    .line 83
    const-string/jumbo v9, "user request after error"

    .line 86
    move-object v4, p0

    .line 87
    move-object v5, p1

    .line 88
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 101
    throw p0
.end method

.method public final killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 3
    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 6
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 8
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 10
    iput-boolean v2, v3, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    .line 12
    const/4 v3, 0x0

    .line 13
    iput-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 18
    iput-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 20
    iget-object v1, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 22
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 24
    if-lez v1, :cond_0

    .line 26
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 28
    if-eq v1, v2, :cond_0

    .line 30
    iget-object v8, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 32
    monitor-enter v8

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    move-object v1, p0

    .line 38
    move-object v2, p1

    .line 39
    move-object v3, p4

    .line 40
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 43
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const/4 v7, 0x1

    .line 45
    const/4 v6, 0x1

    .line 46
    move-object v1, p1

    .line 47
    move v2, p2

    .line 48
    move v3, p3

    .line 49
    move-object v4, p5

    .line 50
    move-object v5, p5

    .line 51
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw v0

    .line 58
    :cond_0
    :goto_0
    return-void
.end method

.method public final makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 12
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 14
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 16
    iput-boolean v2, v3, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v4, p1

    .line 21
    move-object v7, p2

    .line 22
    move-object v8, p3

    .line 23
    move-object v9, p4

    .line 24
    invoke-static/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 27
    move-result-object v2

    .line 28
    iput-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 30
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 33
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 35
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 38
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 40
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    const-string/jumbo v4, "force-crash"

    .line 44
    move-object v2, p0

    .line 45
    move-object v3, p1

    .line 46
    move-object v5, p2

    .line 47
    move-object v6, p3

    .line 48
    move-object v7, p4

    .line 49
    move-object v8, p5

    .line 50
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 53
    move-result p0

    .line 54
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 59
    return p0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :try_start_4
    throw p0

    .line 65
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 69
    throw p0
.end method

.method public final scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v1

    .line 9
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 13
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 15
    check-cast v4, Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 20
    move-result v4

    .line 21
    if-ge v3, v4, :cond_4

    .line 23
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 25
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 27
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    .line 30
    move-result-object v4

    .line 31
    if-ltz p1, :cond_0

    .line 33
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 35
    if-eq v5, p1, :cond_0

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto/16 :goto_7

    .line 41
    :cond_0
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 43
    if-ne v5, p2, :cond_1

    .line 45
    move-object v2, v4

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 49
    invoke-virtual {v5, p3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_3

    .line 55
    if-ltz p4, :cond_2

    .line 57
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 59
    if-ne v5, p4, :cond_3

    .line 61
    :cond_2
    move-object v2, v4

    .line 62
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-nez v2, :cond_5

    .line 68
    const-string p0, "ActivityManager"

    .line 70
    const-string/jumbo p5, "crashApplication: nothing for uid="

    .line 73
    const-string p6, " initialPid="

    .line 75
    const-string p7, " packageName="

    .line 77
    invoke-static {p1, p2, p5, p6, p7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string p2, " userId="

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 100
    :cond_5
    const/4 p1, 0x5

    .line 101
    if-ne p7, p1, :cond_7

    .line 103
    iget-object p1, v2, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 105
    invoke-virtual {p1}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    :goto_3
    array-length p3, p1

    .line 110
    if-ge v1, p3, :cond_7

    .line 112
    iget-object p3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 114
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 116
    aget-object p4, p1, v1

    .line 118
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 120
    check-cast p3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 122
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 124
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 126
    invoke-virtual {p3, v0, p4}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    .line 129
    move-result p3

    .line 130
    if-eqz p3, :cond_6

    .line 132
    const-string p0, "ActivityManager"

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo p3, "crashApplication: Can not crash protected package "

    .line 139
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    aget-object p1, p1, v1

    .line 144
    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 148
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_3

    .line 151
    :cond_7
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 153
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 155
    iget-object p1, p1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 157
    const/16 p3, 0xc

    .line 159
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeProcess(II)V

    .line 162
    const-string/jumbo p1, "scheduleCrash for \'"

    .line 165
    iget-boolean p2, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 167
    if-nez p2, :cond_9

    .line 169
    iget-object p2, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 171
    if-eqz p2, :cond_9

    .line 173
    iget p2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 175
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 178
    move-result p3

    .line 179
    if-ne p2, p3, :cond_8

    .line 181
    const-string p1, "ActivityManager"

    .line 183
    const-string/jumbo p2, "scheduleCrash: trying to crash system process!"

    .line 186
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    goto :goto_6

    .line 190
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 193
    move-result-wide p2

    .line 194
    :try_start_1
    iget-object p4, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 196
    invoke-interface {p4, p5, p7, p8}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    :goto_4
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    goto :goto_6

    .line 203
    :catchall_1
    move-exception p0

    .line 204
    goto :goto_5

    .line 205
    :catch_0
    :try_start_2
    new-instance p4, Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string p1, "\' failed"

    .line 215
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p1

    .line 222
    const/4 p4, 0x4

    .line 223
    invoke-virtual {v2, p4, p1}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 226
    goto :goto_4

    .line 227
    :goto_5
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    throw p0

    .line 231
    :cond_9
    :goto_6
    if-eqz p6, :cond_a

    .line 233
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 235
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 237
    new-instance p2, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;

    .line 239
    invoke-direct {p2, p0, v2}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    .line 242
    const-wide/16 p3, 0x1388

    .line 244
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    :cond_a
    return-void

    .line 248
    :goto_7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    throw p0
.end method
