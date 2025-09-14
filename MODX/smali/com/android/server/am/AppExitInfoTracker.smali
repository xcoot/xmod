.class public final Lcom/android/server/am/AppExitInfoTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final APP_EXIT_INFO_FILE:Ljava/lang/String; = "procexitinfo"

.field public static final APP_EXIT_INFO_PERSIST_INTERVAL:J

.field public static final APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

.field static final APP_EXIT_STORE_DIR:Ljava/lang/String; = "procexitstore"


# instance fields
.field public final mActiveAppStateSummary:Landroid/util/SparseArray;

.field public final mActiveAppTraces:Landroid/util/SparseArray;

.field public mAppExitInfoHistoryListSize:I

.field mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

.field public final mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field public final mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field public final mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

.field public final mData:Lcom/android/internal/app/ProcessMap;

.field public final mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

.field public mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

.field public mLastAppExitInfoPersistTimestamp:J

.field public final mLock:Ljava/lang/Object;

.field mProcExitInfoFile:Ljava/io/File;

.field mProcExitStoreDir:Ljava/io/File;

.field public final mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

.field public mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTmpInfoList:Ljava/util/ArrayList;

.field public final mTmpInfoList2:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$smfindAndRemoveFromSparse2dArray(IILandroid/util/SparseArray;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-ltz p0, :cond_1

    .line 8
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/util/SparseArray;

    .line 14
    if-nez v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 20
    move-result p1

    .line 21
    if-ltz p1, :cond_1

    .line 23
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 30
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 36
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 39
    :cond_1
    :goto_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v1, 0x1e

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    const-wide/16 v1, 0xf

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 18
    move-result-wide v0

    .line 19
    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    .line 14
    const-wide/16 v1, 0x0

    .line 16
    iput-wide v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 18
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 39
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 41
    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    .line 44
    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 46
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 48
    invoke-direct {v1, p0, v0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/Integer;)V

    .line 51
    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 53
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 55
    const/4 v1, 0x3

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/Integer;)V

    .line 63
    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    .line 67
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    .line 74
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    .line 81
    invoke-direct {v0, p0}, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    .line 84
    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    .line 86
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    .line 88
    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 93
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    .line 95
    const/16 v1, 0x8

    .line 97
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 100
    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    .line 102
    return-void
.end method

