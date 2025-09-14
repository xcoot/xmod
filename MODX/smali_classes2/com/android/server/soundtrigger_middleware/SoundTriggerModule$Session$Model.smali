.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# instance fields
.field public mHandle:I

.field public mIsStopping:Z

.field public mRecognitionToken:Landroid/os/IBinder;

.field public mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

.field public mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

.field public final synthetic this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;


# direct methods
.method public static -$$Nest$mload(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I
    .locals 1

    .line 6
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 7
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, p2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 8
    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 9
    iget-object p1, p2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    iget p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    return p0
.end method

.method public static -$$Nest$mload(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 2
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, p2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 3
    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 4
    iget-object p1, p2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    iget p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    return p0
.end method

.method public static -$$Nest$mstartRecognition(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mIsStopping:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 15
    .line 16
    iget v3, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mDeviceHandle:I

    .line 17
    .line 18
    iget v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mIoHandle:I

    .line 19
    .line 20
    invoke-virtual {v0, v1, v3, v2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroid/os/Binder;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    .line 29
    .line 30
    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_0
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    .line 39
    .line 40
    const/4 p1, 0x5

    .line 41
    const-string v0, "Race occurred"

    .line 42
    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 5
    .line 6
    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->INIT:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mIsStopping:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final modelUnloaded(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    :try_start_1
    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModelUnloaded(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    throw p0

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p0
.end method

.method public final phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p1

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iput-object v0, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->token:Landroid/os/IBinder;

    .line 15
    .line 16
    iget-object v0, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 17
    .line 18
    iget-object v0, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 19
    .line 20
    iget-boolean v0, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 35
    .line 36
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    :try_start_1
    iget p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 42
    .line 43
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    .line 44
    .line 45
    invoke-interface {v0, p1, p2, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    throw p0

    .line 55
    :cond_2
    :goto_0
    return-void

    .line 56
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    throw p0
.end method

.method public final recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p1

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iput-object v0, p2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->token:Landroid/os/IBinder;

    .line 15
    .line 16
    iget-object v0, p2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    .line 17
    .line 18
    iget-boolean v0, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mRecognitionToken:Landroid/os/IBinder;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 33
    .line 34
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    :try_start_1
    iget p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 40
    .line 41
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    .line 42
    .line 43
    invoke-interface {v0, p1, p2, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    throw p0

    .line 53
    :cond_2
    :goto_0
    return-void

    .line 54
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw p0
.end method

.method public final setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
