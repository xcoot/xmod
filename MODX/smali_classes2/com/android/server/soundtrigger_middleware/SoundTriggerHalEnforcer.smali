.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field public final mModelStates:Ljava/util/Map;

.field public final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final clientAttached(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->clientAttached(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clientDetached(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->clientDetached(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final detach()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->detach()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final forceRecognitionEvent(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->forceRecognitionEvent(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final getModelParameter(II)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getModelParameter(II)I

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public final getProperties()Landroid/media/soundtrigger/Properties;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public final handleException(Ljava/lang/RuntimeException;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroid/os/DeadObjectException;

    .line 10
    .line 11
    const-string v1, "SoundTriggerHalEnforcer"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string p0, "HAL died"

    .line 16
    .line 17
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    .line 21
    .line 22
    const/4 p1, 0x4

    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_0
    const-string v0, "Exception caught from HAL, rebooting HAL"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    throw p1
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 5
    .line 6
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;

    .line 7
    .line 8
    invoke-direct {v2, p0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, p1, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 22
    .line 23
    check-cast p2, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    throw p0
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 5
    .line 6
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;

    .line 7
    .line 8
    invoke-direct {v2, p0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, p1, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 22
    .line 23
    check-cast p2, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    throw p0
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public final reboot()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->reboot()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final setModelParameter(III)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->setModelParameter(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 5
    .line 6
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 16
    .line 17
    check-cast p2, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    throw p0
.end method

.method public final stopRecognition(I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->PENDING_STOP:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 11
    .line 12
    check-cast v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->stopRecognition(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 24
    .line 25
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 26
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 33
    .line 34
    check-cast v1, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception p1

    .line 47
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 48
    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 49
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    throw p0
.end method

.method public final unloadSoundModel(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unloadSoundModel(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 7
    .line 8
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->handleException(Ljava/lang/RuntimeException;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method
