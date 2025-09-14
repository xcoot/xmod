.class public final Lcom/android/server/am/PhantomProcessRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LONG_FORMAT:[I

.field public static final LONG_OUT:[J


# instance fields
.field public mAdj:I

.field public mCurrentCputime:J

.field public final mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field public mKilled:Z

.field public final mKnownSince:J

.field public mLastCputime:J

.field public final mLock:Ljava/lang/Object;

.field public final mOnKillListener:Ljava/util/function/Consumer;

.field public final mPid:I

.field public final mPidFd:Ljava/io/FileDescriptor;

.field public final mPpid:I

.field public final mProcKillTimer:Lcom/android/server/am/PhantomProcessRecord$1;

.field public final mProcessName:Ljava/lang/String;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mStringName:Ljava/lang/String;

.field public final mUid:I

.field public mUpdateSeq:I

.field public mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [J

    .line 4
    sput-object v0, Lcom/android/server/am/PhantomProcessRecord;->LONG_OUT:[J

    .line 6
    const/16 v0, 0x200a

    .line 8
    filled-new-array {v0}, [I

    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/android/server/am/PhantomProcessRecord;->LONG_FORMAT:[I

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;)V
    .locals 3

    .line 1
    const-string v0, "Unable to open process "

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Lcom/android/server/am/PhantomProcessRecord$1;

    .line 8
    invoke-direct {v1, p0}, Lcom/android/server/am/PhantomProcessRecord$1;-><init>(Lcom/android/server/am/PhantomProcessRecord;)V

    .line 11
    iput-object v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcKillTimer:Lcom/android/server/am/PhantomProcessRecord$1;

    .line 13
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    .line 17
    iput p3, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 19
    iput p4, p0, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    .line 24
    const/16 p2, -0x3e8

    .line 26
    iput p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    move-result-wide v1

    .line 32
    iput-wide v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    .line 34
    iput-object p5, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 36
    iget-object p2, p5, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    .line 38
    iget-object p2, p2, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mLock:Ljava/lang/Object;

    .line 42
    iput-object p6, p0, Lcom/android/server/am/PhantomProcessRecord;->mOnKillListener:Ljava/util/function/Consumer;

    .line 44
    sget-object p2, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 46
    iput-object p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 48
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 54
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 57
    move-result-object p2

    .line 58
    :try_start_0
    invoke-static {p3, p1}, Landroid/os/Process;->openPidFd(II)Ljava/io/FileDescriptor;

    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz p1, :cond_0

    .line 66
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 72
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 75
    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    :try_start_2
    const-string p1, "ActivityManager"

    .line 81
    new-instance p4, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string p3, ", it might be gone"

    .line 91
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p3

    .line 98
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 109
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :goto_0
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 113
    throw p0

    .line 114
    :cond_1
    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    .line 117
    :goto_1
    return-void
.end method


# virtual methods
.method public final killLocked(Ljava/lang/String;Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    const-wide/16 v0, 0x40

    .line 7
    const-string/jumbo v2, "kill"

    .line 10
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    if-nez p2, :cond_0

    .line 15
    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    .line 17
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 19
    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 21
    if-ne p2, v2, :cond_1

    .line 23
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    const-string v3, "Killing "

    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v3, ": "

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    iget v3, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    .line 53
    invoke-virtual {p2, v3, v2}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(ILjava/lang/String;)V

    .line 56
    :cond_1
    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 58
    if-lez p2, :cond_4

    .line 60
    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    .line 62
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 65
    move-result p2

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v2

    .line 70
    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v3

    .line 76
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    .line 78
    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v5

    .line 84
    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 86
    invoke-static {p2}, Landroid/os/Process;->getRss(I)[J

    .line 89
    move-result-object p2

    .line 90
    const/4 v8, 0x0

    .line 91
    if-eqz p2, :cond_2

    .line 93
    array-length v6, p2

    .line 94
    if-lez v6, :cond_2

    .line 96
    aget-wide v6, p2, v8

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const-wide/16 v6, 0x0

    .line 101
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    move-result-object v7

    .line 105
    move-object v6, p1

    .line 106
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 109
    move-result-object p1

    .line 110
    const/16 p2, 0x7547

    .line 112
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 115
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_3

    .line 121
    invoke-virtual {p0, v8}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 127
    iget-object p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcKillTimer:Lcom/android/server/am/PhantomProcessRecord$1;

    .line 129
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 131
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 133
    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    .line 135
    invoke-virtual {p1, p2, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 138
    :goto_1
    iget p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 140
    invoke-static {p1}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 143
    iget p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    .line 145
    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 147
    invoke-static {p1, p2}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 150
    :cond_4
    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    .line 153
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 156
    :cond_5
    return-void
.end method

.method public final onProcDied(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    const-string v0, "Process "

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v0, " died"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string v0, "ActivityManager"

    .line 28
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 33
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcKillTimer:Lcom/android/server/am/PhantomProcessRecord$1;

    .line 35
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mOnKillListener:Ljava/util/function/Consumer;

    .line 40
    if-eqz p1, :cond_1

    .line 42
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 45
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mStringName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x80

    .line 8
    const-string v1, "PhantomProcessRecord {"

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
    const/16 v1, 0x20

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    iget v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const/16 v1, 0x3a

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const/16 v1, 0x2f

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    const/16 v1, 0x2710

    .line 60
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    .line 62
    if-ge v2, v1, :cond_1

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/16 v3, 0x75

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 76
    move-result v3

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 83
    move-result v2

    .line 84
    if-lt v2, v1, :cond_2

    .line 86
    const/16 v1, 0x61

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    add-int/lit16 v1, v2, -0x2710

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const/16 v1, 0x73

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    :goto_0
    const v1, 0x182b8

    .line 108
    if-lt v2, v1, :cond_3

    .line 110
    const v3, 0x1869f

    .line 113
    if-gt v2, v3, :cond_3

    .line 115
    const/16 v3, 0x69

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    sub-int/2addr v2, v1

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    :goto_1
    const/16 v1, 0x7d

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    iput-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mStringName:Ljava/lang/String;

    .line 135
    return-object v0
.end method
