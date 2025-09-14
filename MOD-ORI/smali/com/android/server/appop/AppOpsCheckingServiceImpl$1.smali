.class public final Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsCheckingServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;->this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;->this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;->this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    .line 10
    .line 11
    iput-boolean v2, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, p0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method
