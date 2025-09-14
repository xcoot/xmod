.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# instance fields
.field public mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

.field public mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final detach()V
    .locals 5

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->DETACH:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    .line 7
    .line 8
    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mSessionEventLoggers:Ljava/util/Set;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 11
    .line 12
    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    :goto_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 23
    .line 24
    check-cast v3, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    .line 35
    .line 36
    check-cast v3, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v3

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 45
    .line 46
    invoke-interface {v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 50
    .line 51
    new-array v4, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {v1, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4, v2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :goto_1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 65
    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {v1, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v2, 0x2

    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 77
    .line 78
    .line 79
    throw v3
.end method

.method public final forceRecognitionEvent(I)V
    .locals 5

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->FORCE_RECOGNITION:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 6
    .line 7
    invoke-interface {v2, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

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

.method public final getModelParameter(II)I
    .locals 7

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->GET_MODEL_PARAMETER:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 6
    .line 7
    invoke-interface {v2, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v1, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForReturn(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual {v4, v5, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :catch_0
    move-exception v2

    .line 42
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v1, v2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 p2, 0x2

    .line 61
    invoke-virtual {p1, p2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 65
    .line 66
    .line 67
    throw v2
.end method

.method public final loadModel(Landroid/media/soundtrigger/SoundModel;)I
    .locals 6

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->LOAD_MODEL:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 6
    .line 7
    invoke-interface {v2, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object v5, p1, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    .line 18
    .line 19
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-static {v1, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForReturn(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-virtual {v4, v5, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :catch_0
    move-exception v2

    .line 36
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 37
    .line 38
    iget-object p1, p1, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    .line 39
    .line 40
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v1, v2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForReturn(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v1, 0x2

    .line 49
    invoke-virtual {p1, v1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 53
    .line 54
    .line 55
    throw v2
.end method

.method public final loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I
    .locals 6

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->LOAD_PHRASE_MODEL:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 6
    .line 7
    invoke-interface {v2, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object v5, p1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    .line 18
    .line 19
    iget-object v5, v5, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {v1, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForReturn(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v4, v5, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :catch_0
    move-exception v2

    .line 38
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 39
    .line 40
    iget-object p1, p1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    .line 41
    .line 42
    iget-object p1, p1, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    .line 43
    .line 44
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v1, v2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v1, 0x2

    .line 53
    invoke-virtual {p1, v1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 57
    .line 58
    .line 59
    throw v2
.end method

.method public final queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 6

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->QUERY_MODEL_PARAMETER:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 6
    .line 7
    invoke-interface {v2, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v1, v2, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForReturn(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v4, v5, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-object v2

    .line 37
    :catch_0
    move-exception v2

    .line 38
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v1, v2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 p2, 0x2

    .line 57
    invoke-virtual {p1, p2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 61
    .line 62
    .line 63
    throw v2
.end method

.method public final setModelParameter(III)V
    .locals 6

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->SET_MODEL_PARAMETER:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 6
    .line 7
    invoke-interface {v2, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v1, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v3, v4, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception v2

    .line 41
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v1, v2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 p2, 0x2

    .line 64
    invoke-virtual {p1, p2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 68
    .line 69
    .line 70
    throw v2
.end method

.method public final startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;
    .locals 6

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->START_RECOGNITION:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 6
    .line 7
    invoke-interface {v2, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    filled-new-array {v4, p2}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v1, v2, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForReturn(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual {v4, v5, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-object v2

    .line 33
    :catch_0
    move-exception v2

    .line 34
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v1, v2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 p2, 0x2

    .line 49
    invoke-virtual {p1, p2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 53
    .line 54
    .line 55
    throw v2
.end method

.method public final stopRecognition(I)V
    .locals 5

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->STOP_RECOGNITION:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 6
    .line 7
    invoke-interface {v2, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

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

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

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

.method public final unloadModel(I)V
    .locals 5

    .line 1
    const-string v0, "SoundTriggerMiddlewareLogging"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->UNLOAD_MODEL:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 6
    .line 7
    invoke-interface {v2, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

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
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

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
