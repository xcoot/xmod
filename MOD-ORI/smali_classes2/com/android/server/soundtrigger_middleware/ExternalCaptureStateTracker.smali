.class Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;


# static fields
.field public static final TAG:Ljava/lang/String; = "CaptureStateTracker"


# instance fields
.field public mCaptureActive:Z

.field public final mListeners:Ljava/util/List;

.field public final mNeedToConnect:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mCaptureActive:Z

    .line 13
    .line 14
    new-instance v1, Ljava/util/concurrent/Semaphore;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mNeedToConnect:Ljava/util/concurrent/Semaphore;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Thread;

    .line 22
    .line 23
    new-instance v1, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private native connect()V
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const-string v0, "CaptureStateTracker"

    .line 2
    .line 3
    const-string v1, "Audio policy service died"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mNeedToConnect:Ljava/util/concurrent/Semaphore;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final registerListener(Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mCaptureActive:Z

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final run()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mNeedToConnect:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->connect()V

    .line 7
    .line 8
    .line 9
    goto :goto_0
.end method

.method public final setCaptureState(Z)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mCaptureActive:Z

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;

    .line 23
    .line 24
    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 25
    .line 26
    iget-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mStartStopLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->abortAllActiveModels()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    iget-object v3, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda0;->onResourcesAvailable()V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_1
    iput-boolean p1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCaptureState:Z

    .line 45
    .line 46
    monitor-exit v2

    .line 47
    goto :goto_0

    .line 48
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :try_start_3
    throw p0

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    goto :goto_3

    .line 52
    :cond_2
    monitor-exit v0

    .line 53
    goto :goto_4

    .line 54
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    const-string p1, "CaptureStateTracker"

    .line 58
    .line 59
    const-string v0, "Exception caught while setting capture state"

    .line 60
    .line 61
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :goto_4
    return-void
.end method

.method public final unregisterListener(Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method
