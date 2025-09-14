.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

.field public final mClientLock:Ljava/lang/Object;

.field public mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string p0, "SoundTriggerInjection"

    .line 2
    .line 3
    const-string v0, "Unexpected asBinder!"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 9
    .line 10
    const-string v0, "Calling asBinder on a fake binder object"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public final binderDied()V
    .locals 1

    .line 1
    const-string p0, "SoundTriggerInjection"

    const-string v0, "Binder died without params"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 p1, 0x0

    .line 17
    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw p0
.end method

.method public final onClientDetached(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onClientDetached(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 p1, 0x0

    .line 17
    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw p0
.end method

.method public final onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 p1, 0x0

    .line 17
    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw p0
.end method

.method public final onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 p1, 0x0

    .line 17
    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw p0
.end method

.method public final onPreempted()V
    .locals 1

    .line 1
    const-string p0, "SoundTriggerInjection"

    .line 2
    .line 3
    const-string v0, "Unexpected preempted!"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 p1, 0x0

    .line 17
    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw p0
.end method

.method public final onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 p1, 0x0

    .line 17
    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw p0
.end method

.method public final onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 p1, 0x0

    .line 17
    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw p0
.end method

.method public final onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 p1, 0x0

    .line 17
    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw p0
.end method

.method public final onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 p1, 0x0

    .line 17
    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw p0
.end method

.method public final registerClient(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :try_start_1
    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onPreempted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception v1

    .line 19
    :try_start_2
    const-string v3, "SoundTriggerInjection"

    .line 20
    .line 21
    const-string v4, "RemoteException when handling preemption"

    .line 22
    .line 23
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 27
    .line 28
    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->asBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    :try_start_3
    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->asBinder()Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 49
    .line 50
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_1
    const/4 p1, 0x0

    .line 55
    :try_start_4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 56
    .line 57
    :cond_1
    :goto_1
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    throw p0
.end method

.method public final registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const/4 p1, 0x0

    .line 19
    :try_start_2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 20
    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    throw p0
.end method
