.class public final Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

.field public final mClient:Landroid/os/IBinder;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mListener:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

.field public final mModelUuid:Landroid/util/SparseArray;

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;

.field public final mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

.field public final synthetic this$1:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;Lcom/android/server/soundtrigger/SoundTriggerHelper;Landroid/os/IBinder;Lcom/android/server/utils/EventLogger;Landroid/media/permission/Identity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 5
    .line 6
    new-instance v0, Landroid/util/SparseArray;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mModelUuid:Landroid/util/SparseArray;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mClient:Landroid/os/IBinder;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 21
    .line 22
    iget-object p2, p1, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 23
    .line 24
    iget-object p2, p2, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionEventLoggers:Ljava/util/Set;

    .line 25
    .line 26
    invoke-interface {p2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :try_start_0
    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 p4, 0x1

    .line 32
    invoke-direct {p2, p4, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p4, 0x0

    .line 36
    invoke-interface {p3, p2, p4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->clientDied()V

    .line 41
    .line 42
    .line 43
    :goto_0
    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    const/4 p3, 0x1

    .line 46
    invoke-direct {p2, p3, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mListener:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    .line 52
    .line 53
    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 54
    .line 55
    iget-object p5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 56
    .line 57
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;

    .line 61
    .line 62
    invoke-direct {v0, p5}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 66
    .line 67
    invoke-direct {p3, p1, p4, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;Ljava/util/function/Consumer;)V

    .line 68
    .line 69
    .line 70
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    .line 71
    .line 72
    iget-object p4, p3, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 73
    .line 74
    iget-object p4, p4, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 75
    .line 76
    const-string p5, "android:record_audio"

    .line 77
    .line 78
    invoke-virtual {p3, p5, p4}, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p4, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 84
    .line 85
    iget-object p0, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p4, p5, p0, v1, p3}, Landroid/app/AppOpsManager;->startWatchingMode(Ljava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    .line 91
    .line 92
    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/DeviceStateHandler;->registerListener(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public final clientDied()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 8
    .line 9
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;->DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 12
    .line 13
    iget-object v3, v3, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    const-string v4, "Client died"

    .line 16
    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    const-string v3, "SoundTriggerService"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->detachInternal()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final detachInternal()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 15
    .line 16
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 28
    .line 29
    iget-object v3, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionEventLoggers:Ljava/util/Set;

    .line 30
    .line 31
    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    iget-object v3, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    .line 39
    .line 40
    check-cast v3, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    iget-object v3, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    .line 49
    .line 50
    check-cast v3, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    :goto_1
    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mListener:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    .line 63
    .line 64
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->detach()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final setParameter(III)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mModelUuid:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/UUID;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 10
    .line 11
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 12
    .line 13
    sget-object v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->SET_PARAMETER:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v2, v3, v0, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->setParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;II)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    monitor-exit v0

    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p1, "SoundTriggerHelper has been detached"

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    iget-object v2, v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mModelUuid:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 13
    .line 14
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 15
    .line 16
    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 27
    .line 28
    .line 29
    iget-object v7, v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 30
    .line 31
    iget-object v2, v7, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v2

    .line 34
    :try_start_0
    iget-object v0, v7, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-string/jumbo v3, "sth_start_recognition"

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const/high16 v0, -0x80000000

    .line 44
    .line 45
    if-eqz p3, :cond_8

    .line 46
    .line 47
    if-nez p4, :cond_0

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_0
    iget-boolean v3, v7, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 52
    .line 53
    if-nez v3, :cond_7

    .line 54
    .line 55
    invoke-virtual {v7, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_1

    .line 66
    .line 67
    const-string v1, "SoundTriggerHelper"

    .line 68
    .line 69
    const-string v3, "Generic model with same UUID exists."

    .line 70
    .line 71
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    monitor-exit v2

    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_1
    if-eqz v3, :cond_5

    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p2}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v0, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    invoke-virtual {v7, v3, v4, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v5, "Unable to stop or unload previous model: "

    .line 105
    .line 106
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const-string v4, "SoundTriggerHelper"

    .line 121
    .line 122
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_2
    if-eqz v0, :cond_3

    .line 126
    .line 127
    monitor-exit v2

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    iget-object v0, v7, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/util/UUID;

    .line 140
    .line 141
    if-nez v0, :cond_4

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_4
    iget-object v3, v7, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    iget-object v0, v7, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 150
    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_5
    move-object v6, v3

    .line 160
    :goto_0
    if-nez v6, :cond_6

    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object v3, v7, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 167
    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object v3, v7, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 176
    .line 177
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    iget-object v3, v7, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 190
    .line 191
    const/4 v3, 0x0

    .line 192
    invoke-direct {v1, v0, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    .line 193
    .line 194
    .line 195
    iget-object v3, v7, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 196
    .line 197
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-object v9, v1

    .line 201
    goto :goto_1

    .line 202
    :cond_6
    move-object v9, v6

    .line 203
    :goto_1
    move-object v8, p2

    .line 204
    move-object/from16 v10, p3

    .line 205
    .line 206
    move-object/from16 v11, p4

    .line 207
    .line 208
    move/from16 v12, p5

    .line 209
    .line 210
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    monitor-exit v2

    .line 215
    goto :goto_3

    .line 216
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 217
    .line 218
    const-string v1, "SoundTriggerHelper has been detached"

    .line 219
    .line 220
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :cond_8
    :goto_2
    monitor-exit v2

    .line 225
    :goto_3
    return v0

    .line 226
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    throw v0
.end method
