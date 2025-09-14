.class public final Lcom/android/server/SystemServerInitThreadPool;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final IS_DEBUGGABLE:Z

.field public static final LOCK:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/SystemServerInitThreadPool;


# instance fields
.field public final mPendingTasks:Ljava/util/List;

.field public final mService:Ljava/util/concurrent/ExecutorService;

.field public mShutDown:Z

.field public final mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/SystemServerInitThreadPool;

    .line 2
    .line 3
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 4
    .line 5
    sput-boolean v0, Lcom/android/server/SystemServerInitThreadPool;->IS_DEBUGGABLE:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mSize:I

    .line 20
    .line 21
    const-string v1, "Creating instance with "

    .line 22
    .line 23
    const-string v2, " threads"

    .line 24
    .line 25
    const-string v3, "SystemServerInitThreadPool"

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "system-server-init-thread"

    .line 31
    .line 32
    .line 33
    const/4 v2, -0x2

    .line 34
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    return-void
.end method

.method public static dumpStackTraces()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v9, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v11, 0x0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v10, 0x0

    .line 39
    invoke-static/range {v0 .. v11}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    const-string v3, "Cannot get SystemServerInitThreadPool - it has been shut down"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    iget-object v3, v1, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 21
    .line 22
    monitor-enter v3

    .line 23
    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/SystemServerInitThreadPool;->mShutDown:Z

    .line 24
    .line 25
    xor-int/2addr v0, v2

    .line 26
    const-string v2, "SystemServerInitThreadPool already shut down"

    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v1, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 32
    .line 33
    check-cast v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    iget-object v0, v1, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    invoke-direct {v2, v1, p0, p1}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/SystemServerInitThreadPool;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw p0

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    throw p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    const-string/jumbo v0, "has instance: %b\n"

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 23
    .line 24
    .line 25
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    const-string/jumbo p2, "number of threads: %d\n"

    .line 27
    .line 28
    .line 29
    iget v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mSize:I

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, p2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 40
    .line 41
    .line 42
    const-string/jumbo p2, "service: %s\n"

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    .line 46
    .line 47
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, p2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 55
    .line 56
    monitor-enter v0

    .line 57
    :try_start_1
    const-string/jumbo p2, "is shutdown: %b\n"

    .line 58
    .line 59
    .line 60
    iget-boolean v1, p0, Lcom/android/server/SystemServerInitThreadPool;->mShutDown:Z

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, p2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 74
    .line 75
    check-cast p2, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-nez p2, :cond_1

    .line 82
    .line 83
    const-string/jumbo p0, "no pending tasks"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :cond_1
    const-string v1, "%d pending tasks: %s\n"

    .line 93
    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iget-object p0, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 99
    .line 100
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p1, v1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 105
    .line 106
    .line 107
    :goto_1
    monitor-exit v0

    .line 108
    return-void

    .line 109
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    throw p0

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    throw p0
.end method

.method public final getDumpableName()Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lcom/android/server/SystemServerInitThreadPool;

    .line 2
    .line 3
    const-string p0, "SystemServerInitThreadPool"

    .line 4
    .line 5
    return-object p0
.end method
