.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

.field public mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

.field public final mMaxModels:I

.field public mNumLoadedModels:I


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final clientAttached(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->detach()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final forceRecognitionEvent(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->forceRecognitionEvent(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getModelParameter(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getModelParameter(II)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getProperties()Landroid/media/soundtrigger/Properties;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 3
    .line 4
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 16
    .line 17
    add-int/2addr p2, v2

    .line 18
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    .line 25
    .line 26
    invoke-direct {p1, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 3
    .line 4
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 16
    .line 17
    add-int/2addr p2, v2

    .line 18
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    .line 25
    .line 26
    invoke-direct {p1, v2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final reboot()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->reboot()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setModelParameter(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->setModelParameter(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final stopRecognition(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->stopRecognition(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final unloadSoundModel(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, -0x1

    .line 5
    .line 6
    iput v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mMaxModels:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unloadSoundModel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 25
    .line 26
    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;->onResourcesAvailable()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void

    .line 30
    :catch_0
    move-exception p1

    .line 31
    monitor-enter p0

    .line 32
    :try_start_2
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;->mNumLoadedModels:I

    .line 36
    .line 37
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    throw p1

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 44
    throw p1
.end method
