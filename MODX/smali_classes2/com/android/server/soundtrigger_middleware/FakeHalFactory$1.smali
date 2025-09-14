.class public final Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;
.super Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

.field public final synthetic val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;-><init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final clientAttached(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 4
    .line 5
    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    check-cast v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    .line 8
    .line 9
    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Landroid/os/IBinder;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final clientDetached(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final detach()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 4
    .line 5
    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    check-cast v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    .line 8
    .line 9
    invoke-direct {v2, p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
