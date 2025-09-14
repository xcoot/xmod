.class public final Lcom/android/server/soundtrigger/DeviceStateHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field public final mCallbackSet:Ljava/util/Set;

.field public final mDelayedNotificationExecutor:Ljava/util/concurrent/Executor;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public mIsPhoneCallOngoing:Z

.field public final mLock:Ljava/lang/Object;

.field public mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

.field public mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

.field public mSoundTriggerPowerSaveMode:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/utils/EventLogger;)V
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
    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    sget-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->ENABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    .line 29
    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mDelayedNotificationExecutor:Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final evaluateStateChange()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->DISABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Received unexpected power state code"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_2
    sget-object v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->CRITICAL:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    sget-object v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->ENABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    .line 47
    .line 48
    if-nez v0, :cond_5

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 51
    .line 52
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    iput-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 56
    .line 57
    new-instance v0, Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateEvent;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateEvent;-><init>(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 90
    .line 91
    new-instance v4, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-direct {v4, v2, v0, v5}, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    :goto_2
    return-void
.end method

.method public final onPhoneCallStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/DeviceStateHandler$PhoneCallEvent;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler$PhoneCallEvent;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    .line 15
    .line 16
    if-ne v1, p1, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mCancelLatch:Ljava/util/concurrent/CountDownLatch;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    .line 33
    .line 34
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    new-instance p1, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    .line 39
    .line 40
    new-instance v1, Lcom/android/server/soundtrigger/DeviceStateHandler$1;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/DeviceStateHandler$1;-><init>(Lcom/android/server/soundtrigger/DeviceStateHandler;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v1}, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;-><init>(Lcom/android/server/soundtrigger/DeviceStateHandler$1;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mDelayedNotificationExecutor:Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->evaluateStateChange()V

    .line 57
    .line 58
    .line 59
    :goto_0
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final onPowerModeChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerPowerEvent;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerPowerEvent;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->evaluateStateChange()V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final registerListener(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v2, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, p1, v1, v3}, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method
