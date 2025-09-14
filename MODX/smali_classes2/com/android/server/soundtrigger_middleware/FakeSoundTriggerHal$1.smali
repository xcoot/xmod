.class public final Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;
.super Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final setResourceContention(ZLandroid/media/soundtrigger_middleware/IAcknowledgeEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 7
    .line 8
    iget-boolean v2, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v2, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    .line 17
    .line 18
    iput-boolean p1, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    .line 19
    .line 20
    iget-object p1, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v1, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda0;-><init>(Landroid/media/soundtrigger_middleware/IAcknowledgeEvent;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$2(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 31
    .line 32
    iget-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 39
    .line 40
    new-instance p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;

    .line 41
    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-direct {p1, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$1(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final triggerOnResourcesAvailable()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$1(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

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

.method public final triggerRestart()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 7
    .line 8
    iget-boolean v2, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap$2(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    .line 32
    .line 33
    check-cast v1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    sget-object v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 45
    .line 46
    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-direct {v3, v4, p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method
