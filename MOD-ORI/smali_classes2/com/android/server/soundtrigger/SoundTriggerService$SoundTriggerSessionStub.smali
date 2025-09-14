.class public final Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
.super Lcom/android/internal/app/ISoundTriggerSession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

.field public final mCallbacks:Ljava/util/TreeMap;

.field public final mCallbacksLock:Ljava/lang/Object;

.field public final mClient:Landroid/os/IBinder;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mListener:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

.field public final mLoadedModels:Ljava/util/TreeMap;

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;

.field public final mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/IBinder;Lcom/android/server/soundtrigger/SoundTriggerHelper;Lcom/android/server/utils/EventLogger;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/ISoundTriggerSession$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/TreeMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v0, Ljava/util/TreeMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mClient:Landroid/os/IBinder;

    .line 30
    .line 31
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 36
    .line 37
    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 38
    .line 39
    iget-object p3, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionEventLoggers:Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :try_start_0
    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/4 p4, 0x0

    .line 47
    invoke-direct {p3, p4, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 p4, 0x0

    .line 51
    invoke-interface {p2, p3, p4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->clientDied()V

    .line 56
    .line 57
    .line 58
    :goto_0
    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    .line 59
    .line 60
    const/4 p3, 0x0

    .line 61
    invoke-direct {p2, p3, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mListener:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    .line 65
    .line 66
    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    .line 67
    .line 68
    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 71
    .line 72
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p3, p1, p4, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;Ljava/util/function/Consumer;)V

    .line 81
    .line 82
    .line 83
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    .line 84
    .line 85
    iget-object p4, p3, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 86
    .line 87
    iget-object p4, p4, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 88
    .line 89
    const-string v0, "android:record_audio"

    .line 90
    .line 91
    invoke-virtual {p3, v0, p4}, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p4, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 97
    .line 98
    iget-object p0, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    invoke-virtual {p4, v0, p0, v1, p3}, Landroid/app/AppOpsManager;->startWatchingMode(Ljava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    .line 105
    .line 106
    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/DeviceStateHandler;->registerListener(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public static getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final clientDied()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 19
    .line 20
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;->DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 23
    .line 24
    iget-object v3, v3, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    const-string v4, "Client died"

    .line 27
    .line 28
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const-string v3, "SoundTriggerService"

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mListener:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->detach()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 70
    .line 71
    iget-object v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionEventLoggers:Ljava/util/Set;

    .line 72
    .line 73
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    .line 81
    .line 82
    check-cast v1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 83
    .line 84
    invoke-virtual {v1, p0}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    .line 91
    .line 92
    check-cast v1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    :goto_1
    return-void
.end method

.method public final deleteSoundModel(Landroid/os/ParcelUuid;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DELETE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->deleteGenericSoundModel(Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    throw p0
.end method

.method public final enforceCallingPermission(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroid/media/permission/PermissionUtil;->checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Identity "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p0, " does not have permission "

    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public final enforceDetectionPermissions(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    .line 10
    .line 11
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, " does not have permission android.permission.CAPTURE_AUDIO_HOTWORD"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final getModelState(Landroid/os/ParcelUuid;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODEL_STATE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    const/high16 v5, -0x80000000

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 50
    .line 51
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v6, "Model is not loaded"

    .line 58
    .line 59
    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "SoundTriggerService"

    .line 63
    .line 64
    invoke-virtual {v3, v4, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 74
    .line 75
    .line 76
    :cond_0
    return v5

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    const/4 v7, 0x1

    .line 84
    if-eq v6, v7, :cond_2

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 87
    .line 88
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string v6, "Unsupported model type"

    .line 95
    .line 96
    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string p1, "SoundTriggerService"

    .line 100
    .line 101
    invoke-virtual {v3, v4, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getGenericModelState(Ljava/util/UUID;)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 122
    .line 123
    .line 124
    :cond_3
    return v5

    .line 125
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    :try_start_5
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catchall_2
    move-exception p1

    .line 135
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_2
    throw p0
.end method

.method public final getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODULE_PROPERTIES:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    :try_start_4
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_2
    move-exception v0

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    throw p0
.end method

.method public final getParameter(Landroid/os/ParcelUuid;I)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 59
    .line 60
    .line 61
    :cond_0
    return p0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string p1, "SoundTriggerHelper has been detached"

    .line 69
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 75
    :try_start_5
    throw p0

    .line 76
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string/jumbo p1, "sound model is not loaded"

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 87
    :catchall_2
    move-exception p0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    :try_start_7
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catchall_3
    move-exception p1

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_2
    throw p0
.end method

.method public final getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .locals 2

    .line 1
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-object p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    move-exception p1

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    throw p0
.end method

.method public final isRecognitionActive(Landroid/os/ParcelUuid;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 13
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return v3

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 47
    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 48
    .line 49
    if-nez v2, :cond_4

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 58
    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 62
    :try_start_5
    iget-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    .line 64
    :try_start_6
    monitor-exit p0

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    goto :goto_0

    .line 69
    :catchall_1
    move-exception p1

    .line 70
    monitor-exit p0

    .line 71
    throw p1

    .line 72
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 76
    .line 77
    .line 78
    :cond_3
    return v3

    .line 79
    :catchall_2
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    :try_start_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string p1, "SoundTriggerHelper has been detached"

    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :goto_1
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 90
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 91
    :catchall_3
    move-exception p0

    .line 92
    goto :goto_3

    .line 93
    :goto_2
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 94
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 95
    :goto_3
    if-eqz v0, :cond_5

    .line 96
    .line 97
    :try_start_b
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :catchall_4
    move-exception p1

    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    :goto_4
    throw p0
.end method

.method public final loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->LOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 41
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :try_start_2
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    monitor-exit v2

    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :try_start_3
    throw p0

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {p0, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 102
    .line 103
    .line 104
    :cond_2
    const/4 p0, 0x0

    .line 105
    return p0

    .line 106
    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    :try_start_5
    throw p0

    .line 108
    :catchall_2
    move-exception p0

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 111
    .line 112
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v3, "Invalid sound model"

    .line 119
    .line 120
    invoke-direct {v1, v2, p1, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string p1, "SoundTriggerService"

    .line 124
    .line 125
    const/4 v2, 0x2

    .line 126
    invoke-virtual {v1, v2, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 130
    .line 131
    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 135
    .line 136
    .line 137
    :cond_4
    const/high16 p0, -0x80000000

    .line 138
    .line 139
    return p0

    .line 140
    :goto_3
    if-eqz v0, :cond_5

    .line 141
    .line 142
    :try_start_6
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :catchall_3
    move-exception p1

    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    :goto_4
    throw p0
.end method

.method public final loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->LOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/high16 v1, -0x80000000

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    if-eqz p1, :cond_6

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    array-length v4, v4

    .line 51
    const/4 v5, 0x1

    .line 52
    if-eq v4, v5, :cond_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 60
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    aget-object v4, v4, v3

    .line 88
    .line 89
    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual {v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :try_start_2
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    monitor-exit v2

    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :try_start_3
    throw p0

    .line 113
    :catchall_1
    move-exception p0

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {p0, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 128
    .line 129
    .line 130
    :cond_3
    return v3

    .line 131
    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    :try_start_5
    throw p0

    .line 133
    :catchall_2
    move-exception p0

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 136
    .line 137
    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 138
    .line 139
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string v5, "Only one keyphrase supported"

    .line 144
    .line 145
    invoke-direct {v4, v2, p1, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string p1, "SoundTriggerService"

    .line 149
    .line 150
    invoke-virtual {v4, v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 154
    .line 155
    .line 156
    if-eqz v0, :cond_5

    .line 157
    .line 158
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 159
    .line 160
    .line 161
    :cond_5
    return v1

    .line 162
    :cond_6
    :goto_3
    :try_start_6
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 163
    .line 164
    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 165
    .line 166
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string v5, "Invalid sound model"

    .line 171
    .line 172
    invoke-direct {v4, v2, p1, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string p1, "SoundTriggerService"

    .line 176
    .line 177
    invoke-virtual {v4, v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 181
    .line 182
    .line 183
    if-eqz v0, :cond_7

    .line 184
    .line 185
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 186
    .line 187
    .line 188
    :cond_7
    return v1

    .line 189
    :goto_4
    if-eqz v0, :cond_8

    .line 190
    .line 191
    :try_start_7
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :catchall_3
    move-exception p1

    .line 196
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    :cond_8
    :goto_5
    throw p0
.end method

.method public final queryParameter(Landroid/os/ParcelUuid;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .locals 4

    .line 1
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 33
    .line 34
    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 49
    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->queryParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-object p0

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    :try_start_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string p1, "SoundTriggerHelper has been detached"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :goto_0
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 83
    :try_start_6
    throw p0

    .line 84
    :goto_1
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 86
    :catchall_2
    move-exception p0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    :try_start_8
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_3
    move-exception p1

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_2
    throw p0
.end method

.method public final setParameter(Landroid/os/ParcelUuid;II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->SET_PARAMETER:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 47
    .line 48
    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p3, "Model not loaded"

    .line 55
    .line 56
    invoke-direct {p2, v2, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p1, "SoundTriggerService"

    .line 60
    .line 61
    const/4 p3, 0x2

    .line 62
    invoke-virtual {p2, p3, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 66
    .line 67
    .line 68
    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    .line 69
    .line 70
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 74
    .line 75
    .line 76
    :cond_0
    return p0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 89
    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 93
    .line 94
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 99
    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->setParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;II)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 109
    .line 110
    .line 111
    :cond_2
    return p0

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    :try_start_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    const-string p1, "SoundTriggerHelper has been detached"

    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :goto_0
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    :try_start_6
    throw p0

    .line 124
    :goto_1
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 125
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 126
    :catchall_2
    move-exception p0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    :try_start_8
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catchall_3
    move-exception p1

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_2
    throw p0
.end method

.method public final startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 30
    .line 31
    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p3, "Invalid sound model"

    .line 38
    .line 39
    invoke-direct {p2, v2, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "SoundTriggerService"

    .line 43
    .line 44
    const/4 p3, 0x2

    .line 45
    invoke-virtual {p2, p3, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 54
    .line 55
    .line 56
    :cond_0
    const/high16 p0, -0x80000000

    .line 57
    .line 58
    return p0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    if-eqz p4, :cond_2

    .line 62
    .line 63
    :try_start_1
    const-string v1, "android.permission.SOUND_TRIGGER_RUN_IN_BATTERY_SAVER"

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    move-object v3, p1

    .line 75
    move-object v4, p2

    .line 76
    move-object v5, p3

    .line 77
    move v6, p4

    .line 78
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_3

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    :cond_3
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 98
    .line 99
    .line 100
    :cond_4
    return p2

    .line 101
    :goto_0
    if-eqz v0, :cond_5

    .line 102
    .line 103
    :try_start_2
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_1
    move-exception p1

    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    :goto_1
    throw p0
.end method

.method public final startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceDetectionPermissions(Landroid/content/ComponentName;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    move-object v3, v1

    .line 50
    move-object v4, p0

    .line 51
    move-object v6, p2

    .line 52
    move-object v7, p3

    .line 53
    move-object v9, p4

    .line 54
    invoke-direct/range {v3 .. v9}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 58
    .line 59
    iget-object p2, p2, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 62
    :try_start_1
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {p3, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    check-cast p3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 73
    .line 74
    const/high16 v3, -0x80000000

    .line 75
    .line 76
    const/4 v9, 0x2

    .line 77
    if-nez p3, :cond_1

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 80
    .line 81
    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string p4, "Model not loaded"

    .line 88
    .line 89
    invoke-direct {p3, v2, p1, p4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string p1, "SoundTriggerService"

    .line 93
    .line 94
    invoke-virtual {p3, v9, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 98
    .line 99
    .line 100
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    .line 103
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 104
    .line 105
    .line 106
    :cond_0
    return v3

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    .line 111
    .line 112
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :try_start_3
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 124
    .line 125
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 126
    if-eqz v5, :cond_3

    .line 127
    .line 128
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 129
    .line 130
    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const-string p4, "Model already running"

    .line 137
    .line 138
    invoke-direct {p3, v2, p1, p4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string p1, "SoundTriggerService"

    .line 142
    .line 143
    invoke-virtual {p3, v9, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 147
    .line 148
    .line 149
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    if-eqz v0, :cond_2

    .line 151
    .line 152
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 153
    .line 154
    .line 155
    :cond_2
    return v3

    .line 156
    :cond_3
    :try_start_5
    invoke-virtual {p3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    const/4 v5, 0x1

    .line 161
    if-eq v4, v5, :cond_5

    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 164
    .line 165
    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 166
    .line 167
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-string p4, "Unsupported model type"

    .line 172
    .line 173
    invoke-direct {p3, v2, p1, p4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string p1, "SoundTriggerService"

    .line 177
    .line 178
    invoke-virtual {p3, v9, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 182
    .line 183
    .line 184
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 185
    if-eqz v0, :cond_4

    .line 186
    .line 187
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 188
    .line 189
    .line 190
    :cond_4
    return v3

    .line 191
    :cond_5
    :try_start_6
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 192
    .line 193
    invoke-virtual {p3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    move-object v5, p3

    .line 198
    check-cast v5, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 199
    .line 200
    const/4 v8, 0x0

    .line 201
    move-object v6, v1

    .line 202
    move-object v7, p4

    .line 203
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    .line 204
    .line 205
    .line 206
    move-result p3

    .line 207
    if-eqz p3, :cond_7

    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 210
    .line 211
    new-instance p4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 212
    .line 213
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    const-string v1, "Model start fail"

    .line 218
    .line 219
    invoke-direct {p4, v2, p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string p1, "SoundTriggerService"

    .line 223
    .line 224
    invoke-virtual {p4, v9, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, p4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 228
    .line 229
    .line 230
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 231
    if-eqz v0, :cond_6

    .line 232
    .line 233
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 234
    .line 235
    .line 236
    :cond_6
    return p3

    .line 237
    :cond_7
    :try_start_7
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    .line 238
    .line 239
    monitor-enter p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 240
    :try_start_8
    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {p4, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    monitor-exit p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 250
    :try_start_9
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 251
    .line 252
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V

    .line 259
    .line 260
    .line 261
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 262
    if-eqz v0, :cond_8

    .line 263
    .line 264
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 265
    .line 266
    .line 267
    :cond_8
    const/4 p0, 0x0

    .line 268
    return p0

    .line 269
    :catchall_1
    move-exception p0

    .line 270
    :try_start_a
    monitor-exit p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 271
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 272
    :catchall_2
    move-exception p0

    .line 273
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 274
    :try_start_d
    throw p0

    .line 275
    :goto_0
    monitor-exit p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 276
    :try_start_e
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 277
    :catchall_3
    move-exception p0

    .line 278
    if-eqz v0, :cond_9

    .line 279
    .line 280
    :try_start_f
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :catchall_4
    move-exception p1

    .line 285
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 286
    .line 287
    .line 288
    :cond_9
    :goto_1
    throw p0
.end method

.method public final stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 56
    .line 57
    .line 58
    :cond_1
    return p2

    .line 59
    :goto_1
    if-eqz v0, :cond_2

    .line 60
    .line 61
    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catchall_1
    move-exception p1

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_2
    throw p0
.end method

.method public final stopRecognitionForService(Landroid/os/ParcelUuid;)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 32
    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 43
    .line 44
    const/high16 v4, -0x80000000

    .line 45
    .line 46
    const/4 v5, 0x2

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 50
    .line 51
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v6, "Model not loaded"

    .line 58
    .line 59
    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "SoundTriggerService"

    .line 63
    .line 64
    invoke-virtual {v3, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 74
    .line 75
    .line 76
    :cond_0
    return v4

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :try_start_3
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 94
    .line 95
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 96
    if-nez v7, :cond_3

    .line 97
    .line 98
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 99
    .line 100
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v6, "Model not running"

    .line 107
    .line 108
    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p1, "SoundTriggerService"

    .line 112
    .line 113
    invoke-virtual {v3, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 117
    .line 118
    .line 119
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 123
    .line 124
    .line 125
    :cond_2
    return v4

    .line 126
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    const/4 v8, 0x1

    .line 131
    if-eq v6, v8, :cond_5

    .line 132
    .line 133
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 134
    .line 135
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string v6, "Unknown model type"

    .line 142
    .line 143
    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string p1, "SoundTriggerService"

    .line 147
    .line 148
    invoke-virtual {v3, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 152
    .line 153
    .line 154
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 158
    .line 159
    .line 160
    :cond_4
    return v4

    .line 161
    :cond_5
    :try_start_6
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 162
    .line 163
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v4, v3, v7}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_7

    .line 172
    .line 173
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 174
    .line 175
    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 176
    .line 177
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    const-string v6, "Failed to stop model"

    .line 182
    .line 183
    invoke-direct {v4, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string p1, "SoundTriggerService"

    .line 187
    .line 188
    invoke-virtual {v4, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 192
    .line 193
    .line 194
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 195
    if-eqz v0, :cond_6

    .line 196
    .line 197
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 198
    .line 199
    .line 200
    :cond_6
    return v3

    .line 201
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    .line 202
    .line 203
    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 204
    :try_start_8
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 214
    :try_start_9
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 215
    .line 216
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 223
    .line 224
    .line 225
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 226
    if-eqz v0, :cond_8

    .line 227
    .line 228
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 229
    .line 230
    .line 231
    :cond_8
    const/4 p0, 0x0

    .line 232
    return p0

    .line 233
    :catchall_1
    move-exception p0

    .line 234
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 235
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 236
    :catchall_2
    move-exception p0

    .line 237
    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 238
    :try_start_d
    throw p0

    .line 239
    :goto_0
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 240
    :try_start_e
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 241
    :catchall_3
    move-exception p0

    .line 242
    if-eqz v0, :cond_9

    .line 243
    .line 244
    :try_start_f
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :catchall_4
    move-exception p1

    .line 249
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    :cond_9
    :goto_1
    throw p0
.end method

.method public final unloadSoundModel(Landroid/os/ParcelUuid;)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UNLOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 43
    .line 44
    const/high16 v4, -0x80000000

    .line 45
    .line 46
    const/4 v5, 0x2

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 50
    .line 51
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v6, "Model not loaded"

    .line 58
    .line 59
    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "SoundTriggerService"

    .line 63
    .line 64
    invoke-virtual {v3, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 74
    .line 75
    .line 76
    :cond_0
    return v4

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    const/4 v7, 0x0

    .line 84
    if-eqz v6, :cond_4

    .line 85
    .line 86
    const/4 v8, 0x1

    .line 87
    if-eq v6, v8, :cond_3

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 90
    .line 91
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v6, "Unknown model type"

    .line 98
    .line 99
    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string p1, "SoundTriggerService"

    .line 103
    .line 104
    invoke-virtual {v3, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 108
    .line 109
    .line 110
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 114
    .line 115
    .line 116
    :cond_2
    return v4

    .line 117
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 118
    .line 119
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v4, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    goto :goto_0

    .line 128
    :cond_4
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 129
    .line 130
    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 131
    .line 132
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    aget-object v3, v3, v7

    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-virtual {v4, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    :goto_0
    if-eqz v3, :cond_6

    .line 147
    .line 148
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 149
    .line 150
    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 151
    .line 152
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string v6, "Failed to unload model"

    .line 157
    .line 158
    invoke-direct {v4, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string p1, "SoundTriggerService"

    .line 162
    .line 163
    invoke-virtual {v4, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 167
    .line 168
    .line 169
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    if-eqz v0, :cond_5

    .line 171
    .line 172
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 173
    .line 174
    .line 175
    :cond_5
    return v3

    .line 176
    :cond_6
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    if-eqz v0, :cond_7

    .line 187
    .line 188
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 189
    .line 190
    .line 191
    :cond_7
    return v7

    .line 192
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 193
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 194
    :catchall_1
    move-exception p0

    .line 195
    if-eqz v0, :cond_8

    .line 196
    .line 197
    :try_start_7
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :catchall_2
    move-exception p1

    .line 202
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    :cond_8
    :goto_2
    throw p0
.end method

.method public final updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UPDATE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_1
    move-exception p1

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    throw p0
.end method
