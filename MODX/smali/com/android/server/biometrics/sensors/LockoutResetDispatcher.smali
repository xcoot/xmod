.class public final Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final mClientCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mClientCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public final declared-synchronized addCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Callback from : "

    .line 3
    monitor-enter p0

    .line 4
    if-nez p1, :cond_0

    .line 6
    :try_start_0
    const-string p1, "LockoutResetTracker"

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string p2, " is null"

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mClientCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 34
    new-instance v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 36
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->asBinder()Landroid/os/IBinder;

    .line 47
    move-result-object p1

    .line 48
    const/4 p2, 0x0

    .line 49
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    :try_start_3
    const-string p2, "LockoutResetTracker"

    .line 56
    const-string v0, "Failed to link to death"

    .line 58
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :goto_0
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit p0

    .line 64
    throw p1
.end method

.method public final binderDied()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized binderDied(Landroid/os/IBinder;)V
    .locals 5

    const-string v0, "Callback binder died: "

    monitor-enter p0

    .line 2
    :try_start_0
    const-string v1, "LockoutResetTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mClientCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 6
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    const-string v2, "LockoutResetTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing dead callback for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->releaseWakelock()V

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 10
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized notifyLockoutResetCallbacks(I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mClientCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 20
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz v2, :cond_0

    .line 24
    :try_start_1
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 26
    const-wide/16 v3, 0x7d0

    .line 28
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 31
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 33
    new-instance v3, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;

    .line 35
    invoke-direct {v3, v1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;-><init>(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V

    .line 38
    invoke-interface {v2, p1, v3}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->onLockoutReset(ILandroid/os/IRemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v2

    .line 43
    :try_start_2
    const-string v3, "LockoutResetTracker"

    .line 45
    const-string v4, "Failed to invoke onLockoutReset: "

    .line 47
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->releaseWakelock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit p0

    .line 59
    throw p1
.end method
