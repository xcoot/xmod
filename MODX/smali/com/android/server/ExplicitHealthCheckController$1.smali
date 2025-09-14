.class public final Lcom/android/server/ExplicitHealthCheckController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExplicitHealthCheckController;


# direct methods
.method public constructor <init>(Lcom/android/server/ExplicitHealthCheckController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController$1;->this$0:Lcom/android/server/ExplicitHealthCheckController;

    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Explicit health check service binding is dead. Rebind: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const-string v0, "ExplicitHealthCheckController"

    .line 17
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/android/server/ExplicitHealthCheckController$1;->this$0:Lcom/android/server/ExplicitHealthCheckController;

    .line 22
    invoke-virtual {p1}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    .line 25
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController$1;->this$0:Lcom/android/server/ExplicitHealthCheckController;

    .line 27
    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->bindService()V

    .line 30
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 3
    const-string v0, "Explicit health check service binding is null?? "

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    const-string p1, "ExplicitHealthCheckController"

    .line 17
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string v0, "ExplicitHealthCheckController"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Explicit health check service is connected "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController$1;->this$0:Lcom/android/server/ExplicitHealthCheckController;

    .line 22
    iget-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 27
    if-nez v0, :cond_0

    .line 29
    const-string p2, "ExplicitHealthCheckController"

    .line 31
    const-string v0, "Attempting to connect disabled service?? Unbinding..."

    .line 33
    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    .line 39
    monitor-exit p1

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    invoke-static {p2}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    new-instance v0, Landroid/os/RemoteCallback;

    .line 51
    new-instance v1, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;

    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-direct {v1, v2, p0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 57
    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 60
    invoke-interface {p2, v0}, Landroid/service/watchdog/IExplicitHealthCheckService;->setCallback(Landroid/os/RemoteCallback;)V

    .line 63
    const-string p2, "ExplicitHealthCheckController"

    .line 65
    const-string v0, "Service initialized, syncing requests"

    .line 67
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    :try_start_2
    const-string p2, "ExplicitHealthCheckController"

    .line 73
    const-string v0, "Could not setCallback on explicit health check service"

    .line 75
    invoke-static {p2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Ljava/lang/Runnable;

    .line 81
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 84
    :goto_1
    return-void

    .line 85
    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string v0, "ExplicitHealthCheckController"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Explicit health check service is disconnected "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/android/server/ExplicitHealthCheckController$1;->this$0:Lcom/android/server/ExplicitHealthCheckController;

    .line 22
    iget-object p1, p1, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController$1;->this$0:Lcom/android/server/ExplicitHealthCheckController;

    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 30
    monitor-exit p1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method
