.class public final Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;


# instance fields
.field public mBinding:Z

.field public mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

.field public mUnbindingRunnable:Ljava/lang/Runnable;


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/core/pm/containerservice/IContainerService;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    const/4 p1, 0x0

    .line 3
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method

.method public final scheduleAutoUnbound(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;-><init>(Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    sget-wide p0, Lcom/android/server/pm/AsecInstallHelper;->UNBIND_DELAY:J

    .line 13
    .line 14
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
