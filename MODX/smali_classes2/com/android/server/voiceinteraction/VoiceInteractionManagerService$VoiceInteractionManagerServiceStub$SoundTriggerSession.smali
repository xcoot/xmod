.class public final Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;
.super Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSession:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;

.field public mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public mSessionInternalCallback:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;

.field public final mVoiceInteractorIdentity:Landroid/media/permission/Identity;

.field public final synthetic this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;


# direct methods
.method public static -$$Nest$munloadKeyphraseModel(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mModelUuid:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/util/UUID;

    .line 17
    .line 18
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 19
    .line 20
    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UNLOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-direct {v3, v4, v2, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    .line 34
    .line 35
    .line 36
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;Landroid/media/permission/Identity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->detachInternal()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 19
    .line 20
    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODULE_PROPERTIES:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-direct {v3, v4, v5, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 27
    .line 28
    invoke-virtual {v4, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-object p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p0
.end method

.method public final getParameter(II)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :try_start_1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p1, "SoundTriggerHelper has been detached"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :catchall_2
    move-exception p0

    .line 56
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 57
    throw p0
.end method

.method public final queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :try_start_1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->queryParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p1, "SoundTriggerHelper has been detached"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :catchall_2
    move-exception p0

    .line 56
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 57
    throw p0
.end method

.method public final setParameter(III)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :try_start_1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->setParameter(III)I

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :catchall_1
    move-exception p0

    .line 30
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    throw p0
.end method

.method public final startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 7
    .line 8
    .line 9
    if-eqz p3, :cond_6

    .line 10
    .line 11
    if-eqz p4, :cond_6

    .line 12
    .line 13
    if-eqz p2, :cond_6

    .line 14
    .line 15
    if-eqz p5, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 18
    .line 19
    const-string v2, "android.permission.SOUND_TRIGGER_RUN_IN_BATTERY_SAVER"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    :try_start_1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/IEnrolledModelDb;

    .line 42
    .line 43
    invoke-interface {v3, p1, v0, p2}, Lcom/android/server/voiceinteraction/IEnrolledModelDb;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    if-eqz v6, :cond_5

    .line 48
    .line 49
    invoke-virtual {v6}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-eqz p2, :cond_5

    .line 54
    .line 55
    invoke-virtual {v6}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-nez p2, :cond_1

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_1
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 63
    .line 64
    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 65
    :try_start_2
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-interface {p3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 91
    .line 92
    invoke-interface {v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eq v0, v3, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    goto :goto_3

    .line 101
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 104
    .line 105
    iget-object v4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 106
    .line 107
    if-nez v4, :cond_3

    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    iget-object v4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    new-instance v5, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;

    .line 121
    .line 122
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 123
    .line 124
    invoke-direct {v5, v0, p3, v4, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;-><init>(Landroid/content/Context;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/media/permission/Identity;)V

    .line 125
    .line 126
    .line 127
    move-object v0, v5

    .line 128
    :goto_2
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;

    .line 129
    .line 130
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 131
    .line 132
    :cond_4
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    :try_start_3
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;

    .line 134
    .line 135
    iget-object v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;

    .line 136
    .line 137
    move v5, p1

    .line 138
    move-object v8, p4

    .line 139
    move v9, p5

    .line 140
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    .line 141
    .line 142
    .line 143
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 144
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    .line 146
    .line 147
    return p0

    .line 148
    :catchall_2
    move-exception p0

    .line 149
    goto :goto_5

    .line 150
    :goto_3
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 151
    :try_start_5
    throw p0

    .line 152
    :cond_5
    :goto_4
    const-string p0, "VoiceInteractionManager"

    .line 153
    .line 154
    const-string p1, "No matching sound model found in startRecognition"

    .line 155
    .line 156
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    .line 161
    .line 162
    const/high16 p0, -0x80000000

    .line 163
    .line 164
    return p0

    .line 165
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :cond_6
    :try_start_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 170
    .line 171
    const-string p1, "Illegal argument(s) in startRecognition"

    .line 172
    .line 173
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :goto_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 178
    throw p0
.end method

.method public final stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 23
    .line 24
    invoke-interface {v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eq v1, v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_3

    .line 36
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 39
    .line 40
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 41
    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    move-object p2, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v5, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;

    .line 56
    .line 57
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 58
    .line 59
    invoke-direct {v5, v1, p2, v4, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;-><init>(Landroid/content/Context;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/media/permission/Identity;)V

    .line 60
    .line 61
    .line 62
    move-object p2, v5

    .line 63
    :goto_1
    const-string v1, "VoiceInteractionManager"

    .line 64
    .line 65
    const-string/jumbo v3, "stopRecognition() called with a different callback thanstartRecognition()"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :goto_2
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 72
    .line 73
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;

    .line 74
    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    :try_start_1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;

    .line 81
    .line 82
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 83
    :try_start_2
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mModelUuid:Landroid/util/SparseArray;

    .line 84
    .line 85
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/util/UUID;

    .line 90
    .line 91
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 92
    .line 93
    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 94
    .line 95
    sget-object v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 96
    .line 97
    invoke-direct {v5, v6, v3, v2}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 104
    .line 105
    invoke-virtual {v2, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    .line 106
    .line 107
    .line 108
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 110
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    .line 112
    .line 113
    return p1

    .line 114
    :catchall_1
    move-exception p1

    .line 115
    :try_start_4
    monitor-exit p0

    .line 116
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 117
    :catchall_2
    move-exception p0

    .line 118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    throw p0
.end method
