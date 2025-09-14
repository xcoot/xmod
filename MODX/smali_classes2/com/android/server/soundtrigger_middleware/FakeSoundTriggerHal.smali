.class public final Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;
.super Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

.field public final mGlobalEventSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

.field public final mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

.field public mIsDead:Z

.field public mIsResourceContended:Z

.field public final mLock:Ljava/lang/Object;

.field public mModelKeyCounter:I

.field public final mModelSessionMap:Ljava/util/Map;

.field public final mProperties:Landroid/media/soundtrigger/Properties;


# direct methods
.method public static -$$Nest$smcreateDefaultKeyphraseEvent(I)Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->createDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    .line 7
    .line 8
    new-instance v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/media/soundtrigger/PhraseRecognitionEvent;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p0, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 14
    .line 15
    new-array p0, v0, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 16
    .line 17
    iput-object p0, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 18
    .line 19
    return-object v1
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    .line 16
    .line 17
    new-instance v2, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    .line 23
    .line 24
    const/16 v2, 0x65

    .line 25
    .line 26
    iput v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 29
    .line 30
    new-instance v2, Landroid/media/soundtrigger/Properties;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/media/soundtrigger/Properties;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "android"

    .line 36
    .line 37
    iput-object v3, v2, Landroid/media/soundtrigger/Properties;->implementor:Ljava/lang/String;

    .line 38
    .line 39
    const-string v3, "AOSP fake STHAL"

    .line 40
    .line 41
    iput-object v3, v2, Landroid/media/soundtrigger/Properties;->description:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    iput v3, v2, Landroid/media/soundtrigger/Properties;->version:I

    .line 45
    .line 46
    const-string v4, "00000001-0002-0003-0004-deadbeefabcd"

    .line 47
    .line 48
    iput-object v4, v2, Landroid/media/soundtrigger/Properties;->uuid:Ljava/lang/String;

    .line 49
    .line 50
    const-string v4, "injection"

    .line 51
    .line 52
    iput-object v4, v2, Landroid/media/soundtrigger/Properties;->supportedModelArch:Ljava/lang/String;

    .line 53
    .line 54
    const/16 v4, 0x8

    .line 55
    .line 56
    iput v4, v2, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    .line 57
    .line 58
    const/4 v4, 0x2

    .line 59
    iput v4, v2, Landroid/media/soundtrigger/Properties;->maxKeyPhrases:I

    .line 60
    .line 61
    iput v4, v2, Landroid/media/soundtrigger/Properties;->maxUsers:I

    .line 62
    .line 63
    const/16 v4, 0x9

    .line 64
    .line 65
    iput v4, v2, Landroid/media/soundtrigger/Properties;->recognitionModes:I

    .line 66
    .line 67
    iput-boolean v3, v2, Landroid/media/soundtrigger/Properties;->captureTransition:Z

    .line 68
    .line 69
    const/16 v4, 0x1388

    .line 70
    .line 71
    iput v4, v2, Landroid/media/soundtrigger/Properties;->maxBufferMs:I

    .line 72
    .line 73
    iput-boolean v3, v2, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    .line 74
    .line 75
    iput-boolean v1, v2, Landroid/media/soundtrigger/Properties;->triggerInEvent:Z

    .line 76
    .line 77
    iput v1, v2, Landroid/media/soundtrigger/Properties;->powerConsumptionMw:I

    .line 78
    .line 79
    iput v1, v2, Landroid/media/soundtrigger/Properties;->audioCapabilities:I

    .line 80
    .line 81
    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    .line 82
    .line 83
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 84
    .line 85
    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 91
    .line 92
    new-instance p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    .line 93
    .line 94
    invoke-direct {p1, p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    .line 98
    .line 99
    new-instance p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda0;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$2(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public static createDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/soundtrigger/RecognitionEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/soundtrigger/RecognitionEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    iput p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    .line 10
    .line 11
    iput-boolean p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    .line 12
    .line 13
    const/16 p0, 0x32

    .line 14
    .line 15
    iput p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    .line 16
    .line 17
    const/16 p0, 0xc8

    .line 18
    .line 19
    iput p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    iput-boolean p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    .line 26
    .line 27
    new-array v1, p0, [B

    .line 28
    .line 29
    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    .line 30
    .line 31
    iput-boolean p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 32
    .line 33
    return-object v0
.end method


# virtual methods
.method public final forceRecognitionEvent(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    const-string p1, "FakeSoundTriggerHal"

    .line 25
    .line 26
    const-string v1, "Attempted to force recognition with invalid handle"

    .line 27
    .line 28
    invoke-static {p1, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 40
    .line 41
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    :try_start_2
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :cond_1
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mforceRecognitionForModel(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    .line 47
    .line 48
    .line 49
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    return-void

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :try_start_4
    throw p0

    .line 54
    :cond_2
    new-instance p0, Landroid/os/DeadObjectException;

    .line 55
    .line 56
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    throw p0
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const-string p0, "6b24e60ad261e3ff56106efd86ce6aa7ef5621b0"

    .line 10
    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/DeadObjectException;

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p0
.end method

.method public final getInterfaceVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p0, 0x2

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Landroid/os/DeadObjectException;

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final getNumLoadedModelsLocked()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetIsUnloaded(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v0
.end method

.method public final getParameter(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    const-string p1, "FakeSoundTriggerHal"

    .line 25
    .line 26
    const-string v1, "Attempted to get param with invalid handle"

    .line 27
    .line 28
    invoke-static {p1, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mThreshold:I

    .line 42
    .line 43
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    return p0

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    :try_start_4
    throw p0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    new-instance p0, Landroid/os/DeadObjectException;

    .line 56
    .line 57
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    throw p0
.end method

.method public final getProperties()Landroid/media/soundtrigger/Properties;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v2}, Landroid/media/soundtrigger/Properties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Landroid/media/soundtrigger/Properties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    .line 23
    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/media/soundtrigger/Properties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_0
    new-instance p0, Landroid/os/DeadObjectException;

    .line 42
    .line 43
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    throw p0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "FakeSoundTriggerHal"

    .line 9
    .line 10
    const-string v1, "Received two death recipients concurrently"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 19
    .line 20
    monitor-exit p2

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getNumLoadedModelsLocked()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    .line 18
    .line 19
    iget v3, v3, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    .line 20
    .line 21
    if-eq v1, v3, :cond_0

    .line 22
    .line 23
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    .line 24
    .line 25
    add-int/lit8 v3, v1, 0x1

    .line 26
    .line 27
    iput v3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    .line 28
    .line 29
    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 30
    .line 31
    new-instance v4, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 32
    .line 33
    invoke-direct {v4, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;-><init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, p0, v1, v4, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;ILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Z)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast p2, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 51
    .line 52
    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;

    .line 53
    .line 54
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p2, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$2(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return v1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 65
    .line 66
    invoke-direct {p0, v2}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_1
    new-instance p0, Landroid/os/DeadObjectException;

    .line 71
    .line 72
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getNumLoadedModelsLocked()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    .line 17
    .line 18
    iget v2, v2, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    .line 19
    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    .line 23
    .line 24
    add-int/lit8 v2, v1, 0x1

    .line 25
    .line 26
    iput v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    .line 27
    .line 28
    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 29
    .line 30
    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 31
    .line 32
    invoke-direct {v3, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;-><init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-direct {v2, p0, v1, v3, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;ILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Z)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast p2, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 51
    .line 52
    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-direct {v3, p0, p1, v2, v4}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;I)V

    .line 56
    .line 57
    .line 58
    invoke-static {p2, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$2(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 59
    .line 60
    .line 61
    monitor-exit v0

    .line 62
    return v1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_1
    new-instance p0, Landroid/os/DeadObjectException;

    .line 73
    .line 74
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    const-string p0, "FakeSoundTriggerHal"

    .line 25
    .line 26
    const-string p1, "Attempted to get param with invalid handle"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    new-instance p0, Landroid/media/soundtrigger/ModelParameterRange;

    .line 38
    .line 39
    invoke-direct {p0}, Landroid/media/soundtrigger/ModelParameterRange;-><init>()V

    .line 40
    .line 41
    .line 42
    const/16 p1, -0xa

    .line 43
    .line 44
    iput p1, p0, Landroid/media/soundtrigger/ModelParameterRange;->minInclusive:I

    .line 45
    .line 46
    const/16 p1, 0xa

    .line 47
    .line 48
    iput p1, p0, Landroid/media/soundtrigger/ModelParameterRange;->maxInclusive:I

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_1
    const/4 p0, 0x0

    .line 52
    return-object p0

    .line 53
    :cond_2
    :try_start_1
    new-instance p0, Landroid/os/DeadObjectException;

    .line 54
    .line 55
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0
.end method

.method public final registerGlobalCallback(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;-><init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Landroid/os/DeadObjectException;

    .line 20
    .line 21
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final setParameter(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string v1, "FakeSoundTriggerHal"

    .line 25
    .line 26
    const-string v2, "Attempted to get param with invalid handle"

    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 35
    .line 36
    const/16 v1, -0xa

    .line 37
    .line 38
    if-lt p3, v1, :cond_1

    .line 39
    .line 40
    const/16 v1, 0xa

    .line 41
    .line 42
    if-gt p3, v1, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_2
    :goto_1
    iget-object v1, p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    iput p3, p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mThreshold:I

    .line 57
    .line 58
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    :try_start_2
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 60
    .line 61
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;

    .line 62
    .line 63
    invoke-direct {v1, p2, p3, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;-><init>(IILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$2(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 67
    .line 68
    .line 69
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    return-void

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    :try_start_4
    throw p0

    .line 74
    :cond_3
    new-instance p0, Landroid/os/DeadObjectException;

    .line 75
    .line 76
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    throw p0
.end method

.method public final startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iget-boolean p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez p3, :cond_3

    .line 7
    .line 8
    iget-object p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p3, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string p3, "FakeSoundTriggerHal"

    .line 25
    .line 26
    const-string v0, "Attempted to start recognition with invalid handle"

    .line 27
    .line 28
    invoke-static {p3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-boolean p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    if-nez p3, :cond_2

    .line 38
    .line 39
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetIsUnloaded(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-nez p3, :cond_1

    .line 44
    .line 45
    iget-object p3, p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 46
    .line 47
    iget-object p3, p3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :try_start_1
    new-instance v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 51
    .line 52
    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 56
    .line 57
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    :try_start_2
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 59
    .line 60
    new-instance p3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;

    .line 61
    .line 62
    const/4 v1, 0x2

    .line 63
    invoke-direct {p3, p4, v0, p1, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;I)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$2(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 67
    .line 68
    .line 69
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    return-void

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    :try_start_4
    throw p0

    .line 74
    :cond_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 75
    .line 76
    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_2
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 81
    .line 82
    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_3
    new-instance p0, Landroid/os/DeadObjectException;

    .line 87
    .line 88
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :goto_1
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    throw p0
.end method

.method public final stopRecognition(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string v1, "FakeSoundTriggerHal"

    .line 25
    .line 26
    const-string v2, "Attempted to stop recognition with invalid handle"

    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    iget-object v2, p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    iput-object v3, p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 43
    .line 44
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    :try_start_2
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 48
    .line 49
    new-instance p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda7;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {p1, v2, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$2(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    return-void

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :try_start_4
    throw p0

    .line 63
    :cond_2
    new-instance p0, Landroid/os/DeadObjectException;

    .line 64
    .line 65
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    throw p0
.end method

.method public final unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p2

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 14
    .line 15
    if-ne v0, p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 19
    .line 20
    monitor-exit p2

    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final unloadSoundModel(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 5
    .line 6
    if-nez v1, :cond_4

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string v1, "FakeSoundTriggerHal"

    .line 25
    .line 26
    const-string v2, "Attempted to unload model which was never loaded"

    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    iget-object v2, p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mRecognitionSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 40
    .line 41
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    :try_start_2
    const-string v1, "FakeSoundTriggerHal"

    .line 45
    .line 46
    const-string v2, "Session unloaded before recog stopped!"

    .line 47
    .line 48
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetIsUnloaded(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 60
    .line 61
    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-direct {v2, p1, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$2(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getNumLoadedModelsLocked()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    .line 75
    .line 76
    iget v1, v1, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    .line 77
    .line 78
    add-int/lit8 v1, v1, -0x1

    .line 79
    .line 80
    if-ne p1, v1, :cond_3

    .line 81
    .line 82
    iget-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    .line 83
    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 87
    .line 88
    new-instance p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-direct {p1, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$1(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    return-void

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    :try_start_4
    throw p0

    .line 102
    :cond_4
    new-instance p0, Landroid/os/DeadObjectException;

    .line 103
    .line 104
    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    throw p0
.end method