.method public static dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "  package: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x0

    .line 23
    move v1, v0

    .line 24
    :goto_0
    if-ge v1, p1, :cond_3

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    const-string v3, "    Historical Process Exit for uid="

    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 36
    move-result v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v4, v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 66
    move-result v4

    .line 67
    add-int/lit8 v4, v4, -0x1

    .line 69
    :goto_1
    if-ltz v4, :cond_0

    .line 71
    iget-object v5, v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Landroid/app/ApplicationExitInfo;

    .line 79
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v4, v4, -0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    iget-object v4, v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 90
    move-result v4

    .line 91
    add-int/lit8 v4, v4, -0x1

    .line 93
    :goto_2
    if-ltz v4, :cond_1

    .line 95
    iget-object v5, v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 97
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Landroid/app/ApplicationExitInfo;

    .line 103
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v4, v4, -0x1

    .line 108
    goto :goto_2

    .line 109
    :cond_1
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;

    .line 111
    const/4 v4, 0x3

    .line 112
    invoke-direct {v2, v4}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 115
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 121
    move-result v2

    .line 122
    move v4, v0

    .line 123
    :goto_3
    if-ge v4, v2, :cond_2

    .line 125
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Landroid/app/ApplicationExitInfo;

    .line 131
    const-string v6, "#"

    .line 133
    invoke-static {v4, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object v6

    .line 137
    const-string v7, "        "

    .line 139
    invoke-virtual {v5, p0, v7, v6, p3}, Landroid/app/ApplicationExitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    .line 142
    add-int/lit8 v4, v4, 0x1

    .line 144
    goto :goto_3

    .line 145
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 147
    goto :goto_0

    .line 148
    :cond_3
    return-void
.end method

.method public static performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->isLoggedInStatsd()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/ApplicationExitInfo;->setLoggedInStatsd(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 26
    const/4 v1, 0x0

    .line 27
    :cond_1
    :goto_0
    move-object v4, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    if-eqz v1, :cond_1

    .line 31
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 42
    move-result v0

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    .line 51
    move-result v3

    .line 52
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 55
    move-result v5

    .line 56
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    .line 59
    move-result v6

    .line 60
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    .line 63
    move-result v7

    .line 64
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPss()J

    .line 67
    move-result-wide v0

    .line 68
    long-to-int v8, v0

    .line 69
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getRss()J

    .line 72
    move-result-wide v0

    .line 73
    long-to-int v9, v0

    .line 74
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->hasForegroundServices()Z

    .line 77
    move-result v10

    .line 78
    const/16 v2, 0x175

    .line 80
    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIIIIZ)V

    .line 83
    return-void
.end method

.method public static putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 7
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 10
    move-result-object p4

    .line 11
    check-cast p4, Landroid/util/SparseArray;

    .line 13
    invoke-virtual {p0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    move-object p4, p0

    .line 22
    check-cast p4, Landroid/util/SparseArray;

    .line 24
    :goto_0
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 27
    move-result p0

    .line 28
    if-ltz p0, :cond_2

    .line 30
    if-eqz p5, :cond_1

    .line 32
    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p5, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;->accept(Ljava/lang/Object;)V

    .line 39
    :cond_1
    invoke-virtual {p4, p0, p3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p4, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    :goto_1
    return-void
.end method

.method public static removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_0
    if-ltz v0, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 23
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/util/SparseArray;

    .line 29
    if-nez v1, :cond_0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 35
    move-result v2

    .line 36
    add-int/lit8 v2, v2, -0x1

    .line 38
    :goto_1
    if-ltz v2, :cond_2

    .line 40
    if-eqz p2, :cond_1

    .line 42
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p2, v3}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;->accept(Ljava/lang/Object;)V

    .line 49
    :cond_1
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 52
    add-int/lit8 v2, v2, -0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 61
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 64
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    return-void
.end method


# virtual methods
.method public final addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 9
    if-nez v0, :cond_2

    .line 11
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 13
    iget v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    .line 18
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 30
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v1

    .line 44
    iput v1, v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    .line 50
    move-result v1

    .line 51
    iput v1, v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    .line 53
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_2
    if-eqz p4, :cond_3

    .line 60
    iget-object p0, v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {v0, p0, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->addInfoLocked(Landroid/util/SparseArray;Landroid/app/ApplicationExitInfo;)V

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object p0, v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {v0, p0, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->addInfoLocked(Landroid/util/SparseArray;Landroid/app/ApplicationExitInfo;)V

    .line 71
    :goto_1
    return-void
.end method

.method public final addExitInfoLocked(Landroid/app/ApplicationExitInfo;Z)Landroid/app/ApplicationExitInfo;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string p0, "ActivityManager"

    .line 11
    const-string p1, "Skipping saving the exit info due to ongoing loading from storage"

    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Landroid/app/ApplicationExitInfo;

    .line 20
    invoke-direct {v0, p1}, Landroid/app/ApplicationExitInfo;-><init>(Landroid/app/ApplicationExitInfo;)V

    .line 23
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageList()[Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 37
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 39
    invoke-virtual {v3, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result v2

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 50
    move v4, v3

    .line 51
    :goto_0
    array-length v5, v1

    .line 52
    if-ge v4, v5, :cond_2

    .line 54
    aget-object v5, v1, v4

    .line 56
    invoke-virtual {p0, v5, v2, v0, p2}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;Z)V

    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {v2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 68
    move v2, v3

    .line 69
    :goto_1
    array-length v4, v1

    .line 70
    if-ge v2, v4, :cond_3

    .line 72
    aget-object v4, v1, v2

    .line 74
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    .line 77
    move-result v5

    .line 78
    invoke-virtual {p0, v4, v5, v0, p2}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;Z)V

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 87
    return-object v0
.end method

.method public clearProcessExitInfo(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    .line 27
    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 34
    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 41
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 46
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 51
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final dumpHistoryProcessExitInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "Last Timestamp of Persistence Into Persistent Storage: "

    .line 3
    const-string v1, "ACTIVITY MANAGER PROCESS EXIT INFO (dumpsys activity exit-info)"

    .line 5
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    .line 10
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 13
    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/Date;

    .line 26
    iget-wide v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 28
    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 31
    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    new-instance p2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;

    .line 53
    invoke-direct {p2, p0, p1, v1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    .line 56
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Landroid/util/SparseArray;

    .line 74
    if-eqz p0, :cond_1

    .line 76
    invoke-static {p1, p2, p0, v1}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 79
    :cond_1
    :goto_0
    monitor-exit v2

    .line 80
    return-void

    .line 81
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public final forEachPackageLocked(Ljava/util/function/BiFunction;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    :goto_0
    if-ltz v0, :cond_3

    .line 15
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/String;

    .line 21
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/util/SparseArray;

    .line 27
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v2

    .line 37
    if-eq v2, v1, :cond_1

    .line 39
    const/4 v3, 0x2

    .line 40
    if-eq v2, v3, :cond_0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/util/SparseArray;

    .line 51
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 54
    move-result v3

    .line 55
    sub-int/2addr v3, v1

    .line 56
    :goto_1
    if-ltz v3, :cond_2

    .line 58
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 64
    iget-object v5, v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 66
    invoke-static {v5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked(Landroid/util/SparseArray;)V

    .line 69
    iget-object v4, v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 71
    invoke-static {v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked(Landroid/util/SparseArray;)V

    .line 74
    add-int/lit8 v3, v3, -0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 80
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    return-void
.end method

.method public getExitInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 22
    if-eqz p0, :cond_3

    .line 24
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfoLocked(IILjava/util/ArrayList;)V

    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 35
    new-instance v3, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    .line 37
    invoke-direct {v3, p0, p2, p1, p3}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;I)V

    .line 40
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 43
    new-instance p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;

    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-direct {p0, p2}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 49
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result p0

    .line 56
    if-lez p4, :cond_1

    .line 58
    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    .line 61
    move-result p0

    .line 62
    :cond_1
    const/4 p2, 0x0

    .line 63
    :goto_0
    if-ge p2, p0, :cond_2

    .line 65
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object p3

    .line 69
    check-cast p3, Landroid/app/ApplicationExitInfo;

    .line 71
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 p2, p2, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 80
    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    return-void

    .line 85
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    throw p0
.end method

.method public final getExitInfoLocked(IILjava/lang/String;)Landroid/app/ApplicationExitInfo;
    .locals 7

    .line 1
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 6
    const/4 v4, 0x1

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p3

    .line 9
    move v2, p1

    .line 10
    move v3, p2

    .line 11
    move-object v5, v6

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V

    .line 15
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result p0

    .line 19
    if-lez p0, :cond_0

    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Landroid/app/ApplicationExitInfo;

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 33
    return-object p0
.end method

.method public getProcessStateSummary(II)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 6
    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 24
    move-result p1

    .line 25
    if-gez p1, :cond_1

    .line 27
    monitor-exit v0

    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/util/SparseArray;

    .line 38
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, [B

    .line 44
    monitor-exit v0

    .line 45
    return-object p0

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public handleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 4
    move-wide/from16 v2, p5

    .line 6
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    .line 9
    move-result v4

    .line 10
    if-eqz v4, :cond_9

    .line 12
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 18
    goto/16 :goto_a

    .line 20
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    .line 23
    move-result-wide v4

    .line 24
    sub-long v6, p7, v2

    .line 26
    cmp-long v8, v2, v4

    .line 28
    if-gez v8, :cond_9

    .line 30
    cmp-long v4, p7, v4

    .line 32
    if-gtz v4, :cond_9

    .line 34
    const-wide/16 v4, 0x0

    .line 36
    cmp-long v8, v6, v4

    .line 38
    if-gtz v8, :cond_1

    .line 40
    goto/16 :goto_a

    .line 42
    :cond_1
    new-instance v8, Ljava/io/File;

    .line 44
    iget-object v9, v0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    .line 46
    new-instance v10, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 54
    move-result-object v11

    .line 55
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v11, ".gz"

    .line 60
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v10

    .line 67
    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    :try_start_0
    new-instance v9, Ljava/io/BufferedInputStream;

    .line 72
    new-instance v10, Ljava/io/FileInputStream;

    .line 74
    move-object/from16 v11, p4

    .line 76
    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 79
    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    new-instance v10, Ljava/util/zip/GZIPOutputStream;

    .line 84
    new-instance v11, Ljava/io/BufferedOutputStream;

    .line 86
    new-instance v12, Ljava/io/FileOutputStream;

    .line 88
    invoke-direct {v12, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 91
    invoke-direct {v11, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    invoke-direct {v10, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 97
    const/16 v11, 0x2000

    .line 99
    :try_start_2
    new-array v12, v11, [B

    .line 101
    invoke-virtual {v9, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 104
    :goto_0
    cmp-long v2, v6, v4

    .line 106
    const/4 v3, 0x0

    .line 107
    if-lez v2, :cond_3

    .line 109
    int-to-long v13, v11

    .line 110
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 113
    move-result-wide v13

    .line 114
    long-to-int v13, v13

    .line 115
    invoke-virtual {v9, v12, v3, v13}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 118
    move-result v13

    .line 119
    if-gez v13, :cond_2

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {v10, v12, v3, v13}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    int-to-long v2, v13

    .line 126
    sub-long/2addr v6, v2

    .line 127
    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    move-object v1, v0

    .line 130
    goto/16 :goto_6

    .line 132
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 135
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 138
    if-nez v2, :cond_9

    .line 140
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_9

    .line 146
    iget-object v2, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 148
    monitor-enter v2

    .line 149
    :try_start_5
    iget-object v4, v0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 151
    move/from16 v5, p2

    .line 153
    invoke-virtual {v4, v5}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    .line 156
    move-result-object v4

    .line 157
    if-eqz v4, :cond_4

    .line 159
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 162
    move-result v4

    .line 163
    goto :goto_2

    .line 164
    :catchall_1
    move-exception v0

    .line 165
    goto :goto_5

    .line 166
    :cond_4
    move v4, v5

    .line 167
    :goto_2
    const/4 v5, 0x1

    .line 168
    move v6, v3

    .line 169
    :goto_3
    array-length v7, v1

    .line 170
    if-ge v6, v7, :cond_7

    .line 172
    iget-object v7, v0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 174
    aget-object v9, v1, v6

    .line 176
    invoke-virtual {v7, v9, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 179
    move-result-object v7

    .line 180
    check-cast v7, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 182
    if-eqz v7, :cond_5

    .line 184
    iget-object v9, v7, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 186
    move/from16 v10, p1

    .line 188
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 191
    move-result-object v9

    .line 192
    check-cast v9, Landroid/app/ApplicationExitInfo;

    .line 194
    if-eqz v9, :cond_6

    .line 196
    invoke-virtual {v9, v8}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    .line 199
    iget-object v5, v7, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 201
    iget-object v5, v5, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    .line 203
    invoke-virtual {v9, v5}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    .line 206
    move v5, v3

    .line 207
    goto :goto_4

    .line 208
    :cond_5
    move/from16 v10, p1

    .line 210
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 212
    goto :goto_3

    .line 213
    :cond_7
    move/from16 v10, p1

    .line 215
    if-eqz v5, :cond_8

    .line 217
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 219
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;

    .line 221
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v3, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;

    .line 226
    const/4 v5, 0x1

    .line 227
    invoke-direct {v3, v5}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;-><init>(I)V

    .line 230
    move-object/from16 p2, v0

    .line 232
    move/from16 p3, v4

    .line 234
    move/from16 p4, p1

    .line 236
    move-object/from16 p5, v8

    .line 238
    move-object/from16 p6, v1

    .line 240
    move-object/from16 p7, v3

    .line 242
    invoke-static/range {p2 .. p7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;)V

    .line 245
    :cond_8
    monitor-exit v2

    .line 246
    goto :goto_a

    .line 247
    :goto_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 248
    throw v0

    .line 249
    :catchall_2
    move-exception v0

    .line 250
    move-object v1, v0

    .line 251
    goto :goto_8

    .line 252
    :goto_6
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 255
    goto :goto_7

    .line 256
    :catchall_3
    move-exception v0

    .line 257
    move-object v2, v0

    .line 258
    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 261
    :goto_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 262
    :goto_8
    :try_start_8
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 265
    goto :goto_9

    .line 266
    :catchall_4
    move-exception v0

    .line 267
    move-object v2, v0

    .line 268
    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 271
    :goto_9
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 272
    :catch_0
    :cond_9
    :goto_a
    return-void
.end method

.method public handleNoteAppKillLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(IILjava/lang/String;)Landroid/app/ApplicationExitInfo;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;Z)Landroid/app/ApplicationExitInfo;

    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 32
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    move-result-wide v2

    .line 46
    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 49
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 56
    :goto_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    .line 58
    const/4 v3, 0x1

    .line 59
    if-eqz v2, :cond_4

    .line 61
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_4

    .line 67
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    .line 74
    move-result v4

    .line 75
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 78
    move-result p1

    .line 79
    sget-boolean v5, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    .line 81
    const/4 v5, 0x4

    .line 82
    if-eq p1, v5, :cond_3

    .line 84
    const/4 v5, 0x5

    .line 85
    if-eq p1, v5, :cond_3

    .line 87
    const/4 v5, 0x6

    .line 88
    if-eq p1, v5, :cond_2

    .line 90
    const/4 v5, 0x7

    .line 91
    if-eq p1, v5, :cond_2

    .line 93
    const/16 v5, 0xa

    .line 95
    if-eq p1, v5, :cond_1

    .line 97
    const/16 v5, 0xb

    .line 99
    if-eq p1, v5, :cond_1

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    move v1, v3

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    const/4 v1, 0x2

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const/4 v1, 0x3

    .line 107
    :goto_1
    const-string p1, "AppStateBroadcaster"

    .line 109
    const-string v5, "TMO killProcesses"

    .line 111
    invoke-static {p1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object p1, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    .line 116
    if-eqz p1, :cond_4

    .line 118
    new-instance v5, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;

    .line 120
    invoke-direct {v5, v4, v1, v2}, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;-><init>(IILjava/lang/String;)V

    .line 123
    invoke-virtual {p1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    :cond_4
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    .line 129
    return-void
.end method

.method public handleNoteAppRecoverableCrashLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;Z)Landroid/app/ApplicationExitInfo;

    .line 5
    return-void
.end method

.method public handleNoteProcessDiedLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(IILjava/lang/String;)Landroid/app/ApplicationExitInfo;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 29
    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    .line 36
    move-result v2

    .line 37
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    .line 40
    move-result v3

    .line 41
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 43
    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    .line 50
    move-result v3

    .line 51
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {v3}, Landroid/os/UserHandle;->isIsolated(I)Z

    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v5, v4, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    .line 65
    const/4 v6, -0x1

    .line 66
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v5, v3, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Ljava/lang/Integer;

    .line 76
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 79
    move-result v5

    .line 80
    if-ne v5, v6, :cond_1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object v6, v4, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 88
    iget-object v4, v4, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Landroid/util/ArraySet;

    .line 96
    if-eqz v4, :cond_2

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 105
    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 106
    if-nez v0, :cond_3

    .line 108
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;Z)Landroid/app/ApplicationExitInfo;

    .line 111
    move-result-object v0

    .line 112
    :cond_3
    const/4 p1, 0x0

    .line 113
    if-eqz v2, :cond_4

    .line 115
    const/4 v1, 0x3

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    if-eqz v1, :cond_5

    .line 126
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 128
    check-cast v1, Ljava/lang/Integer;

    .line 130
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 133
    goto :goto_1

    .line 134
    :cond_5
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    .line 137
    :cond_6
    :goto_1
    return-void
.end method

.method public isFresh(J)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x493e0

    .line 8
    add-long/2addr p1, v2

    .line 9
    cmp-long p0, p1, v0

    .line 11
    if-ltz p0, :cond_0

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

.method public loadExistingProcessExitInfo()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    .line 19
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    .line 21
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 24
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 27
    move-result-object v0

    .line 28
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    .line 30
    invoke-direct {v2, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 36
    move-result v3

    .line 37
    :goto_0
    const/4 v4, -0x1

    .line 38
    if-eq v3, v4, :cond_3

    .line 40
    if-eq v3, v1, :cond_2

    .line 42
    const/4 v4, 0x2

    .line 43
    if-eq v3, v4, :cond_1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    int-to-long v3, v3

    .line 47
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/AppExitInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_5

    .line 53
    :catch_0
    move-exception v2

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 57
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    const-wide v4, 0x10300000001L

    .line 63
    :try_start_1
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 66
    move-result-wide v4

    .line 67
    iput-wide v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 69
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 73
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    goto :goto_0

    .line 75
    :catchall_1
    move-exception v2

    .line 76
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :cond_3
    if-eqz v0, :cond_4

    .line 80
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 83
    goto :goto_4

    .line 84
    :goto_3
    :try_start_6
    const-string v3, "ActivityManager"

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const-string v5, "Error in loading historical app exit info from persistent storage: "

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 106
    if-eqz v0, :cond_4

    .line 108
    goto :goto_2

    .line 109
    :catch_1
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 111
    monitor-enter v2

    .line 112
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 115
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    monitor-exit v2

    .line 121
    return-void

    .line 122
    :catchall_2
    move-exception p0

    .line 123
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 124
    throw p0

    .line 125
    :goto_5
    if-eqz v0, :cond_5

    .line 127
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 130
    :catch_2
    :cond_5
    throw p0
.end method

.method public final loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 12

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 4
    move-result-wide p2

    .line 5
    const-string v0, ""

    .line 7
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 10
    move-result v1

    .line 11
    :goto_0
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_6

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v1, v3, :cond_5

    .line 17
    const/4 v4, 0x2

    .line 18
    if-eq v1, v4, :cond_0

    .line 20
    goto/16 :goto_3

    .line 22
    :cond_0
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 24
    iget v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    .line 26
    invoke-direct {v1, p0, v5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    .line 29
    const-wide v5, 0x20b00000002L

    .line 34
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 37
    move-result-wide v7

    .line 38
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 41
    move-result v9

    .line 42
    :goto_1
    if-eq v9, v2, :cond_4

    .line 44
    if-eq v9, v3, :cond_3

    .line 46
    if-eq v9, v4, :cond_2

    .line 48
    const/4 v10, 0x3

    .line 49
    if-eq v9, v10, :cond_1

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance v9, Landroid/app/ApplicationExitInfo;

    .line 54
    invoke-direct {v9}, Landroid/app/ApplicationExitInfo;-><init>()V

    .line 57
    const-wide v10, 0x20b00000003L

    .line 62
    invoke-virtual {v9, p1, v10, v11}, Landroid/app/ApplicationExitInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 65
    iget-object v10, v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {v9}, Landroid/app/ApplicationExitInfo;->getPid()I

    .line 70
    move-result v11

    .line 71
    invoke-virtual {v10, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    new-instance v9, Landroid/app/ApplicationExitInfo;

    .line 77
    invoke-direct {v9}, Landroid/app/ApplicationExitInfo;-><init>()V

    .line 80
    invoke-virtual {v9, p1, v5, v6}, Landroid/app/ApplicationExitInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 83
    iget-object v10, v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {v9}, Landroid/app/ApplicationExitInfo;->getPid()I

    .line 88
    move-result v11

    .line 89
    invoke-virtual {v10, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    const-wide v9, 0x10500000001L

    .line 98
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 101
    move-result v9

    .line 102
    iput v9, v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    .line 104
    :goto_2
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 107
    move-result v9

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 112
    iget v2, v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    .line 114
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 116
    monitor-enter v3

    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 119
    invoke-virtual {v4, v0, v2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    monitor-exit v3

    .line 123
    goto :goto_3

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0

    .line 127
    :cond_5
    const-wide v0, 0x10900000001L

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    :goto_3
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 139
    move-result v1

    .line 140
    goto/16 :goto_0

    .line 142
    :cond_6
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 145
    return-void
.end method

.method public obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    .line 3
    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Landroid/app/ApplicationExitInfo;

    .line 13
    invoke-direct {v0}, Landroid/app/ApplicationExitInfo;-><init>()V

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 18
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_1

    .line 29
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 31
    iget v1, v1, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v1, v2

    .line 35
    :goto_0
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 37
    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    .line 40
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 42
    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    .line 45
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 47
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 49
    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    .line 52
    if-lez v1, :cond_2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 57
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 59
    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    .line 62
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 67
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 69
    iget v1, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setConnectionGroup(I)V

    .line 74
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 76
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    .line 81
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 83
    invoke-virtual {v1}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 96
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 99
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 101
    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 103
    invoke-static {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    .line 106
    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    .line 110
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 112
    iget-wide v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    .line 117
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 119
    iget-wide v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    .line 124
    invoke-virtual {v0, p2, p3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 127
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 129
    iget-boolean p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mRepHasForegroundServices:Z

    .line 131
    invoke-virtual {v0, p1}, Landroid/app/ApplicationExitInfo;->setHasForegroundServices(Z)V

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 138
    return-object v0

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 144
    throw p1
.end method

.method public onPackageRemoved(Ljava/lang/String;IZ)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 7
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v1

    .line 18
    if-eqz v0, :cond_0

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 22
    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 25
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 27
    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 30
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 32
    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeAppUid(IZ)V

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 40
    const/4 p3, -0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 45
    move-result p3

    .line 46
    :goto_1
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(IILjava/lang/String;Z)V

    .line 49
    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 53
    monitor-exit v1

    .line 54
    goto :goto_3

    .line 55
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0

    .line 57
    :cond_2
    :goto_3
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 6
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 11
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 13
    const/4 v1, -0x2

    .line 14
    if-ne p1, v1, :cond_0

    .line 16
    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 18
    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 20
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 22
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, p1

    .line 28
    :goto_0
    iget-object v2, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 30
    iget-object v2, v2, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter v2

    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, -0x1

    .line 35
    if-ne v1, v4, :cond_1

    .line 37
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 42
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 47
    monitor-exit v2

    .line 48
    goto :goto_2

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    iget-object v4, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 56
    move-result v4

    .line 57
    sub-int/2addr v4, v3

    .line 58
    :goto_1
    if-ltz v4, :cond_3

    .line 60
    iget-object v5, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 65
    iget-object v5, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Ljava/lang/Integer;

    .line 73
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v5

    .line 77
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 80
    move-result v6

    .line 81
    if-ne v6, v1, :cond_2

    .line 83
    iget-object v6, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 88
    iget-object v6, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 93
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 99
    monitor-enter v0

    .line 100
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 106
    monitor-exit v0

    .line 107
    return-void

    .line 108
    :catchall_1
    move-exception p0

    .line 109
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    throw p0

    .line 111
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    throw p0
.end method

.method public persistProcessExitInfo()V
    .locals 9

    .line 1
    new-instance v0, Landroid/util/AtomicFile;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    .line 5
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 16
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    :try_start_1
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    .line 19
    invoke-direct {v5, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 22
    const-wide v6, 0x10300000001L

    .line 27
    invoke-virtual {v5, v6, v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 30
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    :try_start_2
    new-instance v7, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;

    .line 35
    const/4 v8, 0x0

    .line 36
    invoke-direct {v7, v8, v5}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    .line 39
    invoke-virtual {p0, v7}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 42
    iput-wide v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 44
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :try_start_3
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 48
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v1

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 57
    :catch_1
    move-exception v1

    .line 58
    move-object v4, v3

    .line 59
    :goto_0
    const-string v2, "ActivityManager"

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    const-string v6, "Unable to write historical app exit info into persistent storage: "

    .line 65
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 83
    monitor-enter v0

    .line 84
    :try_start_6
    iput-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 90
    throw p0
.end method

.method public final pruneAnrTracesIfNecessaryLocked()V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    .line 8
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;

    .line 10
    invoke-direct {v2, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;-><init>(Landroid/util/ArraySet;)V

    .line 13
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v1, v2, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    .line 30
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 33
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 38
    move-result v2

    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 41
    :goto_0
    if-ltz v2, :cond_3

    .line 43
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/util/SparseArray;

    .line 49
    if-nez v3, :cond_1

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 55
    move-result v4

    .line 56
    add-int/lit8 v4, v4, -0x1

    .line 58
    :goto_1
    if-ltz v4, :cond_2

    .line 60
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Ljava/io/File;

    .line 66
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v4, v4, -0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 82
    move-result v1

    .line 83
    add-int/lit8 v1, v1, -0x1

    .line 85
    :goto_3
    if-ltz v1, :cond_4

    .line 87
    new-instance v2, Ljava/io/File;

    .line 89
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    .line 91
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Ljava/lang/String;

    .line 97
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 103
    add-int/lit8 v1, v1, -0x1

    .line 105
    goto :goto_3

    .line 106
    :cond_4
    return-void
.end method

.method public recycleRawRecord(Landroid/app/ApplicationExitInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    .line 13
    invoke-virtual {p0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public final removeByUserIdLocked(I)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 6
    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 13
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 18
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 23
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 29
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-direct {v1, p1, v2}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;-><init>(II)V

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;)V

    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 41
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;

    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-direct {v1, p1, v2}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;-><init>(II)V

    .line 47
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-direct {v2, v3}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;-><init>(I)V

    .line 53
    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;)V

    .line 56
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;

    .line 58
    invoke-direct {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;-><init>(I)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 64
    return-void
.end method

.method public final removePackageLocked(IILjava/lang/String;Z)V
    .locals 2

    .line 1
    if-eqz p4, :cond_1

    .line 3
    iget-object p4, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    iget-object p4, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 13
    move-result p1

    .line 14
    if-ltz p1, :cond_1

    .line 16
    iget-object p4, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object p4

    .line 22
    check-cast p4, Landroid/util/SparseArray;

    .line 24
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    .line 27
    move-result v0

    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 30
    :goto_0
    if-ltz v0, :cond_0

    .line 32
    invoke-virtual {p4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/io/File;

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p4, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 51
    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p4

    .line 59
    check-cast p4, Landroid/util/SparseArray;

    .line 61
    if-nez p4, :cond_2

    .line 63
    return-void

    .line 64
    :cond_2
    const/4 v0, -0x1

    .line 65
    if-ne p2, v0, :cond_4

    .line 67
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    .line 70
    move-result p1

    .line 71
    add-int/lit8 p1, p1, -0x1

    .line 73
    :goto_1
    if-ltz p1, :cond_3

    .line 75
    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 81
    iget-object v0, p2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 83
    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked(Landroid/util/SparseArray;)V

    .line 86
    iget-object p2, p2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 88
    invoke-static {p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked(Landroid/util/SparseArray;)V

    .line 91
    add-int/lit8 p1, p1, -0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    .line 107
    move-result p0

    .line 108
    add-int/lit8 p0, p0, -0x1

    .line 110
    :goto_2
    if-ltz p0, :cond_6

    .line 112
    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 115
    move-result v0

    .line 116
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 119
    move-result v0

    .line 120
    if-ne v0, p2, :cond_5

    .line 122
    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 125
    move-result-object p2

    .line 126
    check-cast p2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 128
    iget-object v0, p2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 130
    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked(Landroid/util/SparseArray;)V

    .line 133
    iget-object p2, p2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 135
    invoke-static {p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked(Landroid/util/SparseArray;)V

    .line 138
    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 141
    goto :goto_3

    .line 142
    :cond_5
    add-int/lit8 p0, p0, -0x1

    .line 144
    goto :goto_2

    .line 145
    :cond_6
    :goto_3
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_7

    .line 151
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_7
    :goto_4
    return-void
.end method

.method public final scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->isLoggedInStatsd()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v0, 0x1009

    .line 10
    if-eqz p2, :cond_1

    .line 12
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 14
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 17
    invoke-static {p1}, Lcom/android/server/am/AppExitInfoTracker;->performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 23
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_2

    .line 29
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 31
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 34
    move-result-object p1

    .line 35
    sget-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

    .line 37
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public final scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_2

    .line 12
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 14
    if-nez v0, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 28
    invoke-virtual {p1, p3}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 31
    invoke-virtual {p1, p4}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 36
    const/16 p2, 0x1008

    .line 38
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method public schedulePersistProcessExitInfo(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    if-eqz p1, :cond_3

    .line 10
    :cond_0
    if-eqz v1, :cond_1

    .line 12
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    .line 30
    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    .line 32
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 35
    move-result-object v1

    .line 36
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    .line 38
    if-eqz p1, :cond_2

    .line 40
    const-wide/16 v2, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    sget-wide v2, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    .line 45
    :goto_1
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    :cond_3
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public setProcessStateSummary(II[B)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 6
    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p1

    .line 16
    :cond_0
    move v2, p1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 22
    new-instance v5, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;

    .line 24
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v6, 0x0

    .line 28
    move v3, p2

    .line 29
    move-object v4, p3

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;)V

    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_4

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Landroid/system/OsConstants;->WIFEXITED(I)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result p2

    .line 34
    invoke-static {p2}, Landroid/system/OsConstants;->WEXITSTATUS(I)I

    .line 37
    move-result p2

    .line 38
    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 41
    :goto_0
    move p2, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Landroid/system/OsConstants;->WIFSIGNALED(I)Z

    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 53
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 63
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 66
    move-result p2

    .line 67
    invoke-static {p2}, Landroid/system/OsConstants;->WTERMSIG(I)I

    .line 70
    move-result p2

    .line 71
    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 78
    move-result v1

    .line 79
    const/4 v2, 0x5

    .line 80
    if-ne v1, v2, :cond_3

    .line 82
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 85
    move-result p2

    .line 86
    invoke-static {p2}, Landroid/system/OsConstants;->WTERMSIG(I)I

    .line 89
    move-result p2

    .line 90
    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    :goto_1
    const/4 p2, 0x0

    .line 95
    :goto_2
    if-eqz p3, :cond_4

    .line 97
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result v1

    .line 101
    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 104
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 107
    move-result p3

    .line 108
    const/4 v1, 0x3

    .line 109
    if-ne p3, v1, :cond_4

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    move v0, p2

    .line 113
    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    .line 116
    :cond_5
    :goto_4
    return-void
.end method
