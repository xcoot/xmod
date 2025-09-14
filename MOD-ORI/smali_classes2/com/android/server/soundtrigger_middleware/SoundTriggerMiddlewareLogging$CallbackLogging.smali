.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;


# instance fields
.field public final mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/utils/EventLogger;Landroid/media/permission/Identity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final onModelUnloaded(I)V
    .locals 5

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->MODEL_UNLOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 6
    .line 7
    invoke-interface {v2, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModelUnloaded(I)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v1, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v3, v4, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception v2

    .line 33
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v1, v2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 52
    .line 53
    .line 54
    throw v2
.end method

.method public final onModuleDied()V
    .locals 6

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->MODULE_DIED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 8
    .line 9
    invoke-interface {v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V

    .line 10
    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 13
    .line 14
    new-array v5, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v1, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5, v2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception v4

    .line 28
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 29
    .line 30
    new-array v3, v3, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {v1, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 40
    .line 41
    .line 42
    throw v4
.end method

.method public final onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V
    .locals 6

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mBatteryStatsInternalSupplier:Ljava/util/function/Supplier;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/os/BatteryStatsInternal;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    iget-object v5, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 20
    .line 21
    iget v5, v5, Landroid/media/permission/Identity;->uid:I

    .line 22
    .line 23
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStatsInternal;->noteWakingSoundTrigger(JI)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    .line 27
    .line 28
    iget-object v3, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 29
    .line 30
    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->-$$Nest$mstartKeyphraseEventLatencyTracking(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger/PhraseRecognitionEvent;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 34
    .line 35
    invoke-interface {v2, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    filled-new-array {v3, p2, v4}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v1, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-virtual {v3, v4, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catch_0
    move-exception v2

    .line 65
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 66
    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v1, v2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/4 p2, 0x2

    .line 84
    invoke-virtual {p1, p2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 88
    .line 89
    .line 90
    throw v2
.end method

.method public final onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V
    .locals 6

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mBatteryStatsInternalSupplier:Ljava/util/function/Supplier;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/os/BatteryStatsInternal;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    iget-object v5, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 20
    .line 21
    iget v5, v5, Landroid/media/permission/Identity;->uid:I

    .line 22
    .line 23
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStatsInternal;->noteWakingSoundTrigger(JI)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 27
    .line 28
    invoke-interface {v2, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    filled-new-array {v3, p2, v4}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v1, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual {v3, v4, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception v2

    .line 58
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v1, v2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 p2, 0x2

    .line 77
    invoke-virtual {p1, p2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 81
    .line 82
    .line 83
    throw v2
.end method

.method public final onResourcesAvailable()V
    .locals 5

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->RESOURCES_AVAILABLE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 7
    .line 8
    invoke-interface {v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onResourcesAvailable()V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 12
    .line 13
    new-array v4, v2, [Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {v1, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4, v2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception v3

    .line 27
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 28
    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v1, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {v1, v2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 40
    .line 41
    .line 42
    throw v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
