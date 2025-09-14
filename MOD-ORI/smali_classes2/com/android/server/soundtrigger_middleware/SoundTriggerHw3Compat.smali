.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field public final mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

.field public final mRebootRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mRebootRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public clientAttached(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public clientDetached(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public detach()V
    .locals 0

    .line 1
    return-void
.end method

.method public final forceRecognitionEvent(I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->forceRecognitionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method

.method public final getModelParameter(II)I
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->getParameter(II)I

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    throw p0
.end method

.method public final getProperties()Landroid/media/soundtrigger/Properties;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->getProperties()Landroid/media/soundtrigger/Properties;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    throw p0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    throw p0
.end method

.method public final loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;

    .line 4
    .line 5
    invoke-direct {v0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, p1, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    iget p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    .line 23
    .line 24
    invoke-direct {p0, p2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_0
    throw p0

    .line 29
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;

    .line 4
    .line 5
    invoke-direct {v0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, p1, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    iget p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    .line 23
    .line 24
    invoke-direct {p0, p2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_0
    throw p0

    .line 29
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    throw p0
.end method

.method public final reboot()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mRebootRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->registerGlobalCallback(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    throw p0
.end method

.method public final setModelParameter(III)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->setParameter(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method

.method public final startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    goto :goto_0

    .line 9
    :catch_1
    move-exception p0

    .line 10
    goto :goto_1

    .line 11
    :goto_0
    iget p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    .line 17
    .line 18
    invoke-direct {p0, p2}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_0
    throw p0

    .line 23
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    throw p0
.end method

.method public final stopRecognition(I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->stopRecognition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method

.method public final unloadSoundModel(I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;->mDriver:Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw;->unloadSoundModel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method
