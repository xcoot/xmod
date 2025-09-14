.class public final Lcom/android/server/PermissionThread;
.super Lcom/android/server/ServiceThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field public static sInstance:Lcom/android/server/PermissionThread;

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/PermissionThread;->sLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static ensureThreadLocked()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/PermissionThread;->sInstance:Lcom/android/server/PermissionThread;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/android/server/PermissionThread;

    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, "android.perm"

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 15
    sput-object v0, Lcom/android/server/PermissionThread;->sInstance:Lcom/android/server/PermissionThread;

    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 20
    sget-object v0, Lcom/android/server/PermissionThread;->sInstance:Lcom/android/server/PermissionThread;

    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    move-result-object v0

    .line 26
    const-wide/32 v1, 0x80000

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 32
    const-wide/16 v1, 0x64

    .line 34
    const-wide/16 v3, 0xc8

    .line 36
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    .line 41
    sget-object v1, Lcom/android/server/PermissionThread;->sInstance:Lcom/android/server/PermissionThread;

    .line 43
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    sput-object v0, Lcom/android/server/PermissionThread;->sHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 54
    sget-object v1, Lcom/android/server/PermissionThread;->sHandler:Landroid/os/Handler;

    .line 56
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 59
    sput-object v0, Lcom/android/server/PermissionThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 61
    return-void
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/PermissionThread;->sLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/PermissionThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/PermissionThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

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
    sget-object v0, Lcom/android/server/PermissionThread;->sLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/PermissionThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/PermissionThread;->sHandler:Landroid/os/Handler;

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
