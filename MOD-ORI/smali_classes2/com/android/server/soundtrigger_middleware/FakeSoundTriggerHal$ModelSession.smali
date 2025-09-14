.class public final Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;
.super Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

.field public final mIsKeyphrase:Z

.field public mIsUnloaded:Z

.field public final mModelHandle:I

.field public mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

.field public mThreshold:I

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;


# direct methods
.method public static -$$Nest$mforceRecognitionForModel(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsKeyphrase:Z

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$smcreateDefaultKeyphraseEvent(I)Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 16
    .line 17
    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    invoke-direct {v3, p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger/PhraseRecognitionEvent;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->createDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 33
    .line 34
    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    invoke-direct {v3, p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger/RecognitionEvent;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public static -$$Nest$mgetIsUnloaded(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsUnloaded:Z

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;ILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mThreshold:I

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsUnloaded:Z

    .line 10
    .line 11
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 14
    .line 15
    iput-boolean p4, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsKeyphrase:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final triggerUnloadModel()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 7
    .line 8
    iget-boolean v1, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 9
    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsUnloaded:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->triggerAbortRecognition()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mIsUnloaded:Z

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 31
    .line 32
    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-direct {v3, p0, v4}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getNumLoadedModelsLocked()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    .line 50
    .line 51
    iget v3, v3, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    .line 52
    .line 53
    sub-int/2addr v3, v1

    .line 54
    if-ne v2, v3, :cond_2

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 61
    .line 62
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$1(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :cond_3
    :goto_1
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method
