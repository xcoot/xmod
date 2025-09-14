.class public final Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final cleanupService()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->init(Landroid/service/attention/IAttentionService;)V

    .line 5
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 7
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 13
    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 15
    return-void
.end method

.method public final init(Landroid/service/attention/IAttentionService;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 8
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    .line 13
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$mhandlePendingCallbackLocked(Lcom/android/server/attention/AttentionManagerService;)V

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    .line 4
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    .line 4
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/service/attention/IAttentionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/attention/IAttentionService;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->init(Landroid/service/attention/IAttentionService;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 10
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 12
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 15
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    .line 4
    return-void
.end method
