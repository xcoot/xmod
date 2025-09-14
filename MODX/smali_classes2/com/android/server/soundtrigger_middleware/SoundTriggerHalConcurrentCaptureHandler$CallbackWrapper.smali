.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# instance fields
.field public final mDelegateCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->mDelegateCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final modelUnloaded(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->push(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v1, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 27
    .line 28
    iget-object v1, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 29
    .line 30
    iget-boolean v1, v1, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v1, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    .line 50
    .line 51
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->push(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v1, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    .line 27
    .line 28
    iget-boolean v1, v1, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v1, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    .line 48
    .line 49
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->push(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method
