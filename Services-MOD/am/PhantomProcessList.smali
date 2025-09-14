.class public final Lcom/android/server/am/PhantomProcessList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CGROUP_PATH_PREFIXES:[Ljava/lang/String;


# instance fields
.field public final mAppPhantomProcessMap:Landroid/util/SparseArray;

.field public final mCgroupProcsFds:Landroid/util/SparseArray;

.field mCgroupVersion:I

.field public final mDataBuffer:[B

.field mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

.field public final mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field public final mLock:Ljava/lang/Object;

.field public final mPhantomProcesses:Landroid/util/SparseArray;

.field public final mPhantomProcessesPidFds:Landroid/util/SparseArray;

.field public final mPhantomToAppProcessMap:Landroid/util/SparseArray;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTempPhantomProcesses:Ljava/util/ArrayList;

.field public mTrimPhantomProcessScheduled:Z

.field public mUpdateSeq:I

.field public final mZombiePhantomProcesses:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "/acct/uid_"

    .line 3
    const-string v1, "/sys/fs/cgroup/uid_"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    .line 48
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    .line 55
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    .line 60
    const/16 v0, 0x1000

    .line 62
    new-array v0, v0, [B

    .line 64
    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mDataBuffer:[B

    .line 66
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    .line 69
    iput v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupVersion:I

    .line 71
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 73
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 75
    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 77
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 79
    new-instance p1, Lcom/android/server/am/PhantomProcessList$Injector;

    .line 81
    invoke-direct {p1}, Lcom/android/server/am/PhantomProcessList$Injector;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    .line 86
    const/4 p1, 0x1

    .line 87
    :goto_0
    if-ltz p1, :cond_1

    .line 89
    new-instance v0, Ljava/io/File;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    sget-object v2, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    .line 98
    aget-object v2, v2, p1

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/16 v2, 0x3e8

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_0

    .line 121
    iput p1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupVersion:I

    .line 123
    goto :goto_1

    .line 124
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 126
    goto :goto_0

    .line 127
    :cond_1
    :goto_1
    return-void
.end method

.method public static dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 11
    const-string v1, "  "

    .line 13
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-ge p1, v0, :cond_2

    .line 22
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    .line 28
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    const-string v3, "  proc #"

    .line 33
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 39
    const-string v3, ": "

    .line 41
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    move-result-wide v3

    .line 55
    const-string v5, "      "

    .line 57
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v6, "user #"

    .line 63
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    iget v6, v2, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    .line 68
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 71
    move-result v7

    .line 72
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 75
    const-string v7, " uid="

    .line 77
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 83
    const-string v6, " pid="

    .line 85
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    iget v6, v2, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 90
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 93
    const-string v6, " ppid="

    .line 95
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    iget v6, v2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    .line 100
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 103
    const-string v6, " knownSince="

    .line 105
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    iget-wide v6, v2, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    .line 110
    invoke-static {v6, v7, v3, v4, p0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 113
    const-string v3, " killed="

    .line 115
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    iget-boolean v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    .line 120
    const-string/jumbo v4, "lastCpuTime="

    .line 123
    invoke-static {p0, v5, v4, v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    iget-wide v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    .line 128
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 131
    iget-wide v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    .line 133
    const-wide/16 v5, 0x0

    .line 135
    cmp-long v3, v3, v5

    .line 137
    if-lez v3, :cond_1

    .line 139
    const-string v3, " timeUsed="

    .line 141
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    iget-wide v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    .line 146
    iget-wide v5, v2, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    .line 148
    sub-long/2addr v3, v5

    .line 149
    invoke-static {v3, v4, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 152
    :cond_1
    const-string v3, " oom adj="

    .line 154
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    iget v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    .line 159
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 162
    const-string v3, " seq="

    .line 164
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    iget v2, v2, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    .line 169
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 172
    add-int/lit8 p1, p1, 0x1

    .line 174
    goto/16 :goto_0

    .line 176
    :cond_2
    return-void
.end method


# virtual methods
.method public final addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V
    .locals 3

    .line 1
    if-eq p3, p2, :cond_7

    .line 3
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 7
    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 10
    move-result-object p3

    .line 11
    if-eqz p3, :cond_0

    .line 13
    goto :goto_3

    .line 14
    :cond_0
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 19
    move-result p3

    .line 20
    if-ltz p3, :cond_2

    .line 22
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 30
    if-ne p1, v0, :cond_1

    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    .line 41
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    :goto_0
    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    .line 47
    move-result p1

    .line 48
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    .line 50
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    .line 55
    const-string v0, "/proc/"

    .line 57
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v0, "/cmdline"

    .line 65
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p3

    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-static {p3, v0}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    .line 76
    move-result-object p3

    .line 77
    const/4 v0, 0x1

    .line 78
    if-nez p3, :cond_3

    .line 80
    const/4 p3, 0x0

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/16 v1, 0x2f

    .line 84
    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 87
    move-result v1

    .line 88
    if-lez v1, :cond_4

    .line 90
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 93
    move-result v2

    .line 94
    sub-int/2addr v2, v0

    .line 95
    if-ge v1, v2, :cond_4

    .line 97
    add-int/2addr v1, v0

    .line 98
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 101
    move-result-object p3

    .line 102
    :cond_4
    :goto_1
    if-eqz p3, :cond_6

    .line 104
    if-gez p1, :cond_5

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/PhantomProcessList;->getOrCreatePhantomProcessIfNeededLocked(IILjava/lang/String;Z)Lcom/android/server/am/PhantomProcessRecord;

    .line 110
    goto :goto_3

    .line 111
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    .line 113
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 116
    :cond_7
    :goto_3
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "All Active App Child Processes:"

    .line 6
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 8
    invoke-static {p1, v1, v2}, Lcom/android/server/am/PhantomProcessList;->dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 11
    const-string v1, "All Zombie App Child Processes:"

    .line 13
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    .line 15
    invoke-static {p1, v1, p0}, Lcom/android/server/am/PhantomProcessList;->dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V

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

.method public getCgroupFilePath(II)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    .line 8
    iget p0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupVersion:I

    .line 10
    aget-object p0, v1, p0

    .line 12
    const-string v1, "/pid_"

    .line 14
    invoke-static {p1, p2, p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    const-string p0, "/cgroup.procs"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final getOrCreatePhantomProcessIfNeededLocked(IILjava/lang/String;Z)Lcom/android/server/am/PhantomProcessRecord;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 10
    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 24
    return-object v0

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 30
    move-result v1

    .line 31
    if-ltz v1, :cond_3

    .line 33
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    .line 41
    iget v3, v1, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    .line 43
    if-ne v3, p1, :cond_2

    .line 45
    iget v3, v1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 47
    if-ne v3, p2, :cond_2

    .line 49
    iget-object v3, v1, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    .line 51
    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 57
    return-object v1

    .line 58
    :cond_2
    const-string v3, "ActivityManager"

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    const-string v5, "Stale "

    .line 64
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v5, ", removing"

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    .line 88
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 91
    move-result v1

    .line 92
    if-ltz v1, :cond_5

    .line 94
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    .line 96
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lcom/android/server/am/PhantomProcessRecord;

    .line 102
    iget v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    .line 104
    if-ne v4, p1, :cond_4

    .line 106
    iget v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 108
    if-ne v4, p2, :cond_4

    .line 110
    iget-object v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    .line 112
    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_4

    .line 118
    return-object v3

    .line 119
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    .line 121
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 124
    :cond_5
    :goto_1
    if-nez p4, :cond_6

    .line 126
    return-object v0

    .line 127
    :cond_6
    iget-object p4, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    .line 129
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 132
    move-result-object p4

    .line 133
    check-cast p4, Lcom/android/server/am/ProcessRecord;

    .line 135
    if-eqz p4, :cond_a

    .line 137
    :try_start_1
    iget p4, p4, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 139
    new-instance v1, Lcom/android/server/am/PhantomProcessRecord;

    .line 141
    iget-object v8, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 143
    new-instance v9, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;

    .line 145
    invoke-direct {v9, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    .line 148
    move-object v3, v1

    .line 149
    move-object v4, p3

    .line 150
    move v5, p1

    .line 151
    move v6, p2

    .line 152
    move v7, p4

    .line 153
    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/PhantomProcessRecord;-><init>(Ljava/lang/String;IIILcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;)V

    .line 156
    iget p1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    .line 158
    iput p1, v1, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    .line 160
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 162
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 167
    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Landroid/util/SparseArray;

    .line 173
    if-nez p1, :cond_7

    .line 175
    new-instance p1, Landroid/util/SparseArray;

    .line 177
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 180
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 182
    invoke-virtual {p3, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    :cond_7
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    iget-object p1, v1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    .line 190
    if-eqz p1, :cond_8

    .line 192
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 194
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 201
    move-result-object p1

    .line 202
    iget-object p2, v1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    .line 204
    new-instance p3, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;

    .line 206
    invoke-direct {p3, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    .line 209
    const/4 p4, 0x5

    .line 210
    invoke-virtual {p1, p2, p4, p3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 213
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    .line 215
    iget-object p2, v1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    .line 217
    invoke-virtual {p2}, Ljava/io/FileDescriptor;->getInt$()I

    .line 220
    move-result p2

    .line 221
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    :cond_8
    iget-boolean p1, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    .line 226
    if-nez p1, :cond_9

    .line 228
    iput-boolean v2, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    .line 230
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 232
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 234
    new-instance p2, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;

    .line 236
    invoke-direct {p2, p0}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    .line 239
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    :cond_9
    return-object v1

    .line 243
    :catch_0
    :cond_a
    return-object v0

    .line 244
    :catchall_0
    move-exception p0

    .line 245
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    throw p0
.end method

.method public final killPhantomProcessGroupLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/PhantomProcessRecord;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 6
    iget v2, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    .line 8
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 11
    move-result v1

    .line 12
    if-ltz v1, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/util/SparseArray;

    .line 22
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    sub-int/2addr v1, v2

    .line 28
    :goto_0
    if-ltz v1, :cond_1

    .line 30
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/server/am/PhantomProcessRecord;

    .line 36
    if-ne v3, p2, :cond_0

    .line 38
    invoke-virtual {v3, p3, v2}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v5, "Caused by siling process: "

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    .line 65
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    const-string p0, "Caused by child process: "

    .line 71
    invoke-static {p0, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    const/4 v6, 0x1

    .line 76
    const/4 v5, 0x1

    .line 77
    const/16 v1, 0x9

    .line 79
    const/4 v2, 0x7

    .line 80
    move-object v0, p1

    .line 81
    move-object v3, v4

    .line 82
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 85
    return-void

    .line 86
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

.method public lookForPhantomProcessesLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 5
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 7
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 8
    invoke-virtual {p0, v3}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 9
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    .line 11
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 12
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 13
    throw p0
.end method

.method public final lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 11

    .line 14
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-nez v0, :cond_7

    .line 15
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v0, :cond_7

    .line 16
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 17
    :cond_0
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 18
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 19
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/PhantomProcessList;->getCgroupFilePath(II)Ljava/lang/String;

    move-result-object v1

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    goto :goto_0

    :catch_0
    return-void

    .line 23
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mDataBuffer:[B

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, v3

    .line 24
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    array-length v8, v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {v1, v2, v3, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    goto :goto_3

    :cond_3
    int-to-long v8, v7

    add-long/2addr v4, v8

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_5

    .line 26
    aget-byte v9, v2, v8

    const/16 v10, 0xa

    if-ne v9, v10, :cond_4

    .line 27
    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/am/PhantomProcessList;->addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V

    move v6, v3

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_4

    :cond_4
    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v9, v6

    move v6, v9

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 28
    :cond_5
    array-length v8, v2

    if-ge v7, v8, :cond_2

    :goto_3
    if-eqz v6, :cond_6

    .line 29
    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/am/PhantomProcessList;->addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V

    :cond_6
    neg-long v2, v4

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 31
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in reading cgroup procs from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ActivityManager"

    invoke-static {v3, p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 33
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->delete(I)V

    :cond_7
    :goto_5
    return-void
.end method

.method public final onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 13
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 26
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    .line 28
    iget-object v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    .line 30
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 37
    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    .line 39
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 44
    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 46
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 49
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 51
    iget v2, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    .line 53
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 56
    move-result v0

    .line 57
    if-gez v0, :cond_1

    .line 59
    return-void

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Landroid/util/SparseArray;

    .line 68
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 71
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_2

    .line 77
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 79
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 82
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mZombie:Z

    .line 84
    if-eqz v0, :cond_3

    .line 86
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    .line 88
    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    .line 94
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 97
    :goto_0
    return-void
.end method

.method public final pruneStaleProcessesLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    .line 19
    iget v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    .line 21
    iget v4, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    .line 23
    if-ge v3, v4, :cond_0

    .line 25
    const-string v3, "Stale process"

    .line 27
    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    .line 30
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 38
    move-result v0

    .line 39
    sub-int/2addr v0, v1

    .line 40
    :goto_1
    if-ltz v0, :cond_2

    .line 42
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    .line 50
    iget v1, v1, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    return-void
.end method

.method public final removePhantomProcessesWithNoParentLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    .line 19
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 21
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 26
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 28
    iget v4, v1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    .line 30
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 33
    move-result-object v3

    .line 34
    if-nez v3, :cond_0

    .line 36
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    :goto_1
    monitor-exit v2

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 47
    goto :goto_0

    .line 48
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda3;

    .line 54
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 60
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 65
    return-void
.end method

.method public final updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 8
    iput v1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    .line 10
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked()V

    .line 13
    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 19
    :goto_0
    if-ltz v1, :cond_2

    .line 21
    invoke-virtual {p1, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 24
    move-result-object v2

    .line 25
    iget-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 27
    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 29
    iget v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-virtual {p0, v4, v5, v3, v6}, Lcom/android/server/am/PhantomProcessList;->getOrCreatePhantomProcessIfNeededLocked(IILjava/lang/String;Z)Lcom/android/server/am/PhantomProcessRecord;

    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_1

    .line 38
    iget v4, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    .line 40
    iput v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    .line 42
    iget-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    .line 44
    iget v7, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 46
    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 48
    add-int/2addr v7, v2

    .line 49
    int-to-long v7, v7

    .line 50
    add-long/2addr v4, v7

    .line 51
    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    .line 53
    iget-wide v7, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    .line 55
    const-wide/16 v9, 0x0

    .line 57
    cmp-long v2, v7, v9

    .line 59
    if-nez v2, :cond_0

    .line 61
    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    const-string v4, "/proc/"

    .line 70
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v4, "/oom_score_adj"

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    sget-object v4, Lcom/android/server/am/PhantomProcessRecord;->LONG_FORMAT:[I

    .line 89
    sget-object v5, Lcom/android/server/am/PhantomProcessRecord;->LONG_OUT:[J

    .line 91
    const/4 v7, 0x0

    .line 92
    invoke-static {v2, v4, v7, v5, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_1

    .line 98
    aget-wide v4, v5, v6

    .line 100
    long-to-int v2, v4

    .line 101
    iput v2, v3, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    .line 103
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->pruneStaleProcessesLocked()V

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    throw p0
.end method
