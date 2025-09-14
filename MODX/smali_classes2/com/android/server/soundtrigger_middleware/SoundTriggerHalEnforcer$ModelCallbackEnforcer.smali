.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# instance fields
.field public final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final modelUnloaded(I)V
    .locals 5

    .line 1
    const-string v0, "Trying to unload an active model: "

    .line 2
    .line 3
    const-string v1, "Unexpected unload event for model: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v3, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    const-string v0, "SoundTriggerHalEnforcer"

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 48
    .line 49
    .line 50
    monitor-exit v2

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 55
    .line 56
    if-ne v3, v1, :cond_1

    .line 57
    .line 58
    const-string v1, "SoundTriggerHalEnforcer"

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v1, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 78
    .line 79
    .line 80
    monitor-exit v2

    .line 81
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v0, Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 97
    .line 98
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->modelUnloaded(I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw p0
.end method

.method public final phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V
    .locals 4

    .line 1
    const-string v0, "Unexpected recognition event for model: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v2, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-string p2, "SoundTriggerHalEnforcer"

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p2, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 53
    .line 54
    iget-object v0, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 55
    .line 56
    iget-boolean v2, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    iget v0, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    const/4 v3, 0x3

    .line 65
    if-eq v0, v3, :cond_1

    .line 66
    .line 67
    const-string p1, "SoundTriggerHalEnforcer"

    .line 68
    .line 69
    const-string/jumbo p2, "recognitionStillActive is only allowed when the recognition status is SUCCESS"

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 78
    .line 79
    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 82
    :cond_1
    if-nez v2, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 93
    .line 94
    check-cast v0, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 101
    .line 102
    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw p0
.end method

.method public final recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V
    .locals 4

    .line 1
    const-string v0, "Unexpected recognition event for model: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v2, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-string p2, "SoundTriggerHalEnforcer"

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p2, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    .line 53
    .line 54
    iget-boolean v2, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    iget v0, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    const/4 v3, 0x3

    .line 63
    if-eq v0, v3, :cond_1

    .line 64
    .line 65
    const-string p1, "SoundTriggerHalEnforcer"

    .line 66
    .line 67
    const-string/jumbo p2, "recognitionStillActive is only allowed when the recognition status is SUCCESS"

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 76
    .line 77
    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 80
    :cond_1
    if-nez v2, :cond_2

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->mModelStates:Ljava/util/Map;

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 91
    .line 92
    check-cast v0, Ljava/util/HashMap;

    .line 93
    .line 94
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 99
    .line 100
    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw p0
.end method
