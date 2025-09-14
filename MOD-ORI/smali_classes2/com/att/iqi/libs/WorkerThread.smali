.class public Lcom/att/iqi/libs/WorkerThread;
.super Landroid/os/HandlerThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0x7530L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x2710L

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/att/iqi/libs/WorkerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "worker.bg"

    .line 2
    .line 3
    .line 4
    const/16 v1, 0xa

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 5

    .line 1
    sget-object v0, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/att/iqi/libs/WorkerThread;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/att/iqi/libs/WorkerThread;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-wide/32 v1, 0x80000

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v1, 0x2710

    .line 28
    .line 29
    const-wide/16 v3, 0x7530

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/os/Handler;

    .line 35
    .line 36
    sget-object v1, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/att/iqi/libs/WorkerThread;->sHandler:Landroid/os/Handler;

    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public static get()Lcom/att/iqi/libs/WorkerThread;
    .locals 2

    .line 1
    const-class v0, Lcom/att/iqi/libs/WorkerThread;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->ensureThreadLocked()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object v1

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    const-class v0, Lcom/att/iqi/libs/WorkerThread;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->ensureThreadLocked()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/att/iqi/libs/WorkerThread;->sHandler:Landroid/os/Handler;

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object v1

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method
