.class final Lcom/android/server/power/hint/HintManagerService$MyUidObserver;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mProcStatesCache:Landroid/util/SparseIntArray;

.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseIntArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final isUidForeground(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-gt p0, v1, :cond_0

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
    monitor-exit v0

    .line 19
    return p0

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

.method public final onUidGone(IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/hint/HintManagerService$MyUidObserver;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    new-instance p4, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {p4, p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService$MyUidObserver;II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
