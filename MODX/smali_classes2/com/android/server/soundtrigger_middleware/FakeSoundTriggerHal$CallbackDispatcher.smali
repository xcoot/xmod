.class public final Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Ljava/lang/Object;


# direct methods
.method public static -$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static -$$Nest$mwrap$1(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static -$$Nest$mwrap$2(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->mCallback:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->mCallback:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->mCallback:Ljava/lang/Object;

    return-void
.end method
