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

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 10
    .line 11
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 17
    .line 18
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 24
    .line 25
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 31
    .line 32
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/Object;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 45
    .line 46
    new-instance v0, Lcom/android/server/am/CrashDetectionAndOptimization;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/am/AppErrors;->crashDetectionAndOptimization:Lcom/android/server/am/CrashDetectionAndOptimization;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 57
    .line 58
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 65
    .line 66
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->init(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    :goto_0
    move-object v1, v2

    .line 9
    goto :goto_3

    .line 10
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-boolean v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Landroid/app/ApplicationErrorReport;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 45
    .line 46
    iput-wide p1, v1, Landroid/app/ApplicationErrorReport;->time:J

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 49
    .line 50
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 51
    .line 52
    const/4 p2, 0x1

    .line 53
    and-int/2addr p1, p2

    .line 54
    if-eqz p1, :cond_2

    .line 55
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

    .line 60
    .line 61
    iget-boolean p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 62
    .line 63
    if-nez p1, :cond_5

    .line 64
    .line 65
    iget-boolean p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    iget-boolean p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 71
    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    iget-object p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 75
    .line 76
    if-nez p1, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/4 p2, 0x2

    .line 80
    iput p2, v1, Landroid/app/ApplicationErrorReport;->type:I

    .line 81
    .line 82
    new-instance p2, Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 83
    .line 84
    invoke-direct {p2}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object p2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 88
    .line 89
    iget-object p3, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 90
    .line 91
    iput-object p3, p2, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 92
    .line 93
    iget-object p3, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 94
    .line 95
    iput-object p3, p2, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 96
    .line 97
    iget-object p1, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 98
    .line 99
    iput-object p1, p2, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    :goto_2
    iput p2, v1, Landroid/app/ApplicationErrorReport;->type:I

    .line 103
    .line 104
    iput-object p3, v1, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 105
    .line 106
    :cond_6
    :goto_3
    if-nez v1, :cond_7

    .line 107
    .line 108
    return-object v2

    .line 109
    :cond_7
    new-instance p1, Landroid/content/Intent;

    .line 110
    .line 111
    const-string p2, "android.intent.action.APP_ERROR"

    .line 112
    .line 113
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    const-string p0, "android.intent.extra.BUG_REPORT"

    .line 124
    .line 125
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    const/high16 p0, 0x10000000

    .line 129
    .line 130
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    return-object p1
.end method

.method public static generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 11
    .line 12
    iget p1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 13
    .line 14
    iput p1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 19
    .line 20
    iput p0, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 21
    .line 22
    iput-object p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 29
    .line 30
    return-object v0
.end method

.method public static resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne p3, v2, :cond_0

    .line 17
    .line 18
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v1, p2, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v1, v2, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-ne v1, p3, :cond_2

    .line 37
    .line 38
    :goto_1
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 42
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

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v13

    .line 13
    iget-object v15, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v10, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v15, :cond_1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v2, ": "

    .line 24
    .line 25
    invoke-static {v15, v2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
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

    .line 32
    .line 33
    move-object v7, v15

    .line 34
    :goto_0
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->crashDetectionAndOptimization:Lcom/android/server/am/CrashDetectionAndOptimization;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    if-eqz v12, :cond_3

    .line 40
    .line 41
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const-string v1, "Native crash"

    .line 46
    .line 47
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    new-instance v1, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;

    .line 54
    .line 55
    invoke-direct {v1, v12}, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const-string/jumbo v1, "java.lang.ClassNotFoundException"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    new-instance v1, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;

    .line 72
    .line 73
    invoke-direct {v1, v12}, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_1
    if-nez v12, :cond_5

    .line 80
    .line 81
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-ne v1, v9, :cond_4

    .line 86
    .line 87
    const-string/jumbo v1, "system_server"

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    const-string/jumbo v1, "unknown"

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 96
    .line 97
    :goto_2
    const/4 v8, 0x0

    .line 98
    if-nez v12, :cond_6

    .line 99
    .line 100
    move v2, v8

    .line 101
    goto :goto_3

    .line 102
    :cond_6
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 103
    .line 104
    :goto_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 105
    .line 106
    .line 107
    move-result v19

    .line 108
    const-string v20, "AppErrors"

    .line 109
    .line 110
    iget-object v3, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 111
    .line 112
    const-string v4, "Application "

    .line 113
    .line 114
    const-string v5, " crashed due to "

    .line 115
    .line 116
    invoke-static {v4, v1, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v21

    .line 120
    const-string v22, ""

    .line 121
    .line 122
    const/16 v17, 0x5

    .line 123
    .line 124
    const/16 v18, 0x0

    .line 125
    .line 126
    const/16 v16, 0x3

    .line 127
    .line 128
    move/from16 v23, v2

    .line 129
    .line 130
    invoke-static/range {v16 .. v23}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    iget-object v3, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 134
    .line 135
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 136
    .line 137
    const-string/jumbo v18, "crash"

    .line 138
    .line 139
    .line 140
    iget-object v4, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v5, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    const/16 v21, 0x0

    .line 148
    .line 149
    move-object/from16 v16, v1

    .line 150
    .line 151
    move/from16 v17, v2

    .line 152
    .line 153
    move-object/from16 v19, v4

    .line 154
    .line 155
    move-object/from16 v20, v5

    .line 156
    .line 157
    invoke-static/range {v16 .. v21}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 158
    .line 159
    .line 160
    const/4 v5, 0x3

    .line 161
    if-eqz v12, :cond_9

    .line 162
    .line 163
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 164
    .line 165
    const-string/jumbo v2, "com.android.systemui:"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_7

    .line 173
    .line 174
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 175
    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v1, v5, v2}, Lcom/android/server/PackageWatchdog;->onPackageFailure(ILjava/util/List;)V

    .line 181
    .line 182
    .line 183
    :cond_7
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 184
    .line 185
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 186
    .line 187
    .line 188
    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 190
    .line 191
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 192
    .line 193
    const-string v3, "Native crash"

    .line 194
    .line 195
    iget-object v4, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_8

    .line 202
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

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v12, v3, v8, v4}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 214
    .line 215
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

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_9
    :goto_5
    if-eqz v12, :cond_a

    .line 224
    .line 225
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    .line 228
    .line 229
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

    .line 235
    .line 236
    invoke-direct {v3}, Lcom/android/server/am/AppErrorResult;-><init>()V

    .line 237
    .line 238
    .line 239
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 240
    .line 241
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 242
    .line 243
    .line 244
    monitor-enter v2

    .line 245
    :try_start_2
    const-string v1, "Native crash"

    .line 246
    .line 247
    iget-object v5, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    const/16 v17, 0x0

    .line 254
    .line 255
    if-nez v1, :cond_d

    .line 256
    .line 257
    new-instance v1, Landroid/os/BugreportParams;

    .line 258
    .line 259
    const/16 v5, 0xb

    .line 260
    .line 261
    invoke-direct {v1, v5}, Landroid/os/BugreportParams;-><init>(I)V

    .line 262
    .line 263
    .line 264
    new-instance v5, Landroid/os/BugreportParams;

    .line 265
    .line 266
    const/16 v6, 0xe

    .line 267
    .line 268
    invoke-direct {v5, v6}, Landroid/os/BugreportParams;-><init>(I)V

    .line 269
    .line 270
    .line 271
    if-nez v12, :cond_b

    .line 272
    .line 273
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-ne v6, v9, :cond_b

    .line 278
    .line 279
    const-string/jumbo v5, "system_server"

    .line 280
    .line 281
    .line 282
    invoke-static {v1, v5}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_8

    .line 286
    :catchall_1
    move-exception v0

    .line 287
    move-object/from16 v19, v2

    .line 288
    .line 289
    goto/16 :goto_11

    .line 290
    .line 291
    :cond_b
    if-nez v12, :cond_c

    .line 292
    .line 293
    move-object/from16 v1, v17

    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_c
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 297
    .line 298
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 299
    .line 300
    :goto_7
    invoke-static {v5, v1}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 301
    .line 302
    .line 303
    :cond_d
    :goto_8
    move-object/from16 v1, p0

    .line 304
    .line 305
    move-object/from16 v19, v2

    .line 306
    .line 307
    move-object/from16 v2, p1

    .line 308
    .line 309
    move-object v6, v3

    .line 310
    move-object/from16 v3, p2

    .line 311
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

    .line 317
    .line 318
    move-object v15, v6

    .line 319
    move-object v6, v10

    .line 320
    move-object/from16 v18, v7

    .line 321
    .line 322
    move-wide v7, v13

    .line 323
    move/from16 v9, p3

    .line 324
    .line 325
    move-object/from16 v20, v10

    .line 326
    .line 327
    move/from16 v10, p4

    .line 328
    .line 329
    :try_start_3
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_e

    .line 334
    .line 335
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 336
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :catchall_2
    move-exception v0

    .line 341
    goto/16 :goto_11

    .line 342
    .line 343
    :cond_e
    const/4 v7, 0x2

    .line 344
    if-ne v0, v7, :cond_f

    .line 345
    .line 346
    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 347
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_f
    if-eqz v12, :cond_10

    .line 352
    .line 353
    :try_start_5
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 354
    .line 355
    if-eqz v0, :cond_10

    .line 356
    .line 357
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 358
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 359
    .line 360
    .line 361
    return-void

    .line 362
    :cond_10
    if-eqz v12, :cond_11

    .line 363
    .line 364
    :try_start_6
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 365
    .line 366
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 367
    .line 368
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 369
    .line 370
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 371
    .line 372
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(ILjava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :cond_11
    if-eqz v12, :cond_12

    .line 376
    .line 377
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 378
    .line 379
    const/16 v1, 0x2710

    .line 380
    .line 381
    if-lt v0, v1, :cond_12

    .line 382
    .line 383
    new-instance v0, Lcom/android/server/am/AppErrors$1;

    .line 384
    .line 385
    invoke-direct {v0, v11, v12}, Lcom/android/server/am/AppErrors$1;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 389
    .line 390
    .line 391
    :cond_12
    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    .line 392
    .line 393
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 394
    .line 395
    .line 396
    iput-object v15, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 397
    .line 398
    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 399
    .line 400
    if-eqz v12, :cond_20

    .line 401
    .line 402
    move-object/from16 v1, p0

    .line 403
    .line 404
    move-object/from16 v2, p1

    .line 405
    .line 406
    move-object/from16 v3, v16

    .line 407
    .line 408
    move-object/from16 v4, v18

    .line 409
    .line 410
    move-object/from16 v5, v20

    .line 411
    .line 412
    move-object v6, v0

    .line 413
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-nez v1, :cond_13

    .line 418
    .line 419
    goto/16 :goto_10

    .line 420
    .line 421
    :cond_13
    move-object/from16 v1, p2

    .line 422
    .line 423
    iput-object v1, v0, Lcom/android/server/am/AppErrorDialog$Data;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 424
    .line 425
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    const/4 v3, 0x1

    .line 430
    iput v3, v2, Landroid/os/Message;->what:I

    .line 431
    .line 432
    iget v9, v0, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 433
    .line 434
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 435
    .line 436
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 437
    .line 438
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 439
    .line 440
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    .line 442
    .line 443
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 444
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 445
    .line 446
    .line 447
    monitor-enter v15

    .line 448
    :catch_0
    :goto_9
    :try_start_7
    iget-boolean v0, v15, Lcom/android/server/am/AppErrorResult;->mHasResult:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 449
    .line 450
    if-nez v0, :cond_14

    .line 451
    .line 452
    :try_start_8
    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 453
    .line 454
    .line 455
    goto :goto_9

    .line 456
    :catchall_3
    move-exception v0

    .line 457
    goto/16 :goto_f

    .line 458
    .line 459
    :cond_14
    :try_start_9
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 460
    iget v0, v15, Lcom/android/server/am/AppErrorResult;->mResult:I

    .line 461
    .line 462
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 463
    .line 464
    const/16 v4, 0x13c

    .line 465
    .line 466
    invoke-static {v2, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 467
    .line 468
    .line 469
    const/4 v2, 0x6

    .line 470
    if-eq v0, v2, :cond_15

    .line 471
    .line 472
    const/4 v2, 0x7

    .line 473
    if-ne v0, v2, :cond_16

    .line 474
    .line 475
    :cond_15
    move v0, v3

    .line 476
    :cond_16
    if-eq v0, v3, :cond_1d

    .line 477
    .line 478
    if-eq v0, v7, :cond_1b

    .line 479
    .line 480
    const/4 v2, 0x3

    .line 481
    if-eq v0, v2, :cond_1a

    .line 482
    .line 483
    const/4 v1, 0x5

    .line 484
    if-eq v0, v1, :cond_18

    .line 485
    .line 486
    const/16 v1, 0x8

    .line 487
    .line 488
    if-eq v0, v1, :cond_17

    .line 489
    .line 490
    goto/16 :goto_a

    .line 491
    .line 492
    :cond_17
    new-instance v0, Landroid/content/Intent;

    .line 493
    .line 494
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 495
    .line 496
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    const-string/jumbo v2, "package:"

    .line 502
    .line 503
    .line 504
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 508
    .line 509
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 510
    .line 511
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 523
    .line 524
    .line 525
    const/high16 v1, 0x10000000

    .line 526
    .line 527
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 528
    .line 529
    .line 530
    goto/16 :goto_c

    .line 531
    .line 532
    :cond_18
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 533
    .line 534
    monitor-enter v1

    .line 535
    :try_start_a
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 536
    .line 537
    if-nez v0, :cond_19

    .line 538
    .line 539
    new-instance v0, Landroid/util/ArraySet;

    .line 540
    .line 541
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 542
    .line 543
    .line 544
    iput-object v0, v11, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 545
    .line 546
    :cond_19
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 547
    .line 548
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 549
    .line 550
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 551
    .line 552
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 553
    .line 554
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

    .line 561
    .line 562
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 563
    .line 564
    .line 565
    monitor-enter v10

    .line 566
    :try_start_b
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 567
    .line 568
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 569
    .line 570
    const-string/jumbo v7, "crash"

    .line 571
    .line 572
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

    .line 579
    .line 580
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 581
    .line 582
    .line 583
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 584
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 585
    .line 586
    .line 587
    const/4 v0, -0x1

    .line 588
    if-eq v9, v0, :cond_1c

    .line 589
    .line 590
    :try_start_c
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 591
    .line 592
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v0, v9, v1}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1

    .line 601
    .line 602
    .line 603
    goto :goto_a

    .line 604
    :catch_1
    move-exception v0

    .line 605
    const-string v1, "ActivityManager"

    .line 606
    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    const-string v3, "Could not restart taskId="

    .line 610
    .line 611
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    .line 623
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

    .line 628
    .line 629
    .line 630
    throw v0

    .line 631
    :cond_1b
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 632
    .line 633
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 634
    .line 635
    .line 636
    monitor-enter v2

    .line 637
    :try_start_e
    invoke-static {v12, v13, v14, v1}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    .line 638
    .line 639
    .line 640
    move-result-object v17

    .line 641
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 642
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 643
    .line 644
    .line 645
    :cond_1c
    :goto_a
    move-object/from16 v0, v17

    .line 646
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

    .line 651
    .line 652
    .line 653
    throw v0

    .line 654
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 655
    .line 656
    .line 657
    move-result-wide v9

    .line 658
    :try_start_10
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 659
    .line 660
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 661
    .line 662
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 663
    .line 664
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 665
    .line 666
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 667
    .line 668
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 669
    .line 670
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 671
    .line 672
    .line 673
    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 674
    :try_start_11
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->handleAppCrash()V

    .line 675
    .line 676
    .line 677
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 678
    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 679
    .line 680
    .line 681
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 682
    .line 683
    if-nez v0, :cond_1e

    .line 684
    .line 685
    iget-object v13, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 686
    .line 687
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 688
    .line 689
    .line 690
    monitor-enter v13
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 691
    :try_start_13
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 692
    .line 693
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 694
    .line 695
    const-string/jumbo v7, "crash"

    .line 696
    .line 697
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

    .line 704
    .line 705
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 706
    .line 707
    .line 708
    monitor-exit v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 709
    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 710
    .line 711
    .line 712
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 713
    .line 714
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 715
    .line 716
    const/4 v1, 0x0

    .line 717
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 718
    .line 719
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

    .line 726
    .line 727
    .line 728
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 729
    :cond_1e
    :goto_b
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    .line 731
    .line 732
    goto :goto_a

    .line 733
    :goto_c
    if-eqz v0, :cond_1f

    .line 734
    .line 735
    :try_start_17
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 736
    .line 737
    new-instance v2, Landroid/os/UserHandle;

    .line 738
    .line 739
    iget v3, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 740
    .line 741
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_17} :catch_2

    .line 745
    .line 746
    .line 747
    goto :goto_d

    .line 748
    :catch_2
    move-exception v0

    .line 749
    const-string v1, "ActivityManager"

    .line 750
    .line 751
    const-string/jumbo v2, "bug report receiver dissappeared"

    .line 752
    .line 753
    .line 754
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    .line 756
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

    .line 761
    .line 762
    .line 763
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 764
    :goto_e
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 765
    .line 766
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

    .line 772
    .line 773
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

    .line 777
    .line 778
    .line 779
    throw v0
.end method

.method public final dumpDebugLPr(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 23

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
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 10
    .line 11
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-wide v4, 0x10b0000000dL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    const-wide v8, 0x10300000001L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const-wide v11, 0x10900000001L

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    if-nez v6, :cond_4

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    const/4 v15, 0x0

    .line 77
    :goto_0
    if-ge v15, v6, :cond_4

    .line 78
    .line 79
    const-wide v7, 0x20b00000003L

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v16

    .line 92
    move-object/from16 v9, v16

    .line 93
    .line 94
    check-cast v9, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    check-cast v10, Landroid/util/SparseArray;

    .line 101
    .line 102
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    invoke-virtual {v1, v11, v12, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/4 v14, 0x0

    .line 110
    :goto_1
    if-ge v14, v13, :cond_3

    .line 111
    .line 112
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 117
    .line 118
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 119
    .line 120
    iget-object v12, v12, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 121
    .line 122
    invoke-virtual {v12, v9, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 127
    .line 128
    if-eqz v2, :cond_2

    .line 129
    .line 130
    if-eqz v12, :cond_1

    .line 131
    .line 132
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 133
    .line 134
    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    if-nez v12, :cond_2

    .line 139
    .line 140
    :cond_1
    move-object/from16 v22, v3

    .line 141
    .line 142
    move-wide/from16 v20, v4

    .line 143
    .line 144
    move v11, v6

    .line 145
    move-object/from16 v16, v9

    .line 146
    .line 147
    move-object/from16 v19, v10

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_2
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    check-cast v12, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 155
    .line 156
    move-wide/from16 v20, v4

    .line 157
    .line 158
    move-object/from16 v16, v9

    .line 159
    .line 160
    move-object/from16 v19, v10

    .line 161
    .line 162
    const-wide v9, 0x20b00000002L

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    move-object v5, v3

    .line 168
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 169
    .line 170
    .line 171
    move-result-wide v3

    .line 172
    const-wide v9, 0x10500000001L

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 178
    .line 179
    .line 180
    iget-wide v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    .line 181
    .line 182
    move-object/from16 v22, v5

    .line 183
    .line 184
    move v11, v6

    .line 185
    const-wide v5, 0x10300000002L

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 191
    .line 192
    .line 193
    const-wide v5, 0x10900000003L

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-wide v5, 0x10900000004L

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const-wide v5, 0x10900000005L

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 224
    .line 225
    .line 226
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 227
    .line 228
    move v6, v11

    .line 229
    move-object/from16 v9, v16

    .line 230
    .line 231
    move-object/from16 v10, v19

    .line 232
    .line 233
    move-wide/from16 v4, v20

    .line 234
    .line 235
    move-object/from16 v3, v22

    .line 236
    .line 237
    const-wide v11, 0x10900000001L

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :cond_3
    move-object/from16 v22, v3

    .line 245
    .line 246
    move-wide/from16 v20, v4

    .line 247
    .line 248
    move v11, v6

    .line 249
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 250
    .line 251
    .line 252
    add-int/lit8 v15, v15, 0x1

    .line 253
    .line 254
    const-wide v11, 0x10900000001L

    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_4
    move-wide/from16 v20, v4

    .line 262
    .line 263
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 264
    .line 265
    monitor-enter v3

    .line 266
    :try_start_0
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 267
    .line 268
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-nez v4, :cond_8

    .line 277
    .line 278
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 279
    .line 280
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    const/4 v6, 0x0

    .line 289
    :goto_3
    if-ge v6, v5, :cond_8

    .line 290
    .line 291
    const-wide v7, 0x20b00000002L

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 297
    .line 298
    .line 299
    move-result-wide v9

    .line 300
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    check-cast v7, Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    check-cast v8, Landroid/util/SparseArray;

    .line 311
    .line 312
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    const-wide v12, 0x10900000001L

    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const/4 v14, 0x0

    .line 325
    :goto_4
    if-ge v14, v11, :cond_7

    .line 326
    .line 327
    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 328
    .line 329
    .line 330
    move-result v15

    .line 331
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 332
    .line 333
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 334
    .line 335
    iget-object v12, v12, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 336
    .line 337
    invoke-virtual {v12, v7, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v12

    .line 341
    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 342
    .line 343
    if-eqz v2, :cond_6

    .line 344
    .line 345
    if-eqz v12, :cond_5

    .line 346
    .line 347
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 348
    .line 349
    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v12

    .line 353
    if-nez v12, :cond_6

    .line 354
    .line 355
    :cond_5
    move-object/from16 v16, v4

    .line 356
    .line 357
    move/from16 v17, v5

    .line 358
    .line 359
    move-object v15, v7

    .line 360
    move-object/from16 v18, v8

    .line 361
    .line 362
    const-wide v7, 0x10300000002L

    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    goto :goto_6

    .line 368
    :cond_6
    move-object/from16 v16, v4

    .line 369
    .line 370
    move/from16 v17, v5

    .line 371
    .line 372
    const-wide v12, 0x20b00000002L

    .line 373
    .line 374
    .line 375
    .line 376
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

    .line 381
    .line 382
    .line 383
    move-result-wide v4

    .line 384
    const-wide v12, 0x10500000001L

    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v12, v13, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v15

    .line 396
    check-cast v15, Ljava/lang/Long;

    .line 397
    .line 398
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 399
    .line 400
    .line 401
    move-result-wide v12

    .line 402
    move-object v15, v7

    .line 403
    move-object/from16 v18, v8

    .line 404
    .line 405
    const-wide v7, 0x10300000002L

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v7, v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 414
    .line 415
    .line 416
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 417
    .line 418
    move-object v7, v15

    .line 419
    move-object/from16 v4, v16

    .line 420
    .line 421
    move/from16 v5, v17

    .line 422
    .line 423
    move-object/from16 v8, v18

    .line 424
    .line 425
    const-wide v12, 0x10900000001L

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_7
    move-object/from16 v16, v4

    .line 432
    .line 433
    move/from16 v17, v5

    .line 434
    .line 435
    const-wide v7, 0x10300000002L

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 441
    .line 442
    .line 443
    add-int/lit8 v6, v6, 0x1

    .line 444
    .line 445
    move-object/from16 v4, v16

    .line 446
    .line 447
    move/from16 v5, v17

    .line 448
    .line 449
    goto/16 :goto_3

    .line 450
    .line 451
    :cond_8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    move-wide/from16 v2, v20

    .line 453
    .line 454
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 455
    .line 456
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

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v5

    .line 14
    :try_start_0
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 15
    .line 16
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-nez v6, :cond_5

    .line 25
    .line 26
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 27
    .line 28
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    move/from16 v10, p3

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x0

    .line 40
    :goto_0
    if-ge v11, v9, :cond_6

    .line 41
    .line 42
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v13

    .line 46
    check-cast v13, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    check-cast v14, Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 55
    .line 56
    .line 57
    move-result v15

    .line 58
    const/4 v7, 0x0

    .line 59
    :goto_1
    if-ge v7, v15, :cond_4

    .line 60
    .line 61
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    move-object/from16 v16, v6

    .line 66
    .line 67
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 68
    .line 69
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 70
    .line 71
    iget-object v6, v6, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 72
    .line 73
    invoke-virtual {v6, v13, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    if-eqz v6, :cond_0

    .line 82
    .line 83
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 84
    .line 85
    invoke-virtual {v6, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-nez v6, :cond_1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto/16 :goto_b

    .line 94
    .line 95
    :cond_0
    :goto_2
    move v6, v9

    .line 96
    goto :goto_3

    .line 97
    :cond_1
    if-nez v12, :cond_3

    .line 98
    .line 99
    if-eqz v10, :cond_2

    .line 100
    .line 101
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 102
    .line 103
    .line 104
    :cond_2
    const-string v6, "  Time since processes crashed:"

    .line 105
    .line 106
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/4 v10, 0x1

    .line 110
    const/4 v12, 0x1

    .line 111
    :cond_3
    const-string v6, "    Process "

    .line 112
    .line 113
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v6, " uid "

    .line 120
    .line 121
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 125
    .line 126
    .line 127
    const-string v6, ": last crashed "

    .line 128
    .line 129
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    check-cast v6, Ljava/lang/Long;

    .line 137
    .line 138
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v17

    .line 142
    move v6, v9

    .line 143
    sub-long v8, v3, v17

    .line 144
    .line 145
    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 146
    .line 147
    .line 148
    const-string v8, " ago"

    .line 149
    .line 150
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 154
    .line 155
    move v9, v6

    .line 156
    move-object/from16 v6, v16

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    move-object/from16 v16, v6

    .line 160
    .line 161
    move v6, v9

    .line 162
    add-int/lit8 v11, v11, 0x1

    .line 163
    .line 164
    move-object/from16 v6, v16

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_5
    move/from16 v10, p3

    .line 168
    .line 169
    :cond_6
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 170
    .line 171
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-nez v6, :cond_c

    .line 180
    .line 181
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 182
    .line 183
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    const/4 v8, 0x0

    .line 192
    const/4 v9, 0x0

    .line 193
    :goto_4
    if-ge v8, v7, :cond_c

    .line 194
    .line 195
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    check-cast v11, Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    check-cast v12, Landroid/util/SparseArray;

    .line 206
    .line 207
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    const/4 v14, 0x0

    .line 212
    :goto_5
    if-ge v14, v13, :cond_b

    .line 213
    .line 214
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 215
    .line 216
    .line 217
    move-result v15

    .line 218
    move-object/from16 p3, v6

    .line 219
    .line 220
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 221
    .line 222
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 223
    .line 224
    iget-object v6, v6, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 225
    .line 226
    invoke-virtual {v6, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 231
    .line 232
    if-eqz v2, :cond_8

    .line 233
    .line 234
    if-eqz v6, :cond_7

    .line 235
    .line 236
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 237
    .line 238
    invoke-virtual {v6, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-nez v6, :cond_8

    .line 243
    .line 244
    :cond_7
    move v15, v7

    .line 245
    goto :goto_6

    .line 246
    :cond_8
    if-nez v9, :cond_a

    .line 247
    .line 248
    if-eqz v10, :cond_9

    .line 249
    .line 250
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 251
    .line 252
    .line 253
    :cond_9
    const-string v6, "  First time processes crashed and counts:"

    .line 254
    .line 255
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const/4 v9, 0x1

    .line 259
    const/4 v10, 0x1

    .line 260
    :cond_a
    const-string v6, "    Process "

    .line 261
    .line 262
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const-string v6, " uid "

    .line 269
    .line 270
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 274
    .line 275
    .line 276
    const-string v6, ": first crashed "

    .line 277
    .line 278
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    check-cast v6, Landroid/util/Pair;

    .line 286
    .line 287
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v6, Ljava/lang/Long;

    .line 290
    .line 291
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 292
    .line 293
    .line 294
    move-result-wide v16

    .line 295
    move v15, v7

    .line 296
    sub-long v6, v3, v16

    .line 297
    .line 298
    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 299
    .line 300
    .line 301
    const-string v6, " ago; crashes since then: "

    .line 302
    .line 303
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    check-cast v6, Landroid/util/Pair;

    .line 311
    .line 312
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 313
    .line 314
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 318
    .line 319
    move-object/from16 v6, p3

    .line 320
    .line 321
    move v7, v15

    .line 322
    goto :goto_5

    .line 323
    :cond_b
    move-object/from16 p3, v6

    .line 324
    .line 325
    move v15, v7

    .line 326
    add-int/lit8 v8, v8, 0x1

    .line 327
    .line 328
    goto/16 :goto_4

    .line 329
    .line 330
    :cond_c
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 332
    .line 333
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-nez v4, :cond_16

    .line 342
    .line 343
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    const/4 v5, 0x0

    .line 352
    const/4 v6, 0x0

    .line 353
    :goto_7
    if-ge v5, v4, :cond_16

    .line 354
    .line 355
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    check-cast v7, Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    check-cast v8, Landroid/util/SparseArray;

    .line 366
    .line 367
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    const/4 v11, 0x0

    .line 372
    :goto_8
    if-ge v11, v9, :cond_15

    .line 373
    .line 374
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->keyAt(I)I

    .line 375
    .line 376
    .line 377
    move-result v12

    .line 378
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 379
    .line 380
    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 381
    .line 382
    iget-object v13, v13, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 383
    .line 384
    invoke-virtual {v13, v7, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v13

    .line 388
    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 389
    .line 390
    if-eqz v2, :cond_d

    .line 391
    .line 392
    if-eqz v13, :cond_14

    .line 393
    .line 394
    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 395
    .line 396
    invoke-virtual {v13, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v13

    .line 400
    if-nez v13, :cond_d

    .line 401
    .line 402
    goto/16 :goto_a

    .line 403
    .line 404
    :cond_d
    if-nez v6, :cond_f

    .line 405
    .line 406
    if-eqz v10, :cond_e

    .line 407
    .line 408
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 409
    .line 410
    .line 411
    :cond_e
    const-string v6, "  Bad processes:"

    .line 412
    .line 413
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    const/4 v6, 0x1

    .line 417
    const/4 v10, 0x1

    .line 418
    :cond_f
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v13

    .line 422
    check-cast v13, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 423
    .line 424
    const-string v14, "    Bad process "

    .line 425
    .line 426
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    const-string v14, " uid "

    .line 433
    .line 434
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 438
    .line 439
    .line 440
    const-string v12, ": crashed at time "

    .line 441
    .line 442
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-wide v14, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    .line 446
    .line 447
    invoke-virtual {v1, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 448
    .line 449
    .line 450
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    .line 451
    .line 452
    if-eqz v12, :cond_10

    .line 453
    .line 454
    const-string v12, "      Short msg: "

    .line 455
    .line 456
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    .line 460
    .line 461
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    :cond_10
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    .line 465
    .line 466
    if-eqz v12, :cond_11

    .line 467
    .line 468
    const-string v12, "      Long msg: "

    .line 469
    .line 470
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    :cond_11
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 479
    .line 480
    if-eqz v12, :cond_14

    .line 481
    .line 482
    const-string v12, "      Stack:"

    .line 483
    .line 484
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    const/4 v12, 0x0

    .line 488
    const/4 v14, 0x0

    .line 489
    :goto_9
    iget-object v15, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 490
    .line 491
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 492
    .line 493
    .line 494
    move-result v15

    .line 495
    if-ge v12, v15, :cond_13

    .line 496
    .line 497
    iget-object v15, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 498
    .line 499
    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    .line 500
    .line 501
    .line 502
    move-result v15

    .line 503
    const/16 v0, 0xa

    .line 504
    .line 505
    if-ne v15, v0, :cond_12

    .line 506
    .line 507
    const-string v0, "        "

    .line 508
    .line 509
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iget-object v0, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 513
    .line 514
    sub-int v15, v12, v14

    .line 515
    .line 516
    invoke-virtual {v1, v0, v14, v15}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 517
    .line 518
    .line 519
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 520
    .line 521
    .line 522
    add-int/lit8 v14, v12, 0x1

    .line 523
    .line 524
    :cond_12
    add-int/lit8 v12, v12, 0x1

    .line 525
    .line 526
    move-object/from16 v0, p0

    .line 527
    .line 528
    goto :goto_9

    .line 529
    :cond_13
    iget-object v0, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    if-ge v14, v0, :cond_14

    .line 536
    .line 537
    const-string v0, "        "

    .line 538
    .line 539
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    iget-object v0, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 545
    .line 546
    .line 547
    move-result v12

    .line 548
    sub-int/2addr v12, v14

    .line 549
    invoke-virtual {v1, v0, v14, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 550
    .line 551
    .line 552
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 553
    .line 554
    .line 555
    :cond_14
    :goto_a
    add-int/lit8 v11, v11, 0x1

    .line 556
    .line 557
    move-object/from16 v0, p0

    .line 558
    .line 559
    goto/16 :goto_8

    .line 560
    .line 561
    :cond_15
    add-int/lit8 v5, v5, 0x1

    .line 562
    .line 563
    move-object/from16 v0, p0

    .line 564
    .line 565
    goto/16 :goto_7

    .line 566
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

    .line 2
    .line 3
    const/4 v11, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 7
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

    .line 12
    .line 13
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 14
    .line 15
    move v13, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move/from16 v13, p8

    .line 18
    .line 19
    :goto_1
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 24
    .line 25
    move-object/from16 v2, p0

    .line 26
    .line 27
    move v10, v1

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move-object/from16 v2, p0

    .line 30
    .line 31
    move/from16 v10, p9

    .line 32
    .line 33
    :goto_2
    iget-object v1, v2, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 34
    .line 35
    iget-object v14, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 36
    .line 37
    move-object/from16 v3, p2

    .line 38
    .line 39
    iget-object v15, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v16, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    move-object/from16 v1, v16

    .line 44
    .line 45
    move-object/from16 v2, p0

    .line 46
    .line 47
    move-object v4, v12

    .line 48
    move v5, v13

    .line 49
    move-object/from16 v6, p1

    .line 50
    .line 51
    move-object/from16 v7, p3

    .line 52
    .line 53
    move-object/from16 v8, p4

    .line 54
    .line 55
    move-object/from16 v9, p5

    .line 56
    .line 57
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    check-cast v14, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 61
    .line 62
    iget-object v0, v14, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 65
    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 67
    .line 68
    .line 69
    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, v14, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 71
    .line 72
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 79
    .line 80
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

    .line 87
    .line 88
    move-object/from16 v6, p4

    .line 89
    .line 90
    move-wide/from16 v7, p6

    .line 91
    .line 92
    move-object v9, v15

    .line 93
    :try_start_1
    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    move-object/from16 v11, v16

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :catch_0
    :try_start_2
    iget-object v2, v14, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 103
    .line 104
    iput-object v11, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 105
    .line 106
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2, v11}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 115
    .line 116
    .line 117
    if-eqz v11, :cond_5

    .line 118
    .line 119
    invoke-virtual {v11}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->run()V

    .line 120
    .line 121
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

    .line 126
    .line 127
    .line 128
    throw v0
.end method

.method public final handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v10, p6

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v11

    .line 13
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "anr_show_background"

    .line 20
    .line 21
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v13, 0x0

    .line 30
    invoke-static {v2, v3, v13, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
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

    .line 40
    .line 41
    iget v7, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 42
    .line 43
    iget v6, v9, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 44
    .line 45
    iget-boolean v5, v9, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 46
    .line 47
    iget-boolean v2, v9, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 48
    .line 49
    iget-object v3, v9, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 50
    .line 51
    iget-object v4, v9, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 52
    .line 53
    iget-boolean v13, v9, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 54
    .line 55
    if-nez v13, :cond_1

    .line 56
    .line 57
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 58
    .line 59
    invoke-virtual {v13, v8, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    check-cast v13, Ljava/lang/Long;

    .line 64
    .line 65
    iget-object v14, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 66
    .line 67
    invoke-virtual {v14, v8, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    check-cast v14, Ljava/lang/Long;

    .line 72
    .line 73
    move-object/from16 v17, v4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move-object/from16 v17, v4

    .line 77
    .line 78
    const/4 v13, 0x0

    .line 79
    const/4 v14, 0x0

    .line 80
    :goto_1
    iget-object v4, v9, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 81
    .line 82
    move/from16 v18, v15

    .line 83
    .line 84
    iget-object v15, v4, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 85
    .line 86
    iget-object v15, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 87
    .line 88
    iget v15, v15, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 89
    .line 90
    move/from16 v19, v5

    .line 91
    .line 92
    const/4 v5, 0x5

    .line 93
    if-ne v15, v5, :cond_2

    .line 94
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

    .line 99
    .line 100
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    move/from16 v20, v2

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    sub-int/2addr v15, v2

    .line 108
    const/16 v21, 0x0

    .line 109
    .line 110
    :goto_3
    if-ltz v15, :cond_6

    .line 111
    .line 112
    invoke-virtual {v4, v15}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    move/from16 v23, v6

    .line 117
    .line 118
    move/from16 v22, v7

    .line 119
    .line 120
    iget-wide v6, v2, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 121
    .line 122
    move-object/from16 v24, v8

    .line 123
    .line 124
    sget v8, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 125
    .line 126
    int-to-long v8, v8

    .line 127
    add-long/2addr v6, v8

    .line 128
    cmp-long v6, v11, v6

    .line 129
    .line 130
    if-lez v6, :cond_3

    .line 131
    .line 132
    const/4 v6, 0x1

    .line 133
    iput v6, v2, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_3
    const/4 v6, 0x1

    .line 137
    iget v7, v2, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 138
    .line 139
    add-int/2addr v7, v6

    .line 140
    iput v7, v2, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 141
    .line 142
    :goto_4
    iget v6, v2, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 143
    .line 144
    int-to-long v6, v6

    .line 145
    iget-object v8, v4, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 146
    .line 147
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 148
    .line 149
    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    .line 150
    .line 151
    cmp-long v6, v6, v8

    .line 152
    .line 153
    if-gez v6, :cond_5

    .line 154
    .line 155
    iget-boolean v2, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 156
    .line 157
    if-nez v2, :cond_4

    .line 158
    .line 159
    if-eqz v5, :cond_5

    .line 160
    .line 161
    :cond_4
    const/16 v21, 0x1

    .line 162
    .line 163
    :cond_5
    add-int/lit8 v15, v15, -0x1

    .line 164
    .line 165
    move-object/from16 v9, p1

    .line 166
    .line 167
    move/from16 v7, v22

    .line 168
    .line 169
    move/from16 v6, v23

    .line 170
    .line 171
    move-object/from16 v8, v24

    .line 172
    .line 173
    const/4 v2, 0x1

    .line 174
    goto :goto_3

    .line 175
    :cond_6
    move/from16 v23, v6

    .line 176
    .line 177
    move/from16 v22, v7

    .line 178
    .line 179
    move-object/from16 v24, v8

    .line 180
    .line 181
    if-eqz v13, :cond_7

    .line 182
    .line 183
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 184
    .line 185
    .line 186
    move-result-wide v4

    .line 187
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 188
    .line 189
    int-to-long v6, v2

    .line 190
    add-long/2addr v4, v6

    .line 191
    cmp-long v2, v11, v4

    .line 192
    .line 193
    if-gez v2, :cond_7

    .line 194
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

    .line 199
    .line 200
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 201
    .line 202
    move-object/from16 v9, p1

    .line 203
    .line 204
    iget-object v5, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 205
    .line 206
    iget v6, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 207
    .line 208
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Landroid/util/Pair;

    .line 213
    .line 214
    iget-boolean v5, v9, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 215
    .line 216
    if-nez v5, :cond_8

    .line 217
    .line 218
    if-eqz v4, :cond_8

    .line 219
    .line 220
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v5, Ljava/lang/Long;

    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 225
    .line 226
    .line 227
    move-result-wide v5

    .line 228
    sget-wide v7, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 229
    .line 230
    add-long/2addr v5, v7

    .line 231
    cmp-long v5, v11, v5

    .line 232
    .line 233
    if-gez v5, :cond_8

    .line 234
    .line 235
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v4, Ljava/lang/Integer;

    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    sget v5, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    .line 244
    .line 245
    if-lt v4, v5, :cond_8

    .line 246
    .line 247
    goto/16 :goto_b

    .line 248
    .line 249
    :cond_8
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 250
    .line 251
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 252
    .line 253
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 254
    .line 255
    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 256
    .line 257
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 258
    .line 259
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 260
    .line 261
    .line 262
    monitor-enter v4

    .line 263
    :try_start_0
    iget-object v5, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 264
    .line 265
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .line 267
    .line 268
    :try_start_1
    iget-object v5, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 269
    .line 270
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 271
    .line 272
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    const/4 v7, 0x1

    .line 277
    new-array v8, v7, [Lcom/android/server/wm/Task;

    .line 278
    .line 279
    new-instance v13, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;

    .line 280
    .line 281
    invoke-direct {v13, v8, v6, v3, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;-><init>([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, v13, v7}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 285
    .line 286
    .line 287
    const/4 v5, 0x0

    .line 288
    aget-object v6, v8, v5

    .line 289
    .line 290
    if-eqz v6, :cond_b

    .line 291
    .line 292
    iget-object v5, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 293
    .line 294
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 295
    .line 296
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    if-eqz v7, :cond_9

    .line 301
    .line 302
    const/4 v8, 0x1

    .line 303
    invoke-virtual {v7, v8}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 304
    .line 305
    .line 306
    move-result-object v13

    .line 307
    if-nez v13, :cond_9

    .line 308
    .line 309
    const/4 v13, 0x0

    .line 310
    invoke-virtual {v7, v1, v13, v8}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    .line 311
    .line 312
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

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-nez v1, :cond_a

    .line 322
    .line 323
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 324
    .line 325
    .line 326
    :cond_a
    iget v1, v6, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    .line 328
    :try_start_2
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 329
    .line 330
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 331
    .line 332
    .line 333
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 335
    .line 336
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

    .line 343
    .line 344
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 345
    .line 346
    .line 347
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 348
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 349
    .line 350
    .line 351
    const/4 v1, -0x1

    .line 352
    :goto_8
    if-eqz v10, :cond_c

    .line 353
    .line 354
    iput v1, v10, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 355
    .line 356
    :cond_c
    if-eqz v10, :cond_d

    .line 357
    .line 358
    if-eqz v14, :cond_d

    .line 359
    .line 360
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 361
    .line 362
    .line 363
    move-result-wide v1

    .line 364
    sget v4, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 365
    .line 366
    int-to-long v4, v4

    .line 367
    add-long/2addr v1, v4

    .line 368
    cmp-long v1, v11, v1

    .line 369
    .line 370
    if-gez v1, :cond_d

    .line 371
    .line 372
    const/4 v1, 0x1

    .line 373
    iput-boolean v1, v10, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .line 374
    .line 375
    :cond_d
    move-object v14, v3

    .line 376
    move-object/from16 v15, v17

    .line 377
    .line 378
    move/from16 v16, v19

    .line 379
    .line 380
    move-object/from16 v13, v24

    .line 381
    .line 382
    move-wide/from16 v19, v11

    .line 383
    .line 384
    move/from16 v12, v22

    .line 385
    .line 386
    goto/16 :goto_10

    .line 387
    .line 388
    :goto_9
    :try_start_4
    iget-object v1, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 389
    .line 390
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 391
    .line 392
    .line 393
    throw v0

    .line 394
    :goto_a
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 395
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 396
    .line 397
    .line 398
    throw v0

    .line 399
    :cond_e
    move-object/from16 v9, p1

    .line 400
    .line 401
    :goto_b
    const-string v1, "ActivityManager"

    .line 402
    .line 403
    const-string v4, "Process "

    .line 404
    .line 405
    const-string v5, " has crashed too many times, killing! Reason: "

    .line 406
    .line 407
    move-object/from16 v8, v24

    .line 408
    .line 409
    invoke-static {v4, v8, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    if-eqz v2, :cond_f

    .line 414
    .line 415
    const-string/jumbo v2, "crashed quickly"

    .line 416
    .line 417
    .line 418
    goto :goto_c

    .line 419
    :cond_f
    const-string/jumbo v2, "over process crash limit"

    .line 420
    .line 421
    .line 422
    :goto_c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .line 431
    .line 432
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    filled-new-array {v1, v8, v2}, [Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    const/16 v2, 0x7550

    .line 445
    .line 446
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 447
    .line 448
    .line 449
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 450
    .line 451
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 452
    .line 453
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 454
    .line 455
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 456
    .line 457
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 458
    .line 459
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 460
    .line 461
    .line 462
    monitor-enter v1

    .line 463
    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->handleAppCrash()V

    .line 464
    .line 465
    .line 466
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 467
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 468
    .line 469
    .line 470
    if-nez v20, :cond_13

    .line 471
    .line 472
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    filled-new-array {v1, v2, v8}, [Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    const/16 v2, 0x753f

    .line 485
    .line 486
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 487
    .line 488
    .line 489
    if-nez v19, :cond_10

    .line 490
    .line 491
    iget v7, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 492
    .line 493
    new-instance v13, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 494
    .line 495
    move-object v1, v13

    .line 496
    move-object/from16 v2, p3

    .line 497
    .line 498
    move-object v14, v3

    .line 499
    move-object/from16 v15, v17

    .line 500
    .line 501
    move-wide v3, v11

    .line 502
    move/from16 v16, v19

    .line 503
    .line 504
    move-object/from16 v5, p4

    .line 505
    .line 506
    move-wide/from16 v19, v11

    .line 507
    .line 508
    move/from16 v11, v23

    .line 509
    .line 510
    move-object/from16 v6, p5

    .line 511
    .line 512
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 516
    .line 517
    monitor-enter v1

    .line 518
    :try_start_6
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    .line 519
    .line 520
    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 521
    .line 522
    .line 523
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 524
    .line 525
    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2, v8, v7, v13}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    iput-object v2, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 532
    .line 533
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 534
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 535
    .line 536
    iget v2, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 537
    .line 538
    invoke-virtual {v1, v8, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 542
    .line 543
    iget v2, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 544
    .line 545
    invoke-virtual {v1, v8, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 546
    .line 547
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

    .line 555
    .line 556
    move/from16 v16, v19

    .line 557
    .line 558
    move-wide/from16 v19, v11

    .line 559
    .line 560
    move/from16 v11, v23

    .line 561
    .line 562
    goto :goto_d

    .line 563
    :goto_e
    iput-boolean v1, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    .line 564
    .line 565
    iput-boolean v1, v9, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 566
    .line 567
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 568
    .line 569
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 574
    .line 575
    if-eqz v1, :cond_12

    .line 576
    .line 577
    iget-object v2, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 578
    .line 579
    if-eqz v2, :cond_11

    .line 580
    .line 581
    iget-object v2, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 582
    .line 583
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 584
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

    .line 589
    .line 590
    .line 591
    :cond_12
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 592
    .line 593
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 594
    .line 595
    const-string/jumbo v7, "crash"

    .line 596
    .line 597
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

    .line 603
    .line 604
    move/from16 v4, v21

    .line 605
    .line 606
    move/from16 v12, v22

    .line 607
    .line 608
    move-object v13, v8

    .line 609
    move v8, v11

    .line 610
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 611
    .line 612
    .line 613
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 614
    .line 615
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 616
    .line 617
    const/4 v2, 0x0

    .line 618
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 619
    .line 620
    .line 621
    if-nez v18, :cond_14

    .line 622
    .line 623
    return v2

    .line 624
    :cond_13
    move-object v14, v3

    .line 625
    move-object v13, v8

    .line 626
    move-object/from16 v15, v17

    .line 627
    .line 628
    move/from16 v16, v19

    .line 629
    .line 630
    const/4 v2, 0x0

    .line 631
    move-wide/from16 v19, v11

    .line 632
    .line 633
    move/from16 v12, v22

    .line 634
    .line 635
    :cond_14
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 636
    .line 637
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 638
    .line 639
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 640
    .line 641
    .line 642
    :goto_10
    if-eqz v10, :cond_15

    .line 643
    .line 644
    if-eqz v21, :cond_15

    .line 645
    .line 646
    const/4 v1, 0x1

    .line 647
    iput-boolean v1, v10, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 648
    .line 649
    :cond_15
    iget-object v1, v14, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 650
    .line 651
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 652
    .line 653
    if-ne v14, v1, :cond_18

    .line 654
    .line 655
    iget-boolean v1, v14, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 656
    .line 657
    if-eqz v1, :cond_18

    .line 658
    .line 659
    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 660
    .line 661
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 662
    .line 663
    const/4 v2, 0x1

    .line 664
    and-int/2addr v1, v2

    .line 665
    if-nez v1, :cond_18

    .line 666
    .line 667
    iget-object v1, v14, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 668
    .line 669
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 670
    .line 671
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 672
    .line 673
    .line 674
    monitor-enter v1

    .line 675
    :try_start_8
    iget-object v3, v14, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 676
    .line 677
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    sub-int/2addr v3, v2

    .line 682
    :goto_11
    if-ltz v3, :cond_17

    .line 683
    .line 684
    iget-object v2, v14, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 685
    .line 686
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 691
    .line 692
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 693
    .line 694
    .line 695
    move-result v4

    .line 696
    if-eqz v4, :cond_16

    .line 697
    .line 698
    const-string v4, "ActivityTaskManager"

    .line 699
    .line 700
    new-instance v5, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .line 704
    .line 705
    const-string v6, "Clearing package preferred activities from "

    .line 706
    .line 707
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 711
    .line 712
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 720
    .line 721
    .line 722
    :try_start_9
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 723
    .line 724
    .line 725
    move-result-object v4

    .line 726
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 727
    .line 728
    invoke-interface {v4, v2}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 729
    .line 730
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

    .line 735
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

    .line 739
    .line 740
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

    .line 744
    .line 745
    .line 746
    throw v0

    .line 747
    :cond_18
    :goto_14
    if-nez v16, :cond_1b

    .line 748
    .line 749
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 750
    .line 751
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    invoke-virtual {v1, v13, v12, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 759
    .line 760
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 761
    .line 762
    .line 763
    move-result-object v2

    .line 764
    invoke-virtual {v1, v13, v12, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 768
    .line 769
    invoke-virtual {v1, v13, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    check-cast v1, Landroid/util/Pair;

    .line 774
    .line 775
    if-eqz v1, :cond_19

    .line 776
    .line 777
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v2, Ljava/lang/Long;

    .line 780
    .line 781
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 782
    .line 783
    .line 784
    move-result-wide v2

    .line 785
    sget-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    .line 786
    .line 787
    add-long/2addr v2, v4

    .line 788
    cmp-long v2, v2, v19

    .line 789
    .line 790
    if-gez v2, :cond_1a

    .line 791
    .line 792
    :cond_19
    const/4 v4, 0x1

    .line 793
    goto :goto_15

    .line 794
    :cond_1a
    new-instance v2, Landroid/util/Pair;

    .line 795
    .line 796
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 797
    .line 798
    check-cast v3, Ljava/lang/Long;

    .line 799
    .line 800
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 801
    .line 802
    check-cast v1, Ljava/lang/Integer;

    .line 803
    .line 804
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 805
    .line 806
    .line 807
    move-result v1

    .line 808
    const/4 v4, 0x1

    .line 809
    add-int/2addr v1, v4

    .line 810
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    goto :goto_16

    .line 818
    :goto_15
    new-instance v2, Landroid/util/Pair;

    .line 819
    .line 820
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 829
    .line 830
    .line 831
    :goto_16
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 832
    .line 833
    invoke-virtual {v1, v13, v12, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    :cond_1b
    iget-object v1, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    .line 837
    .line 838
    if-eqz v1, :cond_1c

    .line 839
    .line 840
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 841
    .line 842
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 843
    .line 844
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 845
    .line 846
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

    .line 852
    .line 853
    .line 854
    throw v0
.end method

.method public final handleShowAnrUi(Landroid/os/Message;)V
    .locals 13

    .line 1
    const-string v0, "ANR delay completed. Cancelling ANR dialog for package: "

    .line 2
    .line 3
    const-string v1, "ANR delay completed. Showing ANR dialog for package: "

    .line 4
    .line 5
    const-string v2, "App already has anr dialog: "

    .line 6
    .line 7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 10
    .line 11
    iget-object v3, p1, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    const-string p0, "ActivityManager"

    .line 16
    .line 17
    const-string/jumbo p1, "handleShowAnrUi: proc is null"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 27
    .line 28
    .line 29
    monitor-enter v4

    .line 30
    :try_start_0
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 31
    .line 32
    iput-object p1, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 33
    .line 34
    iget-boolean v6, v3, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    if-nez v6, :cond_1

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_1
    move-object v6, v7

    .line 48
    :goto_0
    iget-object v8, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 49
    .line 50
    iget-object v8, v8, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x1

    .line 54
    if-eqz v8, :cond_2

    .line 55
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

    .line 60
    .line 61
    if-eqz v8, :cond_3

    .line 62
    .line 63
    const-string p1, "ActivityManager"

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    const/4 p1, -0x2

    .line 83
    invoke-static {p0, v11, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 84
    .line 85
    .line 86
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v8, "anr_show_background"

    .line 98
    .line 99
    iget-object v12, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 100
    .line 101
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 102
    .line 103
    invoke-virtual {v12}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    invoke-static {v2, v8, v9, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
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

    .line 117
    .line 118
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 119
    .line 120
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-nez v8, :cond_6

    .line 125
    .line 126
    if-eqz v2, :cond_5

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    const/4 v0, -0x1

    .line 132
    invoke-static {p1, v11, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 133
    .line 134
    .line 135
    move v9, v10

    .line 136
    goto :goto_4

    .line 137
    :cond_6
    :goto_3
    iget-object v2, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 138
    .line 139
    iget-object v8, v2, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    .line 140
    .line 141
    if-nez v8, :cond_7

    .line 142
    .line 143
    invoke-virtual {v2, p1}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_7
    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 148
    .line 149
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 150
    .line 151
    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 152
    .line 153
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 154
    .line 155
    invoke-interface {v8, v2, v10}, Landroid/app/AnrController;->onAnrDelayCompleted(Ljava/lang/String;I)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_8

    .line 160
    .line 161
    const-string v0, "ActivityManager"

    .line 162
    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    iget-object v0, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 179
    .line 180
    invoke-virtual {v0, p1}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_8
    const-string p1, "ActivityManager"

    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v9}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 202
    .line 203
    .line 204
    iput-object v7, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 205
    .line 206
    iget-object p1, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 209
    .line 210
    .line 211
    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 213
    .line 214
    .line 215
    if-eqz v9, :cond_9

    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 218
    .line 219
    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    .line 220
    .line 221
    .line 222
    :cond_9
    if-eqz v6, :cond_a

    .line 223
    .line 224
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 225
    .line 226
    const/4 p1, 0x4

    .line 227
    invoke-virtual {p0, p1, v6}, Lcom/android/server/PackageWatchdog;->onPackageFailure(ILjava/util/List;)V

    .line 228
    .line 229
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

    .line 233
    .line 234
    .line 235
    throw p0
.end method

.method public final handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "App already has crash dialog: "

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lcom/android/server/am/AppErrorDialog$Data;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "anr_show_background"

    .line 18
    .line 19
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 20
    .line 21
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v3, :cond_0

    .line 34
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

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 41
    .line 42
    .line 43
    monitor-enter v5

    .line 44
    :try_start_0
    iget-object v7, v2, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 45
    .line 46
    iget-object v8, v2, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 47
    .line 48
    if-nez v7, :cond_1

    .line 49
    .line 50
    const-string v0, "ActivityManager"

    .line 51
    .line 52
    const-string/jumbo v1, "handleShowAppErrorUi: proc is null"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto/16 :goto_e

    .line 65
    .line 66
    :cond_1
    :try_start_1
    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 67
    .line 68
    iget v10, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 69
    .line 70
    iget-object v11, v9, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 71
    .line 72
    iget-object v11, v11, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 73
    .line 74
    if-eqz v11, :cond_3

    .line 75
    .line 76
    const-string v0, "ActivityManager"

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    if-eqz v8, :cond_2

    .line 94
    .line 95
    sget v0, Lcom/android/server/am/AppErrorDialog;->$r8$clinit:I

    .line 96
    .line 97
    const/4 v0, -0x3

    .line 98
    invoke-virtual {v8, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    :try_start_2
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 107
    .line 108
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    const/16 v11, 0x2710

    .line 113
    .line 114
    if-lt v1, v11, :cond_4

    .line 115
    .line 116
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 117
    .line 118
    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 119
    .line 120
    if-eq v1, v11, :cond_4

    .line 121
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

    .line 126
    .line 127
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 128
    .line 129
    invoke-virtual {v11}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    array-length v12, v11

    .line 134
    move v13, v6

    .line 135
    :goto_2
    if-ge v13, v12, :cond_6

    .line 136
    .line 137
    aget v14, v11, v13

    .line 138
    .line 139
    if-eq v10, v14, :cond_5

    .line 140
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

    .line 148
    .line 149
    if-nez v3, :cond_8

    .line 150
    .line 151
    const-string v0, "ActivityManager"

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v2, "Skipping crash dialog of "

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v2, ": background"

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    if-eqz v8, :cond_7

    .line 179
    .line 180
    sget v0, Lcom/android/server/am/AppErrorDialog;->$r8$clinit:I

    .line 181
    .line 182
    const/4 v0, -0x2

    .line 183
    invoke-virtual {v8, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 184
    .line 185
    .line 186
    :cond_7
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_8
    :try_start_3
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 192
    .line 193
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    :try_start_4
    iget-boolean v11, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 195
    .line 196
    if-nez v11, :cond_9

    .line 197
    .line 198
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 199
    .line 200
    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 201
    .line 202
    iget v13, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 203
    .line 204
    invoke-virtual {v11, v12, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    check-cast v11, Ljava/lang/Long;

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :catchall_1
    move-exception v0

    .line 212
    goto/16 :goto_d

    .line 213
    .line 214
    :cond_9
    const/4 v11, 0x0

    .line 215
    :goto_4
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 216
    .line 217
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    const-string/jumbo v13, "show_first_crash_dialog"

    .line 222
    .line 223
    .line 224
    invoke-static {v12, v13, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    if-eqz v12, :cond_a

    .line 229
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

    .line 234
    .line 235
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 236
    .line 237
    .line 238
    move-result-object v13

    .line 239
    const-string/jumbo v14, "show_first_crash_dialog_dev_option"

    .line 240
    .line 241
    .line 242
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 243
    .line 244
    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 245
    .line 246
    invoke-virtual {v15}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 247
    .line 248
    .line 249
    move-result v15

    .line 250
    invoke-static {v13, v14, v6, v15}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 251
    .line 252
    .line 253
    move-result v13

    .line 254
    if-eqz v13, :cond_b

    .line 255
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

    .line 260
    .line 261
    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 264
    .line 265
    if-eqz v15, :cond_c

    .line 266
    .line 267
    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 268
    .line 269
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-eqz v4, :cond_c

    .line 276
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

    .line 281
    .line 282
    .line 283
    move-result-wide v15

    .line 284
    if-eqz v11, :cond_d

    .line 285
    .line 286
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 287
    .line 288
    .line 289
    move-result-wide v17

    .line 290
    sget v11, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    .line 291
    .line 292
    move-object/from16 v19, v7

    .line 293
    .line 294
    int-to-long v6, v11

    .line 295
    add-long v17, v17, v6

    .line 296
    .line 297
    cmp-long v6, v15, v17

    .line 298
    .line 299
    if-gez v6, :cond_e

    .line 300
    .line 301
    const/4 v6, 0x1

    .line 302
    goto :goto_8

    .line 303
    :cond_d
    move-object/from16 v19, v7

    .line 304
    .line 305
    :cond_e
    const/4 v6, 0x0

    .line 306
    :goto_8
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 307
    .line 308
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 309
    .line 310
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    if-nez v7, :cond_f

    .line 315
    .line 316
    if-eqz v3, :cond_13

    .line 317
    .line 318
    :cond_f
    if-nez v4, :cond_13

    .line 319
    .line 320
    if-nez v6, :cond_13

    .line 321
    .line 322
    if-nez v12, :cond_10

    .line 323
    .line 324
    if-nez v13, :cond_10

    .line 325
    .line 326
    iget-boolean v3, v2, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .line 327
    .line 328
    if-eqz v3, :cond_13

    .line 329
    .line 330
    :cond_10
    const-string v3, "ActivityManager"

    .line 331
    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    const-string v6, "Showing crash dialog for package "

    .line 338
    .line 339
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v6, " u"

    .line 346
    .line 347
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 358
    .line 359
    .line 360
    :try_start_5
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    .line 361
    .line 362
    .line 363
    move-result-object v20
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 364
    move-object/from16 v3, v19

    .line 365
    .line 366
    :try_start_6
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 367
    .line 368
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 369
    .line 370
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 371
    .line 372
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 373
    .line 374
    iget v7, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 375
    .line 376
    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 377
    .line 378
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 379
    .line 380
    iget-object v11, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 381
    .line 382
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 383
    .line 384
    iget-object v12, v2, Lcom/android/server/am/AppErrorDialog$Data;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 385
    .line 386
    iget-object v13, v12, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 387
    .line 388
    iget-object v14, v12, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 389
    .line 390
    iget-object v12, v12, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 391
    .line 392
    move-object/from16 v21, v4

    .line 393
    .line 394
    move-object/from16 v22, v6

    .line 395
    .line 396
    move/from16 v23, v7

    .line 397
    .line 398
    move/from16 v24, v10

    .line 399
    .line 400
    move/from16 v25, v11

    .line 401
    .line 402
    move-object/from16 v26, v13

    .line 403
    .line 404
    move-object/from16 v27, v14

    .line 405
    .line 406
    move-object/from16 v28, v12

    .line 407
    .line 408
    invoke-virtual/range {v20 .. v28}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpType(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 409
    .line 410
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

    .line 414
    .line 415
    :catch_1
    :try_start_7
    const-string v4, "ActivityManager"

    .line 416
    .line 417
    const-string v6, "IAFDParse false"

    .line 418
    .line 419
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    const/4 v4, 0x0

    .line 423
    :goto_9
    if-eqz v4, :cond_12

    .line 424
    .line 425
    const-string v4, "ActivityManager"

    .line 426
    .line 427
    const-string/jumbo v6, "step1: IAFD parse pass, will call showIAFDCrashDialogs"

    .line 428
    .line 429
    .line 430
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    if-eqz v8, :cond_11

    .line 434
    .line 435
    const/4 v4, 0x7

    .line 436
    invoke-virtual {v8, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 437
    .line 438
    .line 439
    :cond_11
    const/4 v6, 0x1

    .line 440
    goto :goto_a

    .line 441
    :cond_12
    iget-object v4, v9, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 442
    .line 443
    invoke-virtual {v4, v2}, Lcom/android/server/am/ErrorDialogController;->showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 444
    .line 445
    .line 446
    const/4 v6, 0x0

    .line 447
    :goto_a
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 448
    .line 449
    if-nez v4, :cond_15

    .line 450
    .line 451
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 452
    .line 453
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 454
    .line 455
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 456
    .line 457
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    invoke-virtual {v0, v4, v3, v7}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    goto :goto_b

    .line 465
    :cond_13
    if-eqz v8, :cond_14

    .line 466
    .line 467
    sget v0, Lcom/android/server/am/AppErrorDialog;->$r8$clinit:I

    .line 468
    .line 469
    const/4 v0, -0x1

    .line 470
    invoke-virtual {v8, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 471
    .line 472
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

    .line 477
    .line 478
    .line 479
    if-eqz v6, :cond_16

    .line 480
    .line 481
    :try_start_9
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    iget-object v1, v2, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 486
    .line 487
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 488
    .line 489
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 490
    .line 491
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 492
    .line 493
    iget-object v2, v2, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 494
    .line 495
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 496
    .line 497
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 498
    .line 499
    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/iaft/IAFDDiagnosis;->showIAFDCrashDialogs(IILjava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 500
    .line 501
    .line 502
    goto :goto_c

    .line 503
    :catch_2
    const-string v0, "ActivityManager"

    .line 504
    .line 505
    const-string v1, "IAFDShow false"

    .line 506
    .line 507
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
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

    .line 515
    .line 516
    .line 517
    throw v0
.end method

.method public final killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/16 v2, 0xd

    .line 16
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

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    new-instance v4, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-direct {v4, v5}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 37
    .line 38
    .line 39
    iput-object v3, v0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 40
    .line 41
    :goto_2
    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 45
    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_2
    new-instance v4, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-direct {v4, v5}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 56
    .line 57
    .line 58
    iput-object v3, v0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 59
    .line 60
    :goto_3
    iget-object v2, v0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 61
    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_3
    iget-object v4, v0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 66
    .line 67
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 68
    .line 69
    new-instance v5, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    .line 70
    .line 71
    const/4 v8, 0x2

    .line 72
    invoke-direct {v5, v8, v2}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    iput-object v3, v0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 79
    .line 80
    :goto_4
    const-string/jumbo v8, "user-terminated"

    .line 81
    .line 82
    .line 83
    const-string/jumbo v9, "user request after error"

    .line 84
    .line 85
    .line 86
    move-object v4, p0

    .line 87
    move-object v5, p1

    .line 88
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 93
    .line 94
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

    .line 99
    .line 100
    .line 101
    throw p0
.end method

.method public final killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 5
    .line 6
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 7
    .line 8
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 9
    .line 10
    iput-boolean v2, v3, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iput-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 16
    .line 17
    .line 18
    iput-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 21
    .line 22
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 23
    .line 24
    if-lez v1, :cond_0

    .line 25
    .line 26
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    iget-object v8, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 31
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

    .line 41
    .line 42
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

    .line 52
    .line 53
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

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 11
    .line 12
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 15
    .line 16
    iput-boolean v2, v3, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    .line 17
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

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    const-string/jumbo v4, "force-crash"

    .line 42
    .line 43
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

    .line 51
    .line 52
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

    .line 57
    .line 58
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

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 4
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

    .line 10
    .line 11
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 12
    .line 13
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ge v3, v4, :cond_4

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 24
    .line 25
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-ltz p1, :cond_0

    .line 32
    .line 33
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 34
    .line 35
    if-eq v5, p1, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto/16 :goto_7

    .line 40
    .line 41
    :cond_0
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 42
    .line 43
    if-ne v5, p2, :cond_1

    .line 44
    .line 45
    move-object v2, v4

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 48
    .line 49
    invoke-virtual {v5, p3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    if-ltz p4, :cond_2

    .line 56
    .line 57
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 58
    .line 59
    if-ne v5, p4, :cond_3

    .line 60
    .line 61
    :cond_2
    move-object v2, v4

    .line 62
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 63
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

    .line 67
    .line 68
    const-string p0, "ActivityManager"

    .line 69
    .line 70
    const-string/jumbo p5, "crashApplication: nothing for uid="

    .line 71
    .line 72
    .line 73
    const-string p6, " initialPid="

    .line 74
    .line 75
    const-string p7, " packageName="

    .line 76
    .line 77
    invoke-static {p1, p2, p5, p6, p7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p2, " userId="

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_5
    const/4 p1, 0x5

    .line 101
    if-ne p7, p1, :cond_7

    .line 102
    .line 103
    iget-object p1, v2, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :goto_3
    array-length p3, p1

    .line 110
    if-ge v1, p3, :cond_7

    .line 111
    .line 112
    iget-object p3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 113
    .line 114
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 115
    .line 116
    aget-object p4, p1, v1

    .line 117
    .line 118
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 119
    .line 120
    check-cast p3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 121
    .line 122
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 123
    .line 124
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 125
    .line 126
    invoke-virtual {p3, v0, p4}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    if-eqz p3, :cond_6

    .line 131
    .line 132
    const-string p0, "ActivityManager"

    .line 133
    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string/jumbo p3, "crashApplication: Can not crash protected package "

    .line 137
    .line 138
    .line 139
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    aget-object p1, p1, v1

    .line 143
    .line 144
    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 152
    .line 153
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 156
    .line 157
    const/16 p3, 0xc

    .line 158
    .line 159
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeProcess(II)V

    .line 160
    .line 161
    .line 162
    const-string/jumbo p1, "scheduleCrash for \'"

    .line 163
    .line 164
    .line 165
    iget-boolean p2, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 166
    .line 167
    if-nez p2, :cond_9

    .line 168
    .line 169
    iget-object p2, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 170
    .line 171
    if-eqz p2, :cond_9

    .line 172
    .line 173
    iget p2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 174
    .line 175
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 176
    .line 177
    .line 178
    move-result p3

    .line 179
    if-ne p2, p3, :cond_8

    .line 180
    .line 181
    const-string p1, "ActivityManager"

    .line 182
    .line 183
    const-string/jumbo p2, "scheduleCrash: trying to crash system process!"

    .line 184
    .line 185
    .line 186
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 191
    .line 192
    .line 193
    move-result-wide p2

    .line 194
    :try_start_1
    iget-object p4, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 195
    .line 196
    invoke-interface {p4, p5, p7, p8}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    .line 198
    .line 199
    :goto_4
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    .line 201
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

    .line 206
    .line 207
    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string p1, "\' failed"

    .line 214
    .line 215
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    const/4 p4, 0x4

    .line 223
    invoke-virtual {v2, p4, p1}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :goto_5
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 228
    .line 229
    .line 230
    throw p0

    .line 231
    :cond_9
    :goto_6
    if-eqz p6, :cond_a

    .line 232
    .line 233
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 234
    .line 235
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 236
    .line 237
    new-instance p2, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;

    .line 238
    .line 239
    invoke-direct {p2, p0, v2}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    .line 240
    .line 241
    .line 242
    const-wide/16 p3, 0x1388

    .line 243
    .line 244
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    .line 246
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
