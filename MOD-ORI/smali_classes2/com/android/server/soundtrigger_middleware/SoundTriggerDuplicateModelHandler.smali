.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

.field public mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

.field public final mModelList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final checkDuplicateModelUuid(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mWasContended:Z

    .line 35
    .line 36
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final clientAttached(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    .line 3
    .line 4
    iget-object v0, v0, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->checkDuplicateModelUuid(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;

    .line 18
    .line 19
    iget-object p1, p1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    .line 20
    .line 21
    iget-object p1, p1, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v1, p2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;-><init>(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return p2

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->checkDuplicateModelUuid(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;

    .line 16
    .line 17
    iget-object p1, p1, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v1, p2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;-><init>(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return p2

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->stopRecognition(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final unloadSoundModel(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unloadSoundModel(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    .line 18
    .line 19
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;

    .line 26
    .line 27
    iget v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mModelId:I

    .line 28
    .line 29
    if-ne v1, p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    .line 32
    .line 33
    check-cast p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;

    .line 40
    .line 41
    iget-boolean p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mWasContended:Z

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 46
    .line 47
    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;->onResourcesAvailable()V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void

    .line 51
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method
